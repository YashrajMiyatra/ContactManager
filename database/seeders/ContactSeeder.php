<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Contact;
use App\Models\User;
use Faker\Factory as Faker;

class ContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $users = User::all();

        if ($users->count() === 0) {
            $this->command->info("No users found! Please run UserSeeder first.");
            return;
        }

        for ($i = 0; $i < 150; $i++) {
            Contact::create([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'phone' => $faker->phoneNumber,
                'user_id' => $users->random()->id,
            ]);
        }
    }
}
