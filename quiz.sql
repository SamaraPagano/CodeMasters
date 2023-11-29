-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/11/2023 às 05:00
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiz`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Programação'),
(2, 'Games'),
(3, 'Animes'),
(4, 'Desenhos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `pontuacao` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogadores`
--

INSERT INTO `jogadores` (`id`, `nome`, `email`, `senha`, `pontuacao`) VALUES
(1, 'Samara', 'samara180305@gmail.com', '$2y$10$TC1bTIbAgXr4095DM5ISfOZNGiwRB73ajofKru.Xt1YGgmZlaPqWa', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `nivel`
--

INSERT INTO `nivel` (`id`, `nome`) VALUES
(1, 'Fácil'),
(2, 'Médio'),
(3, 'Difícil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `enunciado` varchar(250) NOT NULL,
  `alternativa1` varchar(255) NOT NULL,
  `alternativa2` varchar(255) NOT NULL,
  `alternativa3` varchar(255) NOT NULL,
  `alternativa4` varchar(255) NOT NULL,
  `resposta_correta` varchar(255) NOT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `enunciado`, `alternativa1`, `alternativa2`, `alternativa3`, `alternativa4`, `resposta_correta`, `nivel_id`, `categoria_id`) VALUES
(1, 'Qual é a linguagem de programação mais comumente usada para criar páginas da web interativas?', 'JavaScript', 'Python', 'Java', 'C++', 'JavaScript', 1, 1),
(2, 'O que significa a sigla HTML?', 'High Tech Modern Language', 'Hyper Transfer Markup Language', 'Hypertext Markup Language', 'Hyper Tool Multi-Language', 'Hypertext Markup Language', 1, 1),
(3, 'Qual é a estrutura de controle que permite que um programa execute um bloco de código repetidamente até que uma condição seja atendida?', 'Loop', 'Array', 'Função', 'Condicionais', 'Loop', 1, 1),
(4, 'Qual linguagem de programação é conhecida por seu uso em desenvolvimento web no lado do servidor e é altamente compatível com bancos de dados MySQL?', 'PHP', 'Ruby', 'C#', 'Swift', 'PHP', 1, 1),
(5, 'Qual é o nome da linguagem de programação amplamente usada em análise de dados e aprendizado de máquina, e é conhecida por ser de código aberto?', 'Python', 'Java', 'C++', 'JavaScript', 'Python', 1, 1),
(6, 'Qual é a linguagem de programação amplamente usada para desenvolvimento de aplicativos Android?', 'Python', 'JavaScript', 'Java', 'C#', 'Java', 1, 1),
(7, 'Qual é o símbolo utilizado para iniciar um comentário de linha em muitas linguagens de programação, incluindo JavaScript e Python?', '//', '/*', '##', '&&', '//', 1, 1),
(8, 'O que significa a sigla CSS em desenvolvimento web?', 'Cascading Style Sheets', 'Computer Style Standards', 'Creative Style Syntax', 'Code Styling System', 'Cascading Style Sheets', 1, 1),
(9, 'Qual é o termo usado para se referir a uma variável que está acessível em todo o escopo de um programa?', 'Local', 'Global', 'Privado', 'Estático', 'Global', 1, 1),
(10, 'Qual linguagem de programação é amplamente usada em desenvolvimento web no lado do cliente e é conhecida por manipular o comportamento da página em resposta a eventos do usuário?', 'PHP', 'Ruby', 'JavaScript', 'Java', 'JavaScript', 1, 1),
(11, 'O que é um loop \"for\" frequentemente usado em programação?', 'Uma estrutura condicional', 'Uma estrutura de repetição', 'Uma variável global', 'Uma função matemática', 'Uma estrutura de repetição', 1, 1),
(12, 'Qual é a linguagem de programação conhecida por seu uso em análise de dados e aprendizado de máquina, que possui bibliotecas populares como NumPy e Pandas?', 'Java', 'Python', 'C++', 'Ruby', 'Python', 1, 1),
(13, 'Qual é o principal objetivo da linguagem SQL (Structured Query Language)?', 'Programação de jogos', 'Desenvolvimento web no lado do servidor', 'Gerenciamento de bancos de dados', 'Edição de imagens', 'Gerenciamento de bancos de dados', 1, 1),
(14, 'Em programação, qual termo é usado para representar uma coleção de dados organizada em pares chave-valor?', 'Array', 'Variável', 'Dicionário', 'Ponteiro', 'Dicionário', 1, 1),
(15, 'Qual é o operador lógico que representa \"OU\" em muitas linguagens de programação?', '&& ', '! ', '||', '==', '||', 1, 1),
(16, 'Qual é o nome do jogo em que o encanador Mario é o personagem principal e que foi lançado pela Nintendo?', 'Sonic the Hedgehog', 'The Legend of Zelda', 'Super Mario Bros', 'Final Fantasy', 'Super Mario Bros', 1, 2),
(17, 'Qual é o jogo de quebra-cabeça popular em que você combina blocos coloridos para eliminá-los e ganhar pontos?', 'Tetris', 'Pac-Man', 'Space Invaders', 'Donkey Kong', 'Tetris', 1, 2),
(18, 'Qual é o nome do jogo de tiro em primeira pessoa em que os jogadores controlam um personagem chamado \"Doom Slayer\"?', 'Call of Duty', 'Halo', 'Doom', 'Battlefield', 'Doom', 1, 2),
(19, 'Qual é o nome do jogo em que você constrói estruturas e luta contra outros jogadores em um ambiente de batalha?', 'Minecraft', 'The Sims', 'SimCity', 'Fortnite', 'Fortnite', 1, 2),
(20, 'Qual é o jogo de aventura em que um grupo de personagens embarca em uma jornada para derrotar o vilão chamado \"Ganondorf\"?', 'World of Warcraft', 'Diablo', 'The Elder Scrolls', 'The Legend of Zelda', 'The Legend of Zelda', 1, 2),
(21, 'Qual é o nome do jogo de simulação em que os jogadores constroem e gerenciam suas próprias cidades virtuais?', 'Age of Empires', 'Cities: Skylines', 'SimCity', 'Civilization', 'SimCity', 1, 2),
(22, 'Qual é o nome do famoso jogo de quebra-cabeça em que você une três ou mais jóias da mesma cor para eliminá-las?', 'Candy Crush Saga', 'Angry Birds', 'Clash of Clans', 'Flappy Bird', 'Candy Crush Saga', 1, 2),
(23, 'Qual é o jogo de estratégia em tempo real que envolve construir bases, treinar unidades e derrotar adversários em combate?', 'Warcraft III', 'League of Legends', 'StarCraft', 'Fortnite', 'StarCraft', 1, 2),
(24, 'Qual é o nome do jogo em que os jogadores controlam um caçador de monstros profissional chamado Geralt de Rivia?', 'Monster Hunter World', 'The Witcher 3: Wild Hunt', 'Dark Souls', 'Bloodborne', 'The Witcher 3: Wild Hunt', 1, 2),
(25, 'Qual é o nome do jogo de quebra-cabeça em que você guia um pássaro irritado para derrubar estruturas com o objetivo de destruir porcos verdes?', 'Temple Run', 'Subway Surfers', 'Angry Birds', 'Fruit Ninja', 'Angry Birds', 1, 2),
(26, 'Qual é o nome do jogo de construção e exploração em que os jogadores podem criar e personalizar seu próprio mundo?', 'Minecraft', 'Terraria', 'Stardew Valley', 'The Sims', 'Minecraft', 1, 2),
(27, 'Qual é o jogo de tiro em primeira pessoa em que os jogadores controlam um grupo de operadores de combate especiais?', 'Counter-Strike: Global Offensive', 'Team Fortress 2', 'Overwatch', 'Rainbow Six Siege', 'Rainbow Six Siege', 1, 2),
(28, 'Qual é o nome do jogo em que você joga como um encanador verde chamado Luigi, irmão do Mario?', 'Luigi\'s Mansion', 'Super Mario Galaxy', 'Mario Kart', 'Donkey Kong Country', 'Luigi\'s Mansion', 1, 2),
(29, 'Qual é o jogo de estratégia em que os jogadores controlam uma civilização desde a antiguidade até a era espacial?', 'Civilization V', 'Age of Empires II', 'StarCraft II', 'World of Warcraft', 'Civilization V', 1, 2),
(30, 'Qual é o nome do famoso jogo de plataforma em que um ouriço azul chamado Sonic é o personagem principal?', 'Super Mario Bros', 'Sonic the Hedgehog', 'Crash Bandicoot', 'Mega Man', 'Sonic the Hedgehog', 1, 2),
(31, 'Qual é o nome do anime em que um jovem ninja chamado Naruto Uzumaki busca se tornar o Hokage de sua vila e obter o respeito de todos?', 'One Piece', 'Dragon Ball Z', 'Bleach', 'Naruto', 'Naruto', 1, 3),
(32, 'Em qual anime, um grupo de piratas liderado por Monkey D. Luffy embarca em uma jornada para encontrar o One Piece, o maior tesouro do mundo?', 'Fairy Tail', 'Death Note', 'Attack on Titan', 'One Piece', 'One Piece', 1, 3),
(33, 'Qual é o nome do anime em que os personagens usam \"alquimia\" para realizar transmutações e buscam a \"pedra filosofal\"?', 'My Hero Academia', 'Fullmetal Alchemist', 'Hunter x Hunter', 'Tokyo Ghoul', 'Fullmetal Alchemist', 1, 3),
(34, 'Em qual anime, os estudantes da U.A. High School treinam para se tornarem heróis e enfrentar ameaças sobrenaturais?', 'One Punch Man', 'Naruto', 'My Hero Academia', 'Bleach', 'My Hero Academia', 1, 3),
(35, 'Qual é o nome do anime em que os protagonistas Light Yagami e L usam um \"Caderno da Morte\" para tentar superar um ao outro?', 'Naruto', 'One Piece', 'Death Note', 'Attack on Titan', 'Death Note', 1, 3),
(36, 'Qual é o nome do anime que segue as aventuras de um grupo de caçadores de recompensas espaciais, incluindo Spike Spiegel e Jet Black?', 'Cowboy Bebop', 'Neon Genesis Evangelion', 'Attack on Titan', 'One Punch Man', 'Cowboy Bebop', 1, 3),
(37, 'Em qual anime, os personagens embarcam em uma jornada para encontrar as \"Jóias do Infinito\" e enfrentam o vilão Thanos?', 'One Piece', 'My Hero Academia', 'Naruto', 'Avengers: Earth\'s Mightiest Heroes', 'Avengers: Earth\'s Mightiest Heroes', 1, 3),
(38, 'Qual é o nome do anime em que um grupo de estudantes do ensino médio lida com desafios sobrenaturais, incluindo espíritos malignos?', 'Fullmetal Alchemist', 'Demon Slayer: Kimetsu no Yaiba', 'Ghost Hunt', 'Steins;Gate', 'Ghost Hunt', 1, 3),
(39, 'Em qual anime, os protagonistas são convocados para um mundo de fantasia e devem derrotar o Rei Demônio?', 'Re:Zero', 'Sword Art Online', 'No Game No Life', 'Konosuba: God\'s Blessing on This Wonderful World!', 'Konosuba: God\'s Blessing on This Wonderful World!', 1, 3),
(40, 'Qual é o nome do anime em que um estudante do ensino médio chamado Light Yagami encontra um caderno que permite a ele matar pessoas com um simples nome escrito?', 'Attack on Titan', 'Death Note', 'One Piece', 'Naruto', 'Death Note', 1, 3),
(41, 'Em qual anime, os personagens transformam seus corpos em armas para combater seres demoníacos chamados \"Kishin\"?', 'Attack on Titan', 'My Hero Academia', 'Soul Eater', 'Naruto', 'Soul Eater', 1, 3),
(42, 'Qual é o nome do anime em que um jovem chamado Gon Freecss parte em uma jornada para se tornar um Hunter e encontrar seu pai?', 'One Punch Man', 'Hunter x Hunter', 'Fairy Tail', 'Tokyo Ghoul', 'Hunter x Hunter', 1, 3),
(43, 'Em qual anime, os personagens jogam um jogo online de realidade virtual chamado \"Sword Art Online\"?', 'Sword Art Online', 'Re:Zero', 'No Game No Life', 'Attack on Titan', 'Sword Art Online', 1, 3),
(44, 'Qual é o nome do anime em que os personagens do ensino médio têm que enfrentar monstros chamados \"Titãs\" que ameaçam a humanidade?', 'My Hero Academia', 'Attack on Titan', 'Demon Slayer: Kimetsu no Yaiba', 'Death Note', 'Attack on Titan', 1, 3),
(45, 'Em qual anime, um jovem chamado Lelouch Lamperouge ganha o poder de comandar as pessoas com seu olho \"Geass\"?', 'Code Geass', 'One Piece', 'Naruto', 'One Punch Man', 'Code Geass', 1, 3),
(46, 'Qual é o nome do desenho animado em que um esponja quadrada vive no fundo do mar na cidade de Bikini Bottom?', 'Ben 10', 'SpongeBob SquarePants', 'Scooby-Doo', 'The Flintstones', 'SpongeBob SquarePants', 1, 4),
(47, 'Em qual desenho animado, um garoto de 10 anos chamado Ben Tennyson pode se transformar em diferentes alienígenas com a ajuda de um dispositivo chamado Omnitrix?', 'Adventure Time', 'Ben 10', 'Pokémon', 'Teen Titans Go!', 'Ben 10', 1, 4),
(48, 'Qual é o nome do desenho animado em que um cachorro chamado Scooby-Doo e sua turma resolvem mistérios envolvendo monstros e fantasmas?', 'The Flintstones', 'Scooby-Doo', 'Tom and Jerry', 'The Simpsons', 'Scooby-Doo', 1, 4),
(49, 'Em qual desenho animado, um grupo de jovens super-heróis luta contra vilões e ameaças para salvar o mundo?', 'The Powerpuff Girls', 'Teen Titans Go!', 'Avatar: The Last Airbender', 'The Flintstones', 'Teen Titans Go!', 1, 4),
(50, 'Qual é o nome do desenho animado em que uma família pré-histórica vive aventuras na Idade da Pedra?', 'The Simpsons', 'Scooby-Doo', 'The Flintstones', 'SpongeBob SquarePants', 'The Flintstones', 1, 4),
(51, 'Em qual desenho animado, um grupo de crianças com superpoderes luta contra vilões e ameaças sobrenaturais?', 'Teen Titans Go!', 'The Powerpuff Girls', 'X-Men: The Animated Series', 'Adventure Time', 'Teen Titans Go!', 1, 4),
(52, 'Qual é o nome do desenho animado em que um coelho chamado Bugs Bunny é conhecido por suas travessuras e sua rivalidade com o Pernalonga?', 'Tom and Jerry', 'Scooby-Doo', 'Bugs Bunny', 'The Flintstones', 'Bugs Bunny', 1, 4),
(53, 'Em qual desenho animado, as aventuras de um garoto e seu cão falante chamado Jake levam a lugares mágicos e repletos de desafios?', 'Adventure Time', 'SpongeBob SquarePants', 'Scooby-Doo', 'Avatar: The Last Airbender', 'Adventure Time', 1, 4),
(54, 'Qual é o nome do desenho animado em que um grupo de adolescentes mutantes com habilidades especiais é liderado pelo Professor Xavier?', 'Teen Titans Go!', 'The Powerpuff Girls', 'X-Men: The Animated Series', 'My Little Pony', 'X-Men: The Animated Series', 1, 4),
(55, 'Em qual desenho animado, uma equipe de jovens bruxos embarca em aventuras mágicas na escola de magia de Hogwarts?', 'Adventure Time', 'SpongeBob SquarePants', 'Scooby-Doo', 'Harry Potter: The Animated Series', 'Harry Potter: The Animated Series', 1, 4),
(56, 'Qual é o nome do desenho animado em que um grupo de crianças embarca em aventuras no mundo mágico de Ooo com seu cão Jake?', 'Adventure Time', 'Scooby-Doo', 'The Flintstones', 'Teen Titans Go!', 'Adventure Time', 1, 4),
(57, 'Em qual desenho animado, as aventuras de um garoto e seu tio Scrooge McDuck envolvem caças ao tesouro e mistérios financeiros?', 'SpongeBob SquarePants', 'DuckTales', 'Scooby-Doo', 'Avatar: The Last Airbender', 'DuckTales', 1, 4),
(58, 'Qual é o nome do desenho animado em que um grupo de adolescentes mutantes enfrenta perigosas criaturas no reino subterrâneo?', 'The Flintstones', 'Teenage Mutant Ninja Turtles', 'The Powerpuff Girls', 'My Little Pony', 'Teenage Mutant Ninja Turtles', 1, 4),
(59, 'Em qual desenho animado, um garoto chamado Aang é o Avatar e deve dominar os quatro elementos para restaurar a paz?', 'Avatar: The Last Airbender', 'SpongeBob SquarePants', 'Scooby-Doo', 'Teen Titans Go!', 'Avatar: The Last Airbender', 1, 4),
(60, 'Qual é o nome do desenho animado em que as aventuras de um garoto chamado Finn e seu cão mágico Jake ocorrem no mundo pós-apocalíptico de Ooo?', 'Adventure Time', 'Scooby-Doo', 'The Flintstones', 'Teen Titans Go!', 'Adventure Time', 1, 4),
(61, 'O que o acrônimo \"HTML\" representa em relação à programação web?', 'Hyper Text Markup Language', 'High Technology Multi-Language', 'Home Tool Management Language', 'Hyperlink and Text Markup Language', 'Hyper Text Markup Language', 2, 1),
(62, 'Qual linguagem de programação é frequentemente usada para desenvolver aplicativos móveis para dispositivos Android?', 'Swift', 'Python', 'Java', 'C#', 'Java', 2, 1),
(63, 'Qual é a saída do seguinte código em Python?\nx = [1, 2, 3]\ny = x\ny[0] = 4\nprint(x[0])', '1', '2', '3', '4', '4', 2, 1),
(64, 'Em programação orientada a objetos, o que é uma \"classe\"?', 'Uma instância de um objeto', 'Um método estático', 'Um plano ou modelo para criar objetos', 'Um tipo de dado primitivo', 'Um plano ou modelo para criar objetos', 2, 1),
(65, 'Qual é o principal propósito da linguagem de programação SQL?', 'Gerenciar sistemas operacionais', 'Escrever aplicativos móveis', 'Consultar e gerenciar bancos de dados', 'Desenvolver jogos 3D', 'Consultar e gerenciar bancos de dados', 2, 1),
(66, 'O que é uma \"variável de ambiente\" em programação?', 'Uma variável com um valor constante', 'Uma variável que só pode ser usada uma vez', 'Uma variável global disponível para todo o programa', 'Uma variável que não pode ser modificada', 'Uma variável global disponível para todo o programa', 2, 1),
(67, 'Qual linguagem de programação é frequentemente usada para desenvolver aplicativos iOS?', 'JavaScript', 'Java', 'Swift', 'C++', 'Swift', 2, 1),
(68, 'O que significa a sigla \"API\" em programação?', 'Application Program Interface', 'Advanced Programming Instruction', 'Algorithmic Programming Interface', 'Application Program Intranet', 'Application Program Interface', 2, 1),
(69, 'Qual é a função do comando \"git clone\" no controle de versão Git?', 'Clonar um repositório remoto para o computador local', 'Criar um novo repositório local', 'Enviar alterações para o repositório remoto', 'Excluir um repositório', 'Clonar um repositório remoto para o computador local', 2, 1),
(70, 'O que é a \"pilha\" (stack) em programação?', 'Uma estrutura de dados que segue o princípio \"LIFO\"', 'Um tipo de variável numérica', 'Uma linguagem de programação popular', 'Uma interface gráfica de usuário', 'Uma estrutura de dados que segue o princípio \"LIFO\"', 2, 1),
(71, 'O que é a recursão em programação?', 'Um tipo de loop', 'Uma função que chama a si mesma', 'Um comando de saída', 'Uma variável global', 'Uma função que chama a si mesma', 2, 1),
(72, 'O que significa a sigla \"HTTP\" em relação à comunicação na web?', 'Hyper Transfer Text Protocol', 'High Tech Transfer Protocol', 'Hypertext Transfer Protocol', 'Hyperlink Text Transmission Protocol', 'Hypertext Transfer Protocol', 2, 1),
(73, 'Qual linguagem de programação é frequentemente usada para desenvolver aplicativos de desktop?', 'Java', 'JavaScript', 'C#', 'HTML', 'C#', 2, 1),
(74, 'O que é um \"loop infinito\" em programação?', 'Um loop que nunca é executado', 'Um loop que é executado um número fixo de vezes', 'Um loop que é executado indefinidamente', 'Um loop que causa erros', 'Um loop que é executado indefinidamente', 2, 1),
(75, 'O que é uma \"variável global\" em programação?', 'Uma variável que pode ser modificada', 'Uma variável disponível apenas em funções', 'Uma variável acessível de qualquer lugar do programa', 'Uma variável usada para cálculos complexos', 'Uma variável acessível de qualquer lugar do programa', 2, 1),
(76, 'Qual jogo de video game é frequentemente associado ao encanador Mario da Nintendo?', 'Sonic the Hedgehog', 'The Legend of Zelda', 'Super Mario', 'Final Fantasy', 'Super Mario', 2, 2),
(77, 'Em que jogo famoso os jogadores constroem e exploram mundos tridimensionais feitos de blocos?', 'Minecraft', 'Fortnite', 'Call of Duty', 'Grand Theft Auto', 'Minecraft', 2, 2),
(78, 'Qual é o nome do protagonista da série de jogos \"The Witcher\"?', 'Geralt of Rivia', 'John Marston', 'Master Chief', 'Link', 'Geralt of Rivia', 2, 2),
(79, 'Qual jogo popular coloca os jogadores em uma ilha onde precisam lutar até ser o último sobrevivente?', 'Fortnite', 'Apex Legends', 'Among Us', 'League of Legends', 'Fortnite', 2, 2),
(80, 'Qual é o nome da série de jogos de luta em que os personagens da Marvel e da Capcom se enfrentam?', 'Mortal Kombat', 'Street Fighter', 'Tekken', 'Marvel vs. Capcom', 'Marvel vs. Capcom', 2, 2),
(81, 'Qual é o nome do protagonista da série de jogos \"The Legend of Zelda\"?', 'Link', 'Mario', 'Sonic', 'Donkey Kong', 'Link', 2, 2),
(82, 'Qual jogo de tiro em primeira pessoa é conhecido por sua ação rápida e equipes de heróis lutando contra vilões?', 'Overwatch', 'Battlefield', 'Call of Duty', 'Counter-Strike', 'Overwatch', 2, 2),
(83, 'Qual é o nome do estúdio de desenvolvimento por trás da série de jogos \"Half-Life\" e \"Portal\"?', 'Ubisoft', 'Electronic Arts', 'Valve Corporation', 'Blizzard Entertainment', 'Valve Corporation', 2, 2),
(84, 'Qual é o gênero do jogo \"Dark Souls\", conhecido por seu alto nível de dificuldade?', 'Plataforma', 'RPG', 'Quebra-cabeça', 'Aventura', 'RPG', 2, 2),
(85, 'Qual jogo popular coloca os jogadores em um mundo de fantasia onde podem criar personagens, lutar contra monstros e explorar masmorras?', 'World of Warcraft', 'Fortnite', 'League of Legends', 'Apex Legends', 'World of Warcraft', 2, 2),
(86, 'Qual é o nome do jogo que se passa em um mundo pós-apocalíptico e segue a história de um sobrevivente chamado Joel e uma jovem chamada Ellie?', 'Fallout', 'The Last of Us', 'Bioshock', 'Resident Evil', 'The Last of Us', 2, 2),
(87, 'Qual é o nome do jogo de estratégia em tempo real em que os jogadores constroem impérios, treinam exércitos e travam batalhas épicas?', 'Civilization', 'StarCraft', 'Age of Empires', 'Total War', 'Age of Empires', 2, 2),
(88, 'Qual é o jogo de tiro em primeira pessoa que se passa em um mundo futurista com personagens chamados \"Operadores\" e é conhecido por suas táticas e estratégias?', 'Call of Duty', 'Counter-Strike: Global Offensive', 'Rainbow Six Siege', 'Destiny', 'Rainbow Six Siege', 2, 2),
(89, 'Qual é o nome do jogo em que os jogadores controlam um grupo de ladrões e devem realizar assaltos elaborados?', 'Payday 2', 'Grand Theft Auto V', 'Hitman', 'Thief', 'Payday 2', 2, 2),
(90, 'Qual jogo de aventura apresenta um personagem chamado Nathan Drake e suas explorações em busca de tesouros ao redor do mundo?', 'Tomb Raider', 'Assassin\'s Creed', 'Uncharted', 'Prince of Persia', 'Uncharted', 2, 2),
(91, 'Qual é o nome do protagonista do anime \"Naruto\" que sonha em se tornar o Hokage de sua aldeia?', 'Sasuke Uchiha', 'Sakura Haruno', 'Naruto Uzumaki', 'Kakashi Hatake', 'Naruto Uzumaki', 2, 3),
(92, 'Em qual anime, um grupo de piratas parte em busca do \"One Piece\", o tesouro mais cobiçado do mundo?', 'Dragon Ball', 'Death Note', 'One Piece', 'Bleach', 'One Piece', 2, 3),
(93, 'Qual é o nome do anime que segue a jornada de Gon Freecss em busca de encontrar seu pai, um lendário Hunter?', 'Attack on Titan', 'Hunter x Hunter', 'Fullmetal Alchemist', 'My Hero Academia', 'Hunter x Hunter', 2, 3),
(94, 'Em qual anime, os personagens Shinji Ikari e Rei Ayanami pilotam gigantes robôs para combater ameaças misteriosas conhecidas como \"Anjos\"?', 'Neon Genesis Evangelion', 'Cowboy Bebop', 'Samurai Champloo', 'Ghost in the Shell', 'Neon Genesis Evangelion', 2, 3),
(95, 'Qual é o nome do anime que se passa em um mundo onde as pessoas possuem \"Quirks\" (habilidades sobre-humanas) e segue o protagonista Izuku Midoriya?', 'One Punch Man', 'JoJo\'s Bizarre Adventure', 'My Hero Academia', 'Fairy Tail', 'My Hero Academia', 2, 3),
(96, 'Em qual anime, os personagens Light Yagami e L são envolvidos em um jogo de gato e rato enquanto tentam capturar o assassino em série conhecido como \"Kira\"?', 'Attack on Titan', 'Death Note', 'Naruto', 'One Piece', 'Death Note', 2, 3),
(97, 'Qual é o nome do anime em que os personagens enfrentam ameaças alienígenas conhecidas como \"Titãs\" e vivem em uma cidade cercada por enormes muralhas?', 'Attack on Titan', 'Hunter x Hunter', 'My Hero Academia', 'Fullmetal Alchemist', 'Attack on Titan', 2, 3),
(98, 'Em qual anime, um grupo de alquimistas busca a Pedra Filosofal para restaurar seus corpos após um desastre alquímico?', 'One Piece', 'Death Note', 'Attack on Titan', 'Fullmetal Alchemist', 'Fullmetal Alchemist', 2, 3),
(99, 'Qual é o nome do anime que segue a história de um grupo de caçadores de recompensas espaciais viajando pela galáxia em busca de criminosos?', 'Cowboy Bebop', 'Neon Genesis Evangelion', 'Samurai Champloo', 'Ghost in the Shell', 'Cowboy Bebop', 2, 3),
(100, 'Em qual anime, um grupo de personagens com habilidades sobrenaturais protege a cidade de Yokohama contra ameaças paranormais?', 'My Hero Academia', 'Bleach', 'Bungo Stray Dogs', 'Attack on Titan', 'Bungo Stray Dogs', 2, 3),
(101, 'Qual é o nome do anime que se passa em um mundo onde humanos e ghouls coexistem, e segue a história de Kaneki, um jovem que se torna um meio-ghoul?', 'Attack on Titan', 'Death Note', 'Tokyo Ghoul', 'One Piece', 'Tokyo Ghoul', 2, 3),
(102, 'Em qual anime, um grupo de heróis conhecidos como \"Os Sete Pecados Capitais\" se reúne para derrotar ameaças no reino de Liones?', 'One Punch Man', 'Attack on Titan', 'The Seven Deadly Sins', 'My Hero Academia', 'The Seven Deadly Sins', 2, 3),
(103, 'Qual é o nome do anime que segue as aventuras de uma alquimista chamada Winry Rockbell e os irmãos Elric em busca da Pedra Filosofal?', 'Fullmetal Alchemist: Brotherhood', 'Cowboy Bebop', 'Neon Genesis Evangelion', 'Samurai Champloo', 'Fullmetal Alchemist: Brotherhood', 2, 3),
(104, 'Em qual anime, os personagens Gon e Killua se tornam caçadores para encontrar o pai de Gon e enfrentam desafios perigosos?', 'Naruto', 'One Piece', 'Hunter x Hunter', 'Death Note', 'Hunter x Hunter', 2, 3),
(105, 'Qual é o nome do anime que se passa em um mundo de fantasia e segue as aventuras de um grupo de aventureiros na guilda \"Fairy Tail\"?', 'Fairy Tail', 'Bleach', 'Bungo Stray Dogs', 'One Piece', 'Fairy Tail', 2, 3),
(106, 'Qual desenho animado apresenta um personagem chamado Bob Esponja que mora em uma abacaxi no fundo do mar e trabalha no restaurante Siri Cascudo?', 'Bob Esponja Calça Quadrada', 'Os Simpsons', 'Hora de Aventura', 'Tom e Jerry', 'Bob Esponja Calça Quadrada', 2, 4),
(107, 'Em qual desenho animado, o protagonista é um menino chamado Finn que vive aventuras mágicas com seu cão Jake na Terra de Ooo?', 'Bob Esponja Calça Quadrada', 'Os Simpsons', 'Hora de Aventura', 'Tom e Jerry', 'Hora de Aventura', 2, 4),
(108, 'Qual desenho animado segue as desventuras de uma família disfuncional que mora na cidade de Springfield?', 'Bob Esponja Calça Quadrada', 'Os Simpsons', 'Hora de Aventura', 'Tom e Jerry', 'Os Simpsons', 2, 4),
(109, 'Em qual desenho animado, um gato e um rato vivem uma rivalidade cômica e travam constantes batalhas?', 'Bob Esponja Calça Quadrada', 'Os Simpsons', 'Hora de Aventura', 'Tom e Jerry', 'Tom e Jerry', 2, 4),
(110, 'Qual é o nome do desenho animado em que um garoto chamado Finn e seu cão Jake viajam por um mundo pós-apocalíptico?', 'Bob Esponja Calça Quadrada', 'Os Simpsons', 'Hora de Aventura', 'Tom e Jerry', 'Hora de Aventura', 2, 4),
(111, 'Qual é o nome do desenho animado em que um grupo de super-heróis adolescentes combate vilões e monstros enquanto tentam manter suas identidades secretas?', 'Os Jovens Titãs em Ação!', 'Apenas um Show', 'Gravity Falls', 'Steven Universo', 'Os Jovens Titãs em Ação!', 2, 4),
(112, 'Em qual desenho animado, um menino chamado Finn e seu cão Jake têm aventuras mágicas na Terra de Ooo, enfrentando personagens excêntricos?', 'Apenas um Show', 'Hora de Aventura', 'Steven Universo', 'Gravity Falls', 'Hora de Aventura', 2, 4),
(113, 'Qual é o nome do desenho animado que segue as aventuras de Steven, um garoto com poderes mágicos e sua família de Crystal Gems?', 'Os Jovens Titãs em Ação!', 'Apenas um Show', 'Steven Universo', 'Gravity Falls', 'Steven Universo', 2, 4),
(114, 'Em qual desenho animado, um garoto chamado Dipper e sua irmã Mabel passam o verão em Gravity Falls, lidando com eventos sobrenaturais?', 'Os Jovens Titãs em Ação!', 'Apenas um Show', 'Steven Universo', 'Gravity Falls', 'Gravity Falls', 2, 4),
(115, 'Qual é o nome do desenho animado em que um guaxinim chamado Rigby e um pássaro chamado Mordecai vivem aventuras absurdas enquanto trabalham em um parque?', 'Os Jovens Titãs em Ação!', 'Apenas um Show', 'Steven Universo', 'Gravity Falls', 'Apenas um Show', 2, 4),
(116, 'Qual é o nome do desenho animado em que três irmãs superpoderosas, Florzinha, Lindinha e Docinho, combatem vilões na cidade de Saltitópolis?', 'As Meninas Superpoderosas', 'Teen Titans Go!', 'O Laboratório de Dexter', 'Os Flintstones', 'As Meninas Superpoderosas', 2, 4),
(117, 'Em qual desenho animado, um grupo de jovens super-heróis, incluindo Robin e Ravena, formam uma equipe para combater o crime?', 'As Meninas Superpoderosas', 'Teen Titans Go!', 'O Laboratório de Dexter', 'Os Flintstones', 'Teen Titans Go!', 2, 4),
(118, 'Qual é o nome do desenho animado que segue um jovem gênio chamado Dexter que realiza experimentos científicos em seu laboratório secreto?', 'As Meninas Superpoderosas', 'Teen Titans Go!', 'O Laboratório de Dexter', 'Os Flintstones', 'O Laboratório de Dexter', 2, 4),
(119, 'Em qual desenho animado, uma família da Idade da Pedra, incluindo Fred Flintstone e Barney Rubble, vive aventuras pré-históricas?', 'As Meninas Superpoderosas', 'Teen Titans Go!', 'O Laboratório de Dexter', 'Os Flintstones', 'Os Flintstones', 2, 4),
(120, 'Qual é o nome do desenho animado em que um grupo de super-heróis adolescentes, incluindo Robin, Estelar e Mutano, vivem situações cômicas?', 'As Meninas Superpoderosas', 'Teen Titans Go!', 'O Laboratório de Dexter', 'Os Flintstones', 'Teen Titans Go!', 2, 4),
(121, 'Qual é a complexidade de tempo média do algoritmo Quicksort no pior caso?', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(n^2)', 3, 1),
(122, 'Qual é o resultado da expressão regular que corresponde a um endereço de e-mail válido?', '/^[w.-]+@[w.-]+.w+$/', '/^[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-zA-Z]+$/', '/^[w.-]+@[w.-]+.[a-zA-Z]+$/', '/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,4}$/', '/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,4}$/', 3, 1),
(123, 'Qual é a finalidade da técnica de \"memorização\" (memoization) em algoritmos?', 'Otimizar o uso de memória RAM', 'Melhorar o desempenho da CPU', 'Evitar bugs de programação', 'Armazenar resultados de cálculos para evitar recalculá-los', 'Armazenar resultados de cálculos para evitar recalculá-los', 3, 1),
(124, 'Em programação orientada a objetos, o que é a \"lei de Demeter\" (Law of Demeter)?', 'Uma técnica para criptografar dados sensíveis', 'Um princípio de design que promove o baixo acoplamento entre objetos', 'Uma técnica de otimização de consultas SQL', 'Uma estratégia de testes unitários', 'Um princípio de design que promove o baixo acoplamento entre objetos', 3, 1),
(125, 'Qual é a diferença entre \"compilação estática\" e \"compilação dinâmica\" em linguagens de programação?', 'A compilação estática ocorre em tempo de execução, enquanto a compilação dinâmica ocorre em tempo de compilação.', 'A compilação estática vincula todas as referências a bibliotecas em tempo de compilação, enquanto a compilação dinâmica vincula em tempo de execução.', 'A compilação estática é mais lenta do que a compilação dinâmica.', 'A compilação dinâmica é um sinônimo para a compilação just-in-time (JIT).', 'A compilação estática vincula todas as referências a bibliotecas em tempo de compilação, enquanto a compilação dinâmica vincula em tempo de execução.', 3, 1),
(126, 'O que é um \"zero-day exploit\" no contexto da segurança de computadores?', 'Uma vulnerabilidade de dia zero', 'Uma falha de software que ocorre a cada zero segundos', 'Um ataque que explora uma vulnerabilidade de software antes que o fornecedor tenha uma correção disponível', 'Um ataque que ocorre exatamente à meia-noite (zero hora)', 'Um ataque que explora uma vulnerabilidade de software antes que o fornecedor tenha uma correção disponível', 3, 1),
(127, 'Qual é a complexidade de tempo do algoritmo de busca binária em uma lista classificada?', 'O(n)', 'O(n log n)', 'O(log n)', 'O(1)', 'O(log n)', 3, 1),
(128, 'Qual é a função da camada de transporte em um modelo de referência OSI?', 'Roteamento de pacotes', 'Tradução de endereços de rede', 'Controle de fluxo e segmentação/recombinação de dados', 'Comutação de pacotes', 'Controle de fluxo e segmentação/recombinação de dados', 3, 1),
(129, 'O que é uma injeção de SQL e por que é uma ameaça à segurança?', 'Um método de aumentar o desempenho de consultas SQL', 'Uma técnica para depurar código SQL', 'A inserção de comandos SQL maliciosos em entradas de usuário, o que pode comprometer a integridade do banco de dados.', 'Uma técnica para otimizar a criação de tabelas no SQL', 'A inserção de comandos SQL maliciosos em entradas de usuário, o que pode comprometer a integridade do banco de dados', 3, 1),
(130, 'Em linguagens de programação, o que é \"recursão\"?', 'Um erro de programação', 'Um loop infinito', 'Uma técnica em que uma função chama a si mesma para resolver um problema', 'Uma técnica para evitar o uso de loops em programas', 'Uma técnica em que uma função chama a si mesma para resolver um problema', 3, 1),
(131, 'Qual é a diferença entre \"escopo léxico\" (lexical scope) e \"escopo dinâmico\" (dynamic scope) em linguagens de programação?', 'Escopo léxico se refere ao escopo definido no momento da compilação, enquanto o escopo dinâmico se refere ao escopo definido em tempo de execução.', 'Escopo léxico se refere ao escopo definido em tempo de execução, enquanto o escopo dinâmico se refere ao escopo definido no momento da compilação.', 'Ambos os termos se referem ao mesmo conceito.', 'Nenhum deles se aplica a linguagens de programação.', 'Escopo léxico se refere ao escopo definido no momento da compilação, enquanto o escopo dinâmico se refere ao escopo definido em tempo de execução.', 3, 1),
(132, 'O que é um \"buffer overflow\" e por que é uma vulnerabilidade de segurança comum?', 'Um erro de programação que ocorre quando um buffer é preenchido com dados muito rapidamente.', 'Uma técnica para armazenar dados temporários.', 'A inserção de dados maliciosos em um buffer, ultrapassando seus limites, o que pode levar à execução de código arbitrário.', 'Um mecanismo para acelerar a transferência de dados entre programas.', 'A inserção de dados maliciosos em um buffer, ultrapassando seus limites, o que pode levar à execução de código arbitrário.', 3, 1),
(133, 'Em programação concorrente, o que é um \"deadlock\" e como ele pode ser evitado?', 'Um deadlock ocorre quando um programa trava, e a única maneira de evitar é reiniciar o computador.', 'Um deadlock é uma situação em que dois ou mais processos ficam aguardando indefinidamente um pelo outro, e pode ser evitado com o uso adequado de exclusões mútuas e hierarquia de recursos.', 'Um deadlock ocorre apenas em sistemas operacionais antigos.', 'Um deadlock é uma situação inevitável e não pode ser evitado.', 'Um deadlock é uma situação em que dois ou mais processos ficam aguardando indefinidamente um pelo outro, e pode ser evitado com o uso adequado de exclusões mútuas e hierarquia de recursos.', 3, 1),
(134, 'Qual é a diferença entre \"compilação\" e \"interpretação\" em linguagens de programação?', 'A compilação é o processo de traduzir código-fonte em código de máquina, enquanto a interpretação executa o código-fonte diretamente.', 'A interpretação é o processo de traduzir código-fonte em código de máquina, enquanto a compilação executa o código-fonte diretamente.', 'Ambos os termos se referem ao mesmo processo.', 'A compilação e a interpretação são processos obsoletos.', 'A compilação é o processo de traduzir código-fonte em código de máquina, enquanto a interpretação executa o código-fonte diretamente.', 3, 1),
(135, 'O que é a \"lei de Amdahl\" e como ela se relaciona com o desempenho de sistemas paralelos?', 'A lei de Amdahl afirma que o desempenho de um sistema paralelo é limitado pela fração sequencial de código e que é impossível obter ganhos significativos de desempenho com paralelismo.', 'A lei de Amdahl descreve como adicionar mais processadores sempre leva a um aumento linear no desempenho do sistema.', 'A lei de Amdahl é uma fórmula para calcular a complexidade de algoritmos paralelos.', 'A lei de Amdahl é uma técnica para otimizar sistemas paralelos.', 'A lei de Amdahl afirma que o desempenho de um sistema paralelo é limitado pela fração sequencial de código e que é impossível obter ganhos significativos de desempenho com paralelismo.', 3, 1),
(136, 'Qual é o jogo de RPG (Role-Playing Game) que é conhecido por ser um dos mais difíceis de todos os tempos, com um alto grau de dificuldade e a necessidade de estratégia intensa para progredir?', 'Dark Souls', 'Super Mario Bros.', 'Minecraft', 'The Legend of Zelda', 'Dark Souls', 3, 2),
(137, 'Em que jogo de estratégia em tempo real (RTS) você deve lutar pela dominação de uma galáxia, controlando várias raças e gerenciando recursos de forma eficaz?', 'Starcraft II', 'Civilization VI', 'Age of Empires II', 'SimCity', 'Starcraft II', 3, 2),
(138, 'Qual é o nome do jogo em que os jogadores devem escapar de uma prisão de segurança máxima, elaborar um plano de fuga elaborado e evitar serem capturados pelos guardas?', 'Prison Architect', 'The Escapists', 'Payday 2', 'Grand Theft Auto V', 'The Escapists', 3, 2),
(139, 'Em que jogo de tiro em primeira pessoa (FPS) os jogadores enfrentam hordas de zumbis em um mundo pós-apocalíptico, com ênfase na sobrevivência e na busca por recursos?', 'Call of Duty: Modern Warfare', 'Left 4 Dead', 'Counter-Strike: Global Offensive', 'Overwatch', 'Left 4 Dead', 3, 2),
(140, 'Qual jogo de quebra-cabeça desafiador exige que os jogadores resolvam uma série de quebra-cabeças complexos em um ambiente surreal, muitas vezes envolvendo física não convencional e lógica criativa?', 'Portal 2', 'Tetris', 'Candy Crush Saga', 'Angry Birds', 'Portal 2', 3, 2),
(141, 'Em qual jogo de RPG tático os jogadores devem liderar um grupo de aventureiros em uma jornada épica, tomando decisões morais difíceis que afetam o desenrolar da história?', 'Divinity: Original Sin 2', 'The Witcher 3: Wild Hunt', 'Skyrim', 'Final Fantasy VII', 'Divinity: Original Sin 2', 3, 2),
(142, 'Qual é o jogo de estratégia em que os jogadores controlam uma civilização desde os primórdios da humanidade até a era espacial, tomando decisões que moldam o destino de sua nação?', 'Age of Empires III', 'Sid Meier\'s Civilization V', 'Starcraft', 'Total War: Three Kingdoms', 'Sid Meier\'s Civilization V', 3, 2),
(143, 'Em qual jogo de sobrevivência pós-apocalíptica, os jogadores devem explorar um mundo devastado por zumbis, construir abrigos e forjar alianças para sobreviver?', 'State of Decay 2', 'Fallout 4', 'The Last of Us', '7 Days to Die', 'State of Decay 2', 3, 2),
(144, 'Qual jogo de simulação de vida permite aos jogadores criar e gerenciar famílias, construir casas e explorar um mundo virtual rico em possibilidades?', 'Stardew Valley', 'The Sims 4', 'Animal Crossing: New Horizons', 'Second Life', 'The Sims 4', 3, 2),
(145, 'Em qual jogo de aventura, os jogadores exploram um mundo surreal e misterioso, resolvem quebra-cabeças desafiadores e desvendam uma narrativa complexa e emocionante?', 'Limbo', 'Inside', 'Journey', 'The Witness', 'The Witness', 3, 2),
(146, 'Em qual jogo de estratégia em tempo real (RTS) os jogadores precisam administrar recursos escassos, construir colônias em um planeta alienígena e enfrentar ameaças extraterrestres?', 'Starcraft', 'Age of Empires II', 'Frostpunk', 'Surviving Mars', 'Surviving Mars', 3, 2),
(147, 'Qual é o nome do jogo de sobrevivência em um mundo pós-apocalíptico onde os jogadores devem enfrentar radiações, mutantes e escassez de recursos enquanto exploram um vasto terreno baldio?', 'Fallout 76', 'Metro Exodus', 'S.T.A.L.K.E.R.: Shadow of Chernobyl', 'The Division 2', 'S.T.A.L.K.E.R.: Shadow of Chernobyl', 3, 2),
(148, 'Em qual jogo de aventura e quebra-cabeças os jogadores exploram uma ilha misteriosa e devem decifrar os segredos do local, resolvendo desafios lógicos e mecânicos?', 'Riven: The Sequel to Myst', 'The Witness', 'Monument Valley', 'The Talos Principle', 'The Witness', 3, 2),
(149, 'Qual é o título do jogo em que os jogadores devem criar e gerenciar seu próprio parque de diversões, tomando decisões complexas sobre atrações, preços e funcionários?', 'RollerCoaster Tycoon', 'Planet Coaster', 'Theme Park', 'Zoo Tycoon', 'RollerCoaster Tycoon', 3, 2),
(150, 'Em qual jogo de tiro em primeira pessoa (FPS) os jogadores se aventuram em um mundo alienígena hostil, enfrentando inimigos mortais e resolvendo enigmas ambientais?', 'Prey (2017)', 'Half-Life 2', 'Doom (2016)', 'Borderlands 2', 'Prey (2017)', 3, 2),
(151, 'Qual é o nome da série de anime japonesa baseada em uma obra de Osamu Tezuka, conhecida por suas cenas de violência gráfica, temas políticos e morais complexos?', 'Astro Boy', 'Neon Genesis Evangelion', 'Berserk', 'Attack on Titan', 'Berserk', 3, 3),
(152, 'Em que anime, cuja adaptação em anime estreou em 1997, os personagens enfrentam dilemas morais e desafios existenciais em um mundo cibernético?', 'Cowboy Bebop', 'Serial Experiments Lain', 'Ghost in the Shell: Stand Alone Complex', 'Perfect Blue', 'Serial Experiments Lain', 3, 3),
(153, 'Qual é o nome do anime que apresenta uma história complexa sobre o conflito entre humanos e vampiros, com um protagonista mestiço que busca vingança?', 'Hellsing', 'Vampire Knight', 'Castlevania', 'Trinity Blood', 'Hellsing', 3, 3),
(154, 'Em que anime de ficção científica, os personagens enfrentam questões sobre identidade, realidade e memória em um mundo onde a realidade virtual e a realidade física se entrelaçam?', '.hack//SIGN', 'Steins;Gate', 'Ergo Proxy', 'Psycho-Pass', '.hack//SIGN', 3, 3),
(155, 'Qual é o anime em que um grupo de adolescentes precisa sobreviver em um mundo pós-apocalíptico dominado por titãs devoradores de humanos?', 'One Punch Man', 'Death Note', 'Fullmetal Alchemist: Brotherhood', 'Attack on Titan', 'Attack on Titan', 3, 3),
(156, 'Em qual anime de ficção científica distópica, a humanidade vive confinada em uma cidade subterrânea e enfrenta a ameaça de seres gigantes conhecidos como \"Anjos\"?', 'Akira', 'Eureka Seven', 'Neon Genesis Evangelion', 'FLCL', 'Neon Genesis Evangelion', 3, 3),
(157, 'Qual é o nome do anime que segue a história de dois irmãos que praticam alquimia proibida e, como consequência, um deles perde seu corpo e o outro seu braço e perna?', 'Bleach', 'Fullmetal Alchemist', 'Soul Eater', 'Code Geass', 'Fullmetal Alchemist', 3, 3),
(158, 'Em qual anime de fantasia, os personagens exploram um mundo mágico cheio de guildas de magos, dragões e aventuras, enquanto buscam o lendário item \"Fairy Heart\"?', 'Attack on Titan', 'Fairy Tail', 'Magi: The Labyrinth of Magic', 'Sword Art Online', 'Fairy Tail', 3, 3),
(159, 'Qual é o anime em que um grupo de jovens caçadores de recompensas viaja pela galáxia em busca de criminosos e enfrenta inúmeras situações perigosas e intrigantes?', 'Cowboy Bebop', 'Trigun', 'Outlaw Star', 'Black Lagoon', 'Cowboy Bebop', 3, 3),
(160, 'Em que anime de terror psicológico, os personagens são forçados a jogar jogos mortais e enfrentar seus piores medos em uma dimensão sombria chamada \"Another Space\"?', 'Mirai Nikki (Future Diary)', 'Elfen Lied', 'Higurashi When They Cry', 'Danganronpa', 'Mirai Nikki (Future Diary)', 3, 3),
(161, 'Em qual anime de fantasia épica, os personagens buscam as \"Esferas do Dragão\" para conceder desejos quando reunidas, e enfrentam inimigos poderosos ao longo de sua jornada?', 'One Piece', 'Naruto', 'Dragon Ball', 'Bleach', 'Dragon Ball', 3, 3),
(162, 'Qual é o nome do anime em que os personagens são aprisionados em um mundo virtual de realidade virtual em um MMORPG chamado \"Sword Art Online\"?', 'Log Horizon', '.hack//Sign', 'Accel World', 'Sword Art Online', 'Sword Art Online', 3, 3),
(163, 'Em qual anime de mecha, os pilotos usam robôs gigantes conhecidos como \"Evas\" para combater misteriosos seres conhecidos como \"Anjos\" que ameaçam a humanidade?', 'Gurren Lagann', 'Mobile Suit Gundam', 'Code Geass', 'Neon Genesis Evangelion', 'Neon Genesis Evangelion', 3, 3),
(164, 'Qual é o nome do anime em que os personagens são transportados para um mundo de fantasia após a morte e devem enfrentar desafios perigosos para ganhar a ressurreição?', 'Re:Zero - Starting Life in Another World', 'Overlord', 'KonoSuba: God\'s Blessing on This Wonderful World!', 'Grimgar, Ashes and Illusions', 'KonoSuba: God\'s Blessing on This Wonderful World!', 3, 3),
(165, 'Em qual anime de ação e aventura, os personagens fazem parte de uma equipe de caçadores que enfrentam criaturas mágicas e perigosas em missões épicas?', 'Hunter x Hunter', 'Black Clover', 'JoJo\'s Bizarre Adventure', 'Fairy Tail', 'Hunter x Hunter', 3, 3),
(166, 'Em que desenho animado, criado por Pendleton Ward, os personagens Finn e Jake exploram o pós-apocalipse mágico da Terra de Ooo, enfrentando ameaças como o Rei Gelado e o Lich?', 'The Powerpuff Girls', 'Adventure Time', 'Regular Show', 'Steven Universe', 'Adventure Time', 3, 4),
(167, 'Qual é o nome da série animada em que um cientista maluco e seu neto viajam para diferentes dimensões e enfrentam aventuras intergalácticas, enquanto exploram temas complexos de existencialismo e moralidade?', 'Rick and Morty', 'Family Guy', 'South Park', 'American Dad!', 'Rick and Morty', 3, 4),
(168, 'Em que desenho animado, criado por Genndy Tartakovsky, um samurai solitário viaja pelo Japão feudal em busca de vingança contra o demônio Aku?', 'Samurai Jack', 'Dexter\'s Laboratory', 'The Powerpuff Girls', 'Johnny Bravo', 'Samurai Jack', 3, 4),
(169, 'Qual é o nome do desenho animado em que um grupo de crianças enfrenta ameaças sobrenaturais na cidade de Gravity Falls, descobrindo segredos familiares e mistérios bizarros?', 'The Fairly OddParents', 'Phineas and Ferb', 'Gravity Falls', 'Kim Possible', 'Gravity Falls', 3, 4),
(170, 'Em qual série animada, os personagens habitam uma cidade estranha e surreal onde coisas bizarras acontecem regularmente, desafiando a lógica e a realidade?', 'The Ren & Stimpy Show', 'Rocko\'s Modern Life', 'Aaahh!!! Real Monsters', 'Courage the Cowardly Dog', 'Courage the Cowardly Dog', 3, 4),
(171, 'Em qual desenho animado, criado por Matt Groening, os personagens Homer, Marge, Bart, Lisa e Maggie vivem na cidade fictícia de Springfield?', 'Family Guy', 'American Dad!', 'South Park', 'The Simpsons', 'The Simpsons', 3, 4),
(172, 'Qual é o nome do desenho animado em que um garoto de 10 anos, que possui um dispositivo chamado \"Omnitrix\", pode se transformar em diferentes formas de super-heróis alienígenas?', 'Teen Titans Go!', 'Danny Phantom', 'Ben 10', 'Static Shock', 'Ben 10', 3, 4),
(173, 'Em que série animada, criada por Pendleton Ward, o Rei Gelado é um personagem recorrente e engraçado que busca uma princesa para se casar?', 'Regular Show', 'Steven Universe', 'Adventure Time', 'The Amazing World of Gumball', 'Adventure Time', 3, 4),
(174, 'Qual é o nome do desenho animado em que quatro crianças enfrentam ameaças sobrenaturais e criaturas malignas, com a ajuda de seu cachorro falante?', 'The Fairly OddParents', 'Scooby-Doo, Where Are You!', 'Kim Possible', 'The Magic School Bus', 'Scooby-Doo, Where Are You!', 3, 4),
(175, 'Em qual série animada, criada por Genndy Tartakovsky, um grupo de super-heroínas lutam contra vilões e monstros enquanto tentam equilibrar suas vidas como estudantes?', 'The Powerpuff Girls', 'Totally Spies!', 'Winx Club', 'Miraculous Ladybug', 'Totally Spies!', 3, 4),
(176, 'Em qual desenho animado, os personagens Finn e Jake vivem em uma terra pós-apocalíptica e enfrentam ameaças sobrenaturais e criaturas estranhas?', 'Adventure Time', 'The Amazing World of Gumball', 'Regular Show', 'Steven Universe', 'Adventure Time', 3, 4),
(177, 'Qual é o nome do desenho animado em que um grupo de crianças enfrenta aventuras e desafios mágicos em um mundo chamado \"Ooo\"?', 'The Fairly OddParents', 'Gravity Falls', 'Adventure Time', 'Kim Possible', 'Adventure Time', 3, 4),
(178, 'Em que série animada, os personagens são animais antropomórficos que vivem em uma cidade onde coisas bizarras acontecem, incluindo incidentes paranormais?', 'Adventure Time', 'The Amazing World of Gumball', 'Regular Show', 'Over the Garden Wall', 'The Amazing World of Gumball', 3, 4),
(179, 'Qual é o nome do desenho animado em que um garoto com poderes mágicos luta contra seres sobrenaturais e demônios para proteger sua cidade?', 'The Fairly OddParents', 'Danny Phantom', 'Ben 10', 'Kim Possible', 'Danny Phantom', 3, 4),
(180, 'Em qual série animada, os personagens são criaturas mágicas que protegem o reino das Princesas, enfrentando vilões e resolvendo problemas mágicos?', 'Adventure Time', 'Steven Universe', 'Star vs. The Forces of Evil', 'The Powerpuff Girls', 'Star vs. The Forces of Evil', 3, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivel_id` (`nivel_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `nivel` (`id`),
  ADD CONSTRAINT `perguntas_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
