<%-- 
    Document   : display
    Created on : Mar 3, 2015, 9:03:12 AM
    Author     : Chad
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
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
                        <td><a href="update.jsp?tempid=<c:out value="${row.tempid}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?tempid=<c:out value="${row.tempid}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>
    </center>
</body>
</html>
