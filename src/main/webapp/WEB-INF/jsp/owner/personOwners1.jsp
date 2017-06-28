<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="<spring:url value="/resources/js/personOwner.js"/>"></script>

<title>Person Owners</title>
</head>
<body>

	<section>
		<div class="jumbotron">
  			<div class="pull-left" style="padding-right:50px">
				<h3>Person Owner List</h3>					
			</div>
			
		</div>
	</section>
	
	
			
 	<section class="container">
 	<a href=" <spring:url value="/addPersonOwner" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> Add Person Owner
	</a>
	
	<a href=" <spring:url value="/listBusinessOwners" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> List Business Owners
	</a>
	<br><br>
		<div class="row">
		<table>
			<tr>
				<th><spring:message code="addPersonOwner.form.person.firstName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.lastName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.sex.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.birthDate.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.email.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.phone.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.action.label"/></th>
			</tr>
			
			<c:forEach items="${personOwnerList}" var="personOwner">
			
				<!-- construct an "update" link with customer id -->
				<c:url var = "personOwnerUpdateLink" value = "/updatePersonOwner">
					<c:param name = "OwnerId" value = "${personOwner.ownerId}" />
				</c:url>
				
				<!-- construct a "delete" link with customer id -->
				<c:url var = "personOwnerDeleteLink" value = "/deletePersonOwner">
					<c:param name = "OwnerId" value = "${personOwner.ownerId}" />
				</c:url>
				
				<tr>
					<td>${personOwner.person.firstName}</td>
					<td>${personOwner.person.lastName}</td>
					<td>${personOwner.person.sex}</td>
					<td>${personOwner.person.birthDate}</td>
					<td>${personOwner.person.contact.email}</td>
					<td>${personOwner.person.contact.areaCode}-${personOwner.person.contact.prefix}-${personOwner.person.contact.number}</td>
					<td>
							<!-- display the update link -->
							<a href = "${personOwnerUpdateLink}">Update</a> | 
							<a href = "${personOwnerDeleteLink}" onclick="if (!(confirm('Are you sure you want to delete this owner))) return false">Delete</a> |
							<a href="#" onclick="showPeronOwnerDetails('${personOwner.ownerId}');">Details</a>
					</td>
				</tr>	

			</c:forEach>
			</table>
		</div>
		
		<div id="formInput" style="display:none; background-color:Chartreuse; color:white; width = 300px; align:center;">
		</div>
		
	</section>
</body>
</html>
