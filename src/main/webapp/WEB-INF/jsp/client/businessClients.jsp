<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
<script type="text/javascript" src="<spring:url value="/resources/js/businessClient.js"/>"></script>
<title>Person Clients</title>
</head>
<body>

	<div class="container">
	<div class="row">
		<h2 class="text-center">Business Client List</h2>
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
	
	
 	 <!-- Query Parameter passing  -->
 	<a href=" <spring:url value="/addBusinessClient" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> Add Business Client
	</a>
	
	<a href=" <spring:url value="/listPersonClients" /> " class="btn btn-primary"> 
				<span class="glyphicon-info-sign glyphicon" /></span> List Person Clients
	</a>
	            <spring:url value="/" var="home_url" ></spring:url>
 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>
	
		<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
				<th><spring:message code="addBusinessClient.form.business.name.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.type.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contactPerson.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.email.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.phone.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.edit.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.delete.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.details.label"/></th>
			
						</tr>
						</thead>
							<tfoot>
						<tr>
						<th><spring:message code="addBusinessClient.form.business.name.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.type.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contactPerson.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.email.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.phone.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.edit.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.delete.label"/></th>
				<th><spring:message code="addBusinessClient.form.business.contact.details.label"/></th>
			          
						</tr>
					</tfoot>

					<tbody>
					
			<c:forEach items="${businessClientList}" var="businessClient">
			
				<!-- construct an "update" link with customer id -->
				<c:url var = "businessClientUpdateLink" value = "/updateBusinessClient">
					<c:param name = "businessClientId" value = "${businessClient.clientId}" />
				</c:url>
				
				<!-- construct a "delete" link with customer id -->
				<c:url var = "businessClientDeleteLink" value = "/deleteBusinessClient">
					<c:param name = "businessClientId" value = "${businessClient.clientId}" />
				</c:url>
				
				<tr>
					<td>${businessClient.business.name}</td>
					<td>${businessClient.business.type}</td>
					<td>${businessClient.business.contactPerson}</td>
					<td>${businessClient.business.contact.email}</td>
					<td>${businessClient.business.contact.areaCode}-${businessClient.business.contact.prefix}-${businessClient.business.contact.number}</td>
					<td>
					 <a href="${businessClientUpdateLink}">
                            <p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p>
                     </a>
                     </td>
                        <td>
					<a href="${businessClientDeleteLink}"   onclick="if (!(confirm('Are you sure you want to delete this client))) return false">
                                <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p>
                     </a>
                     </td>
                     
                      <td>
	           
	            
	             <a class="btn btn-primary"  href="#"onclick="showBusinessOwnerDetails('${businessClient.clientId}');" role="button">Show Detail</a>
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
