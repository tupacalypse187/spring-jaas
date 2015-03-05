<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<body>
	<h1>${title}</h1>
	<h1>${message}</h1>

	<sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
		<!-- For login user -->
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
                <br/><h2>Only ROLE_ADMIN and ROLE_USER can see this</h2>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				User : ${pageContext.request.userPrincipal.name} | <a
					href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>
	</sec:authorize>
        <sec:authorize ifAnyGranted="ROLE_ADMIN">
            
        <h1>Only ROLE_ADMIN can see this</h1><br/>
        <a href="admin"> Admin Home </a><p>
        <a href=<c:url value="/admin/index"/>>Click to view, add, and edit user and roles</a><br/>
    </sec:authorize>
</body>
</html>