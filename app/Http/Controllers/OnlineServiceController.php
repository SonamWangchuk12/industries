<?php

namespace App\Http\Controllers;
use App\OnlineServiceAttachment;
use App\OnlineService;
use Illuminate\Http\Request;

class OnlineServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $onservices = OnlineService::all();
        return view('admin.onlineservice.index',compact('onservices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.onlineservice.create');
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
        $lastid = OnlineService::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'onservice_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "schemedoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('onlineservicedoc'), $document[$item]);
                $db1 = new OnlineServiceAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Online Service data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OnlineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function show(OnlineService $onlineService)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OnlineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function edit(OnlineService $onlineService)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OnlineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OnlineService $onlineService)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OnlineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=OnlineService::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
