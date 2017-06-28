

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resources/js/staff.js"/>"></script>
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
		<h2 class="text-center">Staff List</h2>
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
      <spring:url value="/addStaff" var="addStaff_url" ></spring:url>
<a class="btn btn-primary" href="${addStaff_url}" role="button">Add staff</a>
            <spring:url value="/" var="home_url" ></spring:url>
 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>
            
            
<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
						
							
				<th><spring:message code="form.name"/></th>
				<th><spring:message code="form.position.label"/></th>
				<th><spring:message code="form.sex.label"/></th>
				<th><spring:message code="form.birthDate.label"/></th>
				<th><spring:message code="form.phone.label"/></th>
				<th><spring:message code="form.address"/></th>
				<th><spring:message code="form.edit"/></th>
				<th><spring:message code="form.delete"/></th>
				<th><spring:message code="form.detail"/></th>
				
		
						</tr>
						</thead>
							<tfoot>
						<tr>
					
                <th><spring:message code="form.name"/></th>
				<th><spring:message code="form.position.label"/></th>
				<th><spring:message code="form.sex.label"/></th>
				<th><spring:message code="form.birthDate.label"/></th>
				<th><spring:message code="form.phone.label"/></th>
				<th><spring:message code="form.address"/></th>
				<th><spring:message code="form.edit"/></th>
				<th><spring:message code="form.delete"/></th>
				<th><spring:message code="form.detail"/></th>
                             
						</tr>
					</tfoot>

					<tbody>
					<c:forEach items="${StaffList}" var="staff">
						<tr>
							<td>${staff.person.firstName}&nbsp;${staff.person.lastName}</td>
							<td>${staff.position}</td>
							<td>${staff.person.sex}</td>
							<td>${staff.person.birthDate}</td>
							<td>${staff.person.contact.areaCode}-${staff.person.contact.prefix}-${staff.person.contact.number}</td>
							<td>${staff.person.contact.city}, ${staff.person.contact.state}, ${staff.person.contact.zipCode}</td>
                            <td>
          <spring:url value="/updateStaff"  var="edit" >
   				<spring:param name="staffId" value="${staff.staffId}" />
 		</spring:url>    
                           
                           
                            
                            <a href="${edit}">
                            	<p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p>
                           </a>
                            </td>
    <td>
    <spring:url value="/deleteStaff"  var="delete" >
   				<spring:param name="staffId" value="${staff.staffId}" />
 		</spring:url>
  <a href="${delete}">
    <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p>
  </a>
    </td>
						
	 <td>
	  <a class="btn btn-primary"  href="#" onclick="showDetails('${staff.staffId}');" role="button">Show Detail</a>
   <%-- <a href="#" onclick="showDetails('${staff.staffId}');">Show Details</a> --%>
  
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
