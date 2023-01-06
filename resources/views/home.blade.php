@extends('layouts.admin.layout')

@section('content')
<script>$(document).ready( function () {
    $('#dataTable').DataTable();
} );
</script>
<div class="content-page">
    <div class="container-fluid">
       <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                <!--TABLE-->
                
                <!--<table class="table mt-5"> -->
                  <thead class="thead-light">
                    <tr>
                
                      <th scope="col">S.No.</th>
                      <th scope="col">Category</th>
                      <th scope="col">Create</th>
                      <th scope="col">Manage</th>
                    </tr>
                  </thead>
                  <tbody>
                <!-- CM -->
                    <tr>
                      <th scope="row">1.</th>
                      <td>Sliders</td>
                
                          <td> <a href="{{route('sliders.create')}}">
                          <i class="fas fa-edit"></i></td>
                
                          <td> <a href="{{route('sliders.index')}}">
                          <i class="fas fa-edit"></i></td>
                          <!-- Governer -->
                </tr>
                  </tbody>
            </table>
       </div>
       <!-- Page end  -->
   </div>
     </div>
   </div>
@endsection
