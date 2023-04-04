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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>New and improved form</h2>

        <form:form action="/yogas" method="post" modelAttribute="yoga">
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
    </form:form>
    <a href="/yogas"><button>Cancel</button></a>

    </div>
</body>
</html>