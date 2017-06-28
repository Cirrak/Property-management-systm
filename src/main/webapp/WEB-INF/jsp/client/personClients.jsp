<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="<spring:url value="/resources/js/personClient.js"/>"></script>

<title>Person Clients</title>
</head>
<body>

	<div class="container">
	<div class="row">
		<h2 class="text-center">Private Client List</h2>
	</div>
	
	<section>
		<div class="jumbotron">
  			<div class="pull-right" style="padding-right:50px">
				<a href="?lang=en" >English</a>|<a href="?lang=am_ET" >አማርኛ</a>					
			</div>
			
		</div>
	</section>
    
        <div class="row">
		
            <div class="col-md-12">
	
	
			
 	
 	<a href=" <spring:url value="/addPersonClient" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> Add Person Client
	</a>
	
	<a href=" <spring:url value="/listBusinessClients" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> List Business Clients
	</a>
	            <spring:url value="/" var="home_url" ></spring:url>
 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>
	           
	<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
			<tr>
				<th><spring:message code="addPersonClient.form.person.firstName.label"/></th>
				<th><spring:message code="addPersonClient.form.person.lastName.label"/></th>
				<th><spring:message code="addPersonClient.form.person.sex.label"/></th>
				<th><spring:message code="addPersonClient.form.person.birthDate.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.email.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.phone.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.edit.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.delete.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.details.label"/></th>
			</tr>
						</thead>
							<tfoot>
						<tr>
						
				<th><spring:message code="addPersonClient.form.person.firstName.label"/></th>
				<th><spring:message code="addPersonClient.form.person.lastName.label"/></th>
				<th><spring:message code="addPersonClient.form.person.sex.label"/></th>
				<th><spring:message code="addPersonClient.form.person.birthDate.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.email.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.phone.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.edit.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.delete.label"/></th>
				<th><spring:message code="addPersonClient.form.person.contact.details.label"/></th>
						
				</tr>
					</tfoot>

					<tbody>
			<c:forEach items="${personClientList}" var="personClient">
			
				<!-- construct an "update" link with customer id -->
				<c:url var = "personClientUpdateLink" value = "/updatePersonClient">
					<c:param name = "personClientId" value = "${personClient.clientId}" />
				</c:url>
				
				<!-- construct a "delete" link with customer id -->
				<c:url var = "personClientDeleteLink" value = "/deletePersonClient">
					<c:param name = "personClientId" value = "${personClient.clientId}" />
				</c:url>
				
				<tr>
					<td>${personClient.person.firstName}</td>
					<td>${personClient.person.lastName}</td>
					<td>${personClient.person.sex}</td>
					<td>${personClient.person.birthDate}</td>
					<td>${personClient.person.contact.email}</td>
					<td>${personClient.person.contact.areaCode}-${personClient.person.contact.prefix}-${personClient.person.contact.number}</td>
					<td>
					 <a href="${personClientUpdateLink}" >
                            <p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p>
                     </a>
                     </td>
					 <td>
					<a href="${personClientDeleteLink}"   onclick="if (!(confirm('Are you sure you want to delete this owner))) return false">
                                <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p>
                     </a>
                     </td>
                      <td>
	             <a class="btn btn-primary"  href="#" onclick="showPeronClientDetails('${personClient.clientId}');" role="button">Show Detail</a>
                 </td>
					
			</tr>
		</c:forEach>
		</tbody>
		</table>
		</div>
		</div>
		</div>
		
		<div id="formInput" style="display:none; background-color:Chartreuse; color:white; width = 300px; align:center;">
		</div>
		
	</section>
</body>
</html>
