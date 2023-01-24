<?php

namespace App\Http\Controllers;

use App\OfflineServiceAttachment;
use App\OfflineService;
use Illuminate\Http\Request;

class OfflineServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $offservices = OfflineService::all();
        return view('admin.offlineservice.index',compact('offservices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.offlineservice.create');
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
        $lastid = OfflineService::create($data)->id;
        // dd($request->all());
        if (!empty($request->document)) {
            foreach ($request->document as $item => $value) {

                $document[$item] = $request->document[$item]->hashName();
                $docname[$item] =$request->docname[$item];
                $data1 = array(
                    'name'      => $docname[$item],
                    'document.*'=>'mimes:jpeg,jpg,png,pdf,png',
                    'offservice_id' => $lastid,
                    'document' => $document[$item],
                );
                // $fileName = "schemedoc-"  . request()->document->hashName();
                $request->document[$item]->move(public_path('offlineeservicedoc'), $document[$item]);
                $db1 = new OfflineServiceAttachment($data1);
                $db1->save();
            }
       
        }
        return redirect()->back()->with('success','Offline Service data added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\OfflineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function show(OfflineService $onlineService)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\OfflineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function edit(OfflineService $onlineService)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\OfflineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OfflineService $onlineService)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\OfflineService  $onlineService
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $event=OfflineService::find($id);
        $event->delete();
        return redirect()->back()->with('success','Record deleted successfully!!!');

    }
}
