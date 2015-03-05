<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Error</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body>
	<h1>HTTP Status 404 - Page is not available</h1>

	<c:choose>
		<c:when test="${empty username}">
			<h2>This page is not available or does not exist.</h2>
		</c:when>
		<c:otherwise>
			<h2>Username : ${username} <br/>This page is not available or does not exist.</h2>
		</c:otherwise>
	</c:choose>
</body>
</html>