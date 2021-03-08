
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <!--=============== basic  ===============-->
        <meta charset="UTF-8">
        <title>{{$comm->shortname}} - @yield('title')</title>
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
        <link rel="stylesheet" href="{{asset('admins/assets/css/toastr.min.css')}}">
        <link rel="stylesheet" href="{{asset('admins/assets/css/waitMe.min.css')}}">
        @yield('style')
    </head>
    <body id="body">
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
            <!-- header end-->	
            <!--=============== wrapper ===============-->	
            <div id="wrapper">
                <div class="content-holder elem scale-bg2 transition3" >
                    <div class="content">
                        <!-- background animation  -->		
                        <div class="bg-animate"><img src="{{asset('images/body.png')}}"  class="respimg" alt=""></div>


    @yield('content')



                        <!-- parallax column   -->
                        <div class="img-wrap">
                            <div class="bg" style="background-image: url({{asset('images/logo/'.$comm->background_image)}})"  data-top-bottom="transform: translateY(300px);" data-bottom-top="transform: translateY(-300px);"></div>
                        </div>
                        <!-- parallax column end   -->
                        <!--to top    -->
                        <div class="to-top">
                            <i class="fa fa-long-arrow-up"></i>
                        </div>
                        <!-- to top  end -->
                        <!--=============== footer ===============-->
                        <div class="height-emulator"></div>
                        <footer>
                            <div class="footer-inner">
                                <div class="row">
                                    <div class="col-md-5">
                                        <a class="footer-logo ajax" href="{{url('/')}}"><img src="{{asset('images/logo/'.$comm->logo)}}" style="max-width: 150px;" alt=""></a>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="footer-adress">
                                            <span>{{$comm->address}}</span>
                                            <!-- <a href="" target="_blank">View on map</a> -->
                                        </div>
                                        <div class="footer-adress">
                                            <span>{{$comm->address2}}</span>
                                            <!-- <a href="" target="_blank">View on map</a> -->
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="footer-contact">
                                            <li>{{$comm->tel}}</li>
                                            <li><a href="javascript:void(0);">{{$comm->email}}</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5"></div>
                                    <div class="col-md-7">
                                        <p> &#169; {{$comm->shortname}}   <?php echo date("Y"); ?>.  All rights reserved.</p>
                                    </div>
                                </div>
                            </div>
                            <span class="footer-decor"></span>
                        </footer>
                        <!-- footer end    -->
                    </div>
                    <!-- content  end  -->
                </div>
                <!-- content-holder  end  -->
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
        <script src="{{asset('admins/assets/js/toastr.min.js')}}"></script>
    <script src="{{asset('admins/assets/js/waitMe.min.js')}}"></script>
    <script>
    function open_loader(container) {
        $(container).waitMe({
            effect : 'bounce',
            text : '',
            bg : 'rgba(255,255,255,0.7)',
            color : '#000',
            maxSize : '',
            waitTime : '-1',
            textPos : 'vertical',
            fontSize : '',
            source : '',
            onClose : function() {}
        });
    }

    function close_loader(container) {
        $(container).waitMe("hide");
    }
    </script>
        @yield('script')
    </body>
</html>