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
$sql = "SELECT * FROM perguntas WHERE nivel_id = 1 AND categoria_id = 1";
$resultado = $conn->query($sql);

// Defina as pontuações e vidas por fase
$pontuacaoPorFase = [0, 5, 10, 15];
$vidasPorFase = [0, 3, 3, 3];

// Obter a fase atual
$faseAtual = 1; // Defina a fase inicial
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

    <h2>Perguntas de Programação - Nível Fácil</h2>
    
    <?php
            if ($resultado->num_rows > 0) 
            {
                $numeroPerguntaAtual = 1;

                while ($row = $resultado->fetch_assoc()) 
                {
                    echo "<div class='pergunta' id='pergunta{$numeroPerguntaAtual}' style='" . ($numeroPerguntaAtual == 1 ? "display: block;" : "display: none;") . "'>";
                    echo "<p><strong>Pergunta {$numeroPerguntaAtual} (Fase {$faseAtual}):</strong> " . $row["enunciado"] . "</p>";

                    // Adicione botões para as alternativas
                    for ($i = 1; $i <= 4; $i++) 
                    {
                        $alternativa = "alternativa" . $i;
                        echo "<button class='alternativa' data-resposta='{$row["resposta_correta"]}' data-alternativa='{$i}' onclick='mostrarResposta(this)'>{$row[$alternativa]}</button>";
                    }

                    // Espaço para mostrar a resposta quando clicado
                    echo "<p class='resposta' id='resposta{$numeroPerguntaAtual}' style='display: none;' data-resposta-correta='{$row["resposta_correta"]}'></p>";
                    echo "</div>";
                    

                    $numeroPerguntaAtual++;
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
        
        let faseAtual = 1;
        let pontuacaoAtual = 0;
        let vidasAtual = 3;
        const respostasIncorretasLimite = 3;
        let numeroPerguntaAtual = 1;

            function mostrarResposta(botao) 
            {
                const numeroPergunta = botao.parentElement.id.replace("pergunta", "");
                const respostaElement = document.getElementById(`resposta${numeroPergunta}`);
                const respostaCorreta = respostaElement.getAttribute('data-resposta-correta');

                // Desabilitar os botões após o clique
                const botoesAlternativa = botao.parentElement.getElementsByClassName("alternativa");
                Array.from(botoesAlternativa).forEach(function(alternativa) 
                {
                    alternativa.disabled = true;
                });

                // Verificar se a resposta está correta
                const respostaUsuario = botao.innerText.trim();
                const respostaCorretaFormatada = respostaCorreta.trim();

                if (respostaUsuario.toLowerCase() === respostaCorretaFormatada.toLowerCase()) 
                {
                    // Se a resposta estiver correta, atualizar pontuação
                    pontuacaoAtual += pontuacaoPorFase[faseAtual];
                } 
                else 
                {
                    // Se a resposta estiver incorreta, reduzir vidas
                    vidasAtual--;

                    // Verificar se atingiu o limite de respostas incorretas
                    if (vidasAtual === 0) 
                    {
                        // Exibir mensagem de Game Over 
                        alert("Game Over! Suas vidas acabaram.");
                        reiniciarJogo(); 
                    }
                }

                // Atualizar o texto da pontuação e vidas na interface do usuário 
                atualizarInterfaceUsuario();

                // Exibir a resposta após um curto atraso 
                setTimeout(function() 
                {
                    respostaElement.style.display = "block";
                }, 1000);
            }

            function proximaPergunta() 
            {
                // Adicione lógica para avançar para a próxima pergunta e fase
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

                // Reiniciar vidas se necessário
                if (vidasAtual === 0) 
                {
                    vidasAtual = vidasPorFase[faseAtual];
                }

                // Atualizar o texto da pontuação e vidas na interface do usuário
                atualizarInterfaceUsuario();
            }   

        function atualizarInterfaceUsuario() 
        {
    

        }

        function reiniciarJogo() 
        {
           
        }
    </script>
</body>
</html>
