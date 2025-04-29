<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resultado do Juros</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <h1>Resultado</h1>

        <%
            Boolean test = (Boolean) request.getAttribute("mostrarJuros");
            if (test == true) {
                out.println("<h2>Juros</h2><p>"+ request.getAttribute("juros") + "</p>");
            }

            test = (Boolean) request.getAttribute("mostrarMontante");
            if (test == true) {
                out.println("<h2>Montante</h2><p>"+ request.getAttribute("montante") + "</p>");
            }
        %>
        </br>
        <a href="index.jsp">Voltar</a>
    </body>
</html>