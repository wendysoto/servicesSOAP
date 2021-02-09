<%-- 
    Document   : prueba
    Created on : Feb 9, 2021, 10:58:44 AM
    Author     : WENDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="IMG/log_original.png" alt="logo" width="80" height="80">Web Service SOAP </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse cabecera" id="navbarNav">
                    <ul class="navbar-nav ">
                       
                        <li class="nav-item">
                            <a class="nav-link" href="prueba.jsp">cuadrado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="triangulo.jsp">triangulo</a>
                        </li>
                        <li class="nav-item">
                             <a class="nav-link" href="contact.html">Integrantes</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">

            

            <h1>CUADRADO!</h1>

            <form action="prueba.jsp" method="POST">
                <label for="txt_lado1">Lado 1</label>
                <input type="text" name="txt_num1"></input>
                <br>
                <br>
                <label for="txt_lado2">lado 2</label>
                <input type="text" name="txt_num2"></input>
                <br>
                <br>
                <button   class="btn btn-primary" type="submit">ENVIAR</button>
                <br>
                <br>
            </form>



        </div>

        <div class="alert alert-info" role="alert">
            El resultado es:
        </div>

        <%!
            String s_num1, s_num2;

        %>

        <%
            s_num1 = request.getParameter("txt_num1");
            s_num2 = request.getParameter("txt_num2");

        %>


    </body>
</html>
<%-- start web service invocation --%><hr/>
<%        try {
        uddi.Fig_Service service = new uddi.Fig_Service();
        uddi.Fig port = service.getFigPort();
        // TODO initialize WS operation arguments here
        double lado1 = Double.parseDouble(s_num1);
        double lado2 = Double.parseDouble(s_num2);
        // TODO process result here
        double result = port.cuadrado(lado1, lado2);
        out.println("=" + result);
    } catch (Exception ex) {
        // TODO handle custom exceptions here
    }
%>
<%-- end web service invocation --%><hr/>


