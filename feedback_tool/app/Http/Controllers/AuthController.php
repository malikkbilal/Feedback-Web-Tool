<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginValidationRequest;
use App\Http\Requests\RegisterValidationRequest;
use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Str;

class AuthController extends Controller
{

    public function register(RegisterValidationRequest $request)
    {
        $validatedData = $request->validated();

        $user = User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
            'email_verified_at' => now(),
            'remember_token' => Str::random(10),
        ]);
        Role::assignRoleToUser($user, 'user');
        $userRole = Role::where('name', 'user')->first();
        $permissions = Permission::whereIn('name', [
            'create-feedback',
            'edit-own-feedback',
            'delete-own-feedback',
            'vote-feedback',
            'comment-feedback',
        ])->get();
        $userRole->permissions()->attach($permissions);
        return response(['user' => $user]);
    }

    public function login(LoginValidationRequest $request)
    {
        $validatedData = $request->validated();
        $user = User::with('roles.permissions')->where('email', $validatedData['email'])->first();
        if (!$user || !Hash::check($validatedData['password'], $user->password)) {
            return response()->json(['error' => 'The provided credentials are incorrect.'], 401);
        }
        $token = $user->createToken('authToken')->plainTextToken;
        $roles = $user->roles->pluck('name')->unique();
        $permissions = [];
        foreach ($user->roles as $role) {
            $permissions = array_merge($permissions, $role->permissions->pluck('name')->toArray());
        }
        $permissions = array_unique($permissions);
        return response([
            'user' => [
                'id' => $user->id,
                'name' => $user->name,
                'email' => $user->email,
                'roles' => $roles,
                'permissions' => $permissions,
            ],
            'access_token' => $token,
        ]);
    }

    public function logout(Request $request)
    {
        $user = Auth::user();
        if (!$user) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        $user->tokens->each(function ($token) {
            try {
                Http::withToken($token->plainTextToken)->post('api/sanctum/revoke');
            } catch (ConnectionException $e) {
                return response()->json(['error' => 'Unable to revoke token.'], 500);
            }
            $token->delete();
        });
        return response(['message' => 'Logged out']);
    }
}
