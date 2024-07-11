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
        <h2>Offices Under Department</h2>
        <ol>
          <li><a href="">Home</a></li>
          <li>Offices Under Department</li>
        </ol>
      </div>

    </div>
  </section><!-- End Breadcrumbs -->

  <section class="inner-page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                {!! $officedept->content !!}

               </div>
        </div>
    </div>
  </section>



@endsection
