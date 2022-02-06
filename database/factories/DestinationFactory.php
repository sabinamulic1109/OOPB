<?php

namespace Database\Factories;
use App\Models\Destination;


use Illuminate\Database\Eloquent\Factories\Factory;


class DestinationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            'kontinent'=>$this->faker->randomElement(['Afrika','Afrika']),
            'drzava'=>$this->faker->randomElement(['Maroko','Maroko']),
            'grad'=>$this->faker->randomElement(['Casablanca','Fes','Marakeš','Tanger','Agadir']),
            'aerodrom'=>$this->faker->unique()->randomElement(['CMN', 'AGA','FEZ','RAK',
            'Nador Airport', 'Oujda Airport','Rabat Airport ','Essaouria Airport','Marocco International Airport','ESU']),
            'opis'=>$this->faker->randomElement([
            'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.',
            'The airport was the launch pad of so many fights of fancy.',
            'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.',
            'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.',
            'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.',
            'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.',
            'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.',
            'The floors are clean and white, reflecting the early rays and the manmade light the same.',
            'The airport was the modern day portal of those magicians we call engineers.',
            'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.',
            'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.']),
        ];
    }
}
