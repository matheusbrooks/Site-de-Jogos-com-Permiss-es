<?php
	function thumb($arq){
		$caminho = "fotos/$arq";
		if (is_null($arq) || !file_exists($caminho)){
			return "fotos/indisponivel.png";
		} else {
			return $caminho;
		}
	}

	function voltar(){
		return "<a href='index.php'><span class='material-icons'>arrow_circle_left</span></a>";
	}

	function msg_sucesso($m){
		$resp = "<div class='sucesso'><i class='material-icons class_material'>check_circle</i> $m</div>";
		return $resp;
	}

	function msg_aviso($m){
		$resp = "<div class='aviso'><i class='material-icons class_material'>info</i> $m</div>";
		return $resp;
	}

	function msg_erro($m){
		$resp = "<div class='erro'><i class='material-icons class_material'>error</i> $m</div>";
		return $resp;
	}