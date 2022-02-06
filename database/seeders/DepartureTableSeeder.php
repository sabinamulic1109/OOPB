<?php

namespace Database\Seeders;
use App\Models\Departure;

use Illuminate\Database\Seeder;

class DepartureTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Departure::factory()->count(10)->create();
    }
}
