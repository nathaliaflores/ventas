<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<% 
    HttpSession sesion = request.getSession();
    String usuario;
    if(sesion.getAttribute("usuario") != null){
        usuario = sesion.getAttribute("usuario").toString();
    }else{
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/boostrap.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-4">
                   
                  
                </div>
        </div>
    </body>
</html>
