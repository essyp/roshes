@extends( 'layouts.front' )

@section('title','About')

@section('style')
@endsection

@section('content')
 <div class="wrapper-inner">
                            <section class="no-padding no-border" id="sec1">
                                <!-- page title -->		
                                <div class="container">
                                    <div class="page-title no-border">
                                        <h2>{{$comm->shortname}} - Who We Are</h2>
                                        <h3><span>“The beginning of the first” </span></h3>
                                    </div>
                                </div>
                            </section>
                            <div class="container">
                                <section class="no-border">
                                    <div class="full-width-holder">
                                        <div class="fullwidth-slider-holder">
                                            <div class="customNavigation">
                                                <a class="next-slide transition"><i class="fa fa-long-arrow-right"></i></a>
                                                <a class="prev-slide transition"><i class="fa fa-long-arrow-left"></i></a>
                                            </div>
                                            <div class="full-width owl-carousel">
                                                <!-- 1 -->
                                                <div class="item">
                                                    <img src="{{asset('images/logo/'.$comm->about)}}" class="respimg" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- full width slider end -->
                                <section>
                                    <div class="section-title">
                                        <h3>Our story</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>{!!$comm->shortdescrpt!!}</p>
                                            <p>{!!$comm->fulldescrpt!!}</p>
                                        </div>
                                    </div>
                                </section>
                                <!-- about text end -->
                                <!-- <section>
                                    <div class="row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-8">
                                            <div class="inline-facts-holder row">
                                                
                                                <div class="inline-facts col-md-4 ">
                                                    <div class="milestone-counter">
                                                        <div class="stats animaper">
                                                            <div class="num" data-content="461" data-num="461">0</div>
                                                        </div>
                                                    </div>
                                                    <h6>Finished projects</h6>
                                                </div>
                                                
                                                <div class="inline-facts col-md-4 ">
                                                    <div class="milestone-counter">
                                                        <div class="stats animaper">
                                                            <div class="num" data-content="168" data-num="168">0</div>
                                                        </div>
                                                    </div>
                                                    <h6>Happy customers</h6>
                                                </div>
                                               
                                                <div class="inline-facts col-md-4 ">
                                                    <div class="milestone-counter">
                                                        <div class="stats animaper">
                                                            <div class="num" data-content="222" data-num="222">0</div>
                                                        </div>
                                                    </div>
                                                    <h6>Working hours</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section> -->
                                
                                <!-- story / resume   -->
                                <section id="sec3" class="no-border">
                                    
                                    <div class="resume-holder">
                                        <div class="resume-item">
                                           <div class="resume-box">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <h5>Vision</h5>
                                                        <p>{{$comm->vision}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="resume-item">
                                           <div class="resume-box">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <h5>Mission</h5>
                                                        <p>{{$comm->mission}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- resume / story end -->

                                <!-- team -->
                                @if(count($teams) >= 1)
                                <section id="sec2">
                                    <div class="section-title">
                                        <h3>Our team</h3>
                                    </div>
                                    <ul class="team-holder">
                                        @foreach($teams as $team)
                                        <li>
                                            <div class="team-box">
                                                <div class="team-photo">
                                                    <div class="overlay"></div>
                                                    <ul class="team-social">
                                                        <li><a href="{{$team->facebook}}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                                        <li><a href="{{$team->twitter}}" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                                        <li><a href="{{$team->instagram}}" target="_blank"><i class="fa fa-instagram"></i></a></li>
                                                        <li><a href="{{$team->linkedin}}" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                                                    </ul>
                                                    <img src="{{asset('images/teams/'.$team->image)}}" alt="" class="respimg"><span>Find on</span>										
                                                </div>
                                                <div class="team-info">
                                                    <h3>{{$team->name}}</h3>
                                                    <h4>{{$team->position}}</h4>
                                                </div>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </section>
                                @endif
                                <!-- team end   -->

                                <!-- services  -->
                                @if(count($services) >= 1)
                                <section id="sec4">
                                    <div class="section-title">
                                        <h3>What we do</h3>
                                    </div>
                                    <div class="row">
                                        @foreach($services as $dt)
                                        <div class="col-md-4">
                                            <div class="services-box box-item">
                                                <a href="{{asset('images/services/'.$dt->image)}}" style="height: 200px" class="image-popup">
                                                <span class="overlay"></span>
                                                <img src="{{asset('images/services/'.$dt->image)}}" style="height: 200px"  alt="" class="respimg">
                                                </a>
                                                <div class="services-info">
                                                    <h4>{{$dt->title}}</h4>
                                                    <ul>
                                                        <li><span>{!!$dt->description!!}</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </section>
                                @endif
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection



