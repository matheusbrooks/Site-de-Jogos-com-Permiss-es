<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<title>Jogos</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="estilos/estilo.css" />
	</head>
	<body>
		<?php
			require_once "includes/banco.php";
			require_once "includes/funcoes.php";
		?>
		<div id="corpo">
			<?php
				$c = $_GET['cod'] ?? 0;
				$busca = $banco->query("select * from jogos where cod='$c'");
			?>
			<h1>Detalhes do Jogo</h1>
			<table class='detalhes'>
				<?php
				if(!$busca){
					echo "<tr><td>Brother, a busca deu ruim. $banco->error";
				}else{
					if($busca->num_rows == 1){
					$reg = $busca->fetch_object();
					$t = thumb($reg->capa);
					echo "<tr><td rowspan = '3'><img src='$t' class='full' />";
					echo "<td><h2>$reg->nome</h2>";
					echo "<tr><td>$reg->descricao";
					echo "<tr><td>Adm";
					} else {
						echo "<tr><td>Sem registro por aqui bro";
					}
				}
				?>
			</table>
			<a href="index.php"><img src="icones/icoback.png"/></a>
		</div>
	</body>
</hmtl>