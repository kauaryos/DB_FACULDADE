-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` int DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Goku','Sayajin',956473875,'7665534142',1,'M','Bardock','Akira','goku@gmail.com',1,4,1),(2,'Bruce','wayne',968658548,'4646723234',2,'M','Bruce','Marta','batman@gmail.com',NULL,NULL,2),(3,'Ben','Tenyson',1010101010,'5733874473',1,'M','Juca','Ana','ben@gmail.com',1,5,3),(4,'Diogo','Defante',547564668,'994827362',1,'M','Cocielo','Tata','defaante@gmail.com',6,6,4),(5,'Alan','zoka',756695867,'646354751',2,'M','joao','joana','alan@gmail.com',NULL,NULL,5),(6,'Murilo','couto',654638478,'7463672352',1,'M','carlos','murila','muri@gmail.com',10,8,10),(7,'Joao','Pe de feijao',454563637,'948572904',1,'M','pedro','rafaela','jao@gmail.com',10,8,10),(8,'Arthur','lanches',454563674,'5673465873',1,'M','julio','maria','athurzin@gmail.com',10,5,6),(9,'Scooby','Doo',346565383,'798378584',1,'M',NULL,'Salsicha','salsicha@gmail.com',6,5,7),(10,'Peter','Parker',46336347,'7346565838',1,'M','Ben','May','miranha@gmail.com',2,4,8),(11,'Patrick','Estrela',64653637,'456474574',1,'M','Bob','Joana','estrelinha@gmail.com',10,8,9),(12,'Roberto','Bolanos',65764363,'121212121',1,'M','Bruno','Barbara','robertin@gmail.com',6,2,10),(13,'Rodrigo','Faro',67474567,'6787656765',1,'M','casemiro','elen','namoro@gmail.com',3,4,11),(14,'Ricardo','Cruz',46464657,'778345345',1,'M','joao','gabriela','ricardo@gmail.com',3,4,12),(15,'James','Bond',747574574,'9898565675',1,'M','mario','carol','james@gmail.com',3,8,13),(16,'Chico','Buarque',53637375,'789987897',2,'M','Chico','lorena','buarque@gmail.com',NULL,NULL,14),(17,'Ramon','Madruga',46478383,'680086806',1,'M','felipe','valdirene','madruga@gmail.com',1,7,15),(18,'Rick','Sanches',46525284,'8677462181',1,'M','joao','renata','ricka@gmail.com',1,7,16),(19,'Zack','Snyder',63466376,'343534534',1,'M','clarck','diana','superman@gmail.com',6,6,17),(20,'Adam','Sandler',36363673,'1574353453',1,'M','Lucas','Divina','AMo@gmail.com',8,8,18);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (1,1),(3,2),(4,3),(6,4),(7,5),(8,6),(9,7),(10,8),(11,9),(12,10),(13,11),(14,12),(15,13),(17,14),(18,15),(19,16),(20,17),(1,18),(3,19),(4,20),(6,21),(7,22),(8,23),(9,24),(10,25),(11,26),(12,27),(13,28),(14,29),(15,30);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `fk_cod_departamento` int DEFAULT NULL,
  `nome_curso` char(20) DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,6,'Engenharia software'),(2,6,'analista de sistema'),(3,4,'Biologia'),(4,5,'historia'),(5,2,'matematica'),(6,5,'Pscicologia'),(7,6,'engenharia eletrica'),(8,5,'animacao'),(9,3,'anatomia'),(10,5,'designer');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(1,11),(2,12),(3,13),(4,14),(5,15),(6,16),(7,17),(8,18),(9,19),(10,20),(1,21),(2,22),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29),(10,30);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(20) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Humanas'),(2,'Matematica'),(3,'Ciencias'),(4,'Biologicas'),(5,'Estagio'),(6,'Tecnologia');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio logico',200,'coisas logicas',56,2),(2,'Pscicologia',200,'Cognitiva',30,4),(3,'Eletronica digital',180,'Eletrizante',30,4),(4,'Programacao em C',200,'Estudar codigo C',21,5),(5,'rico',210,'fique rico',2,2),(6,'Sociologia',120,'adorar umas plantas ai',60,3),(7,'preguica',400,'nao fazer insert',5,5),(8,'fuchico',200,'fuchiqueiro de plantao',18,5),(9,'jogos',150,'criar jogos',23,5),(10,'pexeiro',150,'mentir historias',30,5),(11,'Contabilidade',140,'Estudar matematica',17,2),(12,'minion',20,'banana',10,5),(13,'desistente',100,'desistir',56,5),(14,'Biologia',225,'virar professor aos 20',15,4),(15,'construtor',50,'contruir',50,5),(16,'turista',200,'faltador de aula',30,5),(17,'jogador caro',135,'pegar muie',100,5),(18,'twitero',170,'falar besteirol',50,6),(19,'lolzeiro',220,'saia do prata',12,6),(20,'Roubo',99,'precisa ser presidente',9,3),(21,'minecraft',100,'jogar',100,6),(22,'editor',90,'editar coisas',20,6),(23,'Java',175,'fazer javas',32,6),(24,'PHP',500,'topzeira',25,6),(25,'Presidente',111,'Estudar as pedras',35,1),(26,'cantor',100,'voz boa',13,5),(27,'DBA',293,'Nao fazer insert',200,6),(28,'html',200,'fazer sites',25,6),(29,'Portugues',200,'ler hqs',29,6),(30,'final',90,'terminar as coisas',37,6);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_historico` int NOT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_cod_historico`),
  KEY `fk_cod_historico` (`fk_cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
