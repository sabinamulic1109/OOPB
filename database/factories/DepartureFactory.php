<?php

namespace Database\Factories;
use App\Models\Departure;

use Illuminate\Database\Eloquent\Factories\Factory;

class DepartureFactory extends Factory
{
    protected $model=Departure::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    
     
    public function definition()
    {
        return [
            
            'kontinent'=>$this->faker->randomElement(['Afrika','Afrika']),
            'drzava'=>$this->faker->randomElement(['Egipat','Egipat']),
            'grad'=>$this->faker->randomElement(['Luxor','Alexandria','Kairo','Hurghada','Giza']),
            'aerodrom'=>$this->faker->unique()->randomElement(['Marsa Matrouh International Airport', 
            'St Catherine International Airport','Sharm El Sheikh International Airport','HIA',
            'Abu Simbel Airport','SKV','Aswan Airport', 'Sheikh AA-El Asad','KIA-OFAA','International Egypt AA',
       
        ]),
            'gate'=>$this->faker->numberBetween(1,11),
        ];
    }
}
