<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
    <h1> Permission Denied</h1>
    <a href=<c:url value="/j_spring_security_logout"/>>Logout</a><br/>
</body>
</html>