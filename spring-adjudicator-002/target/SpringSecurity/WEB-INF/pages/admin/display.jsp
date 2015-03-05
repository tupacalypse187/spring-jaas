<%-- 
    Document   : display
    Created on : Mar 3, 2015, 9:03:12 AM
    Author     : Chad
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
        <h1>Page Only Accessible by ROLE_ADMIN</h1>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/spring-test"
                           user="root"  password="root"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from userdetail;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>User List</caption>
                <tr>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>Authority</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.tempid}"/></td>
                        <td><c:out value="${row.tempusername}"/></td>
                        <td><c:out value="${row.tempauthority}"/></td>
                        <td><a href="update?tempid=<c:out value="${row.tempid}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb?tempid=<c:out value="${row.tempid}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
    </center>
    <p></p><a href="index">MySQL Home</a><p></p>
        <p></p><a href=<c:url value="/admin"/>>Admin Home</a><p></p>
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
