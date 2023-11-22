<?php
// Iniciar a sessão
session_start();

// Verificar se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    // Conexão com o banco de dados
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "quiz";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) 
    {
        die("Erro na conexão com o banco de dados:" . $conn->connect_error);
    }

    $email = $_POST["email"];
    $senha = $_POST["senha"];

    // Verificar as credenciais no banco de dados
    $query = "SELECT id, email, senha FROM jogadores WHERE email = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) 
    {
        $stmt->bind_result($user_id, $user_email, $user_senha);
        $stmt->fetch();

        // Verificar a senha
        if (password_verify($senha, $user_senha)) 
        {
            $_SESSION["user_id"] = $user_id;
            $_SESSION["user_email"] = $user_email;
            header("Location: menu.php"); // Redirecionar para a página do jogo
            exit(); // Certifique-se de encerrar o script após o redirecionamento
        } 
        else 
        {
            $mensagemErro = "Senha incorreta. Tente novamente.";
        }
    } 
    else 
    {
        $mensagemErro = "Nome de usuário não encontrado. Registre-se primeiro.";
    }

    // Fechar a declaração e a conexão
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
    <h2>Login de Jogador</h2>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <br><br>
        <label for="senha">Senha:</label>
        <input type="password" name="senha" id="senha" required>
        <br><br>
        <input type="submit" value="Entrar">
    </form>
    <br>
    <a href="cadastro.php">Ainda não tem uma conta? Cadastre-se.</a>

    <?php
    if (isset($mensagemErro)) 
    {
        echo "<p>$mensagemErro</p>";
    }
    ?>
</body>
</html>
