<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <h1>Resultado do Cálculo</h1>

        <%
            Boolean test = (Boolean) request.getAttribute("mostrarJuros");
            if (test == true) {
                System.out.println("<p>"+ request.getAttribute("juros"); + "</p>");
            }

            test = (Boolean) request.getAttribute("mostrarMontante");
            if (test == true) {
                System.out.println("<p>"+ request.getAttribute("montante"); + "</p>");
            }
        %>

        <a href="index.jsp">Voltar</a>
    </body>
</html>