<%-- 
    Document   : session_result
    Created on : 5 Oct, 2019, 5:16:10 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session_result</title>
       <style>
        body {
                background-image: url("image/wall.jpg");
}
</style>
    </head>
    <body>

        <%
            out.println("<html><body><h1><center><a href='session.jsp'>BACK</a>");
            out.println("<font color='red'><br><br><br>");
            out.println("Welcome "+session.getAttribute("ans"));
            out.println("</font></center></h1></body></html>");
        %>
    </body>
</html>
