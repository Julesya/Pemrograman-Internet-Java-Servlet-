<%-- 
    Document   : error
    Created on : Jan 14, 2021, 12:53:01 PM
    Author     : Julianti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page isErrorPage="true"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <h1>Exception!</h1>
    <h3><%=exception.getMessage()%></h3>
</body>
</html>
