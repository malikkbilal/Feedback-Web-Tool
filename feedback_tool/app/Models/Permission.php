<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;
    protected $fillable = ['name'];


       /**
     * The roles that belong to the permission.
     */
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }

    /**
     * Assign permissions to a user.
     *
     * @param User $user
     * @param array $permissionNames
     */
    public static function assignPermissionsToUser(User $user, array $permissionNames)
    {
        $permissionIds = self::whereIn('name', $permissionNames)->pluck('id')->toArray();
        $user->permissions()->sync($permissionIds);
    }
}
