<%-- 
    Document   : sha1_display
    Created on : Feb 15, 2015, 3:48:14 PM
    Author     : Chad
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.security.MessageDigest"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHA1 Generator</title>
    </head>
    <body>
<% String  passNoSHA1 = request.getParameter("sha1_before");%>

<%

// Print original password
//out.println("Password is: " + passNoSHA1 + "<br>");

// Create a new instance of MessageDigest, using SHA1. SHA and other 
// digest algorithms are also available.
MessageDigest alg = MessageDigest.getInstance("SHA");

// Reset the digest, in case it's been used already during this section of code
// This probably isn't needed for pages of 210 simplicity
alg.reset(); 

// Calculate the sha1 hash for the password. sha1 operates on bytes, so give 
// MessageDigest the byte verison of the string
alg.update(passNoSHA1.getBytes());

// Create a byte array from the string digest
byte[] digest = alg.digest();

// Convert the hash from whatever format it's in, to hex format
// which is the normal way to display and report sha1 sums
// This is done byte by byte, and put into a StringBuffer
StringBuffer hashedpasswd = new StringBuffer();
String hx;
for (int i=0;i<digest.length;i++){
	hx = Integer.toHexString(0xFF & digest[i]);
	//0x03 is equal to 0x3, but we need 0x03 for our sha1sum
	if(hx.length() == 1){hx = "0" + hx;} 
	hashedpasswd.append(hx);
}

    String passSHA1 = hashedpasswd.toString();
// Print out the string hex version of the sha1 hash
out.println("SHA1 for " + passNoSHA1 + ": " + passSHA1 + "<br>");
%>
<a href=<c:url value="/j_spring_security_logout"/>>Logout</a><br/>
    </body>
</html>
