<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Contact;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // Create 5 users
        User::factory(5)->create();

        // Create 150 contacts randomly assigned to users
        Contact::factory(150)->create();
    }
}
