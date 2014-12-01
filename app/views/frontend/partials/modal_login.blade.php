@section('modal-login')
<!-- Start modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h4 id="myModalLabel">Login member</h4>
    </div>
    
    <form id="frm" method="POST" action="{{url('login/authenticate')}}" class="form-horizontal marginbot-clear">
        <div class="modal-body">
        <div id="content"></div>
            <div class="control-group margintop30">
                <label class="control-label" for="inputEmail">Username</label>

                <div class="controls">
                <input type="text" name="username" id="username" placeholder="Username">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPassword">Password</label>
                <div class="controls">
                
                    <input type="password" name="password" id="password" placeholder="Password">

                    <!-- <input type="hidden" name="role" value="client"> -->
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox"> Remember me
                    </label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            {{--<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>--}}
            <button type="submit" class="btn btn-primary" name="Login">Login now</button>
        </div>
    </form>
</div>
<!-- End modal -->
@stop