@extends( 'layouts.user' )

@section('title', 'Account')

@section('style')
@endsection

@section('content')
<div class="breadcrumb-section jarallax pixels-bg" data-jarallax data-speed="0.6">
    <div class="container text-center">
        <h1>Account</h1>
        <ul>
            <li><a href="{{url('/')}}">Home</a></li>
            <li><a href="javascript:void(0);">Page</a></li>
            <li><a href="javascript:void(0);">Account</a></li>
        </ul>
    </div>
</div>

<div class="section-block">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-12">
                <div class="row">
                <div class="col-md-4 col-sm-4 col-12">
                    <div class="section-heading">
                        <h6 class="semi-bold">Account Details</h6>
                        <ul class="grey-list mt-15">
                            <li><i class="fa fa-user"></i> {{$user->fname}} {{$user->lname}}</li>
                            <li><i class="fa fa-map-marker-alt"></i> {{$user->address}}</li>
                            <li><i class="fa fa-phone"></i>{{$user->tel}}</li>
                            <li><i class="fa fa-envelope-open"></i> {{$user->email}}</li>
                        </ul>
                        {{--  <div class="mt-40">
                            <h6 class="semi-bold">Contact us</h6>
                            <ul class="grey-list mt-15">

                            </ul>
                        </div>  --}}
                    </div>
                </div>
                <div class="col-md-8 col-sm-12 col-12">
                    <h4>Recent Orders</h4>
                    <p>My recent orders</p>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Date Created</th>
                            <th>Amount ({{$comm->currency}})</th>
                            <th>Payment Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($order as $od)
                        <tr>
                            <td>{{$od->order_code}}</td>
                            <td>{{date("d F, Y",strtotime($od->created_at))}}</td>
                            <td>{{number_format($od->total_amount,2)}}</td>
                            @if($od->payment_status == SUCCESSFUL)
                            <td><span style="color: green">successful</span></td>
                            @elseif($od->payment_status == UNSUCESSFUL)
                            <td><span style="color: red">unsuccessful</span></td>
                            @endif
                        </tr>
                        @endforeach
                       </tbody>
                    </table>
                    <div class="text-right">
                        <a href="{{url('user/orders')}}" class="button-md button-primary">View All My Transactions</a>
                    </div>
                    </div>
                </div>
                </div>
           @include('include.user-side')
        </div>
    </div>
</div>

{{--  @include('include.quote')  --}}
@endsection

@section('script')
@endsection
