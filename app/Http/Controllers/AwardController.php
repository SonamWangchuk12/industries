<?php

namespace App\Http\Controllers;

use App\Award;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Validator;

class AwardController extends Controller
{
    public function index()
    {
        //
        $circulars= Award::all();
        return view('admin.award.index',compact('circulars'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.award.create');
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
                $fileName = "awardsdoc-"  . request()->document->hashName();
                $request->document->move(public_path('awardsdoc'),$fileName);
                $data['document']=$fileName;
            }
        }

        Award::create($data);
        return redirect()->back()->with('success','Award added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Award  $award
     * @return \Illuminate\Http\Response
     */
    public function show(Award $award)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Award  $award
     * @return \Illuminate\Http\Response
     */
    public function edit(Award $award)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Award  $award
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Award $award)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Award  $award
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $awards=Award::find($id);
        $awards->delete();
        return redirect()->route('awards.index')->with('message','Award content deleted successfully!!!');
    }

}
