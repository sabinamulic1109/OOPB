<?php

namespace App\Http\Controllers;

use App\Models\Passanger;
use Illuminate\Http\Request;
use DB;

class PassangerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $passangers=DB::table('passangers')
        ->get();
        return view('passangers.index',['passangers'=>$passangers]);

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
     * @param  \App\Models\Passanger  $passanger
     * @return \Illuminate\Http\Response
     */
    public function show(Passanger $passanger)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Passanger  $passanger
     * @return \Illuminate\Http\Response
     */
    public function edit(Passanger $passanger)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Passanger  $passanger
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Passanger $passanger)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Passanger  $passanger
     * @return \Illuminate\Http\Response
     */
    public function destroy(Passanger $passanger)
    {
        //
    }
}
