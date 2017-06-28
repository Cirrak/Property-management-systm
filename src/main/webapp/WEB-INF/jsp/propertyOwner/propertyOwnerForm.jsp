<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>PropertyStaff Form</title>
</head>
<body>
	<section>
		<div class="jumbotron">
  			<div class="pull-right" style="padding-right:50px">
				<a href="?lang=en_US" >English</a>|<a href="?lang=am_ET" >አማርኛ</a>					
			</div>
			
		</div>
	</section>
	
	<section class="container">
		
		<form:form  modelAttribute="propertyOwner" action = "addPropertyOwner" class="form-horizontal" method = "post">
			<fieldset>
				
				<legend>Add New PropertyOwner</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
				
				
				<!-- Hidden  Filed used in case of updating-->				
					<form:input id="propertyOwnerId" path="propertyOwnerId" type="hidden" class="form:input-large"/>
				

				<div class="form-group">
					<label class="control-label col-lg-2" for="propertyOwner.ownerId"><spring:message code="form.ownerId.label"/></label>
					<div class="col-lg-10">
						<form:input id="ownerId" path="ownerId" type="text" class="form:input-large"/>
						<form:errors path="ownerId" cssClass="text-danger"/>
					</div>
				</div>
					<div class="form-group">
					<label class="control-label col-lg-2" for="propertyOwner.propertyId"><spring:message code="form.propertyId.label"/></label>
					<div class="col-lg-10">
						<form:input id="propertyId" path="propertyId" type="text" class="form:input-large"/>
						<form:errors path="propertyId" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="propertyOwner.startDate"><spring:message code="form.startDate.label"/></label>
					<div class="col-lg-10">
						<form:input id="startDate" path="startDate" type="text" placeholder = "MM/DD/YYYY" class="form:input-large"/>
						<form:errors path="startDate" cssClass="text-danger"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="propertyOwner.endDate"><spring:message code="form.endDate.label"/></label>
					<div class="col-lg-10">
						<form:input id="endDate" path="endDate" type="text" placeholder = "MM/DD/YYYY" class="form:input-large"/>
						<form:errors path="endDate" cssClass="text-danger"/>
					</div>
				</div>
				
				

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add PropertyOwner" <%-- "<spring:message code="form.button.propertyStaff "/> --%>"/>
					 <spring:url value="/propertyOwnerList" var="cancel_url" ></spring:url>
                <a class="btn btn-primary" href="${cancel_url}" role="button">Cancel</a>
					</div>
				</div>
				
			</fieldset>
		</form:form>		
		
	</section>
</body>
</html>
