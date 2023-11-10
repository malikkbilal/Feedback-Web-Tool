<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdateProfileRequest;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Handle profile updates.
     */
    public function updateProfile(UpdateProfileRequest $request)
    {
        if (!$user = auth()->user()) {
            return response()->json(['error' => 'User not authenticated'], 401);
        }
        try {
            $result = DB::table('users')
                ->where('id', $user->id)
                ->update([
                    'name' => $request->input('name'),
                    'email' => $request->input('email'),
                    'password' => $request->filled('password') ? Hash::make($request->input('password')) : $user->password,
                ]);
            if ($result) {
                return response()->json(['message' => 'Profile updated successfully']);
            } else {
                return response()->json(['message' => 'Already Profile updated..']);
            }
        } catch (ModelNotFoundException $exception) {
            return response()->json(['error' => 'User not found'], 404);
        }
    }

}
