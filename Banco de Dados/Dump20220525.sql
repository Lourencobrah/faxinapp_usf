-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: faxinaapp
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamento` (
  `data` varchar(10) DEFAULT NULL,
  `horario` varchar(6) DEFAULT NULL,
  `profissional` varchar(80) DEFAULT NULL,
  `tiposervico` varchar(100) DEFAULT NULL,
  `idAgendamento` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idAgendamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
INSERT INTO `agendamento` VALUES ('2022-05-22','1630','Lisa','completo',1),('2022-06-09','1030','Bart','intermediario',2);
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratado`
--

DROP TABLE IF EXISTS `contratado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratado` (
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nomeMaterial` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `nomeMaterial` (`nomeMaterial`),
  CONSTRAINT `contratado_ibfk_1` FOREIGN KEY (`nomeMaterial`) REFERENCES `material` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratado`
--

LOCK TABLES `contratado` WRITE;
/*!40000 ALTER TABLE `contratado` DISABLE KEYS */;
INSERT INTO `contratado` VALUES ('Marge Simpson','189.286.456-26',NULL),('Barney Gumble','225.426.321-32',NULL),('Krusty','244.822.174-44',NULL),('Homer Simpson','249.789.683-92',NULL),('Moe Szyslak','368.251.334-13',NULL),('Apu','368.822.514-11',NULL),('Sideshow Bob','465.852.368-50',NULL),('Ned Flanders','514.822.368-25',NULL),('Skinner','887.682.145-19',NULL);
/*!40000 ALTER TABLE `contratado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratante`
--

DROP TABLE IF EXISTS `contratante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratante` (
  `nome` varchar(75) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `CpfContratado` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `CpfContratado` (`CpfContratado`),
  CONSTRAINT `contratante_ibfk_1` FOREIGN KEY (`CpfContratado`) REFERENCES `contratado` (`cpf`),
  CONSTRAINT `contratante_ibfk_2` FOREIGN KEY (`CpfContratado`) REFERENCES `contratado` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratante`
--

LOCK TABLES `contratante` WRITE;
/*!40000 ALTER TABLE `contratante` DISABLE KEYS */;
INSERT INTO `contratante` VALUES ('','',NULL,NULL),('Bart Simpson','277.117.970-88','Rua Otacílio Dias Fernandes, 1475',NULL),('Lisa Simpson','284.347.714-55','Rua Anselmo Santa Catarina - E, 20',NULL),('Nelson Muntz','284.786.318-73','Rua Zico Alexandre, 420',NULL),('Lenny Leonard','423.656.691-50','Travessa Saturno, 28',NULL),('Milhouse','547.371.811-86','Rua Francisco Marciano Leite, 45',NULL),('Martin Prince','619.121.483-10','Avenida Antônio Agripino Sobrinho, 900',NULL),('Nikki McKenna','641.718.377-15','Travessa Luíza Cavalcanti, 17',NULL),('Reverendo Lovejoy','671.144.335-30','Vila Oito de Outubro, 1386',NULL),('Ralph Wiggum','732.597.431-25','Rua Padre Júlio Maria, 1782',NULL);
/*!40000 ALTER TABLE `contratante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `nome` varchar(75) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('Agua Sanitaria',0,9),('Alvejante',0,22),('Desinfetante',0,7),('Esponja',0,4),('Rodo',0,10),('Sabão em Pedra',0,12),('Sabão em Pó',0,20),('Vassoura',0,20);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersenha`
--

DROP TABLE IF EXISTS `usersenha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersenha` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) NOT NULL,
  `Senha` varchar(12) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersenha`
--

LOCK TABLES `usersenha` WRITE;
/*!40000 ALTER TABLE `usersenha` DISABLE KEYS */;
INSERT INTO `usersenha` VALUES (1,'Barney.Gumble','995971'),(2,'Krusty','553274'),(3,'Homer.Simpson','674514'),(4,'Moe.Szyslak','351266'),(5,'Apu','737509'),(6,'Sideshow.Bob','844160'),(7,'Ned.Flanders','232653'),(8,'Marge.Simpson','381757'),(9,'Skinner','116496'),(10,'Bart.Simpson','650547'),(11,'Lisa.Simpson','100498'),(12,'Nelson.Muntz','411986'),(13,'Lenny.Leonard','913415'),(14,'Milhouse','189757'),(15,'Martin.Prince','801854'),(16,'Nikki.McKenna','534391'),(17,'Reverendo.Lovejoy','300912'),(18,'Ralph.Wiggum','999075'),(23,'','');
/*!40000 ALTER TABLE `usersenha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'faxinaapp'
--

--
-- Dumping routines for database 'faxinaapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 20:09:12
