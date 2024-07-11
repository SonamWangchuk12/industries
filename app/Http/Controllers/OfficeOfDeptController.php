<?php

namespace App\Http\Controllers;

use App\OfficeOfDept;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OfficeOfDeptController extends Controller
{
    public function index()
    {
        $dics= OfficeOfDept::all();
        return view('admin.officedept.index',compact('dics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.officedept.create');
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

        OfficeOfDept::create($data);
        return redirect()->back()->with('success','Offices Under Department content created
        successfully!!!');
    }
    public function edit($id)
    {
        $dics = OfficeOfDept::find($id);
        return view('admin.officedept.edit',compact('dics'));
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
        $dics = OfficeOfDept::find($id);

          $data=$request->all();


        $dics->update($data);
        return redirect()->route('officesofdepts.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $dics=OfficeOfDept::find($id);
        $dics->delete();
        return redirect()->route('officesofdepts.index')->with('success','Record deleted successfully!!!');
    }
}
