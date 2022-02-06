<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Reservation;


class ReservationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            
            'šifra'=>$this->faker->unique()->numberBetween(1,100000),
            'karta'=>$this->faker->numberBetween(27,301),
            'putnik'=>$this->faker->numberBetween(1,32),
            'mjesto'=>$this->faker->numberBetween(1,50),
            'plaćanje'=>$this->faker->numberBetween(1,2),
            'datum'=>$this->faker->dateTime(),
            'vrijeme'=>$this->faker->time(),
        ];
    }
}
