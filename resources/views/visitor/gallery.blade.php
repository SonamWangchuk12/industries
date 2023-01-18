@extends('layouts.layout')

@section('content')


<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Gallery</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Gallery</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->
  <section id="portfolio" class="portfolio">
    <div class="container">

      <div class="row portfolio-container">
        @foreach($galleries as $gallery)
        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
         
            <img src="{{asset('galleryimg')}}/{{$gallery->photo}}" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>{{$gallery->name}}</h4>
              <div class="portfolio-links">
                <a href="{{asset('galleryimg')}}/{{$gallery->photo}}"  data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
              </div>
            </div>
          </div>
        </div>
          @endforeach
    </div>
        
    </div>
      

  </section><!-- End Portfolio Section -->
  
@endsection
