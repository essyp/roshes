@extends( 'layouts.front' )

@section('title', $data->title)

@section('style')
@endsection

@section('content')

<div class="wrapper-inner">
                        <div class="container">
							<!-- post -->
                            <section>
                                <article class="sinnle-post">
                                    <h2>{{$data->title}}</h2>
                                    <div class="blog-media">
                                        <div class="fullwidth-slider-holder">
                                            <div class="customNavigation">
                                                <a class="next-slide transition"><i class="fa fa-long-arrow-right"></i></a>
                                                <a class="prev-slide transition"><i class="fa fa-long-arrow-left"></i></a>
                                            </div>
                                            <div class="full-width owl-carousel">
                                                <!-- 1 -->
                                                <div class="item">
                                                    <img src="{{asset('images/services/'.$data->image)}}" class="respimg" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog-text">
                                        <h3>{{$data->title}}</h3>
                                        <p>
                                        {!!$data->description!!}</p>
                                    </div>
                                </article>
                            </section>
                            <!-- post end -->
                            <div class="content-nav">
                                <div class="p-all">
                                    <a href="{{url('services')}}" class="ajax"><i class="fa fa-th-large"></i></a>
                                </div>
                            </div>
                            
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection