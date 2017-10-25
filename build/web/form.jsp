<%-- 
    Document   : form
    Created on : 24/10/2017, 08:23:06 PM
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
        <style>
            input{
                margin:.4em;
            }
            label{
                width: 25%;
                float:left;
            }
            form{
                padding-left: 20px;
            }
            body{
                font-family: 'Arial';
            }
            
        </style>
    </head>
    <body>      
         <form  action="datos.jsp" method="post">
            
              <legend>Formulario</legend>
               
             <label>Nombre: </label><input type="text" name="name"></input><br>
             <label>Primer Apellido:</label><input type="text" name="apellido"placeholder="Primer apellido"></input><br>
           <label> Segundo Apellido:</label><input type="text" name="apellido2"></input><br>
            <label>Password:</label> <input type="password" name="pass"></input><br>
            <label>Repita password: </label><input type="password" name="pass2"></input><br>
            <hr><br>
            <label>Correo electronico </label><input type="email" name="email"></input><br>
            <label>Repita correo electronico</label> <input type="email" name="email2"></input><br>
            <hr><br>
            <label>Sexo: </label><br>
            <input type="radio" name="sexo" value="Hombre"></input> Hombre <br>
            <input type="radio" name="sexo" value="Mujer"></input> Mujer <br>
            <label>Aficiones:</label> <br>
            <input type="checkbox" name="aficiones" value="leer"></input> Leer<br>
            <input type="checkbox" name="aficiones" value="ir al cine"></input> Ir al cine<br>
            <hr><br>
            <label>Áreas de interés:</label><br>
            
            <select class="form-control" id="select" name="intereses">
                    <option name="interes" value="informatica">Informatica</option>
                    <option name="interes" value="derecho">Derecho</option>
                    <option name="interes" value="matematicas">Matematicas</option>
                    <option name="interes" value="fisica">Física</option>
            </select>
            <br>
            <label>Comentario:</label><br>
            <textarea name="comentario" rows="4" cols="45">                
            </textarea><br><br>
            <button class="btn btn-primary" type="submit">Enviar</button>
            <br>
           
            
        </form>
        
    </body>
</html>
