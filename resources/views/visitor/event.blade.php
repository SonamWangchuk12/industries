@extends('layouts.layout')

@section('content')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>

<script>$(document).ready( function () {
    $('#dataTable').DataTable();
} );
</script>

<section class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Events</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Events</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  
  <div class="container">
    @if($events->count()>0)
    @foreach($events as $event)
   
  <section id="hero2">
   
       
    <div class="hero-container">

      <div id="heroCarousel{{$event->id}}" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
        @if($event->attachments->count()>0)
        <div class="carousel-inner" role="listbox">
          
            
          <div class="carousel-item active" style="background-image:url('{{asset('eventfile')}}/{{$event->attachments[0]->document}}');height:500px">
          </div>
          <?php $i=0;?>
        @while(++$i<$event->attachments->count())
       
        <div class="carousel-item" style="background-image:url('{{asset('eventfile')}}/{{$event->attachments[$i]->document}}');height:500px">
        </div>
      
        @endwhile
       
    </div>
    @else
    <div class="carousel-item active" style="background-image:url('{{asset('eventfile')}}/static');height:500px">
    </div>
    @endif
    <a class="carousel-control-prev" href="#heroCarousel{{$event->id}}" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-rounded-left" aria-hidden="false"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel{{$event->id}}" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-rounded-right" aria-hidden="false"></span>
          <span class="sr-only">Next</span>
        </a>
      
      </div>
      
      <br/>
  <h4 style="text-align:center;color:black">{{$event->name}}</h4>
  <br/>
  {{-- {!! $event->description !!} --}}
  {!! $event->description !!} 
<br/>
  
  
 
    </div>
   
  </section><!-- End Hero -->
  @endforeach
  @else
  <p>Enter some content</p>
  @endif
</div>

@endsection

