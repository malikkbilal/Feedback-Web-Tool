<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Assign roles to users as needed
        User::find(1)->roles()->attach(Role::where('name', 'Admin')->first());
        User::find(2)->roles()->attach(Role::where('name', 'User')->first());
        User::find(3)->roles()->attach(Role::where('name', 'Moderator')->first());
        // Add more assignments as needed
    }
}
