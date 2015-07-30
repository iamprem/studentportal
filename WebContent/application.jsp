<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply for Application</title>
<%@include file="student_header.jsp" %>
</head>
<body>

<div id="wrap">
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="col-md-offset-3">
	<form class="form-horizontal" id="enrollform" method="POST"
		action="/ApplicationController">
		<div class="form-group">

			<label for="firstName" class="col-sm-2 control-label">First Name</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" id="firstName" class="form-control"
					name="firstName" placeholder="First Name"
					aria-describedby="basic-addon1" required>
			</div>
		</div>
		<div class="form-group">
			<label for="lastName" class="col-sm-2 control-label">Last Name</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="lastName"
					name="lastName" placeholder="Last Name"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group">
			<label for="gender" class="col-sm-2 control-label">Gender</label>
			<div class="col-sm-4 col-xs-4">
				<label class="radio-inline"> <input type="radio"
					name="userType">Male
				</label> 
				<label class="radio-inline"> <input type="radio"
					name="userType">Female
				</label>
			</div>
		</div>
		
		 
        <div class="form-group">
        <label for="gender" class="col-sm-2 control-label">Date Of Birth</label>
        <div class="col-sm-4 col-xs-4">
            <div class='input-group date' id='datetimepicker10'>
                <input type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar">
                    </span>
                </span>
                </div>
            </div>
        </div>

    <script type="text/javascript">
        $(function () {
            $('#datetimepicker10').datetimepicker({
                viewMode: 'years',
                format: 'YYYY/MM/DD'
            });
        });
    </script>


		<div class="form-group">
			<label for="phoneNumber" class="col-sm-2 control-label">Phone Number</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="phoneNumber"
					name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX"
					aria-describedby="basic-addon2">
			</div>
		</div>




			<div class="form-group">
			<label for="ssn" class="col-sm-2 control-label">SSN</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="ssn"
					name="ssn" placeholder="SSN"
					aria-describedby="basic-addon2">
			</div>
		</div>

		<div class="form-group">
			<label for="streetAddress" class="col-sm-2 control-label">Street Address</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="streetAddress"
					name="streetAddress" placeholder="Street Address"
					aria-describedby="basic-addon2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="aptNumber" class="col-sm-2 control-label">Apt Number</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="aptNumber"
					name="aptNumber" placeholder="Apartment Number"
					aria-describedby="basic-addon2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="city" class="col-sm-2 control-label">City</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="city"
					name="city" placeholder="City"
					aria-describedby="basic-addon2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="state" class="col-sm-2 control-label">State</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="state"
					name="state" placeholder="State"
					aria-describedby="basic-addon2" required>
			</div>
		</div>
		<!-- ***********************COUNTRY********************************* -->

<div class="form-group ">
<label for="country" class="col-sm-2 control-label">Country</label>
	<div class="col-sm-4 col-xs-4">
		<div class="btn-group ">
			 <button class="btn dropdown-toggle" name="recordinput" data-toggle="dropdown">
			 Select a Country
			 <span class="caret"></span>
			 </button>
			 <ul class="dropdown-menu col-sm-2">
			 <li><a>United States</a></li>
			 <li><a>India</a></li>
			 <li><a>China</a></li>
			 <li><a>Canada</a></li>
			 </ul> 
  </div>
  </div>
 </div>




		<div class="form-group">
			<label for="zipCode" class="col-sm-2 control-label">Zip Code</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="zipCode"
					name="zipCode" placeholder="Zip Code"
					aria-describedby="basic-addon2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="degreeEarned" class="col-sm-2 control-label">Degree Earned</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="degreeEarned"
					name="degreeEarned" placeholder="Degree Earned"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group">
			<label for="major" class="col-sm-2 control-label">Major</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="major"
					name="major" placeholder="City"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group">
			<label for="gpa" class="col-sm-2 control-label">GPA</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="gpa"
					name="gpa" placeholder="GPA"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group ">
		<div class="col-sm-3 col-xs-3">
		<div class="row">
		<div class="col-sm-8 col-xs-8">
			<div class="btn-group ">
				 <button class="btn dropdown-toggle" name="recordinput" data-toggle="dropdown">
				 Select a Test type
				 <span class="caret"></span>
				 </button>
				 <ul class="dropdown-menu col-sm-2">
				 <li><a>GRE</a></li>
				 <li><a>GMAT</a></li>
				 </ul> 
		  </div>
		  </div>
	  <div class="col-sm-4 col-xs-4">
	  	<input type="text" class="form-control" id="test_gre_gmat"
				name="test_gre_gmat"
				aria-describedby="basic-addon2" required>
	  </div>
		  </div>
		  
		 </div>
		 </div>
		 
		 
		 <div class="form-group ">
		<div class="col-sm-3 col-xs-3">
		<div class="row">
		<div class="col-sm-8 col-xs-8">
			<div class="btn-group ">
				 <button class="btn dropdown-toggle" name="recordinput" data-toggle="dropdown">
				 Select a Test type
				 <span class="caret"></span>
				 </button>
				 <ul class="dropdown-menu col-sm-2">
				 <li><a>TOEFL</a></li>
				 <li><a>IELTS</a></li>
				 </ul> 
		  </div>
		  </div>
	  <div class="col-sm-4 col-xs-4">
	  	<input type="text" class="form-control" id="test_toefl_ielts"
				name="test_toefl_ielts"
				aria-describedby="basic-addon2" required>
				
	  </div>
		  </div>
		  
		 </div>
		 </div>
		 
		 
 
		<div class="form-group">
			<label for="workOrgName" class="col-sm-2 control-label">Work Organization Name</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="workOrgName"
					name="workOrgName" placeholder="Work Organisation Name<"
					aria-describedby="basic-addon2" required>
			</div>
		</div>


		<div class="form-group">
			<label for="yearsWorked" class="col-sm-2 control-label">Years Worked</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="yearsWorked"
					name="yearsWorked" placeholder="Years Worked"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group">
			<label for="role" class="col-sm-2 control-label">Role</label>
			<div class="col-sm-4 col-xs-4">
				<input type="text" class="form-control" id="role"
					name="role" placeholder="Role"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

			<div class="form-group">
			<label for="sop" class="col-sm-2 control-label">Statement Of Purpose</label>
			<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="5" id="comment" name="sop" 
					placeholder="Brief Statement of Purpose in 300 Words" aria-describedby="basic-addon2"></textarea>
			</div>
		</div>


		<div class="form-group">
			<div class="col-sm-offset-3 col-sm-10">
				<button type="Login" class="btn btn-primary">Create Application</button>
			</div>
		</div>
		

	</form>
	</div>


</div>
<label id="test_toefl_ielts_label" style="visibility:hidden"></label>
<label id="test_gre_gmat_label" style="visibility:hidden"></label>
<script>
$('.dropdown-toggle').dropdown()
$(".dropdown-menu li a").click(function(){
 var selText = $(this).text();
 if(selText=="GRE" || selText =="GMAT"){
	$("#test_gre_gmat_label").text(selText);	 
 }else if(selText=="TOEFL" || selText =="IELTS"){
	$("#test_toefl_ielts_label").text(selText);	 
 }else{
	 $("#test_gre_gmat_label").text("null");
	 $("#test_toefl_ielts_label").text("null");	 
 }

 $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');
});
</script>
<div id="footer">
<%@include file="footer.jsp" %>
</div>

</body>
</html>