<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Office</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
    <div class="generic-container">
        <%@include file="authheader.jsp" %>

        <div class="well lead">View Office Form</div>
        
        <form:form method="POST" modelAttribute="office" class="form-horizontal">
            <form:input type="hidden" path="id" id="id"/>
                        
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="address">Address</label>
                    <div class="col-md-7">
                        <form:input type="text" path="address" id="address" class="form-control input-sm"/>
                        <div class="has-error">
                            <form:errors path="address" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
    
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="phone">Phone</label>
                    <div class="col-md-7">
                        <form:input type="text" path="phone" id="phone" class="form-control input-sm" />
                        <div class="has-error">
                            <form:errors path="phone" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
    
        <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="details">Details</label>
                    <div class="col-md-7">
                        <form:input type="text" path="details" id="details" class="form-control input-sm" />
                        <div class="has-error">
                            <form:errors path="details" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
            
    
            <div class="row">
                <div class="form-actions floatRight">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            
        </form:form>
    </div>
</body>
</html>