<%-- 
    Document   : updatedb
    Created on : Mar 3, 2015, 9:04:03 AM
    Author     : Chad
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <title>Uodate Status</title>
        
        <script>
            function formSubmit() {
                    document.getElementById("logoutForm").submit();
            }
	</script>
    </head>
    <body>
	<header>
		<div class="jumbotron">
			<div class="container">
				<h3>Page Only Accessible by ROLE_ADMIN</h3>
			</div> 
		</div> 
	</header>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/spring-test"
                           user="root"  password="root"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE userdetail SET tempusername = ?, temppassword=?, tempauthority=?
            WHERE tempid='${param.tempid}'
            <sql:param value="${param.tempusername}" />
            <sql:param value="${param.temppassword}" />
            <sql:param value="${param.tempauthority}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> User updated successfully.</font>
            <p></p><a href="index">MySQL Home</a><p></p>
            <p></p><a href=<c:url value="/admin"/>>Admin Home</a><p></p>
        </c:if>
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
