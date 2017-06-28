

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>

	<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resources/js/personOwner.js"/>"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	
	<script language="JavaScript" src="https://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="https://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	 </head>
	 <body>

<div class="container">
	<div class="row">
		<h2 class="text-center">Private Owner List</h2>
	</div>
    
        <div class="row">
		
            <div class="col-md-12">
            
            <!-- Query Parameter passing  -->
    <a href=" <spring:url value="/addPersonOwner" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> Add Person Owner
	</a>
	
	<a href=" <spring:url value="/listBusinessOwners" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> List Business Owners
	</a>
            
                  <spring:url value="/" var="home_url" ></spring:url>
 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>    
   
<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
					
				<th><spring:message code="addPersonOwner.form.person.firstName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.lastName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.sex.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.birthDate.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.email.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.phone.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.edit.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.delete.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.details.label"/></th>
			
						</tr>
						</thead>
							<tfoot>
						<tr>
				<th><spring:message code="addPersonOwner.form.person.firstName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.lastName.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.sex.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.birthDate.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.email.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.phone.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.edit.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.delete.label"/></th>
				<th><spring:message code="addPersonOwner.form.person.contact.details.label"/></th>
			
                             
						</tr>
					</tfoot>

					<tbody>
				
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
					 <a href="${personOwnerUpdateLink}" >
                            <p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p>
                     </a>
                     </td>
                     <td>
					<a href="${personOwnerDeleteLink}"   onclick="if (!(confirm('Are you sure you want to delete this owner))) return false">
                                <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p>
                     </a>
                     </td>
				
		
				 <td>
	             <a class="btn btn-primary"  href="#" onclick="showPeronOwnerDetails('${personOwner.ownerId}');" role="button">Show Detail</a>
                 </td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		</div>
		</div>
		</div>
						

<div id="formInput" style="display:none; background-color:CornflowerBlue; color:white; width = 300px; align:center;" > 


</div>
 


								</body>
								</html>
