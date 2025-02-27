<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTADO DE SEMINARIOS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>

        <div Class="container">
            <h1 style="text-align: center;">BLOG DE TECNOLOGIA</h1>
            <p style="text-align: center;">Autor: Edwin ricardo Nina Chipana</p>
            <p  style="text-align: right;"><a class="btn btn-success" href="AvisoController?action=add">Nueva Entrada</a></p>
        </div>

        <c:forEach var="item" items="${avisos}">

            <div class="container">
                <article>
                    <h2>${item.titulo}</h2>
                    <p class="date">Fecha: ${item.fecha}</p>
                    <p>${item.contenido}</p>
                    <div style="text-align: right;" class="action">

                        <a class="btn btn-primary" href="AvisoController?action=edit&id=${item.id}">Editar</a>
                        <a class="btn btn-danger" href="AvisoController?action=delete&id=${item.id}">Eliminar</a>
                    </div>
                    <hr>
                </article>

            </div>

        </c:forEach>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
