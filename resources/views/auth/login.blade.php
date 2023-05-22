


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Admin Login|UDD</title>
      
      <!-- Favicon -->
      <link rel="shortcut icon" href="assets/admin/assets/images/favicon.ico" />
      <link rel="stylesheet" href="assets/admin/assets/css/backend-plugin.min.css">
      <link rel="stylesheet" href="assets/admin/assets/css/backend.css?v=1.0.0">
      <link rel="stylesheet" href="assets/admin/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
      <link rel="stylesheet" href="assets/admin/assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
      <link rel="stylesheet" href="assets/admin/assets/vendor/remixicon/fonts/remixicon.css">  </head>
  <body class=" ">
    <!-- loader Start -->
    <div id="loading">
          <div id="loading-center">
          </div>
    </div>
    <!-- loader END -->
    
      <div class="wrapper">
      <section class="login-content">
         <div class="container">
            <div class="row align-items-center justify-content-center height-self-center">
               <div class="col-lg-8">
                  <div class="card auth-card">
                     <div class="card-body p-0">
                        <div class="d-flex align-items-center auth-content">
                           <div class="col-lg-7 align-self-center">
                              <div class="p-3">
                                 <h2 class="mb-2">Sign In</h2>
                                 <p>Login to stay connected.</p>
                                 <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="row">
                                       <div class="col-lg-12">
                                          <div class="floating-label form-group">
                                             <input id="email" type="email" class="floating-input form-control @error('email') is-invalid @enderror" name="email" required autofocus type="email" placeholder=" ">
                                              <label>Email</label>
                                              @error('email')
                                              <span class="invalid-feedback" role="alert">
                                                  <strong>{{ $message }}</strong>
                                              </span>
                                          @enderror
                                          </div>
                                       </div>
                                       <div class="col-lg-12">
                                          <div class="floating-label form-group">
                                             <input type="password" class="form-control
                                             @error('password') is-invalid @enderror"
                                             name="password" id="password" autocomplete="off"
                                              />  <label>Password</label>
                                             @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                             @enderror
                                          </div>
                                       </div>
                                       <input type="hidden" name="hide" id="hide" />
                                       <input type="hidden" name="random" id="random" />
                                            <input type="hidden" name="random2" id="random2" />
                
                                       <div class="col-lg-12">
                                          {!! NoCaptcha::renderJs() !!}
                                          {!! NoCaptcha::display() !!}
                                          {{ csrf_field() }}
                                          @if ($errors->has('g-recaptcha-response'))
                                          <span class="help-block">
                                              <strong>{{ $errors->first('g-recaptcha-response') }}			</strong>
                                          </span>
                                      @endif
                                        </div>
                                       <div class="col-lg-6">
                                          <div class="custom-control custom-checkbox mb-3">
                                             <input type="checkbox" class="custom-control-input" id="customCheck1">
                                             <label class="custom-control-label control-label-1" for="customCheck1">Remember Me</label>
                                          </div>
                                       </div>
                                      
                                    </div>
                                    
                                    <button type="submit"  onclick="return encrypt()" class="btn btn-primary"> {{ __('Login') }}</button>
                                 
                                 </form>
                              </div>
                           </div>
                           <div class="col-lg-5 content-right">
                              <img src="assets/admin/assets/images/login/01.png" class="img-fluid image-right" alt="">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      </div>
    
    <!-- Backend Bundle JavaScript -->
    <script src="assets/admin/assets/js/backend-bundle.min.js"></script>
    
    <!-- Table Treeview JavaScript -->
    <script src="assets/admin/assets/js/table-treeview.js"></script>
    
    <!-- Chart Custom JavaScript -->
    <script src="assets/admin/assets/js/customizer.js"></script>
    
    <!-- Chart Custom JavaScript -->
    <script async src="assets/admin/assets/js/chart-custom.js"></script>
    



    <script src="{{asset('loginjs/encrypt.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9/sha256.js"></script>


    <!-- app JavaScript -->
    <script src="assets/admin/assets/js/app.js"></script>
  </body>
</html>