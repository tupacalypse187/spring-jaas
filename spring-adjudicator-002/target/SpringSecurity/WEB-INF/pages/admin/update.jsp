<%-- 
    Document   : update
    Created on : Mar 3, 2015, 9:03:41 AM
    Author     : Chad
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <title>Update Users</title>
    </head>
    <body>
        <h1>Page Only Accessible by ROLE_ADMIN</h1>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/spring-test"
                           user="root"  password="root"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from userdetail where tempid=?;
            <sql:param value="${param.tempid}" />
        </sql:query>
        <form action="updatedb" method="get">
            <table border="0" width="40%">
                <caption>Update User</caption>
                <tr>
                    <th>User Name</th>
                    <th>User Password</th>
                    <th>Authority</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.tempid}" name="tempid"/>
                        <!--<select name="tempusername" disabled="disabled">
                        <option>${row.tempusername}</option>
                        </select></td>-->
                        <input type="text" value="${row.tempusername}" name="tempusername"/></td>
                        <td><input type="text" value="${row.temppassword}" name="temppassword"/></td>
                        <td><select name="tempauthority">
                        <option>${row.tempauthority}</option>
                        <option>ROLE_USER</option>
                        <option>ROLE_ADMIN</option>
                        </select></td>
                       <!-- <td><input type="text" value="${row.tempauthority}" name="tempauthority"/></td>-->
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
            <p></p><a href="index">MySQL Home</a><p></p>
            <p></p><a href=<c:url value="/admin"/>>Admin Home</a><p></p>
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
