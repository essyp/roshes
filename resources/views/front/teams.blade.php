@extends( 'layouts.front' )

@section('title','Teams')

@section('style')
@endsection

@section('content')
 <div class="wrapper-inner">
                            <div class="container">
                                <section id="sec2">
                                    <div class="section-title">
                                        <h3>Our team</h3>
                                    </div>
                                    <ul class="team-holder">
                                    @foreach($data as $team)
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
                                <!-- team end   -->
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection



