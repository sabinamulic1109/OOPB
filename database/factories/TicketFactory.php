<?php

namespace Database\Factories;
use App\Models\Ticket;

use Illuminate\Database\Eloquent\Factories\Factory;

class TicketFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            'bar_kod'=>$this->faker->company(),
            'polaziste'=>$this->faker->numberBetween(241,340),
            'odrediste'=>$this->faker->numberBetween(201,300),
            'tip'=>$this->faker->numberBetween(1,2),
            'klasa'=>$this->faker->numberBetween(1,3),
            'cijena'=>$this->faker->numberBetween(110,785),
            'datum'=>$this->faker->dateTimeBetween('+1 week', '+1 month'),
            'vrijeme'=>$this->faker->time(),
            
        ];
    }
}
