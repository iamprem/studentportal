/**
 * 
 */

function validateEmail()
{
	alert("Inside ValidateEMail");
	var email = $('userEmail').val();
	var url = 'RegisterController?emailid='+email;
	
	 $.ajax({
	        type: "POST",
	        url: url,
	        data: { email: email},
	        // dataType: "html",
	        success: function (result) {
	                alert(result);
	        },
	        failure: function (response) {
	            alert(response.d);
	        }
	    });
}