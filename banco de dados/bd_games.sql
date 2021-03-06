-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_games
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `cod` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'A├º├úo'),(2,'Aventura'),(3,'Terror'),(4,'Plataforma'),(5,'Estrat├®gia'),(6,'RPG'),(7,'Esporte'),(8,'Corrida'),(9,'Tabuleiro'),(10,'Puzzle'),(11,'Luta'),(12,'Musical');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero` int(11) NOT NULL,
  `produtora` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `capa` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `genero` (`genero`),
  KEY `produtora` (`produtora`),
  CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`cod`),
  CONSTRAINT `jogos_ibfk_2` FOREIGN KEY (`produtora`) REFERENCES `produtoras` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'Mario Odissey',2,3,'Super Mario (Òé╣Òâ╝ÒâæÒâ╝Òâ×Òâ¬Òé¬ S┼½p─ü Mario?) ├® uma s├®rie de jogos eletr├┤nicos de plataforma, criada pela Nintendo, baseada e estrelada pelo encanador fict├¡cio Mario. Alternativamente chamada de s├®rie Super Mario Bros. (Òé╣Òâ╝ÒâæÒâ╝Òâ×Òâ¬Òé¬ÒâûÒâ®ÒéÂÒâ╝Òé║ S┼½p─ü Mario Buraz─üzu?) ou simplesmente s├®rie Mario (Òâ×Òâ¬Òé¬?), ├® a s├®rie central da ampla franquia Mario. Pelo menos um Super Mario foi lan├ºado para todos as principais plataformas da Nintendo. Existem vinte e um jogos semelhantes na s├®rie e um jogo de s├®rie cruzada, Super Mario World 2: Yoshi\'s Island, que pode ou n├úo ser inclu├¡do como parte da s├®rie (veja os jogos Super Mario World). ',9.50,'mario.png'),(2,'Chamada do Dever: Opera├º├Áes Negras',1,5,'Call of Duty ├® uma franquia de jogos eletr├┤nicos de tiro em primeira pessoa publicado pela Activision. O primeiro t├¡tulo da s├®rie lan├ºado em 2003 come├ºou nos computadores, mais tarde a s├®rie se expandiu para os mais variados consoles, port├íteis e smartphones. Os tr├¬s primeiros t├¡tulos da s├®rie se concentraram em jogos ambientados na Segunda Guerra Mundial, apresentando batalhas e acontecimentos hist├│ricos daquele per├¡odo. Com o tempo, a s├®rie viu jogos ambientados na Guerra Fria, em tempos atuais, mundos futuristas at├® o espa├ºo sideral. O t├¡tulo mais recente, Call of Duty: Vanguard, foi lan├ºado em 5 de novembro de 2021.',3.50,'cod.png'),(3,'Liga das Legendas',1,2,'League of Legends (abreviado como LoL e comumente referido como League) ├® um jogo eletr├┤nico do g├¬nero multiplayer online battle arena (MOBA) desenvolvido e publicado pela Riot Games. Foi lan├ºado em outubro de 2009 para Microsoft Windows e em mar├ºo de 2013 para macOS. Inspirado em Defense of the Ancients (DotA), uma modifica├º├úo de Warcraft III, os fundadores da Riot buscaram desenvolver um jogo aut├┤nomo do mesmo g├¬nero. Desde o seu lan├ºamento, o t├¡tulo ├® gratuito para jogar e monetizado por meio de personaliza├º├úo de personagens, a qual ├® obten├¡vel atrav├®s de uma moeda virtual compr├ível com dinheiro real.',8.50,'lol.png'),(4,'Donkey Mamaco',2,3,'Donkey Kong (ÒâëÒâ│Òé¡Òâ╝Òé│Òâ│Òé░ Donk─½ Kongu?) ├® uma s├®rie de jogos eletr├┤nicos da Nintendo, criada por Shigeru Miyamoto que gira em torno do personagem Donkey Kong. O personagem fez sua primeira apari├º├úo no jogo de fliperama de 1981 intitulado Donkey Kong, no qual enfrentou Jumpman (Mario) que posteriormente viria a estrelar o primeiro t├¡tulo de sua franquia nos consoles da empresa, Super Mario Bros. Em 1994, a s├®rie foi revivida no jogo de plataforma Donkey Kong Country, com Donkey Kong e o seu grupo de outros macacos como protagonistas no cen├írio da selva de Donkey Kong Island contra uma variedade de inimigos antropom├│rficos, os Kremlings, uma cl├ú de crocodilos liderada pelo King K. Rool.',8.00,'donkey.png'),(5,'Sonic Corre Corre',2,7,'Sonic the Hedgehog[a] ├® uma s├®rie de jogos e uma franquia multim├¡dia japonesa criada pelo Sonic Team e produzida pela Sega. A franquia segue Sonic, cuja vida pac├¡fica ├® sempre interrompida pelo antagonista principal da s├®rie, Dr. Eggman (nome real : Dr. Ivo Robotnik). Sonic - normalmente junto de um de seus aliados, como Tails e Knuckles - se aventuram para parar o vil├úo insano e seus planos para domina├º├úo mundial. O primeiro jogo da s├®rie Sonic, lan├ºado em 1991, foi concebido pela divis├úo da Sega, Sonic Team ap├│s um pedido para um novo mascote. O t├¡tulo foi um sucesso, e foi renovado para v├írias sequelas, que levaram a Sega a lideran├ºa no rumo dos consoles de video-game da era 16-bit do come├ºo at├® a metade dos anos 90.[1] Atualmente, ├® uma das franquias mais famosas e mais lucrativas da ind├║stria dos videogames.',8.50,'sonic.png'),(6,'Bom de Guerra',1,4,'God of War ├® uma s├®rie de jogos eletr├┤nicos de a├º├úo-aventura criada por David Jaffe da Santa Monica Studio, da Sony. Iniciada em 2005 no console PlayStation 2 (PS2), tornou-se carro-chefe para a marca PlayStation, consistindo em oito jogos em v├írias plataformas, com um nono atualmente em desenvolvimento. Baseada em distintas mitologias, a hist├│ria segue Kratos, um guerreiro espartano que foi levado a matar sua fam├¡lia por seu antigo mestre, o deus da guerra Ares. Isso desencadeia uma s├®rie de eventos que levam ├á guerras com os pante├Áes mitol├│gicos. A era da mitologia grega da s├®rie mostra Kratos seguindo um caminho de vingan├ºa devido ├ás maquina├º├Áes dos deuses do Olimpo, enquanto a era da mitologia n├│rdica, que apresenta seu filho Atreus como protagonista secund├írio, mostra um Kratos mais velho em um caminho de reden├º├úo, o que inadvertidamente coloca os dois em conflito com os deuses n├│rdicos. ',9.50,'gow.png'),(7,'Contar Tiros',1,11,'Counter-Strike (tamb├®m abreviado por CS) ├® um popular jogo eletr├┤nico de tiro em primeira pessoa.[2] Inicialmente criado como um \"mod\" de Half-Life para jogos online, foi desenvolvido por Minh Le e Jess Cliffe e depois adquirido pela Valve Corporation. Foi lan├ºado em 1999, por├®m em 2000 ele come├ºou a ser comercializado oficialmente, e posteriormente foram feitas vers├Áes para Xbox, Mac OS X e Linux.[3] Atualmente o game ├® jogado na vers├úo Counter-Strike: Global Offensive.',9.00,'cs.png'),(8,'H├│spede Infernal',3,14,'Resident Evil (conhecido como Biohazard no Jap├úo) ├® uma franquia de m├¡dia que pertence ├á empresa de jogos eletr├┤nicos Capcom. Foi criada por Shinji Mikami como uma s├®rie de videojogos de survival horror, a├º├úo, tiro em terceira pessoa e primeira pessoa. A franquia retrata hist├│rias sobre incidentes biol├│gicos e virais e posteriormente expandiu-se para uma s├®rie de filmes em live-actions, anima├º├úo, hist├│ria em quadrinhos, figuras de a├º├úo entre outros produtos.',7.50,'resident.png'),(9,'Grande Roubo de Carro',2,13,'Grand Theft Auto (GTA) ├® uma s├®rie de jogos eletr├┤nicos criada por David Jones e Mike Dailly, sendo posteriormente gerenciada pelos irm├úos Dan e Sam Houser, Leslie Benzies e Aaron Garbut. A maioria dos jogos foi desenvolvida pela Rockstar North (antiga DMA Design) e publicada pela Rockstar Games. O nome da s├®rie ├® um termo policial utilizado nos Estados Unidos para identificar roubos de autom├│veis: Grand Theft refere-se a furtos de valor elevado (maior que US$ 400,00) e Auto designa os autom├│veis. O nome desse crime, no Brasil, ├® Roubo Qualificado de Autom├│veis e em Portugal designa-se por carjacking. ',9.50,'gta.png'),(10,'Gear de Metal',6,9,'Metal Gear (ÒâíÒé┐Òâ½Òé«Òéó?) ├® uma s├®rie de jogos enquadrados na categoria stealth, criada por Hideo Kojima e produzida pela Konami. Nele, o jogador tem o controle de um soldado altamente treinado em infiltra├º├úo (Solid Snake, Big Boss ou Raiden) e tem que enfrentar armas com capacidade de destrui├º├úo em massa, Metal Gear, tanques gigantescos com capacidade de lan├ºar ataques nucleares em qualquer terreno do globo. A s├®rie ├® famosa por ser a primeira a fazer parte da categoria \"stealth\", devido ├ás suas longas cenas cinem├íticas, enredos complexos e sua explora├º├úo da natureza da pol├¡tica, guerras, censura, engenharia gen├®tica, intelig├¬ncia artificial, lealdade, realidade, \"verdade\" subjetiva vs. universal e temas filos├│ficos,[1] al├®m de frequentemente derrubar a quarta parede. ',8.50,'metal.png'),(11,'Cren├ºas do Assassino',1,10,'Assassin\'s Creed ├® uma s├®rie de jogos eletr├┤nicos. A premissa central da hist├│ria envolve-se a partir da rivalidade entre duas sociedades secretas ancestrais: os Assassinos, que desejam a paz atrav├®s do livre arb├¡trio, e os Templ├írios, que t├¬m o objetivo de dominar o mundo e impor a ordem na humanidade. Ambos tiveram uma rela├º├úo indireta com uma esp├®cie que viveu antes dos humanos, cuja sociedade foi destru├¡da por uma gigantesca tempestade solar. Misturando personagens e fic├º├úo hist├│rica com eventos e figuras reais, a ordem cronol├│gica dos jogos come├ºa em 2012, e fala de Desmond Miles, um jovem que com a ajuda do Animus (uma m├íquina que permite ver as suas \"mem├│rias ancestrais\"), explora as mem├│rias de alguns dos mais proeminentes Assassinos da hist├│ria. ',7.50,'assassin.png');
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtoras`
--

