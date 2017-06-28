<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/cart.js"/>"></script>
	
<title>Business Owner</title>
</head>
<body>
 	<section class="container" >
	
		<div class="row">
		
			<div class="col-md-5">
			
			<table>
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.name.label"/></td>
					<td>${businessOwner.business.name}</td>
				</tr>
				
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contactPerson.label"/></td>
					<td>${businessOwner.business.contactPerson}</td>
				</tr>
				
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.email.label"/></td>
					<td>${businessOwner.business.contact.email}</td>
				</tr>
				
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.areaCode.label"/></td>
					<td>${businessOwner.business.contact.areaCode}</td>
				</tr>
				
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.phone.label"/></td>
					<td>${businessOwner.business.contact.areaCode}-${businessOwner.business.contact.prefix}&nbsp;${businessOwner.business.contact.number}</td>
				</tr>
				
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.city.label"/></td>
					<td>${businessOwner.business.contact.city}</td>
				</tr>
				
					
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.state.label"/></td>
					<td>${businessOwner.business.contact.state}</td>
				</tr>
				
					
				<tr>
					<td><spring:message code="addBusinessOwner.form.business.contact.zipCode.label"/></td>
					<td>${businessOwner.business.contact.zipCode}</td>
				</tr>
				
				
			</table>
				<a href="<spring:url value="/listBusinessOwners" />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> BusinessOwner List
				</a>
		
			</div>
		</div>
	</section>
</body>
</html>