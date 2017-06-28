

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resources/js/owner.js"/>"></script>
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
		<h2 class="text-center">Property Owner List</h2>
	</div>
    
        <div class="row">
		
            <div class="col-md-12">
            
            <!-- Query Parameter passing  -->
<spring:url value="/addPropertyOwner" var="addPropertyOwner_url" >
</spring:url>
            <a class="btn btn-primary" href="${addPropertyOwner_url}" role="button">Add PropertyOwner</a>
            
               <spring:url value="/" var="home_url" ></spring:url>
 <a class="btn btn-primary" href="${home_url}" role="button">Home</a>

            
<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
							
							<th>OwnerId</th>
							<th>PropertyId</th>
							<th>Start Date</th>
							<th>End Date</th>
                             <th>Edit</th>
                             <th>Delete</th>
                              <th>Show Detail</th>
                             
						</tr>
						</thead>
							<tfoot>
						<tr>
							
							<th>OwnerId</th>
							<th>PropertyId</th>
							<th>Start Date</th>
							<th>End Date</th>
                             <th>Edit</th>
                             <th>Delete</th>
                               <th>Show Detail</th>
                             
						</tr>
					</tfoot>

					<tbody>
					<c:forEach items="${propertyownerList}" var="propertyowner">
						<tr>
						
							<td>${propertyowner.ownerId}</td>
							<td>${propertyowner.propertyId}</td>
							<td>${propertyowner.startDate}</td>
							<td>${propertyowner.endDate}</td>
						
                            <td>
          <spring:url value="/updatePropertyOwner"  var="edit" >
   				<spring:param name="propertyOwnerId" value="${propertyowner.propertyOwnerId}" />
 		</spring:url>
                            
                            <a href="${edit}">
                            	<p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p>
                           </a>
                            </td>
    <td>
    <spring:url value="/deletePropertyOwner"  var="delete" >
   				<spring:param name="propertyOwnerId" value="${propertyowner.ownerId}" />
 		</spring:url>
  <a href="${delete}">
    <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p>
  </a>
    </td>
						
	 <td>
	  <a class="btn btn-primary"  href="#" onclick="showDetails('${propertyowner.ownerId}');" role="button">Show Detail</a>
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
