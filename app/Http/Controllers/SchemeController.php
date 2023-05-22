<?php

namespace App\Http\Controllers;

use App\SchemeAttachment;
use App\Scheme;
use Illuminate\Http\Request;
use Mews\Purifier\Facades\Purifier;

class SchemeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $schemes = Scheme::all();
        return view('admin.scheme.index',compact('schemes'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.scheme.create');
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
            'document.*'=>'mimes:jpeg,jpg,png,pdf,png',

        ]);
        $data = $request->all();
        $cleaned_name = Purifier::clean($request->input('description'));
        $data['description'] = $cleaned_name;
        $lastid = Scheme::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'scheme_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "schemedoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('schemedoc'), $document[$item]);
                $db1 = new SchemeAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Scheme data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */
    public function show(Scheme $scheme)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */
    public function edit(Scheme $scheme)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Scheme $scheme)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=Scheme::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
