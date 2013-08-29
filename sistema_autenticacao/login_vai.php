<?php
// Conex�o com o banco de dados
require "comum.php";

// Inicia sess�es
session_start();

// Recupera o login
$login = isset($_POST["login"]) ? addslashes(trim($_POST["login"])) : FALSE;
// Recupera a senha, a criptografando em MD5
$senha = isset($_POST["senha"]) ? md5(trim($_POST["senha"])) : FALSE;

// Usu�rio n�o forneceu a senha ou o login
if(!$login || !$senha)
{
    echo "Voc� deve digitar sua senha e login!";
    exit;
}

/**
* Executa a consulta no banco de dados.
* Caso o n�mero de linhas retornadas seja 1 o login � v�lido,
* caso 0, inv�lido.
*/
$SQL = "SELECT id, nome, login, senha, postar
        FROM aut_usuarios
        WHERE login = '" . $login . "'";
$result_id = @mysql_query($SQL) or die("Erro no banco de dados!");
$total = @mysql_num_rows($result_id);

// Caso o usu�rio tenha digitado um login v�lido o n�mero de linhas ser� 1..
if($total)
{
    // Obt�m os dados do usu�rio, para poder verificar a senha e passar os demais dados para a sess�o
    $dados = @mysql_fetch_array($result_id);

    // Agora verifica a senha
    if(!strcmp($senha, $dados["senha"]))
    {
        // TUDO OK! Agora, passa os dados para a sess�o e redireciona o usu�rio
        $_SESSION["id_usuario"]   = $dados["id"];
        $_SESSION["nome_usuario"] = stripslashes($dados["nome"]);
        $_SESSION["permissao"]    = $dados["postar"];
        header("Location: index.php");
        exit;
    }
    // Senha inv�lida
    else
    {
        echo "Senha inv�lida!";
        exit;
    }
}
// Login inv�lido
else
{
    echo "O login fornecido por voc� � inexistente!";
    exit;
}
?>