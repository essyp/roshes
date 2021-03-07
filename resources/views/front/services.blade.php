@extends( 'layouts.front' )

@section('title','Services')

@section('style')
@endsection

@section('content')
 <div class="wrapper-inner">
                            <div class="container">
                                <section id="sec4">
                                    <div class="section-title">
                                        <h3>What we do</h3>
                                    </div>
                                    <div class="row">
                                        <!-- services-->
                                        @foreach($data as $dt)
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
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection



