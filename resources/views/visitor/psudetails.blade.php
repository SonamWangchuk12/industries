@extends('layouts.layout')

@section('content')


<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2> {{$schemes->name}}</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>PSU</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              {!!$schemes->description !!}

            </div>
        </div>
    </div>
  </section>



@endsection
