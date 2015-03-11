<%-- 
    Document   : insert
    Created on : Mar 3, 2015, 9:01:48 AM
    Author     : Chad
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Insert Page</title>
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
             <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="box">
                            <div class="box-icon">
                                <span class="fa fa-4x fa-html5"></span>
                            </div>
                            <div class="info">
                                <h4 class="text-center">Only ROLE_ADMIN can see this</h4>
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <center><p>Logged in as: <b>${pageContext.request.userPrincipal.name}</b></p></center>
                                <a href=<c:url value="/admin"/> class="btn">Admin Home</a>
                                <a href=<c:url value="/welcome"/> class="btn">All Users Home</a>
                                <p></p>
                                <a href="javascript:formSubmit()" class="btn">Logout</a>
                                </c:if>
                                <p></p>
				<a href="display" class="btn">Show Records</a>
                                <p></p>
                                <font color="red"><c:if test="${not empty param.errMsg}">
                                    <p></p><c:out value="${param.errMsg}" />
                                </c:if></font>
                                <font color="green"><c:if test="${not empty param.susMsg}">
                                    <p></p><c:out value="${param.susMsg}" />
                                </c:if></font>
                                <form action="insertdb" method="GET">
				<div class="form-group has-warning has-feedback">
					<label for="element-1" class="control-label">Username</label>
					<input type="text" name="tempusername" class="form-control">
				</div>
                                <div class="form-group has-warning has-feedback">
					<label for="element-1" class="control-label">Password</label>
					<input type="text" name="temppassword" class="form-control">
				</div>
                                <div class="form-group has-warning has-feedback">
					<label for="element-1" class="control-label">Authority</label>
					<select class="form-control" name="tempauthority">
                            <option>SELECT ROLE</option>
                            <option>ROLE_USER</option>
                            <option>ROLE_ADMIN</option>
                            </select>
				</div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
        </form>
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
