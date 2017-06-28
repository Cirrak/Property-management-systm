var contextRoot = "/" + window.location.pathname.split( '/' )[1];
function showBusinessClientDetails(businessClientId){
	

   	 $.ajax({
		type: 'GET',
		url: contextRoot + '/showBusinessClientDetail',
		dataType: "json",           // Accept header
		data:"businessClientId=" + businessClientId,
		
		success: function(businessClient){
			
			$('#formInput').html("");
			$("#formInput").append('<H3 align="center"> Staff Information </H3>');                
			$('#formInput').append("<H4 align='center'>First Name:  " + businessClient.business.name  + "</h4>"  );
			$('#formInput').append("<H4 align='center'>Last Name: " + businessClient.business.type  + "</h4>" );
			$('#formInput').append("<H4 align='center'>Email: " + businessClient.business.contactPerson  + "</h4>");
			$('#formInput').append("<H4 align='center'>City: " + businessClient.business.contact.email + "</h4>");
			$('#formInput').append("<H4 align='center'>State: " + businessClient.business.contact.city + "</h4>");
			$('#formInput').append("<H4 align='center'>Zip Code: " + businessClient.business.contact.state  + "</h4>");
			$('#formInput').append("<H4 align='center'>Zip Code: " + businessClient.business.contact.zipCode  + "</h4>");
			$("#formInput").append('<h4 align="center"> <a href="#" onclick="toggle_visibility(\'formInput\');"><b>EXIT</b> </a> </h4>');
			make_visible('formInput');
			
			
			
			
		},
 
		error: function(error){

				alert("Getting an error while getting person clients");   // "non" Validation Error
			}
	});
}


make_visible = function(id) {
    var e = document.getElementById(id);
    e.style.display = 'block';
 }	   

toggle_visibility = function(id) {
    var element = document.getElementById(id);
    if(element.style.display == 'block')
    	element.style.display = 'none';
    else
    	element.style.display = 'block';
 }	



 