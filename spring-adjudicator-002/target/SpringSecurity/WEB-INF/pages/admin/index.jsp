<%-- 
    Document   : index
    Created on : Mar 3, 2015, 9:01:20 AM
    Author     : Chad
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sec:authorize ifAnyGranted="ROLE_ADMIN">
        <h1>Choose Option</h1>
        <a href="insert">Insert Record</a><p></p>
        <a href="display">Display Record</a>
    </sec:authorize>
    </body>
</html>
