@extends('layouts.layout')

@section('content')

<section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">
          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image:url('{{asset('sliderphoto')}}/{{$sliders[0]->document}}')">
            <div class="carousel-container">

            </div>
          </div>

          <!-- Slide 2 -->
          @for ($i=1;$i<7;$i++)
          <div class="carousel-item" style="background-image:url('{{asset('sliderphoto')}}/{{$sliders[$i]->document}}')">
            <div class="carousel-container">

            </div>
          </div>
          @endfor

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">
        <div class="section-title">
          <h2>About The Department</h2>
          {{-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> --}}
        </div>
        <div class="row no-gutters">
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start">
             <img src="{{asset('aboutusphoto')}}/{{$abouts->photo}}"  class="img-fluid" >
          </div>
          <div class="col-xl-7 ps-0 ps-lg-5 pe-lg-1 d-flex align-items-stretch">
            <div class="content d-flex flex-column justify-content-center">
              <h3>Commerce and Industries Department</h3>
              <p>
                {!! $abouts->content !!}
              </p>




            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End About Section -->
    <section id="messages" class="messages">

      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Our Government</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
        </div>

        <div class="row content flex-wrap justify-content-between ">
        <div class="col-lg-12" data-aos="fade-right">
            <h1>Commerce And Industries Department.</h1>
            <h2>Government Of Sikkim.</h2>
        </div>

      <div class="container">
        <br/>
        <br/>
        <div class="d-flex justify-content-around">
          <div> <img  src="{{asset('govdataphoto')}}/{{$govdata->photo}}" style="border-radius:70px;height:180px;width:180px">
              <h5> {{$govdata->name}}</h5>
                <h5>{{$govdata->designation}}</h5></div>
          <div>
            <img  src="{{asset('cmphoto')}}/{{$cmdatas->photo}}" style="border-radius:70px;height:180px;width:180px">
            <h5> {{$cmdatas->name}}</h5>
              <h5>{{$cmdatas->designation}}</h5>     </div>

              <div>
                <img  src="{{asset('ministerphoto')}}/{{$minisdatas->photo}}" style="border-radius:70px;height:180px;width:180px">
              <h5> {{$minisdatas->name}}</h5>
                <h5>{{$minisdatas->designation}}</h5>
            </div>
        </div>




      </div>


      </div>
      </div>
      </section>

    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>Latest Updates</h2>
          {{-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> --}}
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="box">
              <h3>Tenders/Quotations</h3>
              {{-- <h4><sup>$</sup>0<span> / month</span></h4> --}}
              <ul>
                <?php $count=1;?>
                @foreach($tenders as $tender)
            <li>  {{$count++}}.<span  style='color:red;margin-right:1.25em;'></span><a href="{{asset('tenderdoc')}}/{{$tender->document}}" target="_blank" >{{$tender->name}}</a></li>
            @endforeach

              </ul>

              <br/>
              <div class="btn-wrap">
                <a href="{{route('visitor.tenders')}}" class="btn-buy">View More</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
            <div class="box">
              <h3>Reports</h3>
              {{-- <h4><sup>$</sup>19<span> / month</span></h4> --}}
              <ul>
                <?php $count=1;?>
                @foreach($notifications as $notification)
            <li> {{$count++}}.<span  style='color:red;margin-right:1.25em;'></span><a href="{{asset('notificationdoc')}}/{{$notification->document}}" target="_blank" >{{$notification->name}} @if(strtotime($notification->created_at) < strtotime('-30 days')) <img src="https://icon-library.com/images/new-icon-gif/new-icon-gif-2.jpg" style="height:30px;width:30px"> @endif</a></li>
            @endforeach
              </ul>

              <br/>
              <div class="btn-wrap">
                <a href="{{route('visitor.notifications')}}" class="btn-buy">View More</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
            <div class="box">
              <h3>Circulars/Notifications</h3>
              {{-- <h4><sup>$</sup>29<span> / month</span></h4> --}}
              <ul>
                <?php $count=1;?>
                @foreach($circulars as $circular)
                <li> {{$count++}}. <span  style='color:red;margin-right:1.25em;'></span><a href="{{asset('circulardoc')}}/{{$circular->document}}" target="_blank" >{{$circular->name}}</a></li>
                @endforeach
              </ul>
              <br/>
              <div class="btn-wrap">
                <a href="{{route('visitor.circulars')}}" class="btn-buy">View More</a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->


    <!-- ======= Why Us Section ======= -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title">
          <h2>Gallery</h2>
          </div>


        <div class="row portfolio-container">
          @foreach($galleries as $gallery)
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">

              <img src="{{asset('galleryimg')}}/{{$gallery->photo}}" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>{{$gallery->name}}</h4>

              </div>
            </div>
          </div>
            @endforeach
      </div>

      </div>


    </section><!-- End Portfolio Section -->


{{-- Contact  --}}

<section id="contact" class="contact">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Contact Us</h2>
    </div>

    <div class="row">

      <div class="col-lg-5 d-flex align-items-stretch">
        <div class="info">
          <div class="address">
            <i class="icofont-google-map"></i>
            <h4>Location:</h4>
            <p>Udyog Bhawan, below Sikkim Press, Upper Tadong, Tadong, Gangtok, Sikkim 737102</p>
          </div>

          <div class="email">
            <i class="icofont-envelope"></i>
            <h4>Email:</h4>
            <p>sikkimindustries[at]gmail[dot]com </p>
          </div>

          <div class="phone">
            <i class="icofont-phone"></i>
            <h4>Call:</h4>
            <p>+91 3592 202746</p>
          </div>


          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3545.1346322431987!2d88.59266157545332!3d27.308974776413194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e6a58165260a3f%3A0xd23f04beb8b4a764!2sDepartment%20of%20Commerce%20%26%20Industries!5e0!3m2!1sen!2sin!4v1694944943735!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0; width: 100%; height: 300px;" allowfullscreen></iframe>
          {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28356.082570637318!2d88.60139519203373!3d27.328509817607603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e6a53e04d69df7%3A0x4036e9907ce9c48!2sSikkim%20Police%20Headquarters!5e0!3m2!1sen!2sin!4v1651642237158!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe> --}}
        </div>

      </div>

      <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
      <form action="{{route('newcomplains.store')}}" method="POST" enctype="multipart/form-data" class="php-email-form"> @csrf
           <div class="form-row">
            <div class="form-group col-md-12">
              <label for="name">Your Name</label>
              <input type="text" name="name" autocomplete="off" class="form-control" id="name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
              <div class="validate"></div>
            </div>
          </div>
           <div class="form-row">
            <div class="form-group col-md-12">
              <label for="name">Your Email</label>
              <input type="email" class="form-control" autocomplete="off" name="email" id="email" data-rule="email" data-msg="Please enter a valid email" />
              <div class="validate"></div>
            </div>
          </div>

          <div class="form-group">
            <label for="name">Contact Number</label>
            <input type="text" class="form-control" name="phone" autocomplete="off" id="phone" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
            <div class="validate"></div>
          </div>

            <div class="form-group">
            <label for="name">Your Query</label>

           <textarea rows="6" cols="15" class="form-control" autocomplete="off" name="subject" id="subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" ></textarea>
            <div class="validate"></div>
          </div>
          <div class="mb-3">
          <div class="col-md-8">

          </div>
          <div class="text-center"><button type="submit" onClick="showMessage()">Submit</button>
            </form>

          </div>

               </div>

    </div>

</section><!-- End Contact Section -->

     <!-- ======= Clients Section ======= -->


    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


@endsection
