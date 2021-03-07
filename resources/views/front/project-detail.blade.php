@extends( 'layouts.front' )

@section('title', $data->title)

@section('style')
@endsection

@section('content')
<div class="wrapper-inner">
                            <section class="no-padding no-border" id="sec1">
                                <!-- page title -->		
                                <div class="container">
                                    <div class="page-title no-border">
                                        <h2>Project</h2>
                                        <!-- <h3><span></span></h3> -->
                                    </div>
                                </div>
                            </section>
                            <div class="clearfix"></div>
                            <!-- about text  -->
                            <div class="container">
                                <section>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="fullwidth-slider-holder single-slider-holder">
                                                <div class="customNavigation">
                                                    <a class="next-slide transition"><i class="fa fa-long-arrow-right"></i></a>
                                                    <a class="prev-slide transition"><i class="fa fa-long-arrow-left"></i></a>
                                                </div>
                                                <div class="full-width owl-carousel">
                                                    <!-- 1 -->
                                                    <div class="item">
                                                        <img src="{{asset('images/projects/'.$data->image)}}" class="respimg" alt="">
                                                        <div class="zoomimage"><img src="{{asset('images/projects/'.$data->image)}}" class="intense" alt=""><i class="fa fa-expand"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-10">
                                            <div class="project-details">
												<h3>{{$data->title}}</h3>
                                                <p>{!!$data->description!!}</p>
                                                <ul class="inline-gallery popup-gallery">
                                                    @foreach($data->images as $dt)
                                                    <li>
                                                        <div class="box-item">
                                                            <a href="{{asset('images/gallery/'.$dt->image)}}">
                                                            <span class="overlay"></span>
                                                            <img src="{{asset('images/gallery/'.$dt->image)}}" alt="" class="respimg">
                                                            </a>
                                                        </div>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="descr">
                                                    <li><span>Date :</span> {{date("d.m.Y",strtotime($data->project_date))}} </li>
                                                    <li><span>Client :</span>  {{$data->client}} </li>
                                                    <li><span>Status :</span> @if($data->status == ACTIVE) Active @elseif($data->status == PROCESSED) Completed @else Inactive @endif</li>
                                                    <li><span>Location : </span> {{$data->location}}</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- about text end -->
                                <div class="content-nav">
                                    <div class="p-all">
                                        <a href="{{url('projects')}}" class="ajax"><i class="fa fa-th-large"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection



