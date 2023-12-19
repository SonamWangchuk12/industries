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
        <h2>Reports</h2>
        <ol>
          <li><a href="">Home</a></li>
          <li>Reports</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
         <div class="col-md-12">
         
            <table id="dataTable" class="table data-tables table-striped">

                 <!--TABLE-->
                 
                 <!--<table class="table mt-5"> -->
                   <thead class="thead-light">
                     <tr>
                 
                       <th scope="col">Date Created</th>
                       <th scope="col">Name</th>
                     </tr>
                   </thead>
                   <tbody>
                    @foreach($notifications as $notification)
                        <tr>
                        <td>
                        {{$notification->created_at->format('Y.m.d') }}
                        </td>
                        <td>
                        <a href="{{asset('notificationdoc')}}/{{$notification->document}}" target="_blank" > {{$notification->name}}</a>
                        </td>
                        </tr>
                        @endforeach
                   </tbody>
           </table>
         
         </div>
        </div>
    </div>
  </section>


  
@endsection
