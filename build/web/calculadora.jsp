<%-- 
    Document   : calculadora
    Created on : 19/10/2017, 11:59:34 AM
    Author     : adan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css" rel="stylesheet" integrity="sha384-Xqcy5ttufkC3rBa8EdiAyA1VgOGrmel2Y+wxm4K3kI3fcjTWlDWrlnxyD6hOi3PF" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <%! int numero1, numero2;%>
        <form action="calculadora.jsp" method="post">
            <label>Numero 1</label><br>
            <input type="number" name="num1"></input><br>
            <label>Numero 2</label><br>
               <input type="number" name="num2"></input> 
               <br/><br/><br/>
                
        <%
            String num1=request.getParameter("num1");
            String num2=request.getParameter("num2");
            String boton=request.getParameter("Btn");
            if(num1 != null && num2!=null){
                try{
                     numero1 = Integer.parseInt(num1);
                     numero2 = Integer.parseInt(num2);
                        switch(boton){
                            case "+":
                                out.println("<p>"+sumar(numero1,numero2)+"</p>"); 
                                break;
                             case "-":
                               out.println("<p>"+restar(numero1,numero2)+"</p>");   
                                break;
                             case "/":
                               out.println("<p>"+div(numero1,numero2)+"</p>");                            
                                break;
                             case "*":
                               out.println("<p>"+multi(numero1,numero2)+"</p>");                            
                                break;    
                         } 
                }
                catch(Exception ex){
                  out.println("Introduce datos validos");
                }
            }
                    
        %>
         <%!
            public int sumar(int a, int b) {
                int c;
                c = a + b;
                    return c;
            }

            public int restar(int a, int b) {
                int c;
                c = a - b;
                   return c;
            }
            public int multi(int a, int b) {
                int c;
                c = a * b;
                   return c;
            }
            public int div(int a, int b) {
                int c;
                c = a / b;
                return c;
            }
        %>
                <button class="btn btn-primary" type="submit" name = "Btn" value="+">+</button>
                <button class="btn btn-success"type="submit" name = "Btn" value="-">-</button>
                <button class="btn btn-primary" type="submit" name = "Btn" value="*">*</button>
                <button class="btn btn-info"type="submit" name = "Btn" value="/">/</button>
                
        </form>
        </div>
    </body>
</html>
