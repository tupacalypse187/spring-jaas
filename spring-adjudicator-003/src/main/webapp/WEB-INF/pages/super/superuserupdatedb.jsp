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
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Uodate Status</title>
        <style>
            @import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);

            body {padding-top:50px;}

            .box {
                border-radius: 3px;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                padding: 10px 25px;
                text-align: right;
                display: block;
                margin-top: 60px;
            }
            .box-icon {
                background-color: #57a544;
                border-radius: 50%;
                display: table;
                height: 100px;
                margin: 0 auto;
                width: 100px;
                margin-top: -61px;
            }
            .box-icon span {
                color: #fff;
                display: table-cell;
                text-align: center;
                vertical-align: middle;
            }
            .info h4 {
                font-size: 26px;
                letter-spacing: 2px;
                text-transform: uppercase;
            }
            .info > p {
                color: #717171;
                font-size: 16px;
                padding-top: 10px;
                text-align: justify;
            }
            .info > a {
                background-color: #03a9f4;
                border-radius: 2px;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                color: #fff;
                transition: all 0.5s ease 0s;
            }
            .info > a:hover {
                background-color: #0288d1;
                box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.16), 0 2px 5px 0 rgba(0, 0, 0, 0.12);
                color: #fff;
                transition: all 0.5s ease 0s;
            }
        </style>
        <script>
            function formSubmit() {
                document.getElementById("logoutForm").submit();
            }
        </script>
    </head>
    <body>
        <c:if test="${ empty param.tempusername or empty param.tempauthority}">
            <c:redirect url="update" >
                <c:param name="errMsg" value="Please Enter all of the information" />
            </c:redirect>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="box">
                        <div class="box-icon">
                            <span class="fa fa-4x fa-play-circle"></span>
                        </div>
                        <div class="info">
                            <h4 class="text-center">${message}</h4>
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <center><p>Logged in as: <b>${pageContext.request.userPrincipal.name}</b></p></center>
                                <a href=<c:url value="/admin"/> class="btn">Admin Home</a>
                                <a href=<c:url value="/welcome"/> class="btn">All Users Home</a>
                                <p></p>
                                <a href="javascript:formSubmit()" class="btn">Logout</a>
                            </c:if>
                            <p></p>
                            <a href="insert" class="btn">New User</a>
                            <a href="display" class="btn">Show Records</a>
                            <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                                               url="jdbc:mysql://mydbinstance.cuxgzk20bbjg.us-west-2.rds.amazonaws.com:3306/spring_test"
                                               user="homeuser"  password="h0meUser"/>
                            <sql:update dataSource="${dbsource}" var="count">
                                UPDATE userdetail SET tempusername = ?, temppassword=?, tempauthority=?
                                WHERE tempid='${param.tempid}'
                                <sql:param value="${param.tempusername}" />
                                <sql:param value="${param.temppassword}" />
                                <sql:param value="${param.tempauthority}" />
                            </sql:update>
                            <c:if test="${count>=1}">
                                <font size="5" color='green'> Congratulations! Data updated successfully.</font>
                                <c:redirect url="update" >
                                    <c:param name="susMsg" value="Congratulations! Data updated successfully." />
                                </c:redirect>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:url value="/j_spring_security_logout" var="logoutUrl" />
        <form action="${logoutUrl}" method="POST" id="logoutForm">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>