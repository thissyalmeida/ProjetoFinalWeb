<?php
// Verificador de sess�o
require "verifica.php";

// Verifica se usu�rio tem permiss�o para postar not�cia
if($_SESSION["permissao"] !== "S")
{
    echo "Voc� n�o tem permiss�o para postar not�cias!";
    exit;
}

// Se o script continuar aqui, � que o usu�rio tem permiss�o
// Ent�o.. seu formul�rio de postagem abaixo
?>