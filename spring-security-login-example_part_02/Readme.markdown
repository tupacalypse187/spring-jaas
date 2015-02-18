#Installation Instructions

##Required Software
    1. Java 1.6 or above
    2. Maven 2.2 or above
    3. Mysql
    4. Tomcat 6

##Deploy
    1. Source both create-table.sql and test-data.sql to mysql (it will create required tables and add some test data)
    2. mvn clean install (create spring-login.war file under targer folder)
    3. Copy the war file in to tomcat/webapps
    4. Start the tomcat
    5. localhost:<port>/spring-login/login.jsp
