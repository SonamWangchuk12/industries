<?php

namespace App\Http\Controllers;

use App\PSU;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PSUController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $schemes = PSU::all();
        return view('admin.psudetails.index',compact('schemes'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.psudetails.create');
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
        $validatedData = $request->validate([
            'name' => 'required',

        ]);
        $data = $request->all();

        $lastid = PSU::create($data)->id;
        // dd($request->all());





        return redirect()->back()->with('success','PSU data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\PSU  $psudetails
     * @return \Illuminate\Http\Response
     */
    public function show(PSU $psudetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\PSU  $psudetails
     * @return \Illuminate\Http\Response
     */
    public function edit(PSU $psudetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\PSU  $psudetails
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PSU $psudetails)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\PSU  $psudetails
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=PSU::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
