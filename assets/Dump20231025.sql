-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` bigint DEFAULT NULL,
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
INSERT INTO `aluno` VALUES (1,'João','Silva',12345678901,'1234567890',1,'M','José','Maria','joao@gmail.com',1,4,1),(2,'Ana','Pereira',23456789012,'2345678901',2,'F','Carlos','Sônia','ana@gmail.com',NULL,NULL,2),(3,'Lucas','Santos',34567890123,'3456789012',1,'M','Pedro','Laura','lucas@gmail.com',1,5,3),(4,'Carla','Ferreira',45678901234,'4567890123',1,'F','Roberto','Sandra','carla@gmail.com',6,6,4),(5,'Mariana','Oliveira',56789012345,'5678901234',2,'F','Gustavo','Juliana','mariana@gmail.com',NULL,NULL,5),(6,'Rafael','Mendes',67890123456,'6789012345',1,'M','André','Cristina','rafael@gmail.com',10,8,10),(7,'Juliana','Rodrigues',78901234567,'7890123456',1,'F','Renato','Lúcia','juliana@gmail.com',10,8,10),(8,'Marcelo','Alves',89012345678,'8901234567',1,'M','Eduardo','Clara','marcelo@gmail.com',10,5,6),(9,'Fernanda','Gomes',90123456789,'9012345678',1,'F','Ricardo','Isabela','fernanda@gmail.com',6,5,7),(10,'Pedro','Pereira',1234567890,'0123456789',1,'M','Carlos','Sônia','pedro@gmail.com',2,4,8),(11,'Isabela','Moraes',11223344556,'1122334455',1,'F','José','Ana','isabela@gmail.com',10,8,9),(12,'Gustavo','Fernandes',22334455667,'2233445566',1,'M','Antônio','Renata','gustavo@gmail.com',6,2,10),(13,'Aline','Lima',33445566778,'3344556677',1,'F','Felipe','Carla','aline@gmail.com',3,4,11),(14,'Raul','Ribeiro',44556677889,'4455667788',1,'M','Fernando','Larissa','raul@gmail.com',3,4,12),(15,'Paulo','Gonçalves',55667788900,'5566778890',1,'M','Luiz','Márcia','paulo@gmail.com',3,8,13),(16,'Mariana','Mendes',66778890011,'6677889001',2,'F','Carlos','Andrea','mariana@gmail.com',NULL,NULL,14),(17,'Lucas','Oliveira',77889900122,'7788990012',1,'M','Felipe','Fernanda','lucas@gmail.com',1,7,15),(18,'Carla','Ramos',88990011233,'8899001123',1,'F','Antônio','Larissa','carla@gmail.com',1,7,16),(19,'Fernando','Ferreira',99001122334,'9900112233',1,'M','Eduardo','Clara','fernando@gmail.com',6,6,17),(20,'Amanda','Andrade',112233445,'0011223344',1,'F','Gustavo','Luciana','amanda@gmail.com',8,8,18);
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
  `nome_curso` varchar(100) DEFAULT NULL,
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
INSERT INTO `curso` VALUES (1,1,'Engenharia de Software'),(2,1,'Analista de Sistemas'),(3,2,'Ciência da Computação'),(4,5,'Desenvolvimento Web'),(5,2,'Programação em Java'),(6,6,'Inteligência Artificial'),(7,3,'Engenharia de Computação'),(8,4,'Tecnologia da Informação'),(9,5,'Programação Mobile'),(10,4,'Segurança da Informação');
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
  `nome_departamento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Desenvolvimento de Software'),(2,'Ciência da Computação'),(3,'Engenharia de Computação'),(4,'Tecnologia da Informação'),(5,'Programação Web'),(6,'Inteligência Artificial');
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
  `nome_disciplina` varchar(255) DEFAULT NULL,
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
INSERT INTO `disciplina` VALUES (1,'Programação em C',200,'Estudar a linguagem C',56,2),(2,'Introdução à Computação',200,'Fundamentos da computação',30,4),(3,'Eletrônica Digital',180,'Princípios de eletrônica',30,4),(4,'Programação em C++',200,'Estudar a linguagem C++',21,5),(5,'Algoritmos Avançados',210,'Desenvolvimento de algoritmos',2,2),(6,'Sistemas Operacionais',120,'Estudo de sistemas operacionais',60,3),(7,'Estruturas de Dados',400,'Manipulação de estruturas de dados',5,5),(8,'Desenvolvimento Web',200,'Construção de sites',18,5),(9,'Desenvolvimento de Jogos',150,'Criar jogos digitais',23,5),(10,'Inteligência Artificial',150,'Estudo de IA',30,5),(11,'Engenharia de Software',140,'Desenvolvimento de software',17,2),(12,'Mineração de Dados',20,'Análise de dados',10,5),(13,'Redes de Computadores',100,'Configuração de redes',56,5),(14,'Banco de Dados',225,'Gerenciamento de bancos de dados',15,4),(15,'Desenvolvimento Mobile',50,'Criar aplicativos móveis',50,5),(16,'Sistemas Distribuídos',200,'Estudo de sistemas distribuídos',30,5),(17,'Segurança da Informação',135,'Proteção de dados',100,5),(18,'Desenvolvimento Front-end',170,'Construção de interfaces web',50,6),(19,'Desenvolvimento Back-end',220,'Desenvolvimento de lógica de servidor',12,6),(20,'Gestão de Projetos de TI',99,'Gerenciamento de projetos de TI',9,3),(21,'Desenvolvimento de Jogos',100,'Criar jogos digitais',100,6),(22,'Desenvolvimento de Software',90,'Programação de software',20,6),(23,'Java',175,'Programação em Java',32,6),(24,'PHP',500,'Desenvolvimento PHP',25,6),(25,'Introdução à Ciência da Computação',111,'Fundamentos da computação',35,1),(26,'Engenharia de Software',100,'Desenvolvimento de software',13,5),(27,'Administração de Bancos de Dados',293,'Gerenciamento de bancos de dados',200,6),(28,'Desenvolvimento Web',200,'Construção de sites',25,6),(29,'Linguagens de Programação',200,'Estudo de linguagens de programação',29,6),(30,'Projeto de Software',90,'Desenvolvimento de projetos de software',37,6);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_historico` int NOT NULL,
  `nota` decimal(5,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
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
INSERT INTO `disciplina_historico` VALUES (1,1,10.00,20),(3,3,5.00,18),(4,4,1.00,17),(6,6,5.00,15),(7,7,5.00,14),(8,8,5.00,13),(9,9,5.00,12),(10,10,5.00,11),(11,11,5.00,10),(12,12,10.00,9),(13,13,8.40,8),(14,14,9.10,7),(15,15,8.90,6),(17,17,10.00,4),(18,18,5.40,3),(19,19,6.80,2),(20,20,7.90,1);
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
INSERT INTO `professor` VALUES (1,2,'João','Silva',1),(2,1,'Maria','Santos',1),(3,5,'Pedro','Oliveira',1),(4,4,'Ana','Ferreira',1),(5,1,'Luís','Carvalho',1),(6,2,'Sandra','Gomes',1),(7,5,'Ricardo','Pereira',1),(8,3,'Isabel','Alves',0),(9,4,'Carlos','Rodrigues',0),(10,5,'Marta','Fernandes',0);
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
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_telefone`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,1),(1,2),(1,3),(2,4),(5,5),(4,6),(5,6),(5,7),(6,8),(9,9),(9,10),(9,11),(7,12),(10,13),(12,14),(13,15),(14,16),(16,17),(17,18),(18,19),(19,20),(20,21);
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

--
-- Dumping events for database 'db_faculdade'
--

--
-- Dumping routines for database 'db_faculdade'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 16:59:50
