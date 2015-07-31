/**
 * 
 */

function validateEmail()
{
	var email = $('#userEmail').val();
	var url = 'RegisterController?emailid='+email;
	var str = "true";
	 $.ajax({
	        type: "GET",
	        url: url,
	        data: { email: email},
	        dataType: "text",
	        success: function (result) {
	                //alert(result);
	                
	                if(result.trim() == "true")
	                	{
	                	$('#vaildateUser').text("Username already exists!");
						$('#userEmail').val("");
	                	}
	                else{
						$('#vaildateUser').text("");
					}
	                
						
	        },
	        failure: function (response) {
	            alert("Failed"+response.d);
	        }
	    });
}

