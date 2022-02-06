<?php

namespace App\Http\Controllers;

use App\Models\Klasa;
use Illuminate\Http\Request;
use DB;

class KlasaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $klasas=DB::table('klasas')
        ->orderBy('naziv')
        ->get();
        return view('klasas.index',['klasas'=>$klasas]);
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
     * @param  \App\Models\Klasa  $klasa
     * @return \Illuminate\Http\Response
     */
    public function show(Klasa $klasa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Klasa  $klasa
     * @return \Illuminate\Http\Response
     */
    public function edit(Klasa $klasa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Klasa  $klasa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Klasa $klasa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Klasa  $klasa
     * @return \Illuminate\Http\Response
     */
    public function destroy(Klasa $klasa)
    {
        //
    }
}
