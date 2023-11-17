<?php
//Verificar se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
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

    //Receber os dados do jogador do formulário
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $senha = password_hash($_POST["senha"], PASSWORD_DEFAULT);

    //SQL para inserir o jogador
    $sql = "INSERT INTO jogadores (nome, email, senha) VALUES (?, ?, ?)";

    //Preparar a declaração SQl
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $nome, $email, $senha); 

    //Executar a consulta
    if($stmt->execute())
    {
        header("Location: menu.php");
    }
    else
    {
        echo "Erro no cadastro do jogador: " . $stmt->error;
    }

    //Fechar a declaração e a conexão
    $stmt->close();
    $conn->close();
}
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
    
    <h2>Cadastro de Jogador</h2>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" required>
        <br><br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <br><br>
        <label for="senha">Senha:</label>
        <input type="password" name="senha" id="senha" required>
        <br><br>
        <input type="submit" value="Cdastrar">     
    </form>
    <br>
    <a href="login.php">Já tem uma conta? Faça o login.</a>
</body>
</html>