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
                
                      <th scope="col">S.No.</th>
                      <th scope="col">Category</th>
                      <th scope="col">Delete</th>
                    </tr>
                  </thead>
                  <tbody>
                    @if(count($acts)>0)
                    @foreach($acts as $key => $act)
                <tr>
                    <td>{{$key+1}}</td>
                    <td>{{$act->name}}</td>
                    <td>
                        <a href="#" data-toggle="modal" data-target="#exampleModal{{$act->id}}">
                               <i class="fas fa-trash"></i>    
                        </a>
                    </td>
                </tr>
                        {{-- modal --}}
                        <div class="modal fade" id="exampleModal{{$act->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                               <div class="modal-content">
                                  <div class="modal-header">
                                     <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to delete?</h5>
                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                     <span aria-hidden="true">&times;</span>
                                     </button>
                                  </div>
                                  {{-- <div class="modal-body">
                                    
                                  </div> --}}
                                  <form action="{{route('acts.destroy',[$act->id])}}" method="POST"> @csrf
                                    {{method_field('DELETE')}}
                                  <div class="modal-footer">
                                     <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                     <button type="submit" class="btn btn-danger">Delete changes</button>
                                  </div>
                                  </form>
                               </div>
                            </div>
                         </div>
                    
                
                @endforeach
                @else
                <tr>
                <td>No data to show!</td>     
                </tr>      
                
                @endif
            </tbody>
            </table>
       </div>
       </div>
    </div>
</div>
    @endsection