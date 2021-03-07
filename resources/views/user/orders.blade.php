@extends( 'layouts.user' )

@section('title', 'Orders')

@section('style')
@endsection

@section('content')
<div class="breadcrumb-section jarallax pixels-bg" data-jarallax data-speed="0.6">
    <div class="container text-center">
        <h1>Orders</h1>
        <ul>
            <li><a href="{{url('/')}}">Home</a></li>
            <li><a href="javascript:void(0);">Page</a></li>
            <li><a href="javascript:void(0);">Orders</a></li>
        </ul>
    </div>
</div>

<div class="section-block">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-12">
                <h4>My Orders</h4>
                <p>All my orders from the cloud marketplace</p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Date Created</th>
                        <th>Amount ({{$comm->currency}})</th>
                        <th>Payment Type</th>
                        <th>Status</th>
                        <th>Payment Status</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($order as $od)
                    <tr>
                        <td>{{$od->order_code}}</td>
                        <td>{{date("d F, Y",strtotime($od->created_at))}}</td>
                        <td>{{number_format($od->total_amount,2)}}</td>
                        <td>{{$od->payment_type}}</td>
                        @if($od->status == PROCESSING)
                        <td><span style="color: orange">processing</span></td>
                        @elseif($od->status == ACTIVE)
                        <td><span style="color: green">active</span></td>
                        @elseif($od->status == CANCELED)
                        <td><span style="color: red">canceled</span></td>
                        @endif
                        @if($od->payment_status == SUCCESSFUL)
                        <td><span style="color: green">successful</span></td>
                        @elseif($od->payment_status == UNSUCESSFUL)
                        <td><span style="color: red">unsuccessful</span></td>
                        @endif
                        <td><a href="javascript:void(0);" data-target="#order-view" data-toggle="modal" data-whatever="{{$od->id}}"><i class="fa fa-eye"></i></a></td>
                    </tr>
                    @endforeach
                   </tbody>
                </table>
                {{$order->links('pagination')}}
                </div>
           @include('include.user-side')
        </div>
    </div>
</div>
<!-- =-=-=-=-=-=-= order view =-=-=-=-=-=-= -->
<div id="order-view" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" style="z-index: 100000 !important;">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
            <div class="dash">

        </div>
    </div>
    </div>
</div>

{{--  @include('include.quote')  --}}
@endsection

@section('script')
<script>
   $('#order-view').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var id = button.data('whatever') // Extract info from data-* attributes
        var modal = $(this);
        var dataString = 'id=' + id;

          $.ajax({
              type: "GET",
              url: "/user/order/view/",
              data: dataString,
              cache: false,
              success: function (data) {
                  //console.log(data);
                  modal.find('.dash').html(data);
              },
              error: function(err) {
                  //console.log(err);
              }
          });
  })

  $(function () {
    // when the modal is closed
    $('#order-view').on('hidden.bs.modal', function () {
        // remove the bs.modal data attribute from it
        $(this).removeData('bs.modal');
        // and empty the modal-content element
        $('#modal-container .modal-content').empty();
    });
});
</script>
@endsection
