<%-- 
    Document   : edit-mysql
    Created on : Feb 15, 2015, 5:55:49 PM
    Author     : Chad
--%>
<%@page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Playing With MySQL Data</title>
    </head>
    <body>
        <h1>Playing With MySQL Data</h1>
        <%!
        public class UserDetail {
            String URL = "jdbc:mysql://localhost:3306/spring-test";
            String USER01 = "root";
            String PASS01 = "root";
            
            Connection connection = null;
            PreparedStatement selectUserDetails = null;
            ResultSet resultSet = null;
            
            public UserDetail(){
                
                try {
                    
                    connection = DriverManager.getConnection(URL, USER01, PASS01);
                    
                    selectUserDetails = connection.prepareStatement (
                    "SELECT tempid,tempusername,temppassword,tempauthority FROM userdetail");
                    
                } catch (SQLException e){
                    e.printStackTrace();
                }
            }
            
            public ResultSet getUserDetails(){
                
                try {
                    resultSet = selectUserDetails.executeQuery();
                } catch (SQLException e){
                    e.printStackTrace();
                }
                
                return resultSet;
            }
        }
        %>
        
        <%
            UserDetail userDetail = new UserDetail();
            ResultSet userDetails = userDetail.getUserDetails();
        %>
        <a href=<c:url value="/j_spring_security_logout"/>>Logout</a><br/>
        <table border="1">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>User Name</td>
                    <td>Password</td>
                    <td>Authority</td>
                </tr>
                <% while (userDetails.next()) { %>
                <tr>
                    <td><%= userDetails.getString("tempid") %></td>
                    <td><%= userDetails.getString("tempusername") %></td>
                    <td><%= userDetails.getString("temppassword") %></td>
                    <td><%= userDetails.getString("tempauthority") %></td>
                     
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>