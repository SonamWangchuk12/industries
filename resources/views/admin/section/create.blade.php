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
                           <h4 class="card-title">Sections/Branches</h4>
                       </div>
                   </div>
                   <div class="card-body">
                       <form action="{{route('sections.store')}}" method="POST" enctype="multipart/form-data" data-toggle="validator"> @csrf
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
                                    <label>Description </label>
                                    <textarea id="area" name ="description"class="form-control @error('description') is-invalid @enderror" row="9" cols="80"></textarea>
                                    <div class="help-block with-errors">
                                    @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                    </div>
                                </div>
                            </div>
                                  {{-- Attachment Start --}}
                                    <div class="col-md-6">
                                    <div class="form-group">
                                    Add Attachment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="javascript:void(0);" class="addRow"><button type="button"  class="btn btn-success">Add Attachment
                                    </button>
                                    </a>
                                    </div>

                                    </div>
                                    <!-- /.col -->
                                  

                                  
                                    <div class="col-md-12">
                                    <div class="form-group">

                                    <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                    <th>Name</th>
                                    <th>Attachment</th>
                                    <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>

                                    </table>

                                    </div>


                                    </div>

                                    </div>
                                    <!-- /.col -->
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




{{-- script files --}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>

    $('.addRow').on('click', function () {
            addRow();
        });
        
        function addRow() {
            var tr = '<tr>' +'<td> <input type="text" name="docname[]" class="form-control" placeholder="Enter Name" required></td>'+
                '<td><input type="file" name="document[]" class="form-control" id="document"></td>' +
    '<td><a href="javascript:void(0);" required class="remove1"><button type="button" class="btn btn-danger romove1">Remove </button> </a></td>' +
                '</tr>';
            $('tbody').append(tr);
        }
        $('.form-group').on("click", ".remove1", function (e) {
            var last = $('tbody tr').length;
            $(this).parent().parent().remove();
        });
    </script>




@endsection
