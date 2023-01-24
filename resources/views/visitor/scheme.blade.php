@extends('layouts.layout')

@section('content')
<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>List Of Schemes</h2>
        <ol>
          <li><a href="">Home</a></li>
          <li>Scheme</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                @foreach($schemes as $scheme)
                <ul>
                <li><a href="{{route('visitor.schemedetails',[$scheme->id])}}">{{$scheme->name}}</a></li>
                </ul>
                @endforeach
            </div>
        </div>
    </div>
  </section>


  
@endsection
