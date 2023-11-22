<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>CodeMasters: Mestres da Programação e dos Jogos</title>
</head>
<body>
    <section>
        <div class="perfil">
            <a href="perfil.php">Perfil</a>
        </div>
    </section>

    <div class="tema">
    <h3>Escolha um tema para começar a jogar</h3>
       <div class="tema">
        <button class="botao-tema" id="programacaoButton"><img src="programacao.png" alt="Progranacai"></button>
        <button class="botao-tema" id="gameButton"><img src="game.png" alt=""></button>
        <button class="botao-tema" id="animeButton"><img src="anime.png" alt=""></button>
        <button class="botao-tema" id="desenhoButton"><img src="desenho.png" alt=""></button>
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