<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Passanger;

class PassangerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Passanger::factory()->count(30)->create();
    }
}
