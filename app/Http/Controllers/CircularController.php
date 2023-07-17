<?php

namespace App\Http\Controllers;

use App\Circular;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Validator;

class CircularController extends Controller
{ public function index()
    {
        //
        $circulars= Circular::all();
        return view('admin.circular.index',compact('circulars'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.circular.create');
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
        $this->validate($request, ['name'=>'required']);
        $validator = Validator::make($request->all(), [
            'document' => 'required|file|mimes:jpg,pdf,png,jpeg|max:3048',
        ], [
            'document.mimes' => 'The document must be a file of type: jpg, pdf, png, jpeg.',
        ]);
        
        $allowedContentTypes = ['image/jpeg', 'image/jpg', 'application/pdf', 'image/png'];

        $file = $request->file('document');
        
    if ($validator->fails() ||  !in_array($file->getClientMimeType(), $allowedContentTypes)) {
        // Validation failed
        // abort(403, 'Invalid file type');
        abort(403, 'Invalid file type.');
    }
        $data=$request->all();
        if ($request->hasFile('document')) {
            //  Let's do everything here
            if ($request->file('document')->isValid()) {
                //
                $validated = $request->validate([
                    'name' => 'string',
                    'document' => 'required|mimes:jpeg,png,jpg,gif,svg,pdf',
                ]);
                $fileName = "circulardoc-"  . request()->document->hashName();
                $request->document->move(public_path('circulardoc'),$fileName);
                $data['document']=$fileName;
            }
        }

        Circular::create($data);
        return redirect()->back()->with('success','Circular added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Circular  $circular
     * @return \Illuminate\Http\Response
     */
    public function show(Circular $circular)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Circular  $circular
     * @return \Illuminate\Http\Response
     */
    public function edit(Circular $circular)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Circular  $circular
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Circular $circular)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Circular  $circular
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $circulars=Circular::find($id);
        $circulars->delete();
        return redirect()->route('circulars.index')->with('message','Circular content deleted successfully!!!');
    }

}
