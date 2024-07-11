@extends('layouts.layout')

@section('content')


<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>INDUSTRIES AND COMPANIES SIKKIM </h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li> INDUSTRIES AND COMPANIES SIKKIM</li>
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
                {{$scheme->name}}
                <div class="col-md-12">
                    {!!$scheme->description !!}

                  </div>
                </ul>
                @endforeach
            </div>
        </div>
    </div>
  </section>




@endsection
