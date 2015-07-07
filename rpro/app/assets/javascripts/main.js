


$(document).ready(function() {
	console.log('Message: Document Ready');
	
	jQuery("nav a").click(function(e) {
    url= $(this).attr("href"); // get the value stored in the html attribute
    getPage(url); // call thegetPagefunction (defined below)
   
    window.history.pushState('object', 'New Title',url);
    e.preventDefault();
   
   
   
   function getPage(pageName) {
   	pageURL =pageName;
$.ajax({url: pageURL,
success: function(data){
switch (pageName){
case '/home':$(".mainContent").html(data);
break;
case '/about':$(".mainContent").html(data);
break;
case '/contacts/new':$(".mainContent").html(data);
break;
case'/contacts/new':
$(".mainContent").html(data).initAjaxForm();
break;
default:
$(".mainContent").html(data);
}
},
error: function(){
$(".mainContent").text("Page not found!!");
}
});
}
   

 
function loadNextPage(nextPage) {
var str=nextPage;
var n =str.lastIndexOf('/');
var result =str.substring(n + 1);
getPage (result);
}



function( $ ){

$.fn.initAjaxForm= function() {
$('form').submit(function() {
console.log('Message: form save');
// Get the information from the form inputs
var submitName = $('#formname').val();
var submitEmail= $('#formemail').val();
var submitMobile= $('#formmobile').val();
var submitMessage= $('#formmessage').val();

$.ajax({url: '/contacts/new',
data:{
object_param:{
name: submitName,
email:submitEmail,
mobile:submitMobile,
message:submitMessage
}},
dataType: "JSON"
}).success(function(json
){ // thejsonvariable holds the return from the server
//act on result.
$(".mainContent").text("Form Successfully Saved at " +json.created_at+ "!!");
// Create a function to display the information returned via JSON that was just saved
});
return false; // prevents normal behaviour,ieform submit and redirect
});

};

})(jQuery);










});




















