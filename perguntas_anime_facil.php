<?php
// Iniciar a sessão
session_start();

// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "quiz";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados:" . $conn->connect_error);
}

// Consulta SQL para obter perguntas de programação de nível fácil
$sql = "SELECT * FROM perguntas WHERE nivel_id = 1 AND categoria_id = 3";
$resultado = $conn->query($sql);

// Defina as vidas por fase
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

    <h2>Perguntas sobre Animes - Nível Fácil</h2>

    <?php
    if ($resultado->num_rows > 0) {
        $numeroPerguntaAtual = 1;
        $vidasAtual = 3;

        while ($row = $resultado->fetch_assoc()) {
            echo "<div class='pergunta' id='pergunta{$numeroPerguntaAtual}' style='" . ($numeroPerguntaAtual == 1 ? "display: block;" : "display: none;") . "'>";
            echo "<p><strong>Pergunta {$numeroPerguntaAtual} (Fase {$faseAtual}):</strong> " . $row["enunciado"] . "</p>";

            // Adicione botões para as alternativas
            for ($i = 1; $i <= 4; $i++) {
                $alternativa = "alternativa" . $i;
                echo "<button class='alternativa' data-resposta='{$row["resposta_correta"]}' data-alternativa='{$i}' onclick='mostrarResposta(this)'>{$row[$alternativa]}</button>";
            }

            // Espaço para mostrar a resposta quando clicado
            echo "<p class='resposta' id='resposta{$numeroPerguntaAtual}' style='display: none;' data-resposta-correta='{$row["resposta_correta"]}'></p>";
            echo "</div>";

            $numeroPerguntaAtual++;
        }
        ?>

        <div id='info-jogo'>
            <p>Vidas: <span id='vidas'><?php echo str_repeat('&#x1F496;', $vidasAtual); ?></span></p>
        </div>

        <button class="botao-proxima" id="proximaButton" onclick="proximaPergunta()">Próxima Pergunta</button>

        <script>
            let faseAtual = 1;
            let numeroPerguntaAtual = 1;
            let vidasAtual = 3;

            function mostrarResposta(botao) 
            {
                const numeroPergunta = botao.parentElement.id.replace("pergunta", "");
                const respostaElement = document.getElementById(`resposta${numeroPergunta}`);
                const respostaCorreta = respostaElement.getAttribute('data-resposta-correta');

                // Desabilitar os botões após o clique
                const botoesAlternativa = botao.parentElement.getElementsByClassName("alternativa");
                Array.from(botoesAlternativa).forEach(function (alternativa) {
                    alternativa.disabled = true;
                });

                // Verificar se a resposta está correta
                const respostaUsuario = botao.innerText.trim();
                const respostaCorretaFormatada = respostaCorreta.trim();

                if (respostaUsuario.toLowerCase() === respostaCorretaFormatada.toLowerCase()) 
                {
                    // Se a resposta estiver correta, não faz nada
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

                // Atualizar o texto das vidas na interface do usuário
                atualizarInterfaceUsuario();

                // Exibir a resposta após um curto atraso
                setTimeout(function () 
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
                    vidasAtual = 3; // Reiniciar vidas
                }

                // Atualizar o texto das vidas na interface do usuário
                atualizarInterfaceUsuario();
            }

            function atualizarInterfaceUsuario() 
            {
                const vidasElement = document.getElementById('vidas');
                vidasElement.innerHTML = str_repeat('&#x1F496;', vidasAtual);
            }

            function reiniciarJogo() 
            {
                
                window.location.href = 'programacao.html';
            }

            // Função de repetição de string (para emojis de coração)
            function str_repeat(str, count) 
            {
                return count > 0 ? str.repeat(count) : '';
            }
        </script>

    <?php
    } 
    else
    {
        echo "<p>Nenhuma pergunta encontrada para este nível.</p>";
    }
    ?>

</body>

</html>
