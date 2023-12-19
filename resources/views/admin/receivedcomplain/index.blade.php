@extends('layouts.admin.layout')

@section('content')

<div class="content-page">
    <div class="container-fluid add-form-list">
       <div class="row">
        <div class="col-md-12">
            @if (\Session::has('success'))
            <div class="alert alert-success">
                <ul>
                    <li>{!! \Session::get('success') !!}</li>
                </ul>
            </div>
            @endif
            <table id="datatable" class="table data-tables table-striped">

                <!--TABLE-->
                
                <!--<table class="table mt-5"> -->
                  <thead class="thead-light">
                    <tr>
                                                <th>S.No.</th>
                                                <th>Name</th>
                                              
                                                <th>Query</th>
                                                <th>Actions</th>
                                              
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                           @if(count($abouts)>0)
                                           <?php $x=1?>
                                            @foreach($abouts as $key => $about)
                                           <tr>
                                                    <td>{{$x++}}</td>
                                                    <td>{{$about->name}}</td>
                                                    
                                                    
                                            
                                               <td>
                                       {{$about->subject}}    
                        
                                </td>
                                <td>    <a href="{{route('newcomplains.show',[$about->id])}}">View More</a></td>
                                           </tr>
                                           @endforeach
                                           @else
                                <td>No data to show!</td>           
                                        </tbody>
                                @endif
                               
                            </table>
                        </div>
                        </div>
                     </div>
                 </div>
                     @endsection