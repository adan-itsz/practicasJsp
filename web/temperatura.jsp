<%-- 
    Document   : temperatura
    Created on : 24/10/2017, 01:50:29 PM
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
        <%! int num1, num2; %>
                <form action="temperatura.jsp" method="post">
                    <label>Cantidad a convertir</label><br>
                 <input type="number" name="num1"></input> 
                 <br><br>
                 <button class="btn btn-primary" type="submit" name = "Btn" value="F">Farenheit->Centigrados</button>  
                 
                 <button class="btn btn-success"type="submit" name = "Btn" value="C">Centigrados->Farenheit</button>
                   <%
            String entrada1 = request.getParameter("num1");
            String btn1 = request.getParameter("Btn");
            if (entrada1 != null) {
                try {
                     num1 = Integer.parseInt(entrada1);
                    switch(btn1){
                        case "F":
                            out.println("<p>"+FtoCel(num1)+"</p>"); 
                            break;
                         case "C":
                           out.println("<p>"+CeltoF(num1)+"</p>");                            
                            break;
                      
                    }
                          
                } catch (NumberFormatException e) {
                    out.println("Introduce datos validos");
                }
            }
        %>
        <%!
            public double FtoCel(int a) {
                double c;
                c = (a-32)/1.8000;
                    return c;
            }
        %>
        <%!
            public double CeltoF(int a) {
                double c;
                c = (a*1.8000)+32;
                    return c;
            }
        %>
        </form>
        </div>
    </body>

</html>
