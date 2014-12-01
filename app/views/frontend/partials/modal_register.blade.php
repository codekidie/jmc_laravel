@section('modal-register')
<!-- Start modal -->
<div id="modalRegister" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalRegisterLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h4 id="modalRegisterLabel">Register New Membership</h4>
    </div>
    {{ Form::open(array('url' => 'profile/store','class'=>'form-horizontal marginbot-clear' , 'id'=>'frm_user')) }}
        <div class="modal-body">
        <center>
                <div class="form-group" id="frm_username">
                <label for="">Username</label>
                {{Form::text('username','',array("class"=>"form-control","id"=>"c_username"))}}
                </div>
                <div class="form-group" id="frm_email">
                    <label for="Email">Email</label>
                    {{Form::text('email','',array("class"=>"form-control","id"=>"c_email"))}}
                </div>
                <div class="form-group" id="frm_password">
                    <label for="password">Password</label>
                    {{Form::password('password',array("class"=>"form-control","id"=>"c_password"))}}
                </div>
                <div class="form-group" id="frm_password_confirmation">
                    <label for="password_confirmation">Confirm Password</label>
                    {{Form::password('password_confirmation',array("class"=>"form-control",
                                                 "id"=>"password_confirmation"))}}
                </div>

                <div class="form-group" id="frm_firstname">
                    <label for="firstname">First Name</label>
                    {{Form::text('firstname','',array("class"=>"form-control",
                                                 "id"=>"c_firstname"))}}
                </div>

                <div class="form-group" id="frm_lastname">
                    <label for="lastname">Last Name</label>
                    {{Form::text('lastname','',array("class"=>"form-control",
                                                 "id"=>"c_lastname"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="age">Age</label>
                    {{Form::text('age','',array("class"=>"form-control",
                                                 "id"=>"c_age"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="contactnum">Contact Number</label>
                    {{Form::text('contactnum','',array("class"=>"form-control",
                                                 "id"=>"c_age"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="role">Gender</label>
                    <select name="gender" id="c_gender" class="form-control">
                        <option value="MALE">Male</option>
                        <option value="FEMALE">Female</option>
                       

                    </select>
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="role">Blood Type</label>
                    <select name="bloodtype" id="c_bloodtype" class="form-control">
                        <option value="A">A</option>
                        <option value="AB">AB</option>
                        <option value="B">B</option>
                        <option value="O">O</option>

                    </select>
                </div>

                    {{Form::hidden('role','client')}}
                    {{Form::hidden('form_view','front_end')}}
                
        </center>
                
                
        <div class="modal-footer">
            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                {{Form::submit('Sign Me Up',array("class"=>"btn btn-primary"))}}
                </div>
            
        </div>
        
    {{ Form::close() }}
</div>
<!-- End modal -->
@stop