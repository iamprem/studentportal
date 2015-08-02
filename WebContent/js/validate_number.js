/**
 * 
 */
$(document).ready(function(){
$("#courseID,#creditHours,#gpa,#score,#billZip").on("keypress",function(evt){
	
	evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
});

$("#courseName,#insMethod,#state,#cardName,#billCity,#billState").on("keypress",function(evt){
	
	evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 32 || charCode == 46 || (charCode > 64 && charCode <91) || (charCode > 96 && charCode < 123)) {
        return true;
    }
    return false;
});
});