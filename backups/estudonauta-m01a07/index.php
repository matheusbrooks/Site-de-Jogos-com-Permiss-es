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
		$ordem = $_GET['o'] ?? "n";
		?>
		<div id="corpo">
			<?php include_once "topo.php"; ?>
			<h1>Escolha seu Jogo</h1>
			<form method="get" action="index.php">
			<p class="busca">
			Ordenar:
			 <a href="index.php?o=n">Nome</a> |
			 <a href="index.php?o=p">Produtora</a> |
			 <a href="index.php?o=n1">Nota Alta</a> |
			 <a href="index.php?o=n2">Nota Baixa</a> |
			 Buscar: <input type="text" name="c" size="10" maxlength="40"/>
			<input type="submit" value="Bora"/></p>
	
			<table class="listagem">
			<?php
				$q = "select j.cod, j.nome, g.genero, p.produtora, j.capa from jogos j
				join generos g on j.genero = g.cod join produtoras p on j.produtora = p.cod ";
				
				switch($ordem){
				case "p":
					$q .= "ORDER BY p.produtora";
					break;
				case "n1":
					$q .= "ORDER BY j.nota DESC";
					break;
				case "n2":
					$q .= "ORDER BY j.nota ASC";
					break;
				default:
					$q .= "ORDER BY j.nome";
				}
				
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
							echo "<p class='infos'>[$reg->genero] | $reg->produtora </p>";
							echo "<td>ADM";
						}}}
			?>
			</table>
		</div>
		<?php include_once "rodape.php";?>
	</body>
</hmtl>