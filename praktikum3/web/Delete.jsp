<%-- 
    Document   : Delete
    Created on : Jan 14, 2021, 11:19:48 AM
    Author     : Julianti
--%>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
String message = "";
int id = Integer.parseInt(request.getParameter("id"));
boolean r = gb.delete(id);
if(r) {
    message = "Delete successful";
} else {
    message = "Error";
}
%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <h2>
        <%=message%>
        <br/>
        <a href="index.jsp">REGISTER</a>
        <br/>
        <a href="GuestBookView.jsp">VIEW GUEST BOOK</a>
    </h2>
    <br/>
    <br/>
    <small>(C) 2020 Ivan & Rio</small>
</body>
</html>
