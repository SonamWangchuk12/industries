

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Admin Login|UDD</title>
      

      <!-- Favicon -->
      <link rel="shortcut icon" href="{{asset('assets/admin/assets/images/favicon.ico')}}" />
      <link rel="stylesheet" href="{{asset('assets/admin/assets/css/backend-plugin.min.css')}}">
      <link rel="stylesheet" href="{{asset('assets/admin/assets/css/backend.css?v=1.0.0')}}">
      <link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css')}}">
      <link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css')}}">
      <link rel="stylesheet" href="{{asset('assets/admin/assets/vendor/remixicon/fonts/remixicon.css')}}">  
    </head>
  <body class="  ">
    <!-- loader Start -->
    <div id="loading">
          <div id="loading-center">
          </div>
    </div>
    <!-- loader END -->
    <!-- Wrapper Start -->
    <div class="wrapper">
      
      <div class="iq-sidebar  sidebar-default ">
          <div class="iq-sidebar-logo d-flex align-items-center justify-content-between">
              <a href="{{route('home')}}" class="header-logo">
                  <img src="{{asset('assets/admin/assets/images/logo.png')}}" class="img-fluid rounded-normal light-logo" alt="logo"><h5 class="logo-title light-logo ml-3">POSDash</h5>
              </a>
              <div class="iq-menu-bt-sidebar ml-0">
                  <i class="las la-bars wrapper-menu"></i>
              </div>
          </div>
          <div class="data-scrollbar" data-scroll="1">
              <nav class="iq-sidebar-menu">
                  <ul id="iq-sidebar-toggle" class="iq-menu">
                      <li class="active">
                          <a href="../backend/index.html" class="svg-icon">                        
                              <svg  class="svg-icon" id="p-dash1" width="20" height="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                  <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line>
                              </svg>
                              <span class="ml-4">Dashboards</span>
                          </a>
                      </li>
                      <li class=" ">
                          <a href="#product" class="collapsed" data-toggle="collapse" aria-expanded="false">
                              <svg class="svg-icon" id="p-dash2" width="20" height="20"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle>
                                  <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                              </svg>
                              <span class="ml-4">Products</span>
                              <svg class="svg-icon iq-arrow-right arrow-active" width="20" height="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                  <polyline points="10 15 15 20 20 15"></polyline><path d="M4 4h7a4 4 0 0 1 4 4v12"></path>
                              </svg>
                          </a>
                          <ul id="product" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                              <li class="">
                                  <a href="../backend/page-list-product.html">
                                      <i class="las la-minus"></i><span>List Product</span>
                                  </a>
                              </li>
                              <li class="">
                                  <a href="../backend/page-add-product.html">
                                      <i class="las la-minus"></i><span>Add Product</span>
                                  </a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </nav>
             
              <div class="p-3"></div>
          </div>
          </div>      
          <div class="iq-top-navbar">
          <div class="iq-navbar-custom">
              <nav class="navbar navbar-expand-lg navbar-light p-0">
                  <div class="iq-navbar-logo d-flex align-items-center justify-content-between">
                      <i class="ri-menu-line wrapper-menu"></i>
                      <a href="../backend/index.html" class="header-logo">
                          <img src="{{asset('assets/admin/assets/images/logo.png')}}" class="img-fluid rounded-normal" alt="logo">
                          <h5 class="logo-title ml-3">ADMIN Data Entry</h5>
      
                      </a>
                  </div>
                  <div class="iq-search-bar device-search">
                  </div>
                  <div class="d-flex align-items-center">
                      <button class="navbar-toggler" type="button" data-toggle="collapse"
                          data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                          aria-label="Toggle navigation">
                          <i class="ri-menu-3-line"></i>
                      </button>
                      <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav ml-auto navbar-list align-items-right">
                        
                              <li class="nav-item nav-icon dropdown caption-content">
                                  <a href="#" class="search-toggle dropdown-toggle" id="dropdownMenuButton4"
                                      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      <img src="{{asset('assets/admin/assets/images/user/1.png')}}" class="img-fluid rounded" alt="user">
                                  </a>
                                  <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton">
                                      <div class="card shadow-none m-0">
                                          <div class="card-body p-0 text-center">
                                              <div class="media-body profile-detail text-center">
                                                  <img src="{{asset('assets/admin/assets/images/page-img/profile-bg.jpg')}}" alt="profile-bg"
                                                      class="rounded-top img-fluid mb-4">
                                                  <img src="{{asset('assets/admin/assets/images/user/1.png')}}" alt="profile-img"
                                                      class="rounded profile-img img-fluid avatar-70">
                                              </div>
                                              <div class="p-3">
                                                  <h5 class="mb-1">UDD Admin</h5>
                                                  {{-- <p class="mb-0">Since 10 march, 2020</p> --}}

{{-- edit user here --}}

                                                  <div class="d-flex align-items-center justify-content-center mt-3">
                                                      <a href="../app/user-profile.html" class="btn border mr-2">Profile</a>
                                                      <a class="btn border"href="{{ route('logout') }}"
                                                      onclick="event.preventDefault();
                                                                    document.getElementById('logout-form').submit();">
                                                     Sign Out</a>
                                                     <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                        @csrf
                                                    </form>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </li>
                          </ul>
                      </div>
                  </div>
              </nav>
          </div>
      </div>
      <div class="modal fade" id="new-order" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <div class="modal-body">
                      <div class="popup text-left">
                          <h4 class="mb-3">New Order</h4>
                          <div class="content create-workform bg-body">
                              <div class="pb-3">
                                  <label class="mb-2">Email</label>
                                  <input type="text" class="form-control" placeholder="Enter Name or Email">
                              </div>
                              <div class="col-lg-12 mt-4">
                                  <div class="d-flex flex-wrap align-items-ceter justify-content-center">
                                      <div class="btn btn-primary mr-4" data-dismiss="modal">Cancel</div>
                                      <div class="btn btn-outline-primary" data-dismiss="modal">Create</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>      

      @yield('content')
      
      <footer class="iq-footer">
        <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item"><a href="../backend/privacy-policy.html">Privacy Policy</a></li>
                            <li class="list-inline-item"><a href="../backend/terms-of-service.html">Terms of Use</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 text-center">
                        <span class="mr-1">©</span>Designed and Developed By DIT
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Backend Bundle JavaScript -->
<script src="{{asset('assets/admin/assets/js/backend-bundle.min.js')}}"></script>

<!-- Table Treeview JavaScript -->
<script src="{{asset('assets/admin/assets/js/table-treeview.js')}}"></script>

<!-- Chart Custom JavaScript -->
<script src="{{asset('assets/admin/assets/js/customizer.js')}}"></script>

<!-- Chart Custom JavaScript -->
<script async src="{{asset('assets/admin/assets/js/chart-custom.js')}}"></script>

<!-- app JavaScript -->
<script src="{{asset('assets/admin/assets/js/app.js')}}"></script>
</body>
</html>