<%-- 
    Document   : tablaMultiplicar
    Created on : 24/10/2017, 01:37:51 PM
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
          <h1>Tablas de multiplicar</h1>
            <form action="tablaMultiplicar.jsp" method="post">
            <label>Tabla del numero  </label><br>
            <input type="text" name="numero1"  ><br>
            <label>Resultados a mostrar </label><br>
            <input type="text" name="numero2" ><br>
            <br>
            <input class="btn btn-danger"type="submit" value="calcular"><br>
        </form>
               <%
            String num1 = request.getParameter("numero1");
            String num2 = request.getParameter("numero2");
            if (num1 != null && num2 != null) {
                try {
                    int tabla = Integer.parseInt(num1);
                    int ext = Integer.parseInt(num2);
                    out.println("<table>");
                    for(int i=0; i<=ext;i++){
                    out.println("<tr><th>Resultado: " +tabla+" x "+i+" = "+"</th><th>"+tabla*i +"</th></tr>");
                    }
                    out.println("</table>");
                } catch (NumberFormatException e) {
                    out.println("Introduce datos validos");
                }
            }
        %>
        </div>
    </body>
</html>
