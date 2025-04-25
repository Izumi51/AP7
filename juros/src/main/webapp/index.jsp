<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calcular Juros</title>
    </head>

    <body>
        <h1>Calculadora de Juros</h1>
        <form action="src/main/java/servlet/DataTransfer.java" method="post">
            <label for="capital">Capital:</label><br>
                <input type="number" min="1" id="capital" name="capital"><br>

            <label for="dataIncio">Data Inicial:</label><br>
                <input type="date" name="dataIncio" id="dataIncio"><br>

            <label for="dataFinal">Data Final:</label><br>
                <input type="date" name="dataFinal" id="dataFinal"><br>

            <label for="percentual">Percentual:</label><br>
                <input type="number" min="1" max="100" name="percentual" id="percentual"><br>

            <label for="tipo">Tipo de Juros:</label><br>
                <label>
                    <input type="radio" name="tipo" value="Simples">
                    Simples
                </label><br>

                <label>
                    <input type="radio" name="tipo" value="Composto">
                    Composto
                </label><br>

            <label for="">Resultado:</label><br>
                <label>
                    <input type="checkbox" name="resultado" value="Juros">
                    Juros
                </label><br>
                <label>
                    <input type="checkbox" name="resultado" value="JurosECapital">
                    Juros + Capital
                </label><br><br>

            <input type="submit" value="Enviar">
        </form>
    </body>
</html>