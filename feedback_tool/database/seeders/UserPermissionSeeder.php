<?php

namespace Database\Seeders;

use App\Models\Permission;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Assign permissions to users as needed
        User::find(1)->permissions()->attach(Permission::where('name', 'manage-users')->first());
        User::find(1)->permissions()->attach(Permission::where('name', 'manage-roles')->first());
        User::find(1)->permissions()->attach(Permission::where('name', 'manage-settings')->first());

        User::find(2)->permissions()->attach(Permission::where('name', 'create-feedback')->first());
        User::find(2)->permissions()->attach(Permission::where('name', 'edit-own-feedback')->first());
        // Add more assignments as needed
    }
}
