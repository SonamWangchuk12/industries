<?php

namespace App\Http\Controllers;

use App\ImportantLink;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ImportantLinkController extends Controller
{
    public function index()
    {
        $abouts= ImportantLink::all();
        return view('admin.implink.index',compact('abouts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.implink.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



    // $cleaned_name = strip_tags($request->input('link'));
    // $data['link'] = $cleaned_name;

        $this->validate($request, ['name'=>'required','link'=>'required']);

      $data=$request->all();


        ImportantLink::create($data);
        return redirect()->back()->with('success','ImportantLink  created
        successfully!!!');
    }
    public function edit($id)
    {
        $abouts = ImportantLink::find($id);
        return view('admin.implink.edit',compact('abouts'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {


        $this->validate($request, ['name'=>'required','link'=>'required'
        ]);
        $implink = ImportantLink::find($id);


        $implink->update($data);
        return redirect()->route('implinks.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $implink=ImportantLink::find($id);
        $implink->delete();
        return redirect()->route('implinks.index')->with('success','Record deleted successfully!!!');
    }
}
