<?php
//Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "quiz";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error)
{
    die("Falha na conexão com o banco de dados:" . $conn->connect_error);
}

// Consulta SQL para obter perguntas de programação de nível fácil
$sql = "SELECT * FROM perguntas WHERE nivel_id = 3 AND categoria_id = 2";
$resultado = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>CodeMasters: Mestres da Programação e dos Jogos</title>
</head>
<body>
    <h2>Perguntas sobre Games - Nível Difícil</h2>

    <?php
      if ($resultado->num_rows > 0) 
        {
            $numeroPergunta = 1;

            while ($row = $resultado->fetch_assoc()) 
            {
                echo "<div class='pergunta' id='pergunta{$numeroPergunta}' style='" . ($numeroPergunta == 1 ? "display: block;" : "display: none;") . "'>";
                echo "<p><strong>Pergunta {$numeroPergunta}:</strong> " . $row["enunciado"] . "</p>";

                // Adiciona botões para as alternativas
                for ($i = 1; $i <= 4; $i++) {
                    $alternativa = "alternativa" . $i;
                    echo "<button class='alternativa' data-resposta='{$row["resposta_correta"]}' data-alternativa='{$i}' onclick='mostrarResposta(this)'>{$row[$alternativa]}</button>";
                }

                // Espaço para mostrar a resposta quando clicado
                echo "<p class='resposta' id='resposta{$numeroPergunta}' style='display: none;'>Resposta Correta: {$row["resposta_correta"]}</p>";
                echo "</div>";

                $numeroPergunta++;
            }
            ?>
            <button class="botao-proxima" id="proximaButton" onclick="proximaPergunta()">Próxima Pergunta</button>
            <?php
        } 
        else 
        {
            echo "<p>Nenhuma pergunta encontrada para este nível.</p>";
        }
    ?>

    <script>
        let numeroPerguntaAtual = 1;

        function mostrarResposta(botao) 
        {
            const numeroPergunta = botao.parentElement.id.replace("pergunta", "");
            const respostaElement = document.getElementById(`resposta${numeroPergunta}`);

            // Exibir a resposta apenas quando o jogador clicar na alternativa
            respostaElement.style.display = "block";

            // Desabilitar os botões após o clique
            const botoesAlternativa = botao.parentElement.getElementsByClassName("alternativa");
            Array.from(botoesAlternativa).forEach(function (alternativa) 
            {
                alternativa.disabled = true;
            });
        }

        function proximaPergunta() 
        {
            const perguntaAtual = document.getElementById(`pergunta${numeroPerguntaAtual}`);
            perguntaAtual.style.display = "none";

            const proximaPergunta = document.getElementById(`pergunta${++numeroPerguntaAtual}`);
            if (proximaPergunta) 
            {
                proximaPergunta.style.display = "block";
            } 
            else 
            {
                // Se não houver mais perguntas, ocultar o botão de próxima pergunta
                document.getElementById("proximaButton").style.display = "none";
            }
        }
    </script>
</body>
</html>
