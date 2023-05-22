<?php

namespace App\Http\Controllers;

use App\OrgStructure;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Mews\Purifier\Facades\Purifier;

class OrgStructureController extends Controller
{
    public function index()
    {
        $orgstructures= OrgStructure::all();
        return view('admin.orgstructure.index',compact('orgstructures'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.orgstructure.create');
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
        

       $cleaned_name = Purifier::clean($request->input('content'));
       $data['content'] = $cleaned_name;
        OrgStructure::create($data);
        return redirect()->back()->with('success','Org Structure  content created
        successfully!!!');
    }
    public function edit($id)
    {
        $orgstructures = OrgStructure::find($id);
        return view('admin.orgstructure.edit',compact('orgstructures'));
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
        $orgstructures = OrgStructure::find($id);
      
          $data=$request->all();
        
       
        $orgstructures->update($data);
        return redirect()->route('orgstructures.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $orgstructures=OrgStructure::find($id);
        $orgstructures->delete();
        return redirect()->route('orgstructures.index')->with('success','Record deleted successfully!!!');
    }
}
