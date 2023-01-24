@extends('layouts.layout')

@section('content')


<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2> {{$onservices->name}}</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Online Services</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
           <a href="{{ url('http://'.$onservices->link) }}"target="_blank">   {{$onservices->name}}</a>
                @foreach($on_attachments as $attachment)
                <ul>
                  <li><a href="{{asset('onlineservicedoc')}}/{{$attachment->document}}" target="_blank">{{$attachment->name}}</a></li>
                </ul>
                @endforeach
               </div>
        </div>
    </div>
  </section>


  
@endsection
