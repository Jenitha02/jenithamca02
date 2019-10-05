<%-- 
    Document   : session
    Created on : 5 Oct, 2019, 4:15:45 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session</title>
  <style>
            body {
                background-image: url("image/wall.jpg");
}
</style>
    </head>
    <body>
        <center>
        <img src="image/pass.jpg" height="200" width="400"/>
        <img src="image/passsss.jpg" height="200" width="400"/>
        <img src="image/passing.jpg" height="200" width="400"/>
   
        <h1><font color="white">Login USING SESSION - <a href="index.html"> BACK</a></font>
            
        </h1>
        <form name="f1" action="session.jsp" method="get">
            
            <table border="2" width="300" height="100">
                                
                <tr>
                    <td><font color="white"> Enter UserName:</font></td>
                    <td><input type="text" name="t1"/></td>
                </tr>
                
                <tr>
                    <td><font color="white"> Enter Password:</font></td>
                    <td><input type="text" name="t2"/></td>
                </tr>
                
            </table>
            
            <br><br>
            <input type="submit" name="s1" value="Login"/>
            <input type="submit" name="s3" value="Delete"/>
        </form>
        
        <%
            if(request.getParameter("s1")!=null)
            {   
                String uname,pass,ans;
                uname=request.getParameter("t1");
                pass=request.getParameter("t2");
                session.setAttribute("ans", uname);
                response.sendRedirect("session_result.jsp");
            }
            if(request.getParameter("s3")!=null)
            {
                session.invalidate();
                out.println("Session has deleted");
            }
        %>

    </body>
</html>
