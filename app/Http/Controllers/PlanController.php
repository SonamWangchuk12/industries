<?php

namespace App\Http\Controllers;

use App\PlanAttachment;
use App\Plan;
use Illuminate\Http\Request;

class PlanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $plans = Plan::all();
        return view('admin.plan.index',compact('plans'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.plan.create');
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
        $lastid = Plan::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'plan_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "schemedoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('plandoc'), $document[$item]);
                $db1 = new PlanAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Plan data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Plan  $plan
     * @return \Illuminate\Http\Response
     */
    public function show(Plan $plan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Plan  $plan
     * @return \Illuminate\Http\Response
     */
    public function edit(Plan $plan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Plan  $plan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Plan $plan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Plan  $plan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=Plan::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
