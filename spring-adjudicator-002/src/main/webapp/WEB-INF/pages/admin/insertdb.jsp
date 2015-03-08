<%-- 
    Document   : insertdb
    Created on : Mar 3, 2015, 9:02:39 AM
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>INSERT Status</title>
        
        <script>
            function formSubmit() {
                    document.getElementById("logoutForm").submit();
            }
	</script>
    </head>
    <body>
        <c:if test="${ empty param.tempusername or empty param.tempauthority}">
            <c:redirect url="insert" >
                <c:param name="errMsg" value="Please Enter User and Authority" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/spring-test"
                           user="root"  password="root"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO userdetail(tempusername, temppassword, tempauthority) VALUES (?,?,?);
            <sql:param value="${param.tempusername}" />
            <sql:param value="${param.temppassword}" />
            <sql:param value="${param.tempauthority}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="insert" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
