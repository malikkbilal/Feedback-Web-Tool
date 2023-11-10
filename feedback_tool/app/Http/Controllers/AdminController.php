<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{

    /**
     * Lists users for admin management.
     */
    public function listUsers()
    {
        $users = User::all();
        return response()->json($users);
    }

    /**
     * Deletes a user.
     *
     * @param User $user
     * @return \Illuminate\Http\JsonResponse
     */
    public function deleteUser(User $user)
    {
        $user->delete();
        return response()->json(['message' => 'User deleted']);
    }

     /**
     * make user admin.
     *
     * @param User $user
     * @return \Illuminate\Http\JsonResponse
     */
    public function makeAdmin(User $user)
    {
        if ($user->hasRole('admin')) {
            return response()->json(['message' => 'User is already an admin'], 422);
        }
        $adminRole = Role::firstOrCreate(['name' => 'admin']);
        $user->roles()->attach($adminRole);
        $permissions = Permission::pluck('id')->toArray();
        $adminRole->permissions()->sync($permissions);
        return response()->json([
            'message' => 'User is now an admin with full access',
            'roles' => [$adminRole->id],
            'permissions' => $permissions
        ]);
    }
}
