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

            <c:choose>
                <c:when test="${yoga.user.id == userId}">
                    <p>You created ${yoga.className} </p>
                </c:when>
                <c:otherwise>
                    <p>${yoga.user.userName} made ${yoga.className}</p>
                </c:otherwise>
            </c:choose>
            <a href="/yogas"><button>Go Back</button></a>

            <h1>${yoga.className}</h1>
            <h3>Instructor: ${yoga.instructor}</h3>
            <h3>Day: ${yoga.weekDay}</h3>
            <h3>Cost: ${yoga.price}</h3> 
            

    </body>
    </html>