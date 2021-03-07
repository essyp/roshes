@extends( 'layouts.front' )

@section('title','Projects')

@section('style')
@endsection

@section('content')
<div class="wrapper-inner">
        <div class="container">
            <section id="sec4">
                <div class="section-title">
                    <h3>Our Projects</h3>
                </div>
                <div class="row">
                    <!-- services-->
                    @foreach($data as $dt)
                    <div class="col-md-4">
                        <div class="services-box box-item">
                            <a href="{{asset('images/projects/'.$dt->image)}}" style="height: 200px" class="image-popup">
                            <span class="overlay"></span>
                            <img src="{{asset('images/projects/'.$dt->image)}}" style="height: 200px"  alt="" class="respimg">
                            </a>
                            <div class="services-info">
                                <a href="{{url('project/'.$dt->slug)}}">
                                    <h4>{{$dt->title}}</h4>
                                    <ul>
                                        <li><span>{{$dt->cat->name}}</span></li>
                                    </ul>
                                </a>
                            </div>
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