DROP TABLE IF EXISTS `produtoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtoras` (
  `cod` int(11) NOT NULL,
  `produtora` varchar(20) NOT NULL,
  `pais` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtoras`
--

LOCK TABLES `produtoras` WRITE;
/*!40000 ALTER TABLE `produtoras` DISABLE KEYS */;
INSERT INTO `produtoras` VALUES (1,'Microsoft','EUA'),(2,'Tencent','China'),(3,'Nintendo','Jap├úo'),(4,'Sony','Jap├úo'),(5,'Activision','EUA'),(6,'EA','EUA'),(7,'Sega','Jap├úo'),(8,'Namco Bandai','Jap├úo'),(9,'Konami','Jap├úo'),(10,'Ubisoft','EUA'),(11,'Valve','EUA'),(12,'Square Fenix','Jap├úo'),(13,'Take Two','EUA'),(14,'Capcom','Jap├úo');
/*!40000 ALTER TABLE `produtoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'editor',
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('chefinho','Jo├úo Dobre','$QaWsjnpB0R^fxfFOhVN7kmi%*TCy^iGVE^OW1w3AXl0wL!pRKf*RP7Fn&Si','admin'),('coda','William Brochensque','zt@c&dKksH11dp0UR!B##iAr&VgC^@yqfY&Gfhb9C4ccX0Zw#IOSt!Q3q!Nm','editor');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 16:35:20
