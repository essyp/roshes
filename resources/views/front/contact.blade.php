@extends( 'layouts.front' )

@section('title','Contact')

@section('style')
@endsection

@section('content')
<div class="wrapper-inner">
                            <div class="container">
                                <div class="page-title no-border">
                                    <h2>Contact us</h2>
                                    <!-- <h3><span></span></h3> -->
                                </div>
								<!-- map  -->
                                <section class="no-border">
                                    <div class="map-box">
                                        <div>
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3974.5434761854967!2d7.910626614020779!3d5.015198396359523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x105d562b06138d19%3A0x402a94b0849b41bd!2sIbom%20E-library!5e0!3m2!1sen!2sng!4v1614371663081!5m2!1sen!2sng" width="800" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                        </div>
                                    </div>
                                </section>
								<!-- map  end-->
								<!-- contact info  -->
                                <section class="no-border">
                                    <div class="contact-details">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h3>Contact  details : </h3>
                                            </div>
                                            <div class="col-md-3">
                                                <h4>Office in Nigeria</h4>
                                                <ul>
                                                    <li><a href="javascript:void(0);">{{$comm->address}}</a></li><br>
                                                    <li><a href="javascript:void(0);">{{$comm->address2}}</a></li>
                                                    <li><a href="javascript:void(0);">{{$comm->tel}}</a></li>
                                                    <li><a href="javascript:void(0);">{{$comm->email}}</a></li>
                                                </ul><br>
                                                
                                            </div>
                                            <div class="col-md-3">
                                                <h4>Find Us On : </h4>
                                                <ul>
                                                    <li><a href="{{$comm->facebook}}">Facebook</a></li>
                                                    <li><a href="{{$comm->twitter}}">Twitter </a></li>
                                                    <li><a href="{{$comm->instagram}}">Instagram</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </section>
								<!-- contact info  end-->
								<!-- contact form -->
                                <section>
                                    <div class="contact-form-holder">
                                        <div id="contact-form">
                                            <div id="message"></div>
                                            <form id="submit-form">
                                            {{ csrf_field() }}
                                                <input name="name" type="text" placeholder="Name" >
                                                <input name="email" type="text" placeholder="E-mail" >
                                                <input name="tel" type="text" placeholder="Phone Number" >            
                                                <textarea name="message" placeholder="Message"></textarea>  
                                                <button type="submit" id="submit"><span>Send </span> <i class="fa fa-long-arrow-right"></i></button>          										           											
                                            </form>
                                        </div>
                                    </div>
                                </section>
								<!-- contact form  end-->
                            </div>
                        </div>
@endsection

@section('script')

<script>
        $('#submit-form').submit(function(e){
         e.preventDefault();
         //$('#quote').modal('hide');
         open_loader('#page');

         const form = $("#submit-form")[0];
         const _data = new FormData(form);
         $.ajax({
             url: '{{url("send-enquiry")}}',
             data: _data,
             enctype: 'multipart/form-data',
             processData: false,
             contentType:false,
             type: 'POST',
             success: function(data){
                 if(data.status == "success"){
                     toastr.success(data.message, data.status);
                     $("#submit-form")[0].reset();
                    //  window.setTimeout(function(){location.reload();},2000);
                     close_loader('#page');
                     } else{
                         toastr.error(data.message, data.status);
                         close_loader('#page');
                     }
             },
             error: function(result){
                 toastr.error('Check Your Network Connection !!!','Network Error');
                 close_loader('#page');
             }
         });
         return false;
     });
</script>
@endsection