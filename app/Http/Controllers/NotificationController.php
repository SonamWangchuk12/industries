<?php

namespace App\Http\Controllers;

use App\Notification;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Validator;
class NotificationController extends Controller
{
    public function index()
    {
        //
        $notifications= Notification::all();
        return view('admin.notification.index',compact('notifications'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.notification.create');
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
                $fileName = "notificationdoc-"  . request()->document->hashName();
                $request->document->move(public_path('notificationdoc'),$fileName);
                $data['document']=$fileName;
            }
        }

        Notification::create($data);
        return redirect()->back()->with('success','Notification added successfully!!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function show(Notification $notification)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function edit(Notification $notification)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Notification $notification)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $notifications=Notification::find($id);
        $notifications->delete();
        return redirect()->route('notifications.index')->with('message','Notification content deleted successfully!!!');
    }
}
