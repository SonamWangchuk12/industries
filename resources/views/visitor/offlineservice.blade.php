@extends('layouts.layout')

@section('content')
<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>List Of Offline Service</h2>
        <ol>
          <li><a href="">Home</a></li>
          <li>Offline Services</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                @foreach($offservices as $offservice)
                <ul class="list-group">
                  <li class="list-group-item"><a href="{{route('visitor.offlineservicesdetails',[$offservice->id])}}">{{$offservice->name}}</a></li>
                </ul>
                @endforeach
            </div>
        </div>
    </div>
  </section>


  
@endsection
