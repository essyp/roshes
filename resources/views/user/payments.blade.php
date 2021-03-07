@extends( 'layouts.user' )

@section('title', 'Payment Transactions')

@section('style')
@endsection

@section('content')
<div class="breadcrumb-section jarallax pixels-bg" data-jarallax data-speed="0.6">
    <div class="container text-center">
        <h1>Payment Transactions</h1>
        <ul>
            <li><a href="{{url('/')}}">Home</a></li>
            <li><a href="javascript:void(0);">Page</a></li>
            <li><a href="javascript:void(0);">Payment Transactions</a></li>
        </ul>
    </div>
</div>

<div class="section-block">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-12">
                <h4>My Payment Transactions</h4>
                <p>All my payments</p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Transaction ID</th>
                        <th>Date Created</th>
                        <th>Amount ({{$comm->currency}})</th>
                        <th>Payment Type</th>
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($payment as $od)
                    <tr>
                        <td>{{$od->reference}}</td>
                        <td>{{date("d F, Y",strtotime($od->created_at))}}</td>
                        <td>{{number_format($od->amount,2)}}</td>
                        <td>{{$od->payment_type}}</td>
                        @if($od->status == SUCCESSFUL)
                        <td><span style="color: green">successful</span></td>
                        @elseif($od->status == UNSUCCESSFUL)
                        <td><span style="color: red">unsuccessful</span></td>
                        @endif
                    </tr>
                    @endforeach
                   </tbody>
                </table>
                {{$payment->links('pagination')}}
                </div>
           @include('include.user-side')
        </div>
    </div>
</div>

{{--  @include('include.quote')  --}}
@endsection

@section('script')
@endsection
