<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
    <a href=<c:url value="/j_spring_security_logout"/>>Logout</a><br/>
    <h1>Only Admin allowed here</h1>
    
    <a href=<c:url value="/sha1gen"/>>Generate SHA1</a><br/>
    <a href=<c:url value="/editSQL"/>>Edit MySQL</a><br/>
    <a href=<c:url value="/testSQL"/>>Test MySQL</a><br/>
    <a href=<c:url value="/userDetail"/>>SELECT SQL</a><br/>
    
</body>
</html>