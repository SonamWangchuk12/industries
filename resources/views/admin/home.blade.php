@extends('layouts.admin.layout')

@section('content')

<div class="content-page">
    <div class="container-fluid">
       <div class="row">
        <div class="col-md-12">
          <table id="datatable" class="table data-tables table-striped">

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
                  <td>Chief Minister</td>
            
                      <td> <a href="{{route('cmdatas.create')}}">
                      <i class="fas fa-edit"></i></td>
            
                      <td> <a href="{{route('cmdatas.index')}}">
                      <i class="fas fa-edit"></i></td>
                     
            </tr>
            <tr>
              <th scope="row">2.</th>
              <td>Minister</td>
        
                  <td> <a href="{{route('ministers.create')}}">
                  <i class="fas fa-edit"></i></td>
        
                  <td> <a href="{{route('ministers.index')}}">
                  <i class="fas fa-edit"></i></td>
                 
              </tr>
              <tr>
                <th scope="row">2.</th>
                <td>About Us Content</td>
          
                    <td> <a href="{{route('abouts.create')}}">
                    <i class="fas fa-edit"></i></td>
          
                    <td> <a href="{{route('abouts.index')}}">
                    <i class="fas fa-edit"></i></td>
                   
                </tr>
                <tr>
                  <th scope="row">2.</th>
                  <td>RTI</td>
            
                      <td> <a href="{{route('rtis.create')}}">
                      <i class="fas fa-edit"></i></td>
            
                      <td> <a href="{{route('rtis.index')}}">
                      <i class="fas fa-edit"></i></td>
                     
                  </tr>
                  <tr>
                    <th scope="row">2.</th>
                    <td>Circulars</td>
              
                        <td> <a href="{{route('circulars.create')}}">
                        <i class="fas fa-edit"></i></td>
              
                        <td> <a href="{{route('circulars.index')}}">
                        <i class="fas fa-edit"></i></td>
                       
                    </tr>
                    <tr>
                      <th scope="row">2.</th>
                      <td>Notifications</td>
                
                          <td> <a href="{{route('notifications.create')}}">
                          <i class="fas fa-edit"></i></td>
                
                          <td> <a href="{{route('notifications.index')}}">
                          <i class="fas fa-edit"></i></td>
                         
                      </tr>
                      <tr>
                        <th scope="row">2.</th>
                        <td>Tender</td>
                  
                            <td> <a href="{{route('tenders.create')}}">
                            <i class="fas fa-edit"></i></td>
                  
                            <td> <a href="{{route('tenders.index')}}">
                            <i class="fas fa-edit"></i></td>
                           
                        </tr>
              <tr>
                <th scope="row">2.</th>
                <td>Sliders</td>
          
                    <td> <a href="{{route('sliders.create')}}">
                    <i class="fas fa-edit"></i></td>
          
                    <td> <a href="{{route('sliders.index')}}">
                    <i class="fas fa-edit"></i></td>
                   
              </tr>
              <tr>
                <th scope="row">2.</th>
                <td>Gallery</td>
          
                    <td> <a href="{{route('galleries.create')}}">
                    <i class="fas fa-edit"></i></td>
          
                    <td> <a href="{{route('galleries.index')}}">
                    <i class="fas fa-edit"></i></td>
                   
              </tr>
              <tr>
                <th scope="row">2.</th>
                <td>Organization Structure</td>
          
                    <td> <a href="{{route('orgstructures.create')}}">
                    <i class="fas fa-edit"></i></td>
          
                    <td> <a href="{{route('orgstructures.index')}}">
                    <i class="fas fa-edit"></i></td>
                   
              </tr>
                  </tbody>
            </table>
       </div>
       <!-- Page end  -->
   </div>
     </div>
   </div>
@endsection
