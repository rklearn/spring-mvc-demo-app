<%--
  Created by IntelliJ IDEA.
  User: Radek
  Date: 2018-08-19
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer confirmation</title>
</head>
<body>

Customer confirmed:
<br>
First name - ${customer.firstName}
<br>
Last name - ${customer.lastName}
<br><br>
<a href="/">Go back to index page</a>

</body>
</html>
