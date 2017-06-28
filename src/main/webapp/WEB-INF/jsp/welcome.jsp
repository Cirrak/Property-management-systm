<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta charset="utf-8">
 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>Welcome</title>


 <script  language="javascript">
    window.onload = function() {
    	/*  document.getElementByClass('.container').style.display = "none"; */
    	 $(".container").hide();
    	 $(".assign").hide();
    	 hideDivContactUs() ;
    }
</script>  


<script language="javascript">
function hideProperty() {
/* document.getElementById('.container').style.display = "block"; */
  $(".container").hide();
  
 
}
</script>

<script language="javascript">
function hideAssign() {
/* document.getElementById('.container').style.display = "block"; */
  $(".assign").hide();
 
 
}
</script>


</script>
    <script language="javascript">
        function hideDivContactUs() {
           
            $("#contactUs").hide();

        }
    </script>
    
   <script language="javascript">
        function showDivContactUs() {
          
            $("#contactUs").show();
            hideProperty();
            hideAssign();

        }
    </script>

<script language="javascript">
function showProperty() {

  $(".container").show();
  hideAssign();
  hideDivContactUs();
}

</script>

<script language="javascript">
function showAssign() {

  $(".assign").show();
  hideDivContactUs();
  hideProperty();
}

</script>


</head>

<body style="color:Green">
	</br>
	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Property Management System</a>
    </div>
    <ul class="nav navbar-nav">
 <li><a id="welcome" href="/propertyManagement/welcome" onclick="return hideDiv();" >Home</a></li>
<!-- <li><a href="/propertyManagement/users/">Users</a></li>
<li><a href="/propertyManagement/profile/">Profile</a></li> -->
<li><a href="/propertyManagement/staffList">Staff</a></li>
<li><a href="/propertyManagement/listPersonClients">Clients</a></li>
<li><a href="/propertyManagement/listPersonOwners">Owners</a></li>

<li><a href="#" onclick="return showAssign(); " >Assign</a></li>
<li><a href="#" onclick="return showProperty();" >Property</a></li>
<li><a href="#" onclick="return  showDivContactUs();" >Contact Us</a></li>
<li><a href="/propertyManagement/logout">Logout</a></li>
    </ul>
  </div>
</nav>

<table width="100%">
		<tr valign="middle" align="center">
		
		<td><img src="<c:url value="/resources/images/home1.jpg"></c:url>" alt="image"   style = "width:150px"/></td>
			<td><h1 class="text-muted">Property Management System</h1></td>
		<td><img src="<c:url value="/resources/images/home1.jpg"></c:url>" alt="image"   style = "width:150px"/></td>
			
		</tr>
	</table>



<!-- <div class="mycontainer">
           
  <img src="/resources/images/home1.jpg" class="img-circle" alt="Home" width="150" > 
  <h3 style="text-align: center">WELCOME TO PROPERTY MANAGEMENT SYSTEM</h3>
</div> -->




<div class="assign">
    
 
	
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Property Management</title>
</head>
<body>


<table width="100%">
		<tr valign="middle" align="center"><td><h3 class="text-muted">Assign Property</h3></td></tr>
		
		<tr valign="middle" align="center"><td><h4 class="text-muted"><a href="/propertyManagement/propertyStaffList">Property-Staff</a> |
		<a href="/propertyManagement/propertyOwnerList"">Property-Owner</a></h4> </td></tr>		
		
	</table>


</body>
</html>
	
</div>





<div id="contactUs" >

   
<table width="100%">
		<tr valign="middle" align="center">	<td><h4>Reach Us At</h4></td></tr>
		<tr valign="middle" align="center">	<td><h4 >cs544StudentDevelopers</h4></td></tr>
		<tr valign="middle" align="center">	<td><h4 >tel:+1 641 000 0000</h4></td></tr>
		<tr valign="middle" align="center">	<td><h4>Email:info@cs544StudentDevelopers</h4></td></tr>
	</table>
</div>
  
<div class="container">
    
  	<div id="mybox" >
	
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Property Management</title>
</head>
<body>

<h4 style="text-align: center"><a href="/propertyManagement/property/register">Register Property</a> |
<a href="/propertyManagement/property/buildings">Buildings</a> </h4>>

</body>
</html>
		</div>
</div>

</body>
</html>
