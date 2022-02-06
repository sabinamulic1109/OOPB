<?php

namespace App\Http\Controllers;
use DB;
use App\Models\Ticket;
use Illuminate\Http\Request;

class TicketController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tickets=DB::table('tickets')
        ->get();
        return view('tickets.index',['tickets'=>$tickets]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departures=DB::table('departures')->get();
        $destinations=DB::table('destinations')->get();
        $types=DB::table('types')->get();
        $klasas=DB::table('klasas')->get();
        return view('tickets.add',['departures'=> $departures,'destinations'=> $destinations,'types'=> $types,'klasas'=> $klasas ]);


        


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'bar_kod'=>'required|string|max:255',
        ]);

        DB::table('tickets')->insert([
            'bar_kod'=> $request->bar_kod,
            'polaziste'=> $request->polaziste,
            'odrediste'=> $request->odrediste,
            'tip'=> $request->tip,
            'klasa'=> $request->klasa,
            'cijena'=> $request->cijena,
            'datum'=> $request->datum,
            'vrijeme'=> $request->vrijeme,



        ]);

        return redirect()->route('tickets');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function show(Ticket $ticket)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $id=$request->id;

        $tickets=DB::table('tickets')
        ->where('id', $id)
        ->get();

        $departures=DB::table('departures')
        ->get();
        $destinations=DB::table('destinations')
        ->get();
        $types=DB::table('types')
        ->get();
        $klasas=DB::table('klasas')
        ->get();

        return view('tickets.edit', ['tickets'=>$tickets, 'departures'=>$departures, 'destinations'=>$destinations, 'types'=>$types, 'klasas'=>$klasas]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id=$request->id;

        $request->validate([
            'bar_kod'=>'required|string|max:255',
        ]);

        $update_query = DB::table('tickets')
        ->where('id',$id)
        ->update([
            'bar_kod'=> $request->bar_kod,
            'polaziste'=> $request->polaziste,
            'odrediste'=> $request->odrediste,
            'tip'=> $request->tip,
            'klasa'=> $request->klasa,
            'cijena'=> $request->cijena,
            'datum'=> $request->datum,
            'vrijeme'=> $request->vrijeme,



        ]);

        return redirect()->route('tickets');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ticket  $ticket
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ticket $ticket)
    {
        //
    }


public function delete (Request $request){

    $id=$request->id;
    Ticket::destroy($id);

    return redirect()->route('tickets');

}
}