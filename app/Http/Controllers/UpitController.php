<?php

namespace App\Http\Controllers;

use App\Models\Upit;
use Illuminate\Http\Request;
use DB;

class UpitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        /*putovanja od 1.28.2022 do 1.2.2022 od 200 do 600 $ u prvoj klasi*/
       $from='2022-2-1';
        $to='2022-2-29';

        $od='200';
        $do='600';
        $destinacije=DB::table('destinations')
        ->select('destinations.grad as grad', 'destinations.aerodrom as aerodrom', 'destinations.opis as opis','destinations.drzava as drzava')
        ->groupBy('destinations.id')
        ->join('tickets','destinations.id','=','tickets.odrediste')
        ->join('klasas','tickets.klasa','=','klasas.id')
        ->where('klasas.naziv','Prva klasa')
        ->whereBetween('tickets.datum',[$from, $to])
        ->get();

        $broj=DB::table('destinations')
        ->count();
        
        
            /*imena putnika koja su iz Kine imali let u Rusiju na aerodrom Pulkovo aerodrom*/
            $russian_ticket_passangers=DB::table('passangers')
            ->select('passangers.ime as passanger_ime','passangers.prezime as passanger_prezime','passangers.mob as mob')
            ->groupBy('passangers.id')
            ->join('reservations','passangers.id','=','reservations.putnik')
            ->join('tickets','reservations.karta','=','tickets.id')
            ->join('destinations','tickets.odrediste','=','destinations.id')
            ->join('departures','tickets.polaziste','=','departures.id')
            ->where('departures.drzava','Kina')
            ->where('destinations.drzava','Rusija')
            ->where('destinations.aerodrom','Pulkovo Airport')
            ->get();

    /* najcesca polazista iz Afrike za Ameriku s povratnom kartom*/
        $most_common_departures=DB::table('departures')
       ->select('departures.*',DB::raw('count(*) as brojac'))
        ->groupBy('departures.id')
       ->join('tickets','departures.id','=','tickets.polaziste')
       ->join('destinations','tickets.odrediste','=','destinations.id')
       ->join('types','tickets.tip','=','types.id')
       ->orderByRaw('COUNT(*) DESC')
       ->where('types.tip','Povratna')
        ->where('departures.kontinent','Afrika')
        ->where('destinations.kontinent','Amerika')
       ->get();

       /*Rezervacije (kompanije i cijene karata) za gotovinsko plaćanje,jednosmjerna karta u prvoj klasi*/
      $find_reservation=DB::table('tickets')
       ->select('tickets.bar_kod as vrsta','tickets.cijena as cijena_karata')
       ->groupBy('tickets.id')
       ->join('reservations','tickets.id','=','reservations.karta')
       ->join('payments','reservations.plaćanje','=','payments.id')
       ->join('types','tickets.tip','=','types.id')
       ->join('klasas','tickets.klasa','=','klasas.id')
       ->where('payments.vrsta','Gotovinsko')
       ->where('types.tip','Jednosmjerna')
       ->where('klasas.naziv','Biznis klasa')
       ->whereBetween('tickets.cijena',[$od, $do])

         ->get();

         $povratne=DB::table('passangers')
         ->select('passangers.ime as passanger_ime','passangers.prezime as passanger_prezime','passangers.email as email')
         ->groupBy('passangers.id')
         ->join('reservations','passangers.id','=','reservations.putnik')
         ->join('tickets','reservations.karta','=','tickets.id')
         ->join('destinations','tickets.odrediste','=','destinations.id')
         ->join('departures','tickets.polaziste','=','departures.id')
         ->join('types','tickets.tip','=','types.id')
         ->where('departures.drzava','Kalifornija')
         ->where('destinations.kontinent','Australija')
         ->where('types.tip','Povratna')
         ->get();

            /*putovanja iz Europe na Bahami*/
         $trips_to_bahami_from_europe=DB::table('departures')
         ->select('departures.drzava as departure_drzava', 'departures.grad as departure_grad','departures.aerodrom as departure_aerodrom','departures.gate as gate')
            ->groupBy('departures.id')
            ->join('tickets','departures.id','=','tickets.polaziste')
            ->join('destinations','tickets.odrediste','=','destinations.id')
            ->where('departures.kontinent','Europa')
            ->where('destinations.drzava','Bahami')
            ->get();

            /*putnici iz njemačke koji su platili karticom */
            $kartica=DB::table('passangers')
            ->select('passangers.email as email','passangers.mob as mob','passangers.ime as ime','passangers.prezime as prezime','passangers.adresa as adresa')
            ->groupBy('passangers.id')
            ->join('reservations','passangers.id','=','reservations.putnik')
            ->join('payments','reservations.plaćanje','=','payments.id')
            ->join('tickets','reservations.karta','=','tickets.id')
            ->join('departures','tickets.polaziste','=','departures.id')
            ->where('departures.drzava','Njemačka')
            ->where('payments.vrsta','Kartično')
            ->get();

            $a='03:00:00';
            $b='09:00:00';
            $rano=DB::table('departures')
            ->select('departures.kontinent as kontinent', 'departures.drzava as drzava','departures.grad as grad','departures.aerodrom as aerodrom','departures.gate as gate')
            ->groupBy('departures.id')
            ->join('tickets','departures.id','=','tickets.polaziste')
            ->join('destinations','tickets.odrediste','=','destinations.id')
            ->where('destinations.drzava','Indija')
            ->whereBetween('tickets.vrijeme',[$a,$b])
            ->get();

            $raspored=DB::table('tickets')
            ->select('tickets.cijena as cijena','tickets.vrijeme as vrijeme','tickets.datum as datum')
            ->groupBy('tickets.id')
            ->join('departures','tickets.polaziste','=','departures.id')
            ->join('destinations','tickets.odrediste','=','destinations.id')

            ->where('departures.grad','Stuttgart')
            ->where('destinations.grad','Casablanca')
             ->get();     

             $mjesto=DB::table('reservations')
             ->select('reservations.mjesto as mjesto','reservations.datum as datum')
             ->groupBy('reservations.id')
             ->join('tickets','reservations.karta','=','tickets.id')
             ->join('destinations','tickets.odrediste','=','destinations.id')
             ->join('klasas','tickets.klasa','=','klasas.id')
->where('klasas.naziv','Ekonomska klasa')
             ->where('destinations.drzava','Havaji')
              ->get();                  
   

              
            

        return view ('upits.index',
       [ 'most_common_departures'=>$most_common_departures,
       'raspored'=>$raspored,
    'destinacije'=>$destinacije,
    'broj'=>$broj,
'russian_ticket_passangers'=>$russian_ticket_passangers,
'povratne'=>$povratne,
'rano'=>$rano,
    'trips_to_bahami_from_europe'=>$trips_to_bahami_from_europe,
'find_reservation'=>$find_reservation,
'kartica'=>$kartica,
'mjesto'=>$mjesto]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Upit  $upit
     * @return \Illuminate\Http\Response
     */
    public function show(Upit $upit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Upit  $upit
     * @return \Illuminate\Http\Response
     */
    public function edit(Upit $upit)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Upit  $upit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Upit $upit)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Upit  $upit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Upit $upit)
    {
        //
    }
}
