<?php

namespace App\Http\Controllers;

use App\Act;
use App\ActAttachment;
use Illuminate\Http\Request;

class ActController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $acts = Act::all();
        return view('admin.act.index',compact('acts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.act.create');
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
        $cleaned_name = Purifier::clean($request->input('content'));
        $data['content'] = $cleaned_name;
        $lastid = Act::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'act_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "schemedoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('actdoc'), $document[$item]);
                $db1 = new ActAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Act data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Act  $act
     * @return \Illuminate\Http\Response
     */
    public function show(Act $act)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Act  $act
     * @return \Illuminate\Http\Response
     */
    public function edit(Act $act)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Act  $act
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Act $act)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Act  $act
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=Act::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
