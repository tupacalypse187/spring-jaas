<%-- 
    Document   : index
    Created on : Mar 3, 2015, 9:01:20 AM
    Author     : Chad
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Choose Option</h1>
        <a href=<c:url value="/users/insert"/>>Insert Record</a><p></p>
        <a href=<c:url value="/users/display"/>>Display Record</a>
    </body>
</html>
