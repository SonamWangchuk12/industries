@extends('layouts.master')
@section('content')
<div class="container mt-5">
<div class="row justify-content-center">
    <h2>Received Complain</h2>
</div>
<br/>
    <br/>
    <div class="row">
        <div class="col-md-12">
      <table class="table table-bordered"  width="100%" cellspacing="0">

<!--TABLE-->

<!--<table class="table mt-5"> -->
  <thead class="thead-dark">
    <tr>
            <td>Name:</td><td>{{$receivedComplain->name}}</td></tr>
            <tr><td>  Phone Number:</td><td>{{$receivedComplain->phone}}</td></tr>
            <tr><td>  Email:</td><td>{{$receivedComplain->email}}</td></tr>
           
            <tr>                  <td>    Query:</td><td>{{$receivedComplain->subject}}</td></tr>
</div>

</div>

@endsection