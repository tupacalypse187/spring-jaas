#Installation Instructions

##Required Software
    1. Java 1.7 or above
    2. Maven 2.2 or above
    3. MySQL
    5. MySQL J Connector
    4. Tomcat 7 or above

##Deploy
    1. Run create-table.sql to MySQL (it will create required table and add some test data)
    2. mvn clean install (create spring-adjudicator-003.war file under targer folder)
    3. Copy the war file in to tomcat/webapps
    4. Start the tomcat
    5. <host_ip>:<port>/spring-adjudicator-003/
