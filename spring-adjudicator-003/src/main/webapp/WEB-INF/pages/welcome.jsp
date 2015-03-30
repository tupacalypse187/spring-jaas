<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Spring Adjudicator Welcome Page</title>
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
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="box">
                        <div class="box-icon">
                            <span class="fa fa-4x"></span>
                        </div>
                        <div class="info">
                            <h4 class="text-center">${title}</h4>
                            <center><p>${message}</p></center>
                                    <c:choose>
                                        <c:when test="${pageContext.request.userPrincipal.name != null}"><center>You are logged in as: <b>${pageContext.request.userPrincipal.name}</b></center></c:when>
                                <c:otherwise><a href="login" class="btn">Click to Enter</a></c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="box">
                            <div class="box-icon">
                                <span class="fa fa-4x fa-css3"></span>
                            </div>
                            <div class="info">
                                <h4 class="text-center">Only ROLE_ADMIN and ROLE_USER can see this</h4>
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <center><p>Logged in as: <b>${pageContext.request.userPrincipal.name}</b></p></center>
                                    <a href=<c:url value="/user"/> class="btn">User Home</a>
                                    <a href="javascript:formSubmit()" class="btn">Logout</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
            <!-- For login user -->
            <c:url value="/j_spring_security_logout" var="logoutUrl" />
            <form action="${logoutUrl}" method="POST" id="logoutForm">
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form>
            <script>
                function formSubmit() {
                    document.getElementById("logoutForm").submit();
                }
            </script>
        </sec:authorize>
        <sec:authorize ifAnyGranted="ROLE_ADMIN">
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
                                    <a href=<c:url value="/admin/userinfo"/> class="btn">User Information</a>
                                    <p></p>
                                    <a href="javascript:formSubmit()" class="btn">Logout</a>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </sec:authorize>
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>