<?php

namespace App\Http\Controllers;

use App\Visitor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use App\Minister;
use App\CMData;
use App\EventAttachment;
use App\Event;
use App\DIC;
use App\Slider;
use App\Notification;
use App\Tender;
use App\Circular;

use App\GovData;
use App\RTI;
use App\Gallery;
use App\OrgStructure;
use App\Scheme;
use App\SchemeLink;
use App\SchemeAttachment;
use App\Section;
use App\SectionAttachment;



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
        
        $govdata= GovData::latest()->first();
        $minisdatas= Minister::latest()->first();
        $cmdatas= CMData::latest()->first();
        return view('visitor.welcome',compact('govdata','sliders','abouts','notifications','circulars','tenders','galleries','cmdatas','minisdatas'));
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
        
        $scheme_links= SchemeLink::where('scheme_id',$id)->get();
        return view('visitor.schemedetails',compact('schemes','scheme_attachments','scheme_links'));
    }
    public function section(Request $request)
    {
        //
        $sections= Section::orderBy('id', 'desc')->get();
        return view('visitor.section',compact('sections'));
    }
    public function sectiondetail($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $sections= Section::find($id);
        $section_attachments= SectionAttachment::where('section_id',$id)->get();
        return view('visitor.sectiondetails',compact('sections','section_attachments'));
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

    public function offservice(Request $request)
    {
        //
        $offservices= OfflineService::orderBy('id', 'desc')->get();
        return view('visitor.offlineservice',compact('offservices'));
    }
    public function offservicedetails($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $offservices= OfflineService::find($id);
        $off_attachments= OfflineServiceAttachment::where('offservice_id',$id)->get();
        return view('visitor.offservicedetails',compact('offservices','off_attachments'));
    }
    public function onservice(Request $request)
    {
        //
        $onservices= OnlineService::orderBy('id', 'desc')->get();
        return view('visitor.onlineservice',compact('onservices'));
    }
    public function onservicedetails($id)
    {
        //Order::where('user_id', auth()->id)->get();
        $onservices= OnlineService::find($id);
        $on_attachments= OnlineServiceAttachment::where('onservice_id',$id)->get();
        return view('visitor.onservicedetails',compact('onservices','on_attachments'));
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

    public function dics(Request $request)
    {
        //
        $dics= DIC::latest()->first();
        return view('visitor.dic',compact('dics'));
    }
    public function events(Request $request)
    {
        //
        $events = Event::with('attachments')->orderBy('id', 'desc')->get();

        $eventath=EventAttachment::all();
        return view('visitor.event',compact('events','eventath'));
    }
}
