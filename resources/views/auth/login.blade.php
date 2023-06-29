@extends('layouts.app1')


@section('content')
    <!-- ======= Cta Section ======= -->

    <section id="cta" class="cta">
      <div>
        &nbsp;
      </div>
      <div class="container" data-aos="zoom-in">

        <div id="contact" class="contact">
          <div class="container">


            <div class="row">

              <div class="col-lg-7">


<style type="text/css">
  .ale-success {
      color: #155724;
      background-color: #b7c2f3;
      border-color: #c3e6cb;
      font-size: 28px;
      width: 700px;
      }
  .ale {
      position: relative;
      padding: 0.75rem 1.25rem;
      margin-bottom: 1rem;
      border: 1px solid transparent;
      border-radius: 0.25rem;
  }
  #new{
    width: 700px;
  }

.hero-speakers .banner-item .banner-content-wrap {
    padding: 160px 0 0;
    max-width: 767px;
}

  </style>
                <div class="banner-content-wrap" >
                  &nbsp;  &nbsp; <p>&nbsp;</p>
              <h3 style="color: #fff;font-size: 28px ;font-weight: 700;">
                          Welcome To,</h3>


   <h2 style="color: #fff; text-transform: uppercase;
   font-size: 49px;font-weight: 800;line-height: 74px ;max-width: 700px;" id="new">
    Culture Department</h2>


    <p class="ale ale-success" style="max-width: 700px;" id="new">

      Admin Panel for all the content management...
    </p>
             </div>



              </div>
    <!-- Form  --->


              <div class="col-lg-4 mt-5 mt-lg-0 offset-lg-1">
                <div class="php-email-form">
                  <form action="{{ route('login') }}" method="POST" >
                    @csrf
                       <div class="form-group">

                         <center><h2>Login</h2></center>
                         <p></p>
                         <label for="name">Username</label>
                         <input type="email" class="form-control
                         @error('email') is-invalid @enderror
                         " value="{{ old('email') }}" name="email" id="email" autocomplete="off"/>

                         @error('email')
                                         <span class="invalid-feedback" role="alert">
                                             <strong>{{ $message }}</strong>
                                         </span>
                                     @enderror
                       </div>


                       <div class="form-group">
                         <label for="name">Password</label>
                         <input type="password" class="form-control
                         @error('password') is-invalid @enderror"
                         name="password" id="password" autocomplete="off"
                          />

                         @error('password')
                                         <span class="invalid-feedback" role="alert">
                                             <strong>{{ $message }}</strong>
                                         </span>
                                     @enderror

                     </div>
                       <input type="hidden" name="hide" id="hide" />
                       <input type="hidden" name="random" id="random" />
                            <input type="hidden" name="random2" id="random2" />

 			{{-- <div class="form-group">
                              {!! NoCaptcha::renderJs() !!}
                              {!! NoCaptcha::display() !!}
                              {{ csrf_field() }}
                              @if ($errors->has('g-recaptcha-response'))
                              <span class="help-block">
                                  <strong>{{ $errors->first('g-recaptcha-response') }}			</strong>
                              </span>
                          @endif
                            </div> --}}

            <div class="text-center ">
                <button type="submit"  onclick="return encrypt()">
                 Login</button>



            </div>
                    </form>

              </div>

            </div>

          </div>
        </section><!-- End Contact Section -->
          </div>


<script src="{{asset('loginjs/encrypt.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9/sha256.js"></script>
@endsection
