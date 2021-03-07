@extends( 'layouts.front' )

@section('title','Blog')

@section('style')
@endsection

@section('content')

<div class="wrapper-inner">
                            <section class="no-padding no-border">
                                <!-- page title -->		
                                <div class="container">
                                    <div class="page-title">
                                        <h2>Our blog</h2>
                                        <!-- <h3><span></span></h3> -->
                                    </div>
                                </div>
                            </section>
                            <div class="clearfix"></div>
                            <div class="container">
                                <section>
                                    <div class="gallery-items three-coulms grid-small-pad">
                                        @foreach($data as $dt)
                                        <div class="gallery-item">
                                            <div class="grid-item-holder">
                                                <article>
                                                    <ul class="blog-title">
                                                        <li><a href="{{url('blog/'.$dt->slug)}}" class="tag">{{date("d M, Y",strtotime($dt->created_at))}}</a></li>
                                                        <li> - </li>
                                                        <li><a href="{{url('blog/category/'.$dt->cat->slug)}}" class="tag">{{$dt->cat->name}} </a></li>
                                                    </ul>
                                                    <div class="blog-media">
                                                        <div class="box-item">
                                                            <a href="{{url('blog/'.$dt->slug)}}" class="ajax">
                                                            <span class="overlay"></span>
                                                            <img src="{{asset('images/blog/'.$dt->image)}}" style="height: 150px" alt="" class="respimg">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="blog-text">
                                                    <a href="{{url('blog/'.$dt->slug)}}" class="ajax btn"><h3 style="font-size: 13px;">{{substr($dt->title,0,30)}}...</h3></a>
                                                        <p>
                                                        {!!substr($dt->description,0,300)!!}....
                                                        </p>
                                                        <a href="{{url('blog/'.$dt->slug)}}" class="ajax btn"><span>read more </span> <i class="fa fa-long-arrow-right"></i></a>
                                                    </div>
                                                </article>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    {{$data->links('pagination')}}
                                </section>
                                
                            </div>
                        </div>
                        
@endsection

@section('script')
@endsection