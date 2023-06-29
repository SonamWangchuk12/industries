<?php

namespace App\Http\Controllers;

use App\Tender;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TenderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tenders= Tender::all();
        return view('admin.tender.index',compact('tenders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.tender.create');
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
        if ($validator->fails()) {
            // Validation failed
            // abort(403, 'Invalid file type');
            abort(403, 'Unauthorized action.');
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
                $fileName = "tenderdoc-"  . request()->document->hashName();
                $request->document->move(public_path('tenderdoc'),$fileName);
                $data['document']=$fileName;
            }
        }

        Tender::create($data);
        return redirect()->back()->with('success','Tender added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Tender  $tender
     * @return \Illuminate\Http\Response
     */
    public function show(Tender $tender)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Tender  $tender
     * @return \Illuminate\Http\Response
     */
    public function edit(Tender $tender)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Tender  $tender
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tender $tender)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Tender  $tender
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $tenders=Tender::find($id);
        $tenders->delete();
        return redirect()->route('tenders.index')->with('message','Tender content deleted successfully!!!');
    }
}
