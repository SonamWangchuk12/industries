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
                           <h4 class="card-title">Add Reports</h4>
                       </div>
                   </div>
                   <div class="card-body">
                       <form action="{{route('notifications.store')}}" method="POST" enctype="multipart/form-data" data-toggle="validator"> @csrf
                           <div class="row">
                               <div class="col-md-12">                                    
                                   <div class="form-group">
                                       <label>Name </label>
                                       <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" placeholder="Enter Name" required>
                                       <div class="help-block with-errors"></div>
                                   </div>
                               </div>
                               <div class="col-md-12">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="document" name="document">
                                    <label class="custom-file-label" for="document">Choose file</label>
                                   </div>
                               </div>
                           </div>   
                           <br/>                        
                           <button type="submit" class="btn btn-primary mr-2">Add Content</button>
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
