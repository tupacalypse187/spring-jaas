<%-- 
    Document   : insert
    Created on : Mar 3, 2015, 9:01:48 AM
    Author     : Chad
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <title>Insert Page</title>
    </head>
    <body>
        <h1>Page Only Accessible by ROLE_ADMIN</h1>
        <form action="insertdb" method="get">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Add User</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>User Name</label></td>
                        <td><input type="text" name="tempusername"/></td>
                    </tr>
                    <tr>
                        <td><label>User Password</label></td>
                        <td><input type="text" name="temppassword"/></td>
                    </tr>
                    <tr>
                        <td><label>Authority</label></td>
                        <td><select name="tempauthority">
                        <option></option>
                        <option>ROLE_USER</option>
                        <option>ROLE_ADMIN</option>
                        </select></td>
                        <!--<td><input type="text" name="tempauthority"/></td>-->
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <p></p><c:out value="${param.errMsg}" />
            <p></p><a href="index">MySQL Home</a>
            <p></p><a href=<c:url value="/admin"/>>Admin Home</a><p></p>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <p></p><c:out value="${param.susMsg}" />
            <p></p><a href="index">MySQL Home</a>
            <p></p><a href=<c:url value="/admin"/>>Admin Home</a><p></p>
        </c:if></font>
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
