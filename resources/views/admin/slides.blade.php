@extends( 'layouts.admin' )

@section('title','Slides')

@section('style')
<!--Data Table-->
        <link href="{{asset('admins/bower_components/datatables/media/css/jquery.dataTables.css')}}" rel="stylesheet">
        <link href="{{asset('admins/bower_components/datatables-tabletools/css/dataTables.tableTools.css')}}" rel="stylesheet">
        <link href="{{asset('admins/bower_components/datatables-colvis/css/dataTables.colVis.css')}}" rel="stylesheet">
        <link href="{{asset('admins/bower_components/datatables-responsive/css/responsive.dataTables.scss')}}" rel="stylesheet">
        <link href="{{asset('admins/bower_components/datatables-scroller/css/scroller.dataTables.scss')}}" rel="stylesheet">
@endsection

@section('content')
<!--main content start-->
<div id="content" class="ui-content ui-content-aside-overlay">
                <!--page header start-->
                <div class="page-head-wrap">
                    <h4 class="margin0">
                        Home Slides
                    </h4>
                    <div class="breadcrumb-right">
                        <ol class="breadcrumb">
                            <li><a href="{{asset('/admin/dashboard')}}">Home</a></li>
                            <li class="active">Home Slides</li>
                        </ol>
                    </div>
                </div>
                <!--page header end-->

                <div class="ui-content-body">

                    <div class="ui-container">
                        <div class="row">
                            <form id="status_form" action='{{url("admin/banner-status")}}' method="POST">
                                {{ csrf_field() }}
                            <div class="col-sm-12">
                            <div class="mbot-20">
                                    <div class="btn-group">
                                       <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button" aria-expanded="false">Action <span class="caret"></span></button>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><button class="btn btn-default" name="submit" type="button" onclick="status_form('active')">Active</button></li>
                                        <li><button class="btn btn-default" name="submit" type="button" onclick="status_form('inactive')">Inactive</button></li>
                                        <li class="divider"></li>
                                        <li><button class="btn btn-danger" name="submit" type="button" onclick="status_form('delete')">Delete</button></li>
                                    </ul>
                                    </div>
                                    <button type="button" data-toggle="modal" data-target="#slide" class="btn btn-default">Add New Slide</button>
                                </div>
                                <section class="panel">
                                    <header class="panel-heading panel-border">
                                       Home Slides
                                        <span class="tools pull-right">
                                            <a class="refresh-box fa fa-repeat" href="javascript:;"></a>
                                            <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="close-box fa fa-times" href="javascript:;"></a>
                                        </span>
                                    </header>
                                    <div class="panel-body">
                                        <table id="datatable" class="table responsive-data-table table-striped">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" onClick="checkAllContestant()" id="chAllCon" /></th>
                                                <th>#</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($data as $bl)
                                            <tr>
                                                <td><input class="contestantBox" type="checkbox" name="id[]" value="{{$bl->id}}" /> </td>
                                                <td><img src="{{asset('images/banners/'.$bl->image)}}" style="max-height: 60px; max-width: 100px"></td>
                                                @if($bl->status==ACTIVE)
                                                <td><span class="label label-success">Active</span></td>
                                                @else
                                                <td><span class="label label-warning">Inactive</span></td>
                                                @endif
                                                <td>
                                                <div class="btn-group">
                                                <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button" aria-expanded="false">Action <span class="caret"></span></button>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a href="javascript:void(0);" style="color: blue" onclick="editslide({{$bl}})">Update</a></li>
                                                    </ul>
                                                </div>
                                                </td>
                                            </tr>
                                                @endforeach

                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                            </div>
                            </form>

                        </div>

                    </div>

                </div>
            </div>
            <!--main content end-->
@endsection


<!-- Button trigger modal -->
<div  id="slide" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add New Home Slide</h4>
            </div>
            <form class="cmxform form-horizontal " id="slide-form">
            {{ csrf_field() }}
            <div class="modal-body">
            <div class="form">

                        <div class="form-group">
                            <label for="title" class="control-label col-lg-3">Title</label>
                            <div class="col-lg-9">
                                <input class=" form-control" name="title" type="text"/>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="description" class="control-label col-lg-3">Description</label>
                            <div class="col-lg-9">
                                <textarea class=" form-control" name="description"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="button_name" class="control-label col-lg-3">Button Name</label>
                            <div class="col-lg-9">
                                <input class=" form-control" name="button_name" type="text"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="link" class="control-label col-lg-3">Link</label>
                            <div class="col-lg-9">
                                <input class=" form-control" name="link" type="url"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="image" class="control-label col-lg-3">Slide Image</label>
                            <div class="col-lg-6">
                                <input class=" form-control" id="imgInp" name="image" type="file" required="required"/>
                            </div>
                            <div class="col-lg-3">
                                <img id="blah" src="" style="max-width: 100px; max-height: 100px"/>
                            </div>
                        </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>
