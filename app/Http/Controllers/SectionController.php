<?php

namespace App\Http\Controllers;

use App\Section;
use Illuminate\Http\Request;

class SectionController extends Controller
{
    public function index()
    {
        $sections= Section::all();
        return view('admin.section.index',compact('sections'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.section.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['name'=>'required','content'=>'required']);
        $data=$request->all();

        // $cleaned_name = Purifier::clean($request->input('content'));
        // $data['content'] = $cleaned_name;
    
    
        Section::create($data);
        return redirect()->back()->with('message','Section us content created 
        successfully!!!');
    }
    public function edit($id)
    {
        $about = Section::find($id);
        return view('admin.section.edit',compact('about'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       
        $this->validate($request, ['name'=>'required','content'=>'required'
        ]);
        $about = Section::find($id);
        $data= $request->all();
        $cleaned_name = Purifier::clean($request->input('content'));
        $data['content'] = $cleaned_name;
        $about->update($data);
        return redirect()->route('sections.index')->with('message','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $about=Section::find($id);
        $about->delete();
        return redirect()->route('sections.index')->with('message','Record deleted successfully!!!');
    }
}
