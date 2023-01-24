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
use App\Scheme;
use App\SchemeAttachment;
use App\Plan;
use App\PlanAttachment;
use App\Act;
use App\ActAttachment;

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
    public function tender(Request $request)
    {
        //
        $tenders= Tender::orderBy('id', 'desc')->get();
        return view('visitor.tender',compact('tenders'));
    }
    public function circular(Request $request)
    {
        //
        $circulars= Circular::orderBy('id', 'desc')->get();
        return view('visitor.circular',compact('circulars'));
    }
    public function notification(Request $request)
    {
        //
        $notifications= Notification::orderBy('id', 'desc')->get();
        return view('visitor.notification',compact('notifications'));
    }

    public function scheme(Request $request)
    {
        //
        $schemes= Scheme::orderBy('id', 'desc')->get();
        return view('visitor.scheme',compact('schemes'));
    }
    public function schemedetail($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $schemes= Scheme::find($id);
        $scheme_attachments= SchemeAttachment::where('scheme_id',$id)->get();
        return view('visitor.schemedetails',compact('schemes','scheme_attachments'));
    }

    public function plan(Request $request)
    {
        //
        $plans= Plan::orderBy('id', 'desc')->get();
        return view('visitor.plan',compact('plans'));
    }
    public function plandetail($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $plans= Plan::find($id);
        $plan_attachments= PlanAttachment::where('plan_id',$id)->get();
        return view('visitor.plandetails',compact('plans','plan_attachments'));
    }

    public function act(Request $request)
    {
        //
        $acts= Act::orderBy('id', 'desc')->get();
        return view('visitor.act',compact('acts'));
    }
    public function actdetail($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $acts= Act::find($id);
        $act_attachments= ActAttachment::where('act_id',$id)->get();
        return view('visitor.actdetails',compact('acts','act_attachments'));
    }
    public function annualreport(Request $request)
    {
        //
        // $annualdocs= RTI::orderBy('id', 'desc')->get();
        // return view('visitor.annualreport',compact('annualdoc'));
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