</div>


<!-- Button edit modal -->
<div  id="editmodal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Edit Slide</h4>
            </div>
            <form class="cmxform form-horizontal " id="edit-form">
            {{ csrf_field() }}
            <div class="modal-body">
            <div class="form">

                        <div class="form-group">
                            <label for="title" class="control-label col-lg-3">Slide Title Line 1</label>
                            <div class="col-lg-9">
                                <input class=" form-control" id="edittitle" name="title" type="text"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description" class="control-label col-lg-3">Description</label>
                            <div class="col-lg-9">
                                <textarea class=" form-control" id="editdescription" name="description"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="button_name" class="control-label col-lg-3">Button Name</label>
                            <div class="col-lg-9">
                                <input class=" form-control" id="editbutton" name="button_name" type="text"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="link" class="control-label col-lg-3">Link</label>
                            <div class="col-lg-9">
                                <input class=" form-control" id="editlink" name="link" type="url"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="image" class="control-label col-lg-3">Slide Image</label>
                            <div class="col-lg-6">
                                <input class=" form-control" id="imgInp2" name="image" type="file"/>
                            </div>
                            <div class="col-lg-3">
                                <img id="editimage" src=" " style="max-width: 100px; max-height: 100px"/>
                            </div>
                        </div>

                </div>
            </div>
            <div class="modal-footer">
                <input class=" form-control" id="editid" name="id" type="hidden"/>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>


@section('script')
 <script>
    function readURL(input) {

        if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#blah').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function() {
        readURL(this);
    });

    function readURL2(input) {

    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
        $('#editimage').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
    }
    }

    $("#imgInp2").change(function() {
    readURL2(this);
    });
    

$('#slide-form').submit(function(e){
		e.preventDefault();
        $('#slide').modal('hide');
            open_loader('#page');

		var form = $("#slide-form")[0];
		var _data = new FormData(form);
		$.ajax({
			url: '{{url("admin/create-banner")}}',
			data: _data,
			enctype: 'multipart/form-data',
			processData: false,
			contentType:false,
			type: 'POST',
			success: function(data){
				//$("#service").modal("toggle");
				if(data.status == "success"){
					toastr.success(data.message, data.status);
					$( "#datatable" ).load( "{{url('/admin/banners')}} #datatable" );
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

    function status_form(value) {
        open_loader('#page');

		var form = document.getElementById('status_form');
        var _data = new FormData(form);
        _data.append('submit',value);

		$.ajax({
			url: form.action,
			data: _data,
			enctype: 'multipart/form-data',
			processData: false,
			contentType:false,
			type: form.method,
			success: function(data){
				//$("#blog").modal("toggle");
				if(data.status == "success"){
                    toastr.success(data.message, data.status);
					$( "#datatable" ).load( "{{url('/admin/banners')}} #datatable" );
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
    }

    function checkAllContestant(){
    var ch =document.getElementById('chAllCon').checked,
    checked = false;
    if(ch){
        checked=true;
    }
        var els = document.getElementsByClassName('contestantBox');

        for(var g=0;g<els.length;g++){
            els[g].checked=checked;
        }


    }

    $('#edit-form').submit(function(e){
		e.preventDefault();
        $('#editmodal').modal('hide');
            open_loader('#page');

		var form = $("#edit-form")[0];
		var _data = new FormData(form);
		$.ajax({
			url: '{{url("admin/update-banner")}}',
			data: _data,
			enctype: 'multipart/form-data',
			processData: false,
			contentType:false,
			type: 'POST',
			success: function(data){
				//$("#blog").modal("toggle");
				if(data.status == "success"){
					toastr.success(data.message, data.status);
					$( "#datatable" ).load( "{{url('/admin/banners')}} #datatable" );
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

    function editslide(event){
        //$('#modaltitle').text("Edit " +event.title)
        $('#edittitle').val(event.title)
        $('#editdescription').val(event.description)
        $('#editid').val(event.id)
        $('#editbutton').val(event.button_name)
        $('#editlink').val(event.link)
        $("#editimage").attr('src', "{{asset('images/banners/')}}/" +event.image)
        $('#editmodal').modal('show')
    }

</script>
<!--Data Table-->
        <script src="{{asset('admins/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
        <script src="{{asset('admins/bower_components/datatables-tabletools/js/dataTables.tableTools.js')}}"></script>
        <script src="{{asset('admins/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
        <script src="{{asset('admins/bower_components/datatables-colvis/js/dataTables.colVis.js')}}"></script>
        <script src="{{asset('admins/bower_components/datatables-responsive/js/dataTables.responsive.js')}}"></script>
        <script src="{{asset('admins/bower_components/datatables-scroller/js/dataTables.scroller.js')}}"></script>

        <!--init data tables-->
        <script src="{{asset('admins/assets/js/init-datatables.js')}}"></script>

@endsection
