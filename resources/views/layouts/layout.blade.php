<!DOCTYPE html>
<html lang="en-US">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Commerce And Industries Dept, Govt. of Sikkim</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
{{-- bootstrap --}}


{{-- admin css --}}

<script src="{{asset('assets/admin/assets/js/backend-bundle.min.js')}}"></script>

<!-- Table Treeview JavaScript -->
<script src="{{asset('assets/admin/assets/js/table-treeview.js')}}"></script>

<!-- Chart Custom JavaScript -->
<script src="{{asset('assets/admin/assets/js/customizer.js')}}"></script>

<!-- Chart Custom JavaScript -->
<script async src="{{asset('assets/admin/assets/js/chart-custom.js')}}"></script>

<!-- app JavaScript -->
<script src="{{asset('assets/admin/assets/js/app.js')}}"></script>


<link rel="icon" href="{{asset('assets/img/logo.png')}}" />
<link rel="stylesheet" href="{{asset('assets/admin/assets/css/backend-plugin.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/admin/assets/css/backend.css?v=1.0.0')}}">
<link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css')}}">
<link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/remixicon/fonts/remixicon.css')}}">  
{{-- end admin css --}}
  <!-- Favicons -->
  <link  href="{{asset('assets/img/favicon.png')}}" rel="icon">
  <link  href="{{asset('assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link  href="{{asset('https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i')}}" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link  href="{{asset('assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
  <link  href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link  href="{{asset('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link  href="{{asset('assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link  href="{{asset('assets/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
  <link  href="{{asset('assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link  href="{{asset('assets/css/style.css')}}" rel="stylesheet">

  <script type="text/javascript">
  $(window).scroll(function(){
    if($(window).scrollTop()>80){
    
    $("#header").css({"margin-top":"0"})
    }else{
    $("#header").css({"margin-top":"210px"})
    }
 });
 </script>
</head>

<body>
<main>
  @php
  $cmdata= App\CMData::latest()->first();
  $ministerdata= App\Minister::latest()->first();
  @endphp
  <section id="topbar" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

       <a  href="#" class="logo"><img src="{{asset('assets/img/logo.png')}}" alt="" class="img-fluid"></a>
       <a  href="#" class="logo"><img src="{{asset('assets/img/logoline.png')}}" alt="" class="img-fluid"></a>
       <a  href="#" class="logo"><img src="{{asset('assets/img/g20.png')}}" alt="" class="img-fluid"></a>

     
    </div>
      </section>
        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top d-flex align-items-center">
          <div class="d-flex align-items-center justify-content-between">
           
            <nav id="navbar" class="navbar">
              <ul>
                <li><a class="nav-link scrollto active"  href="/">Home</a></li>
                <li class="dropdown"><a  href="#"><span>About Us</span> <i class="bi bi-chevron-down"></i></a>
                  <ul>
                        <li><a   href="{{route('visitor.orgview')}}">Organizational Setup</a></li>
                        <li><a  href="{{route('visitor.dics')}}">District Industries Center</a></li>
                        <li><a  href="#">Offices under Department</a></li>
                        <li><a href="{{route('visitor.sections')}}">Sections/Branches</a></li>
                        <li><a  href="#">Office Directory</a></li>
                        <li><a  href="#">North East Industrial Development Scheme-Notification (NEIDS)</a></li>
                       
                  </ul>
                </li>
                {{-- <li class="dropdown"><a  href="#"><span>Food Processing</span> <i class="bi bi-chevron-down"></i></a>
                  <ul>
                        <li><a  href="#">Introduction</a></li>
                        <li><a  href="#">National Level Structure</a></li>
                        <li><a  href="#">State Level Structure</a></li>
                        <li><a  href="#">Funding Pattern of NFMP</a></li>
                        <li><a  href="#">Fruits & Vegetables</a></li>
                        <li><a  href="#">Dairy Sector</a></li>
                        <li><a  href="#">Drinks & Beverages</a></li>
                        <li><a  href="#">Model Project Profile</a></li>
                  </ul>
                </li> --}}
                
                <li><a class="nav-link scrollto"   href="{{route('visitor.schemes')}}">Schemes and Guidelines</a></li>
                <li><a class="nav-link scrollto "  href="/visitors#contact">Grievances</a></li>
                <li><a class="nav-link scrollto "  href="{{route('visitor.rti')}}">RTI</a></li>
                <li><a class="nav-link scrollto" href="{{route('visitor.event')}}">Events</a></li>
                <li><a class="nav-link scrollto"  href="#">Awards & Achievements</a></li>
                <li><a class="nav-link scrollto"  href="{{route('visitor.gallery')}}">Gallery</a></li>
                <li class="dropdown"><a  href="#"><span>Important Links</span> <i class="bi bi-chevron-down"></i></a>
                  <ul>
                        <li><a  href="#">Link 1</a></li>
                        <li><a  href="#">Link 2</a></li>
                        <li><a  href="#">Link 3</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
              </ul>
              <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
      
          </div>
        </header><!-- End Header -->
        
@yield('content')

  
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">

  <div class="footer-top">
    {{-- <div class="container">
      <div class="row">

        <div class="col-lg-3 col-md-6">
          <div class="footer-info">
            <h3>Groovin</h3>
            <p>
              A108 Adam Street <br>
              NY 535022, USA<br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
            <div class="social-links mt-3">
              <a  href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a  href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a  href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a  href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a  href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Home</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">About us</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Services</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Terms of service</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Web Design</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Web Development</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Product Management</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Marketing</a></li>
            <li><i class="bx bx-chevron-right"></i> <a  href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-6 footer-newsletter">
          <h4>Our Newsletter</h4>
          <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          <form action="" method="post">
            <input type="email" name="email"><input type="submit" value="Subscribe">
          </form>

        </div>

      </div>
    </div> --}}
  </div>
  
  <div class="row2 small" style="background-color:white">
    <div class="imagegroup2" style="animation-delay: 1s; ">

    <a  href="https://mohua.gov.in/" target="_blank"> <img src="{{asset('logos/mohua_logo.png')}}" alt=""></a>&nbsp;&nbsp;&nbsp;
        <a  href="https://www.sikkim.gov.in"target="_blank"> <img src="{{asset('logos/sikkgov.png')}}"alt=""></a>
        <a  href="https://mdoner.gov.in"target="_blank"> <img src="{{asset('logos/MDONER.jfif')}}"alt=""></a>
        <a  href="https://smartcities.gov.in/"target="_blank"> <img src="{{asset('logos/smartcity.png')}}"alt=""></a>
        <a  href="http://amrut.gov.in/content/"target="_blank"> <img src="{{asset('logos/amrut.png')}}"alt=""></a>
        <a  href="https://www.sbmurban.org/"target="_blank"> <img src="{{asset('logos/sbmurban.png')}}"alt=""></a>
        <a  href="https://www.pradhanmantriyojana.co.in/pm-awas-yojana/"target="_blank"> <img src="{{asset('logos/PMAY.png')}}"alt=""></a>
        <a  href="https://nulm.gov.in/"target="_blank"> <img src="{{asset('logos/NULM.png')}}"alt=""></a>

        
        
     </div>


</div>
  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span>DIT</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      
    </div>
  </div>
</footer>

<!-- End Footer -->

{{-- <a  href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a> --}}

<!-- Vendor JS Files -->
<script src="{{asset('assets/vendor/purecounter/purecounter_vanilla.js')}}"></script>
<script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{asset('assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{asset('assets/vendor/php-email-form/validate.js')}}"></script>

<link href="{{ url('/assets/vendor/icofont/icofont.min.css') }}" rel="stylesheet">
<!-- Template Main JS File -->
<script src="{{asset('assets/js/main.js')}}"></script>

</body>

</html>