<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 19.08.18
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br>
    Last name: <form:input path="lastName"/>
    <br>
    Country:

    <%--Selecting country from predefined linked hash map from Student class--%>
    <form:select path="country">
        <form:options items="${student.countries}"/>
    </form:select>
    <br>

    <%--Selecting country from predefined list in HTML--%>
    <%--<form:select path="country">--%>
        <%--<form:option value="Brazil" label="Brazil"/>--%>
        <%--<form:option value="Poland" label="Poland"/>--%>
        <%--<form:option value="France" label="France"/>--%>
        <%--<form:option value="Germany" label="Germany"/>--%>
    <%--</form:select>--%>

    <%--Selecting favourite proggraming language from predefined list in HTML--%>
    Java <form:radiobutton path="programmingLanguage" value="Java"/>
    C# <form:radiobutton path="programmingLanguage" value="C#"/>
    C++ <form:radiobutton path="programmingLanguage" value="C++"/>
    Javascript <form:radiobutton path="programmingLanguage" value="Javascript"/>
    <br>

    Operating systems:
    Linux <form:checkbox path="operatingSystem" value="Linux"/>
    Mac OS <form:checkbox path="operatingSystem" value="Mac OS"/>
    Windows <form:checkbox path="operatingSystem" value="Windows"/>
    <br>

    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
