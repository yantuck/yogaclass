<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>yogas</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/style.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->

</head>
<body>
    ${yoga}
    ${results}
    <div class="container">
        
        <h2>Edit Class</h2>

        <form:form action="/yogas/${yoga.id}" method="post" modelAttribute="yoga">
            <input type="hidden" name="_method" value="put">
            <div><form:input type = "hidden" path = "user" value = "${userId}"></form:input></div>
            
            <div><form:errors path="className" /></div>
            <div><form:errors path="instructor" /></div>
            <div><form:errors path="weekDay" /></div>
            <div><form:errors path="price" /></div>

        <div class="form-control">
            <form:label path="className">Class Name</form:label>
            
            <form:input path="className"></form:input>
        </div>
        <div class="form-control">
            <form:label path="instructor">Instructor</form:label>
            
            <form:input path="instructor"></form:input>
        </div>
        <div class="form-control">
            <form:label path="weekDay">Weekday</form:label>
            
            <form:input path="weekDay"></form:input>
        </div>
        <div class="form-control">
            <form:label path="price">Price</form:label>
            
            <form:input path="price"></form:input>
        </div>
        <input type="submit" value="submit">
        


        </div>
</form:form>
<div>
    <div>
        
        <a href="/yogas"><button>Cancel</button></a>
    </div>
    <form action="/yogas/${yoga.id}" method="post">
        <button type="submit" class="btn btn-danger">
        <input type="hidden" name="_method" value="delete">
        Delete
        </button>
    </form>
    </div>

</body>
</html>