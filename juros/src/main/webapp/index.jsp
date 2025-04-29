<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calcular Juros</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <h1>Calculadora de Juros</h1>
        <form action="DataTransfer" method="post">
            <label for="capital">Capital:</label>
                <input type="number" min="1" id="capital" name="capital" required>

            <label for="tempo">Tempo:</label>
                <input type="number" min="0" name="tempo" id="tempo" required placeholder="Meses">

            <label for="percentual">Percentual:</label>
                <input type="number" min="1" max="100" name="percentual" id="percentual" required>

            <label for="tipo">Tipo de Juros:</label>
                <label>
                    <input type="radio" name="tipo" value="Simples" required>
                    Simples
                </label>

                <label>
                    <input type="radio" name="tipo" value="Composto" required>
                    Composto
                </label>

            <label for="">Resultado:</label>
                <label>
                    <input type="checkbox" name="resultado" value="Juros">
                    Juros
                </label>
                <label>
                    <input type="checkbox" name="resultado" value="JurosECapital">
                    Montante
                </label><br>

            <input type="submit" value="Enviar">
        </form>
    </body>
</html>