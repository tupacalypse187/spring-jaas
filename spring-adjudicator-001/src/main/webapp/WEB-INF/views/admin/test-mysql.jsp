<%-- 
    Document   : index
    Created on : Feb 22, 2015, 8:01:02 AM
    Author     : Chad
--%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecting Data from A DB</title>
    </head>
    <body>
        <h1>Selecting Data from A DB</h1>
        <%!
        public class Actor {
            String URL = "jdbc:mysql://localhost:3306/sakila";
            String USERNAME = "root";
            String PASSWORD = "root";
            
            Connection connection = null;
            PreparedStatement selectActors = null;
            ResultSet resultSet = null;
            
            public Actor(){
                
                try {
                    
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    
                    selectActors = connection.prepareStatement(
                        "SELECT actor_id, first_name, last_name FROM actor");
            }   catch (SQLException e){
                    e.printStackTrace();
            }
        }
            
            public ResultSet getActors(){
                
                try {
                    resultSet = selectActors.executeQuery();
                            
                } catch (SQLException e){
                    e.printStackTrace();
                }
                
                return resultSet;
            }
        }
        %>
        <%
            Actor actor = new Actor();
            ResultSet actors = actor.getActors();
        %>
        <table border="1">
            <tbody>
                <tr>
                    <td>Actor ID</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                </tr>
                <% while (actors.next()) { %>
                <tr>
                    <td><%= actors.getInt("actor_id") %></td>
                    <td><%= actors.getString("first_name") %></td>
                    <td><%= actors.getString("last_name") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
