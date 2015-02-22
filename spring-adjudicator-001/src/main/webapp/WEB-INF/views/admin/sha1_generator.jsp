<%-- 
    Document   : md5_generator
    Created on : Feb 15, 2015, 2:59:09 PM
    Author     : Chad
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
<body>

<form action="sha1display" method="GET">
    <table border="0">
        <tbody>
            <tr>
                <td>Enter password to convert to SHA-1:</td>
                <td><input type="text" name="sha1_before" value="" size="16" /></td>
            </tr>
        </tbody>
    </table>
    <input type="reset" value="Clear" name="clear" />
    <input type="submit" value="Submit" name="submit" />
</form></p>
<a href=<c:url value="/j_spring_security_logout"/>>Logout</a><br/>

</body>
</html>
