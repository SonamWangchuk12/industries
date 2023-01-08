<?php

namespace App\Http\Controllers;

use App\CMData;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CMDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $cmdatas= CMData::all();
        return view('admin.cmdatas.index',compact('cmdatas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.cmdatas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['name'=>'required']);
        $data=$request->all();
        if ($request->hasFile('photo')) {
            //  Let's do everything here
            if ($request->file('photo')->isValid()) {
                //
                $validated = $request->validate([
                    'name' => 'string|max:40',
                    'designation' => 'string|max:40',
                    'photo' => 'mimes:jpeg,png|max:2048',
                ]);
                // $fileName = "cmphoto-"  . request()->photo->hashName();
                // $request->photo->storeAs('cmphoto', $fileName);
                $fileName = "cmphoto-"  . request()->photo->hashName();
                $request->photo->move(public_path('cmphoto'),$fileName);
                $data['photo']=$fileName;
            }
        }

        CMData::create($data);
        return redirect()->back()->with('success','CM data created successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CMData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function show(CMData $cMData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CMData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $cmdata = CMData::find($id);
        return view('admin.cmdatas.edit',compact('cmdata'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CMData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
        $this->validate($request, ['name'=>'required',
        'designation'=>'required',
        // 'photo'=>'mimes:jpeg,jpg,png'
        ]);

        $cmdata = CMData::find($id);
        $data= $request->all();

        if($request->hasFile('photo'))
        {$validated = $request->validate([
            'name' => 'string|max:40',
            'designation' => 'string|max:40',
            'photo' => 'mimes:jpeg,png|max:2048',
        ]);
                // $photo= $request->photo->hashName();
                // $request->photo->move(public_path('storage/cmphoto'),$photo);
                $photo = "cmphoto-"  . request()->photo->hashName();
                $request->photo->move(public_path('cmphoto'),$photo);


        }
        else{

            $photo = $cmdata->photo;
        }
        $data['photo'] = $photo;
        $cmdata->update($data);
        return redirect()->route('cmdatas.index')->with('success','Record updated successfully!!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CMData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $cmdata=CMData::find($id);
        $cmdata->delete();
        return redirect()->route('admin.cmdatas.index')->with('message','Record deleted successfully!!!');
    }
}
