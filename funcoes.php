<?php
session_start();

// Obter a fase atual
$faseAtual = 1; // Defina a fase inicial

// Defina as pontuações e vidas por fase
$pontuacaoPorFase = [0, 5, 10, 15];
$vidasPorFase = [0, 3, 3, 3];


//Função para obter ou inicializar o número de vidas do jogador
function obterOuInicializarVidas()
{
    //Iniciar a sessão
    session_start();

    //Definir o número inicialde vidas por fase
    $vidasPorFase = [0, 3, 3, 3];

    //Recuperar ou inicializar o número de vidas do jogador a partir da sessão
    $vidasAtual = isset($_SESSION['vidas']) ? $_SESSION['vidas'] : $vidasPorFase[1];

    return $vidasAtual;
}

//Função para atualizar o número de vidas do jogador na sessão
function atualizarVidas($vidas)
{
    //Inixiar a sessão se ainda não estiver iniciada
    if(session_start() == PHP_SESSION_NONE)
    {
        session_start();
    }

    //Atualizar o número de vidas na sessão
    $_SESSION['vidas'] = $vidas;
}
?>