<%-- 
    Document   : datos
    Created on : 24/10/2017, 10:46:57 PM
    Author     : adan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet" integrity="sha384-Xqcy5ttufkC3rBa8EdiAyA1VgOGrmel2Y+wxm4K3kI3fcjTWlDWrlnxyD6hOi3PF" crossorigin="anonymous">
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container">
        <%
         String nombre= request.getParameter("name");
         String pApellido= request.getParameter("apellido");
         String sApellido= request.getParameter("apellido2");
         String pass= request.getParameter("pass");
         String correo= request.getParameter("email");
         String sexo= request.getParameter("sexo");
         String aficion= request.getParameter("aficiones");
         String interes= request.getParameter("intereses");
         String comentarios= request.getParameter("comentario");
         out.println("<h3> Nombre: "+nombre+"</h3>");
         out.println("<h3> Apellido paterno: "+pApellido+"</h3>");
         out.println("<h3> Apellido materno: "+sApellido+"</h3>");
         out.println("<h3> Password: "+pass+"</h3>");
         out.println("<h3> Email: "+correo+"</h3>");
         out.println("<h3>Aficiones: "+aficion+"</h3>");
         out.println("<h3>Intereses: "+interes +"</h3>");
         out.println("<h3>Comentarios: "+comentarios+"</h3>");
         
         %>
         </div>
    </body>
</html>
