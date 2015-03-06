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
        <form action="insertdb" method="get">
		<div class="container">
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
        <font color="red"><c:if test="${not empty param.errMsg}">
            <p></p><c:out value="${param.errMsg}" />
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <p></p><c:out value="${param.susMsg}" />
        </c:if></font>
        <p></p>
        <footer>
            <div class="container">
                    <div class="row">
                            <div class="well">
                                <a href=<c:url value="/admin/index"/> class="btn btn-primary">MySqL Home</a>
                                <a href=<c:url value="/welcome"/> class="btn btn-primary">All Users Home</a>
                                <a href=<c:url value="/admin/display"/> class="btn btn-success">Show Records</a>
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
