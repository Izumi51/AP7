<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Erro</title>
</head>
<body>
    <h1 style="color: red">Erro no processamento</h1>

    System.out.println("<p>"+ request.getAttribute("erro"); + "</p>");

    <a href="index.jsp">Voltar</a>
</body>
</html>