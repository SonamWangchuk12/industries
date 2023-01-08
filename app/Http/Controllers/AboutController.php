<?php

namespace App\Http\Controllers;

use App\About;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $abouts= About::all();
        return view('admin.about.index',compact('abouts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.about.create');
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
            $fileName = "aboutusphoto-"  . request()->photo->hashName();
            $request->photo->move(public_path('aboutusphoto'),$fileName);
            $data['photo']=$fileName;
        }
    }

    //    $data=  Purifier::clean(Input::get($request->all()));

        About::create($data);
        return redirect()->back()->with('success','About us content created
        successfully!!!');
    }
    public function edit($id)
    {
        $abouts = About::find($id);
        return view('admin.about.edit',compact('abouts'));
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
        $about = About::find($id);
      
          $data=$request->all();
        
       
        $about->update($data);
        return redirect()->route('abouts.index')->with('success','Record updated successfully!!!');
    }
    public function destroy($id)
    {
        $about=About::find($id);
        $about->delete();
        return redirect()->route('abouts.index')->with('success','Record deleted successfully!!!');
    }
}
