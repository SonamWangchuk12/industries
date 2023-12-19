<?php

namespace App\Http\Controllers;

use App\GovData;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Validator;
class GovDataController extends Controller
{
    public function index()
    {
        //
        $govdatas= GovData::all();
        return view('admin.governer.index',compact('govdatas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.governer.create');
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
        $validator = Validator::make($request->all(), [
            'photo' => 'required|file|mimes:jpg,pdf,png,jpeg|max:3048',
        ], [
            'photo.mimes' => 'The document must be a file of type: jpg, pdf, png, jpeg.',
        ]);
        
        $allowedContentTypes = ['image/jpeg', 'image/jpg', 'application/pdf', 'image/png'];

        $file = $request->file('photo');
        
    if ($validator->fails() ||  !in_array($file->getClientMimeType(), $allowedContentTypes)) {
        // Validation failed
        // abort(403, 'Invalid file type');
        abort(403, 'Invalid file type.');
    }
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
                
                // $fileName = "ministerphoto-"  . request()->photo->hashName();
                // $request->photo->storeAs('ministerphoto', $fileName);
                $fileName = "govdataphoto-"  . request()->photo->hashName();
                $request->photo->move(public_path('govdataphoto'),$fileName);
                $data['photo']=$fileName;
            }
        }
        // dd('here');
        GovData::create($data);
        return redirect()->back()->with('success','Governer Data created successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GovData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function show(GovData $cMData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GovData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $govdatas = GovData::find($id);
        return view('admin.governer.edit',compact('govdatas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GovData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
        $this->validate($request, ['name'=>'required',
        'designation'=>'required',
        // 'photo'=>'mimes:jpeg,jpg,png'
        ]);

        $govdatas = GovData::find($id);
        $data= $request->all();

        if($request->hasFile('photo'))
        {$validated = $request->validate([
            'name' => 'string|max:40',
            'designation' => 'string|max:40',
            'photo' => 'mimes:jpeg,png|max:1014',
        ]);
                // $photo= $request->photo->hashName();
                // $request->photo->move(public_path('storage/ministerphoto'),$photo);
                $photo = "govdataphoto-"  . request()->photo->hashName();
                $request->photo->move(public_path('govdataphoto'),$photo);


        }
        else{

            $photo = $govdatas->photo;
        }
        $data['photo'] = $photo;
        $govdatas->update($data);
        return redirect()->route('govdatas.index')->with('success','Record updated successfully!!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GovData  $cMData
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $govdatas=GovData::find($id);
        $govdatas->delete();
        return redirect()->route('govdatas.index')->with('message','Record deleted successfully!!!');
    }
}
