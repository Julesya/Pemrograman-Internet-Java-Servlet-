<%-- 
    Document   : index
    Created on : Jan 14, 2021, 12:49:20 PM
    Author     : Julianti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jspf"%>
<%@ page errorPage="error.jsp"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <%
        String lang = request.getParameter("language");
        if (lang.equalsIgnoreCase("java")) {
    %>
    <h3>Pilihan Anda benar! (<%=lang%>) </h3>
    <%
        } else {
            throw new Exception("Pilihan anda salah!");
        }
    %>
</body>
</html>