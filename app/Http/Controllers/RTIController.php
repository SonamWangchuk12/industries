<?php

namespace App\Http\Controllers;

use App\RTI;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RTIController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $rtis= RTI::all();
        return view('admin.rti.index',compact('rtis'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.rti.create');
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
        $this->validate($request, ['name'=>'required']);
        $data=$request->all();
        if ($request->hasFile('document')) {
            //  Let's do everything here
            if ($request->file('document')->isValid()) {
                //
                $validated = $request->validate([
                    'name' => 'string',
                    'document' => 'required|mimes:jpeg,png,jpg,gif,svg,pdf',
                ]);
                $fileName = "rtidoc-"  . request()->document->hashName();
                $request->document->move(public_path('rtidoc'),$fileName);
                $data['document']=$fileName;
            }
        }

        RTI::create($data);
        return redirect()->back()->with('success','RTI added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\RTI  $rTI
     * @return \Illuminate\Http\Response
     */
    public function show(RTI $rTI)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RTI  $rTI
     * @return \Illuminate\Http\Response
     */
    public function edit(RTI $rTI)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RTI  $rTI
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RTI $rTI)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\RTI  $rTI
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $rtis=RTI::find($id);
        $rtis->delete();
        return redirect()->route('rtis.index')->with('message','RTI deleted successfully!!!');
    }
}
