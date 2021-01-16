<%-- 
    Document   : GuestBook
    Created on : Jan 14, 2021, 11:20:35 AM
    Author     : Julianti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="gb" scope="page" class="com.infobean.GuestBookBean"/>

<%
String message = "";
String name = request.getParameter("name");
String address = request.getParameter("address");
String company = request.getParameter("company");
String email = request.getParameter("email");
if (name != "" && address != "" && company != "" && email != "") {
    boolean r = gb.insertIntoDB(name, address, company, email);
    if (r) {
        message = "Thank you " + name + " for registering";
    } else {
        message = "Error";
    }
}
%>

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
    </body>
</html>
