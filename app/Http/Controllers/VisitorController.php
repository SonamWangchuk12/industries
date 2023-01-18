<?php

namespace App\Http\Controllers;

use App\Visitor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use App\Slider;
use App\Notification;
use App\Tender;
use App\Circular;
use App\RTI;
use App\Gallery;
use App\OrgStructure;




class VisitorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sliders= Slider::orderBy('id', 'desc')->take(3)->get();
        $galleries= Gallery::orderBy('id', 'desc')->take(9)->get();
        $abouts= About::latest()->first();
        $notifications= Notification::orderBy('id', 'desc')->take(5)->get();
        $tenders= Tender::orderBy('id', 'desc')->take(5)->get();
        $circulars= Circular::orderBy('id', 'desc')->take(5)->get();
        return view('visitor.welcome',compact('sliders','abouts','notifications','circulars','tenders','galleries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function show(Visitor $visitor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function edit(Visitor $visitor)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Visitor $visitor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Visitor  $visitor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Visitor $visitor)
    {
        //
    }

    public function rtipage(Request $request)
    {
        //
        $rtis= RTI::orderBy('id', 'desc')->get();
        return view('visitor.rti',compact('rtis'));
    }
    public function gallery(Request $request)
    {
        //
        $galleries= Gallery::orderBy('id', 'desc')->get();
        return view('visitor.gallery',compact('galleries'));
    }
    public function orgview(Request $request)
    {
        //
        $orgstructures= OrgStructure::latest()->first();
        return view('visitor.orgstructureview',compact('orgstructures'));
    }
}
