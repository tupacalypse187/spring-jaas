#Installation Instructions

##Required Software
    1. Java 1.8 or above
    2. Maven 2.2 or above
    3. Mysql
    4. Tomcat 7

##Deploy
    1. Source both create-table.sql to mysql (it will create required table and add some test data)
    2. mvn clean install (create spring-adjudicator-001.war file under targer folder)
    3. Copy the war file in to tomcat/webapps
    4. Start the tomcat
    5. localhost:<port>/spring-adjudicator-002/
