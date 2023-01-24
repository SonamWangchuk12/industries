@extends('layouts.layout')

@section('content')
<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>List Of Acts and Regulations</h2>
        <ol>
          <li><a href="">Home</a></li>
          <li>Acts and Regulation</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                @foreach($acts as $act)
                <ul>
                <li><a href="{{route('visitor.actdetails',[$act->id])}}">{{$act->name}}</a></li>
                </ul>
                @endforeach
            </div>
        </div>
    </div>
  </section>


  
@endsection
