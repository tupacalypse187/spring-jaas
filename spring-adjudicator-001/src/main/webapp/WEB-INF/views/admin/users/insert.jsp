<%-- 
    Document   : insert
    Created on : Mar 3, 2015, 9:01:48 AM
    Author     : Chad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertdb" method="GET">
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
            <c:out value="${param.errMsg}" />
            <a href=<c:url value="/users/index"/>>>Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href=<c:url value="/users/index"/>>Go Back</a>
        </c:if></font>
 
    </body>
</html>