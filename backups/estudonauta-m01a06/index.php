<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<title>Listagem de Jogos</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="estilos/estilo.css" />
		
	</head>
	<body>
		<?php
		require_once "includes/banco.php";
		require_once "includes/funcoes.php";
		?>
		<div id="corpo">
			<h1>Escolha seu Jogo</h1>
			<table class="listagem">
			<?php
				$q = "select j.cod, j.nome, g.genero, p.produtora, j.capa from jogos j
				join generos g on j.genero = g.cod join produtoras p on j.produtora = p.cod";
				$busca = $banco->query($q);
				if(!$busca){
					echo "<tr><td>Brother, infelizmente a busca pelo banco deu ruim :/";
				} else {
					if($busca->num_rows == 0){
						echo "<tr><td>Nenhum registro encontrado meu bom.";
					} else {
						while($reg=$busca->fetch_object()){
							$t = thumb ($reg->capa);
							echo "<tr><td><img src='$t' class='mini' />";
							echo "<td><a href='detalhes.php?cod=$reg->cod'>$reg->nome </a>";
							echo "<p class='infos'>[$reg->genero] | $reg->produtora</p>";
							echo "<td>ADM";
						}}}
			?>
			</table>
		</div>
		<?php $banco->close();?>
	</body>
</hmtl>