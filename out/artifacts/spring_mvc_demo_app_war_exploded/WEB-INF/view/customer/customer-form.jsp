<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 19.08.18
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Customer Form</title>

    <style>
        .error {
            color: red
        }
    </style>
</head>
<body>


<i>Fill out the form. Asterisk (*) means required.</i>
<br><br>

<form:form action="processForm" modelAttribute="customer">

    First name: <form:input path="firstName"/>
    <br>

    Last name (*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br>

    <input type="submit" value="Submit">

</form:form>

</body>
</html>
