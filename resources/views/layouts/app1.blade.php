<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> --}}

  <!-- Favicons -->
  <link href="ui/assets/img/favicon.png" rel="icon">
  <link href="ui/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="ui/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="ui/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="ui/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="ui/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="ui/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="ui/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="ui/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="ui/assets/css/style.css" rel="stylesheet">
</head>

<body>
       <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo "><a href="{{'/'}}"><img src="ui/assets/img/logo.png"></a>
      </h1>&nbsp;&nbsp;&nbsp;
  <i class="icofont-envelope container d-flex align-items-center" style="color: #fff"> &nbsp;dit-sik[at]nic[dot]in
    <i class="icofont-phone container d-flex align-items-center" style="color: #fff">  +91 3592 202746 </i>
  </i>

      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="{{'/'}}" target="_blank">Home</a></li>
          <li><a href="{{'/'}}" target="_blank">About</a></li>
          <li><a href="{{'/'}}" target="_blank">Contact</a></li>


        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main">

          @yield('content')


    </main><!-- End #main -->





  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="ui/assets/vendor/jquery/jquery.min.js"></script>
  <script src="ui/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="ui/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="ui/assets/vendor/php-email-form/validate.js"></script>
  <script src="ui/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="ui/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="ui/assets/vendor/venobox/venobox.min.js"></script>
  <script src="ui/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="ui/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="ui/assets/js/main.js"></script>

</body>

</html>
