<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;
    protected $fillable = ['name'];

    /**
     * The users that belong to the role.
     */
    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    /**
     * The permissions that belong to the role.
     */
    public function permissions()
    {
        return $this->belongsToMany(Permission::class);
    }

    /**
     * Assign a role to a user.
     *
     * @param User $user
     * @param string $roleName
     */
    public static function assignRoleToUser(User $user, string $roleName)
    {
        $role = self::where('name', $roleName)->first();

        if ($role) {
            $user->roles()->attach($role->id);
        }
    }
}
