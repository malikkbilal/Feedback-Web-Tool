<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'create-feedback',
            'edit-own-feedback',
            'edit-all-feedback',
            'delete-own-feedback',
            'delete-all-feedback',
            'vote-feedback',
            'comment-feedback',
            'manage-users',
            'manage-roles',
            'manage-settings',
        ];

        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
    }
}
