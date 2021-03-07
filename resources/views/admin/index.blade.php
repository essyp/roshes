@extends( 'layouts.admin' )

@section('title','dashboard')

@section('style')
@endsection

@section('content')
<!--main content start-->
<div id="content" class="ui-content ui-content-aside-overlay">
                <div class="ui-content-body">

                    <div class="ui-container">

                        <!--page title and breadcrumb start -->
                        <div class="row">
                            <div class="col-md-8">
                                <h1 class="page-title"> Admin Dashboard
                                    <small></small>
                                </h1>
                            </div>
                            <div class="col-md-4">
                                <ul class="breadcrumb pull-right">
                                    <li>Home</li>
                                    <li><a class="active">Dashboard</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--page title and breadcrumb end -->

                        <!--states start-->
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="panel short-states bg-danger">
                                    <div class="pull-right state-icon">
                                        <i class="fa fa-th-large"></i>
                                    </div>
                                    <div class="panel-body">
                                        <h1 class="light-txt">{{$totalProject}}</h1>
                                        <div class=" pull-right">{{$totalProject}} <i class="fa fa-bolt"></i></div>
                                        <strong class="text-uppercase">Total Project</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="panel short-states bg-info">
                                    <div class="pull-right state-icon">
                                        <i class="fa fa-th-large"></i>
                                    </div>
                                    <div class="panel-body">
                                        <h1 class="light-txt">{{$totalService}}</h1>
                                        <div class=" pull-right">{{$totalService}} <i class="fa fa-level-up"></i></div>
                                        <strong class="text-uppercase">Total Service</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="panel short-states bg-warning">
                                    <div class="pull-right state-icon">
                                        <i class="fa fa-info"></i>
                                    </div>
                                    <div class="panel-body">
                                        <h1 class="light-txt">{{$totalEnquiry}}</h1>
                                        <div class=" pull-right">{{$totalEnquiry}} <i class="fa fa-level-down"></i></div>
                                        <strong class="text-uppercase">Total Enquiry</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="panel short-states bg-primary">
                                    <div class="pull-right state-icon">
                                        <i class="fa fa-th-large"></i>
                                    </div>
                                    <div class="panel-body">
                                        <h1 class="light-txt">{{$totalBlog}}</h1>
                                        <div class=" pull-right">{{$totalBlog}} <i class="fa fa-level-up"></i></div>
                                        <strong class="text-uppercase">Total Blog Post</strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--states end-->



                        <div class="row">
                            <!--quote start-->
                            <div class="col-md-12">
                                @if(count($users) >= 1)
                                <div class="panel">
                                    <header class="panel-heading panel-border">
                                        Quote Requests
                                        <span class="tools pull-right">
                                            <a class="refresh-box fa fa-repeat" href="javascript:;"></a>
                                            <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="close-box fa fa-times" href="javascript:;"></a>
                                        </span>
                                    </header>
                                    <div class="panel-body">
                                        <div class="order-short-info">
                                            <a href="{{url('/admin/users')}}" class="pull-right pull-left-xs btn btn-primary btn-sm">View All Users</a>
                                        </div>
                                        <hr/>
                                        <div class="table-responsive">
                                            <table  class="table table-hover latest-order">
                                                <thead>
                                                <tr>
                                                    <th>Member ID</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Email</th>
                                                    <th>Phone Number</th>
                                                    <th>Created</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                @foreach($users as $user)
                                                <tr>
                                                    <td>{{$user->ref_id}}</td>
                                                    <td>{{$user->fname}}</td>
                                                    <td>{{$user->lname}}</td>
                                                    <td><a href="javascript:void(0);">{{$user->email}}</a></td>
                                                    <td>{{$user->tel}}</td>
                                                    <td>{{$user->created_at}}</td>
                                                </tr>
                                                @endforeach

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <!--quote end-->
                        </div>



                        <div class="row">
                            <!--quote start-->
                            <div class="col-md-12">
                                @if(count($enquiry) >= 1)
                                <div class="panel">
                                    <header class="panel-heading panel-border">
                                        Client Enquiries
                                        <span class="tools pull-right">
                                            <a class="refresh-box fa fa-repeat" href="javascript:;"></a>
                                            <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="close-box fa fa-times" href="javascript:;"></a>
                                        </span>
                                    </header>
                                    <div class="panel-body">
                                        <div class="order-short-info">
                                            <a href="{{url('/admin/enquiries')}}" class="pull-right pull-left-xs btn btn-primary btn-sm">View All Enquiries</a>
                                        </div>
                                        <hr/>
                                        <div class="table-responsive">
                                            <table  class="table table-hover latest-order">
                                                <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Phone Number</th>
                                                    <th>Message</th>
                                                    <th>Created</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                @foreach($enquiry as $user)
                                                <tr>
                                                    <td>{{$user->name}}</td>
                                                    <td><a href="javascript:void(0);">{{$user->email}}</a></td>
                                                    <td>{{$user->tel}}</td>
                                                    <td>{{$user->message}}</td>
                                                    <td>{{$user->created_at}}</td>
                                                </tr>
                                                @endforeach

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <!--quote end-->
                        </div>



                        <div class="row">
                            <!--order start-->
                            <div class="col-md-12">
                                @if(count($orders) >= 1)
                                <div class="panel">
                                    <header class="panel-heading panel-border">
                                        Latest Orders
                                        <span class="tools pull-right">
                                            <a class="refresh-box fa fa-repeat" href="javascript:;"></a>
                                            <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="close-box fa fa-times" href="javascript:;"></a>
                                        </span>
                                    </header>
                                    <div class="panel-body">
                                        <div class="order-short-info">
                                            <span class="mtop-10"> Processed Orders: <strong>{{$oprocessed}} <i class="fa fa-level-up text-primary"></i></strong>,  Under Processing: <strong> {{$oprocessing}} <i class="fa fa-level-down text-danger"></i></strong></span>
                                            <a href="{{url('/admin/product-orders')}}" class="pull-right pull-left-xs btn btn-primary btn-sm">View Full Orders</a>
                                        </div>
                                        <hr/>
                                        <div class="table-responsive">
                                            <table  class="table table-hover latest-order">
                                                <thead>
                                                <tr>
                                                    <th>Order ID</th>
                                                    <th>Customer Name</th>
                                                    <th>Total Amount ({{$comm->currency}})</th>
                                                    <th>Created Date</th>
                                                    <th>Payment Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                @foreach($orders as $o)
                                                <tr>
                                                    <td>{{$o->order_code}}</td>
                                                    <td>{{$o->user->fname}} {{$o->user->lname}}</td>
                                                    <td>{{number_format($o->total_amount)}}</td>
                                                    <td>{{$o->created_at}}</td>
                                                    <td>
                                                    @if($o->payment_status==SUCCESSFUL)
                                                        <span class="label label-success">successful</span>
                                                        @else
                                                        <span class="label label-danger">unsuccessful</span>
                                                        @endif
                                                    </td>
                                                </tr>
                                                @endforeach

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <!--order end-->
                        </div>


                    </div>


                </div>
            </div>
            <!--main content end-->
@endsection

@section('script')

@endsection
