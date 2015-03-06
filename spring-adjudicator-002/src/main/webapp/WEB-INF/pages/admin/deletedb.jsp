<%-- 
    Document   : deletedb
    Created on : Mar 3, 2015, 9:04:29 AM
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Deletedb Page</title>
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
            DELETE FROM userdetail
            WHERE tempid='${param.tempid}'
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'>User deleted successfully.</font>
        </c:if>
        <footer>
            <div class="container">
                    <div class="row">
                            <div class="well">
                                <a href=<c:url value="/admin"/> class="btn btn-primary">Admin Home</a>
                                <a href=<c:url value="index"/> class="btn btn-primary">MySqL Home</a>
                                <a href=<c:url value="/welcome"/> class="btn btn-primary">All Users Home</a>
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <a href=<c:url value="javascript:formSubmit()"/> class="btn btn-primary">Logout</a>
                                </c:if>
                                <c:url value="/j_spring_security_logout" var="logoutUrl" />
                                    <form action="${logoutUrl}" method="post" id="logoutForm">
                                            <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                    </form>
                                    <script>
                                            function formSubmit() {
                                                    document.getElementById("logoutForm").submit();
                                            }
                                    </script>
                            </div>
                    </div>
            </div> <!-- end container -->
        </footer>
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
