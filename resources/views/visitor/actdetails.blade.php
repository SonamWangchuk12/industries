@extends('layouts.layout')

@section('content')


<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2> {{$acts->name}}</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Acts And Regulations</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              {!!$acts->description !!} 
                @foreach($act_attachments as $attachment)
                <ul>
                  <li><a href="{{asset('plandoc')}}/{{$attachment->document}}" target="_blank">{{$attachment->name}}</a></li>
                </ul>
                @endforeach
               </div>
        </div>
    </div>
  </section>


  
@endsection
