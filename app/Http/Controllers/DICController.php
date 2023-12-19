<?php

namespace App\Http\Controllers;

use App\DIC;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DICController extends Controller
{
    public function index()
    {
        $dics= DIC::all();
        return view('admin.dic.index',compact('dics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.dic.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



    // $cleaned_name = strip_tags($request->input('content'));
    // $data['content'] = $cleaned_name;

        $this->validate($request, ['name'=>'required','content'=>'required']);

      $data=$request->all();

        DIC::create($data);
        return redirect()->back()->with('success','District Industries Center content created
        successfully!!!');
    }
    public function edit($id)
    {
        $dics = DIC::find($id);
        return view('admin.dic.edit',compact('dics'));
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


        $this->validate($request, ['name'=>'required','content'=>'required'
        ]);
        $dics = DIC::find($id);
      
          $data=$request->all();
        
       
        $dics->update($data);
        return redirect()->route('dics.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $dics=DIC::find($id);
        $dics->delete();
        return redirect()->route('dics.index')->with('success','Record deleted successfully!!!');
    }
}