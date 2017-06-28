<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Buildings</title>
</head>
<body>
	<section class="container">
	
		<div class="row">
		
		
		<c:if test="${size == 0}">
		<h3>No registered buildings found!</h3>
		<spring:url value="/" var="home_url" ></spring:url>
        <a class="btn btn-primary" href="${home_url}" role="button">Home</a>
		</c:if>
		
			<c:forEach items="${buildings}" var="building">
				<div class="circular-div" style="padding-bottom: 15px">
					<div class="thumbnail">
					<img src="<c:url value="/resources/images/${building.photoName}.png"></c:url>" alt="image"   style = "width:300px"/>
						<%-- <img src="<c:url value="/resource/images/${building.propertyId}.png"></c:url>" alt="image"  style = "width:100%"/> --%>
						<div class="caption">
							<h3>Name: ${building.name}</h3>							
							<p>Description: ${building.description}</p>
							<p>Availability: ${building.status}</p>
							<p>Address: ${building.address}</p>
							<p>City: ${building.city}</p>
							<p>State: ${building.state}</p>
							<p>Zip Code: ${building.zipCode}</p>
							<p>
								<a
									href=" <spring:url value="/property/home/" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Back
								</a>
																
							     <spring:url value="/" var="home_url" ></spring:url>
                                 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>
                                 
							<spring:url value="/property/deleteProperty"  var="delete" >
   				                 <spring:param name="propertyId" value="${building.propertyId}" />
 		                   </spring:url>
                           <a href="${delete}" class="btn btn-primary"  role="button">Delete</a>
                           
               
  							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>
