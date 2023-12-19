<?php

namespace App\Http\Controllers;

use App\ReceivedComplain;
use Illuminate\Http\Request;

class ReceivedComplainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $abouts= ReceivedComplain::all();
        return view('admin.receivedcomplain.index',compact('abouts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view('admin.sap.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $this->validate($request, ['name'=>'required','subject'=>'required']);
        $data=$request->all();

        ReceivedComplain::create($data);
        return redirect()->back()->with('message','Query submitted successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ReceivedComplain  $receivedComplain
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $receivedComplain = ReceivedComplain::find($id);
        return view('admin.receivedcomplain.viewDetails', compact('receivedComplain'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ReceivedComplain  $receivedComplain
     * @return \Illuminate\Http\Response
     */
    public function edit(ReceivedComplain $receivedComplain)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ReceivedComplain  $receivedComplain
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ReceivedComplain $receivedComplain)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ReceivedComplain  $receivedComplain
     * @return \Illuminate\Http\Response
     */
    public function destroy(ReceivedComplain $receivedComplain)
    {
        //
    }
}
