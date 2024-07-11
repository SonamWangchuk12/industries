<?php

namespace App\Http\Controllers;

use App\OfficerDirectory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OfficerDirectoryController extends Controller
{
    public function index()
    {
        $dics= OfficerDirectory::all();
        return view('admin.officerdirectory.index',compact('dics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.officerdirectory.create');
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

        OfficerDirectory::create($data);
        return redirect()->back()->with('success','Officer Directory content created
        successfully!!!');
    }
    public function edit($id)
    {
        $dics = OfficerDirectory::find($id);
        return view('admin.officerdirectory.edit',compact('dics'));
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
        $dics = OfficerDirectory::find($id);

          $data=$request->all();


        $dics->update($data);
        return redirect()->route('officerdirectories.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $dics=OfficerDirectory::find($id);
        $dics->delete();
        return redirect()->route('officerdirectories.index')->with('success','Record deleted successfully!!!');
    }
}
