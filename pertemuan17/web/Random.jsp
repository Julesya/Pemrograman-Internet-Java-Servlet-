<%-- 
    Document   : Random
    Created on : Jan 14, 2021, 12:52:05 PM
    Author     : Julianti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jspf"%>

<jsp:useBean id="random" scope="request" class="com.infobean.RandomNumber"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    Angka acak ini menunjukkan tingkah laku Java Bean dengan scope = request;
    <h3>
        <jsp:getProperty name="random" property="rndNumber2"/>
    </h3>

    Angka acak berikut ini menunjukkan method Java Bean tanpa memakai property
    <h3>
        <%=random.getRandomNumber()%>
    </h3>

    Pilihan berikut ini akan membawa ke error page, jika anda salah menebak.
    <form action="index.jsp" method="POST">
        <select name="language" size="4">
            <option value="java">JAVA</option>
            <option value="C">C</option>
            <option value="Pascal">PASCAL</option>
            <option value="Basic">BASIC</option>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>