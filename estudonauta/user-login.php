<!DOCTYPE html>
<?php
require_once "includes/banco.php";
require_once "includes/funcoes.php";
require_once "includes/login.php";
?>
<html lang="pt-BR">
    <head>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="estilos/estilo.css" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <title> Login de Usuário </title>
        <style>
            div#corpo{
                width: 290px;
                font-size: 15pt;
            } 
            td{
                padding: 6px;
            }

        </style>
	</head>
    <body>
        <div id="corpo">
            <?php
                $u = $_POST['usuario'] ?? null;
                $s = $_POST['senha'] ?? null;

                if (is_null($u) || is_null($s)){
                    require "user-login-form.php";
                } else {
                    echo "Bombo cachorro";
                }
                ?>
        </div>
</body>
</html>