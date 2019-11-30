<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Grand Slam</title>
    </head>
    <body>
        <div class="container-fluid">
            <%@ include file="navbar.jsp" %>
            <br><br>
            <div class="row" align="center">
                <div class="col-4"></div>
                <div class="col-4">
                    <a href="mantenimientos.jsp" class="btn btn-outline-warning btn-block">MANTENIMIENTOS</a><br>
                    <a href="MiServlet?action=obtenerTodos" class="btn btn-outline-warning btn-block">TORNEOS</a><br>
                    <a href="MiServlet?action=obtenerTodos" class="btn btn-outline-warning btn-block">HISTORIALES</a><br>
                </div>
                <div class="col-4"></div>
            </div>
        </div>
        <%@ include file="script.jsp" %>
    </body>
</html>
