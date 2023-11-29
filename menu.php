<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>CodeMasters: Mestres da Programação e dos Jogos</title>
</head>
<body>

    <div class="tema">
    <h3>Escolha um tema para começar a jogar</h3>
       <div class="tema">
        <button class="botao-tema" id="programacaoButton"><img src="programacao.png" alt="Progranacao"><br><br>Programação</button>
        <button class="botao-tema" id="gameButton"><img src="game.png" alt="Game"><br><br>Games</button>
        <button class="botao-tema" id="animeButton"><img src="anime.png" alt="Anime"><br><br>Animes</button>
        <button class="botao-tema" id="desenhoButton"><img src="desenho.png" alt="Desenho Animado"><br><br>Desenhos Animados</button>
       </div>
    </div>

    <script>
        const programacaoButton = document.getElementById("programacaoButton");
        const gameButton = document.getElementById("gameButton");
        const animeButton = document.getElementById("animeButton");
        const desenhoButton = document.getElementById("desenhoButton");

        programacaoButton.addEventListener("click", function()
        {
            
            window.location.href = "programacao.html";
        });

        gameButton.addEventListener("click", function()
        {
            
            window.location.href = "game.html";
        });

        animeButton.addEventListener("click", function()
        {
            
            window.location.href = "anime.html";
        });

        desenhoButton.addEventListener("click", function ()
        {
            window.location.href = "desenho.html";
        })

    </script>
</body>
</html>