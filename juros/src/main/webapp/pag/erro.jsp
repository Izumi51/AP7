<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Erros</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <h1 style="color: red">Erro no processamento</h1>

        <%
            String erro = (String) request.getAttribute("erro");
            out.println("<p>"+ erro + "</p>");
        %>

        <a href="index.jsp">Voltar</a>
    </body>
</html>