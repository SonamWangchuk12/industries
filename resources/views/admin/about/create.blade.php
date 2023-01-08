@extends('layouts.admin.layout')

@section('content')
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>tinymce.init({selector:'textarea'});</script>

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
                           <h4 class="card-title">Add About Us Data</h4>
                       </div>
                   </div>
                   <div class="card-body">
                       <form action="{{route('abouts.store')}}" method="POST" enctype="multipart/form-data" data-toggle="validator"> @csrf
                           <div class="row">
                               <div class="col-md-12">                                    
                                   <div class="form-group">
                                       <label>Name </label>
                                       <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" placeholder="Enter Name" required>
                                       <div class="help-block with-errors">
                                            @error('name')
                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                            @enderror
                                        </div>
                                   </div>
                               </div>
                               <div class="col-md-12">                                    
                                <div class="form-group">
                                    <label>Content </label>
                                    <textarea id="area" name ="content"class="form-control @error('name') is-invalid @enderror" row="9" cols="80"></textarea>
                                    <div class="help-block with-errors">
                                    @error('content')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                    </div>
                                </div>
                            </div>
                               <div class="col-md-12">
                                   <div class="form-group">
                                       <label>Image</label>
                                       <input type="file" class="form-control image-file"  name="photo" id="photo" aria-describedby="fileHelp" accept="image/*">
                                   </div>
                               </div>
                           </div>                            
                           <button type="submit" class="btn btn-primary mr-2">Add Data</button>
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
