<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 19.08.18
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student confirmation site</title>
</head>
<body>

Student is confirmed :
<br>
First name - ${student.firstName}
<br>
Last name - ${student.lastName}
<br>
Country - ${student.country}
<br>
Favourite programming language - ${student.programmingLanguage}
<br>
Operating systems:
<ul>
    <c:forEach var="temp" items="${student.operatingSystem}">
    <li>${temp}</li>
    </c:forEach>
</ul>

<hr>
<a href="/">Go back to the index page</a>

</body>
</html>
