<!DOCTYPE HTML>
<html lang="en">
    <head>
        <!--=============== basic  ===============-->
        <meta charset="UTF-8">
        <title>{{$comm->shortname}}  - Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="robots" content="index, follow"/>
        <meta name="keywords" content=""/>
        <meta name="description" content=""/>
        <!--=============== css  ===============-->	
        <link type="text/css" rel="stylesheet" href="{{asset('front/css/reset.css')}}">
        <link type="text/css" rel="stylesheet" href="{{asset('front/css/plugins.css')}}">
        <link type="text/css" rel="stylesheet" href="{{asset('front/css/style.css')}}">
        <!--=============== favicons ===============-->
        <link href="{{asset('images/logo/'.$comm->favicon)}}" style="max-width: 16px; max-height: 16px" rel="shortcut icon">
    </head>
    <body>
        <div class="loader"><i class="fa fa-refresh fa-spin"></i></div>
        <!--================= main start ================-->
        <div id="main">
            <!--=============== header ===============-->	
            <header>
                <div class="header-inner">
                    <div class="logo-holder">
                        <a href="{{url('/')}}" class="ajax"><img src="{{asset('images/logo/'.$comm->logo)}}" style="max-width: 150px;" alt=""></a>
                    </div>
                    <div class="nav-button-holder">
                        <div class="nav-button vis-m"><span></span><span></span><span></span></div>
                    </div>
                    <div class="nav-holder">
                    <nav>
                            <ul>
                                <li><a href="{{url('/')}}" class="ajax act-link">Home</a></li>
                                <li>
                                    <a href="{{url('about')}}" class="ajax pa">About us </a>
                                    <!-- <ul>
                                        <li><a href="{{url('about')}}" class="ajax custom-scroll-link">About us </a></li>
                                        <li><a href="{{url('teams')}}" class="ajax custom-scroll-link">Team</a></li>
                                    </ul> -->
                                </li>
                                <li><a href="{{url('services')}}" class="ajax pp">Services</a></li>
                                <li><a href="{{url('projects')}}" class="ajax pp">Projects</a></li>
                                <li><a href="{{url('contact')}}" class="ajax">Contact</a></li>
                                <li><a href="{{url('blog')}}" class="ajax">Blog</a></li>
                                
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="share-container isShare"></div>
                <a class="selectMe shareSelector transition">Share</a>						
            </header>
            <!--=============== wrapper ===============-->	
            <div id="wrapper">
                <div class="content-holder elem scale-bg2 transition3" >
                    <div class="content full-height">
					<!--=============== Change the value data-mwa="0" - at your in milliseconds. If you put a value of 0 - the function to turn off autoplay  ===============-->
                        <div class="swiper-container" id="horizontal-slider" data-mwc="1" data-mwa="0">
                            <div class="swiper-wrapper">
                                <!--=============== 1 ===============-->
                                @foreach($data as $dt)	
                                <div class="swiper-slide">
                                    <div class="bg" style="background-image:url({{asset('images/banners/'.$dt->image)}})"></div>
                                    <div class="overlay"></div>
                                    <div class="slide-title-holder">
                                        <div class="slide-title">
                                            <h3 class="transition">  <a class="ajax transition2" href="portfolio-single.html">{{$dt->title}}</a>  </h3>
                                            <h4>{{$dt->description}}</h4>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                            <div class="swiper-nav-holder hor">
                                <a class="swiper-nav arrow-left transition " href="#"><i class="fa fa-long-arrow-left"></i></a>
                                <a class="swiper-nav  arrow-right transition" href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="pagination"></div>
                    </div>
                </div>
            </div>
            <!-- wrapper end -->
        </div>
        <!-- Main end -->
        <!--=============== google map ===============-->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>  
        <!--=============== scripts  ===============-->
        <script type="text/javascript" src="{{asset('front/js/jquery.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('front/js/plugins.js')}}"></script>
        <script type="text/javascript" src="{{asset('front/js/core.js')}}"></script>
        <script type="text/javascript" src="{{asset('front/js/scripts.js')}}"></script>

        <script>
            var f = new Swiper("#horizontal-slider", {
                speed: 1200,
                loop: true,
                preventLinks: true,
                grabCursor: true,
                mousewheelControl: e,
                mode: "horizontal",
                pagination: ".pagination",
                paginationClickable: true,
                autoplay: true,
                speed: 2200,

            });
        </script>
    </body>
</html>