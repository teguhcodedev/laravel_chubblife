@extends('templates/main')
@section('css')
<link rel="stylesheet" href="{{ asset('css/dashboard/style.css') }}">
@endsection
@section('content')
<div class="row page-title-header">
  <div class="col-12">
    <div class="page-header d-flex justify-content-between align-items-center">
      <h4 class="page-title">Dashboard</h4>
  
    </div>
  </div>
</div>
<div class="row modal-group">
  <div class="modal fade" id="pengaturanTokoModal" tabindex="-1" role="dialog" aria-labelledby="pengaturanTokoModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <form name="market_form" action="{{ url('/market/update') }}" method="POST">
          @csrf
          <div class="modal-header">
            <h5 class="modal-title" id="pengaturanTokoModalLabel">Pengaturan Toko</h5>
            <button type="button" class="close close-btn" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="form-group row">
              <div class="col-12">
              
               
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-simpan"><i class="mdi mdi-content-save"></i> Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-12 col-12">
    <div class="row">
      <div class="col-lg-6 col-md-12 col-sm-6 col-12 mb-4">
        <div class="card b-radius card-noborder bg-blue">
          <div class="card-body custom-card-p">
            <div class="row">
          
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-12 col-sm-6 col-12 mb-4">
        <div class="card b-radius card-noborder">
          <div class="card-body custom-card-p">
            <div class="row">
            
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12 col-12 mb-4">
        <div class="card b-radius card-noborder">
          <div class="card-body">
            <div class="row">
              <div class="col-12 mb-4 d-flex justify-content-between align-items-center">
                <h5 class="font-weight-semibold chart-title">Pemasukan 1 Minggu Terakhir</h5>
                <div class="dropdown">
                  <button class="btn btn-filter-chart icon-btn dropdown-toggle" type="button" id="dropdownMenuIconButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Pemasukan
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton1">
                    <a class="dropdown-item chart-filter" href="#" data-filter="pemasukan">Pemasukan</a>
                    <a class="dropdown-item chart-filter" href="#" data-filter="pelanggan">Pelanggan</a>
                  </div>
                </div>
              </div>
              <div class="col-12">
                <canvas id="myChart" style="width: 100%; height: 315px;"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-6 col-md-6 col-sm-12 col-12">
    <div class="card b-radius card-noborder">
      <div class="card-body">
        <div class="row">
          {{-- <div class="col-12 text-center">
            <p class="m-0">Total Pemasukan</p>
            <h2 class="font-weight-bold">Rp. {{ number_format($all_incomes,2,',','.') }}</h2>
            <p class="m-0 txt-light">{{ date('d M, Y', strtotime($min_date)) }} - {{ date('d M, Y', strtotime($max_date)) }}</p>
          </div> --}}
          <div class="col-12 text-center mt-4">
            <div class="btn-view-all">
              <i class="mdi mdi-chevron-down"></i>
            </div>
          </div>
          <div class="col-12">
            <hr>
            
          </div>
         
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
