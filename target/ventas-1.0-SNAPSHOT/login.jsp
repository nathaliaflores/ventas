<%-- 
    Document   : login
    Created on : 11-26-2019, 04:29:53 PM
    Author     : mirian.floresusam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <form action="usuario?action=login" method="POST">
                        <label>Usuario</label>
                        <input name="usuario">
                        <label>Clave</label>
                        <input name="clave">
                        <button>Enviar</button>
                    </form>
                    ${msg}
                </div>
                <div class="col-8">
                    
                </div>
            </div>
        </div>
    </body>
</html>
