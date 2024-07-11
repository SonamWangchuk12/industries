<?php

namespace App\Http\Controllers;

use App\Company;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $schemes = Company::all();
        return view('admin.companydetails.index',compact('schemes'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.companydetails.create');
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

        $lastid = Company::create($data)->id;
        // dd($request->all());





        return redirect()->back()->with('success','Company data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Company  $companydetails
     * @return \Illuminate\Http\Response
     */
    public function show(Company $companydetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Company  $companydetails
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $companydetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Company  $companydetails
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $companydetails)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Company  $companydetails
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=Company::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
