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
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->

    <title>classes</title>
</head>
<body>
    <h1>All Classes</h1>
    
    <table class="table">
        <thead>
            <th>Class Name</th>
            <th>Instructor</th>
            <th>Weekday</th>
            <th>Price</th>
            
        </thead>
        <tbody>
            <c:forEach var="yoga" items="${yogas}">
            <tr>
                <td>
                    ${yoga.className}
                    <a href="/yogas/${yoga.id}"><button>View</button></a>
                    <c:if test="${yoga.user.id == userId}">
                    <a href="/yogas/edit/${yoga.id}"><button >Edit</button></a>
                    <form action="/yogas/${yoga.id}" method="post">
                        <button type="submit" class="btn btn-danger">
                        <input type="hidden" name="_method" value="delete">
                        Delete
                        </button>
                    </form>
                    </c:if>
                </td>
                <td>${yoga.user.userName}</td>
                <td>${yoga.weekDay}</td>
                <td>$${yoga.price}</td>
                
            </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/yogas/new"><button>Add a New Course</button></a>
    <a href="/logout"><button>Logout</button></a>
    
</body>
</html>