INSERT INTO `disciplina_historico` VALUES (10.00,20,1,1),(5.00,18,3,3),(1.00,17,4,4),(5.00,15,6,6),(5.00,14,7,7),(5.00,13,8,8),(5.00,12,9,9),(5.00,11,10,10),(5.00,10,11,11),(10.00,9,12,12),(8.40,8,13,13),(9.10,7,14,14),(8.90,6,15,15),(10.00,4,17,17),(5.40,3,18,18),(6.80,2,19,19),(7.90,1,20,20);
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `CEP` char(8) NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'QNR 12',14,'788765','Ceilandia',1),(2,'QNQ',3,'7665756','quadra',3),(3,'QNR',1,'6445465','mercadinho',3),(4,'QNP',17,'453455','padarias',4),(5,'QNR 1',1,'354366','Ceilandia',1),(6,'QNR 8',56,'7767867','Ceilandia',1),(7,'joinvile',6,'908998','boniteza',5),(8,'QNR 12',14,'788765','Ceilandia',1),(9,'QNL 10',12,'72020080','Taguatinga',1),(10,'sao sebastiao',87,'46456481','mato',5),(11,'vicent pires',35,'67854313','vicentinho',5),(12,'taguatinga',6,'78654327','praca',2),(13,'pinheiros',32,'23465498','',1),(14,'tira dentes',384,'4654667','dentes',3),(15,'limoeiro',36,'5665756','dona da rua',5),(16,'Quadra 2',15,'676776','futebol',5),(17,'vila chaves',8,'576698','barril',5),(18,'Quadra 5',25,'43534','futvolei',5),(19,'sol nascente',9,'56677','lote 3',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2021-06-01','2022-11-10',1),(3,'2021-07-03','2022-03-12',3),(4,'2021-08-04','2022-04-13',4),(6,'2021-09-06','2022-06-15',6),(7,'2021-09-07','2022-08-16',7),(8,'2021-07-08','2022-05-17',8),(9,'2021-06-09','2022-08-18',9),(10,'2021-02-10','2022-12-19',10),(11,'2021-05-11','2022-03-20',11),(12,'2021-03-12','2022-12-30',12),(13,'2021-07-13','2022-03-13',13),(14,'2021-08-14','2022-09-18',14),(15,'2021-02-15','2022-03-25',15),(17,'2021-12-17','2022-09-22',17),(18,'2021-11-18','2022-01-17',18),(19,'2021-11-19','2022-02-24',19),(20,'2021-12-20','2022-07-29',20);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `fk_cod_departamento` int DEFAULT NULL,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,2,'Mestre','kame',1),(2,1,'mestre','anciao',1),(3,5,'Raimundo','nonato',1),(4,4,'professor','girafales',1),(5,1,'luciano','lopes',1),(6,2,'professor','carvalho',1),(7,5,'Kakashi','Hatake',1),(8,3,'gojo','satoru',0),(9,4,'cleiton','rasta',0),(10,5,'ribamar','vasco',0);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (1,1),(2,2),(3,3),(6,4),(7,5),(9,6),(10,7),(1,8),(2,9),(3,10),(6,11),(7,12),(9,13),(10,14),(1,15),(2,16),(3,17),(6,18),(7,19),(9,20),(10,21),(1,22),(2,23),(3,24),(6,25),(7,26),(9,27),(10,28),(1,29),(2,30);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `numero_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo_telefone` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo_telefone` (`fk_cod_tipo_telefone`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo_telefone`) REFERENCES `tipo_telefone` (`cod_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'564456542',1),(2,'992746262',2),(3,'546483744',3),(4,'335323441',1),(5,'535345324',1),(6,'536856853',2),(7,'456743634',3),(8,'346768374',1),(9,'765213456',1),(10,'145344528',2),(11,'523442334',3),(12,'345535212',3),(13,'857625484',1),(14,'351352435',2),(15,'535353525',3),(16,'456634343',2),(17,'789987434',3),(18,'342334126',1),(19,'423556569',1),(20,'357753573',1),(21,'246343434',3),(22,'743434343',2),(23,'735532323',3),(24,'634634757',1),(25,'634636373',1),(26,'654364636',2),(27,'783474378',3),(28,'638738734',1);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int DEFAULT NULL,
  `fk_cod_telefone` int DEFAULT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,1,1),(2,2,4),(3,4,6),(4,5,5),(5,6,8),(6,7,12),(7,9,9),(8,10,13),(9,12,14),(10,13,15),(11,14,16),(12,16,17),(13,17,18),(14,18,19),(15,19,20),(16,20,21),(17,1,2),(18,5,6),(19,9,10),(20,1,3),(21,5,7),(22,9,11);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'rua'),(2,'chacara'),(3,'lote'),(4,'avenida'),(5,'quadra');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo_telefone` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'telefone'),(2,'celular'),(3,'comercio');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `numero_aluno` char(4) DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'Vesperti','30','2021-10-09','2022-12-01',1),(2,'Vesperti','25','2021-10-01','2022-01-30',2),(3,'Vesperti','35','2021-10-10','2023-10-30',3),(4,'Noturno','40','2021-11-12','2022-06-01',4),(5,'Noturno','30','2021-11-05','2022-12-01',5),(6,'Matutino','35','2021-12-03','2022-06-01',6),(7,'Matutino','37','2021-12-02','2022-06-01',7),(8,'Matutino','25','2021-12-09','2022-06-01',8);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 11:20:54
