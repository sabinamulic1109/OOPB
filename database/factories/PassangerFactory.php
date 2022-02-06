<?php

namespace Database\Factories;
use App\Models\Passanger;


use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;


class PassangerFactory extends Factory

{

    protected $model=Passanger::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'ime'=>$this->faker->name(),
            'prezime'=>$this->faker->lastname(),
            'mob'=>$this->faker->unique()->numberBetween(3876000000,3876999999),
            'email'=>Str::random(10).'@gmail.com',
            'adresa'=>$this->faker->unique()->randomElement(['777 Brockton Avenue, Abington MA 2351','30 Memorial Drive, Avon MA 2322',
            '250 Hartford Avenue, Bellingham MA 2019',
            '700 Oak Street, Brockton MA 2301',
            '66-4 Parkhurst Rd, Chelmsford MA 1824',
            '591 Memorial Dr, Chicopee MA 1020',
            '55 Brooksby Village Way, Danvers MA 1923',
            '137 Teaticket Hwy, East Falmouth MA 2536',
            '42 Fairhaven Commons Way, Fairhaven MA 2719',
            '374 William S Canning Blvd, Fall River MA 2721',
            '121 Worcester Rd, Framingham MA 1701',
            '677 Timpany Blvd, Gardner MA 1440',
            '337 Russell St, Hadley MA 1035',
            '295 Plymouth Street, Halifax MA 2338',
            '1775 Washington St, Hanover MA 2339',
            '280 Washington Street, Hudson MA 1749',
            '20 Soojian Dr, Leicester MA 1524',
            '11 Jungle Road, Leominster MA 1453',
            '301 Massachusetts Ave, Lunenburg MA 1462',
            '780 Lynnway, Lynn MA 1905',
            '70 Pleasant Valley Street, Methuen MA 1844',
            '830 Curran Memorial Hwy, North Adams MA 1247',
            '1470 S Washington St, North Attleboro MA 2760',
            '506 State Road, North Dartmouth MA 2747',
            '742 Main Street, North Oxford MA 1537',
            '72 Main St, North Reading MA 1864',
            '200 Otis Street, Northborough MA 1532',
            '180 North King Street, Northhampton MA 1060',
            '555 East Main St, Orange MA 1364',
            '555 Hubbard Ave-Suite 12, Pittsfield MA 1201',
            '300 Colony Place, Plymouth MA 2360',
            '301 Falls Blvd, Quincy MA 2169',]),

        ];
    }
}
