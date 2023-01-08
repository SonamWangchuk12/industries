@extends('layouts.admin.layout')

@section('content')
<div class="content-page">
    <div class="container-fluid add-form-list">
       <div class="row">
           <div class="col-sm-12">
            @if (\Session::has('success'))
            <div class="alert alert-success">
                <ul>
                    <li>{!! \Session::get('success') !!}</li>
                </ul>
            </div>
            @endif
               <div class="card">
                   <div class="card-header d-flex justify-content-between">
                       <div class="header-title">
                           <h4 class="card-title">Add Slider</h4>
                       </div>
                   </div>
                   <div class="card-body">
                       <form action="{{route('sliders.store')}}" method="POST" enctype="multipart/form-data" data-toggle="validator"> @csrf
                           <div class="row">
                               <div class="col-md-12">                                    
                                   <div class="form-group">
                                       <label>Name </label>
                                       <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" placeholder="Enter Name" required>
                                       <div class="help-block with-errors"></div>
                                   </div>
                               </div>
                               <div class="col-md-12">
                                   <div class="form-group">
                                       <label>Image</label>
                                       <input type="file" class="form-control image-file"  name="document" id="document" aria-describedby="fileHelp" accept="image/*">
                                   </div>
                               </div>
                           </div>                            
                           <button type="submit" class="btn btn-primary mr-2">Add Slider</button>
                           <button type="reset" class="btn btn-danger">Reset</button>
                       </form>
                   </div>
               </div>
           </div>
       </div>
       <!-- Page end  -->
   </div>
     </div>
@endsection
