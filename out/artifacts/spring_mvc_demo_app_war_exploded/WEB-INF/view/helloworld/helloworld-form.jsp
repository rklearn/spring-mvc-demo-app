<%--
  Created by IntelliJ IDEA.
  User: radek
  Date: 18.08.18
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World - input form</title>
</head>
<body>

See normal response:
<form action="processForm" method="get">
    <input type="text" placeholder="What is your name?" name="studentName">
    <input type="submit">
</form>

<br><br>
See response in uppercase:
<form action="processFormInUppercase" method="get">
    <input type="text" placeholder="What's your name" name="studentName">
    <input type="submit">
</form>

</body>
</html>
