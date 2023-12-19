<?php

namespace App\Http\Controllers;

use App\SectionAttachment;
use App\Section;
use Illuminate\Http\Request;

class SectionController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sections = Section::all();
        return view('admin.section.index',compact('sections'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        //
        $validatedData = $request->validate([
            'name' => 'required',
            'document.*'=>'mimes:jpeg,jpg,png,pdf,png',

        ]);
        $data = $request->all();
        $lastid = Section::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'section_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "sectiondoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('sectiondoc'), $document[$item]);
                $db1 = new SectionAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Section data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function show(Section $section)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function edit(Section $section)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Section $section)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Section  $section
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=Section::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}