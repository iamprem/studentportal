/**
 * 
 */
$(document).ready(function(){
$("#courseID,#creditHours,#gpa,#score,#phoneNumber,#ssn,#zipCode,#yearsWorked,#test_gre_gmat,#test_toefl_ielts").on("keypress",function(evt){
	
	evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
});

$("#courseName,#insMethod,#firstName,#lastName,#city,#state,#major,#degreeEarned").on("keypress",function(evt){
	
	evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 32 || charCode == 46 || (charCode > 64 && charCode <91) || (charCode > 96 && charCode < 123)) {
        return true;
    }
    return false;
});
});