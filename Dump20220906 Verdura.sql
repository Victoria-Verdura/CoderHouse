
/*Tablas: empleados, empleados_sector_establecimiento_view, empleados_view, establecimiento, log_persona, log_salario, persona, puesto, salario, salario_establecimiento_view, salario_puesto_view y sectores_view*/

CREATE DATABASE  IF NOT EXISTS `victoria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `victoria`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: victoria
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `cd_cod_persona` int DEFAULT NULL,
  `nr_legajo` int NOT NULL,
  `cd_puesto` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fin` date DEFAULT NULL,
  PRIMARY KEY (`nr_legajo`),
  KEY `cd_cod_persona` (`cd_cod_persona`),
  KEY `cd_puesto` (`cd_puesto`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`cd_cod_persona`) REFERENCES `persona` (`cd_cod_persona`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`cd_puesto`) REFERENCES `puesto` (`cd_puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (10,5,2,'2021-12-01',NULL),(35,7,4,'2021-12-01',NULL),(20,13,1,'2019-01-05',NULL),(25,14,1,'2022-08-01',NULL),(40,18,3,'2021-12-01',NULL),(15,25,3,'2021-09-01',NULL),(45,55,4,'2021-12-01',NULL),(30,67,2,'2021-12-01',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empleados_sector_establecimiento_view`
--

DROP TABLE IF EXISTS `empleados_sector_establecimiento_view`;
/*!50001 DROP VIEW IF EXISTS `empleados_sector_establecimiento_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_sector_establecimiento_view` AS SELECT 
 1 AS `count(e.cd_cod_persona)`,
 1 AS `nm_puesto`,
 1 AS `nm_establecimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleados_view`
--

DROP TABLE IF EXISTS `empleados_view`;
/*!50001 DROP VIEW IF EXISTS `empleados_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_view` AS SELECT 
 1 AS `cd_cod_persona`,
 1 AS `nm_nombre`,
 1 AS `nm_seg_nombre`,
 1 AS `nm_apellido`,
 1 AS `nr_dni`,
 1 AS `nr_legajo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `establecimiento`
--

DROP TABLE IF EXISTS `establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `establecimiento` (
  `cd_establecimiento` int NOT NULL,
  `nm_establecimiento` text,
  `cd_cuit` int DEFAULT NULL,
  `cd_tipo` int DEFAULT NULL,
  `nr_telefono` int DEFAULT NULL,
  `ds_direccion` varchar(90) DEFAULT NULL,
  `cd_postal` int DEFAULT NULL,
  `ds_ciudad` text,
  `ds_provincia` text,
  `ds_email` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`cd_establecimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `establecimiento`
--

LOCK TABLES `establecimiento` WRITE;
/*!40000 ALTER TABLE `establecimiento` DISABLE KEYS */;
INSERT INTO `establecimiento` VALUES (1,'Sanatorio GO',1112,NULL,15669871,'Galindo 2415',2134,'Funes','Santa Fe','sanatorio@gmail.com'),(2,'Clinica GO',17432789,NULL,15889762,'Cordoba 15',2000,'Rosario','Santa Fe','clinica@gmail.com'),(3,'Clinica DMO',15986432,NULL,15678543,'Moreno 308',2000,'Rosario','Santa Fe','dmo@gmail.com'),(4,'Urgencias CER',18765324,NULL,15876543,'Zeballos 2354',2000,'Rosario','Santa Fe','cer@gmail.com'),(5,'Hospital Maternidad',12131489,NULL,15772132,'Ovideos Lagos 2890',2000,'Rosario','Santa Fe','maternidad@gmail.com');
/*!40000 ALTER TABLE `establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_persona`
--

DROP TABLE IF EXISTS `log_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_persona` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `nr_dni` int DEFAULT NULL,
  `nm_nombre` text,
  `nm_seg_nombre` text,
  `nm_apellido` text,
  `nombre_accion` varchar(100) DEFAULT NULL,
  `nombre_tabla` varchar(100) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `fecha_mod` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_persona`
--

LOCK TABLES `log_persona` WRITE;
/*!40000 ALTER TABLE `log_persona` DISABLE KEYS */;
INSERT INTO `log_persona` VALUES (1,35987555,'Macarena',NULL,'Arce','insert','persona','root@localhost','2022-08-23'),(2,35987555,'Macarena',NULL,'Arce','delete','persona','root@localhost','2022-08-23');
/*!40000 ALTER TABLE `log_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_salario`
--

DROP TABLE IF EXISTS `log_salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_salario` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `cd_puesto` int DEFAULT NULL,
  `nr_sequencia` int DEFAULT NULL,
  `vl_sueldo` decimal(10,0) DEFAULT NULL,
  `camponuevo_campoanterior` varchar(1000) DEFAULT NULL,
  `nombre_accion` varchar(100) DEFAULT NULL,
  `nombre_tabla` varchar(100) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `fecha_mod` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_salario`
--

LOCK TABLES `log_salario` WRITE;
/*!40000 ALTER TABLE `log_salario` DISABLE KEYS */;
INSERT INTO `log_salario` VALUES (1,1,1,90000,NULL,'update','salario','root@localhost','2022-08-23'),(7,6,6,200000,NULL,'insert','salario','root@localhost','2022-08-23'),(8,4,4,150000,NULL,'update','salario','root@localhost','2022-08-26'),(9,4,4,555,'Valor anterior: 150000Valor actual: 160000','update','salario','root@localhost','2022-08-26');
/*!40000 ALTER TABLE `log_salario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `nr_dni` int DEFAULT NULL,
  `cd_cod_persona` int NOT NULL,
  `nm_nombre` text,
  `nm_seg_nombre` text,
  `nm_apellido` text,
  `dt_nacimiento` date DEFAULT NULL,
  `ds_sexo` text,
  `nr_telefono` int DEFAULT NULL,
  `ds_direccion` varchar(90) DEFAULT NULL,
  `cd_numero` int DEFAULT NULL,
  `cd_postal` int DEFAULT NULL,
  `ds_ciudad` text,
  `ds_provincia` text,
  `cd_establecimiento` int DEFAULT NULL,
  `ie_empleado` tinyint(1) DEFAULT NULL,
  `ds_email` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`cd_cod_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (41735948,10,'Victoria','Belen','Verdura','1999-10-02','Femenino',13145353,'Galindo',2415,2134,'Funes','Santa Fe',1,1,'verduravictoria@gmail.com'),(39091447,15,'Rocio','Celeste','Magallanes','1995-07-25','Femenino',164569813,'Ovidio',426,2000,'Rosario','Santa Fe',2,1,'magallanesrocio@gmail.com'),(14434811,20,'Graciela','Rita','Grosso','1962-11-27','Femenino',15123555,'Catamarca',1818,2134,'Funes','Santa Fe',3,1,'grossograciela@gmail.com'),(40987123,25,'Valentina','Valeria','De Pascual','1999-01-01','Femenino',12523333,'Independencia',22,2132,'Roldan','Santa Fe',4,1,'valeriadepascual@gmail.com'),(35555876,30,'Gloria',NULL,'Gomez','1990-12-31','Femenino',12889977,'Cordoba',1245,2134,'Funes','Santa Fe',1,1,'gloriagomez@gmail.com'),(14287090,35,'Marcelo','Andres','Rodriguez','1960-09-09','Masculino',1675843,'Elorza',124,2134,'Funes','Santa Fe',3,1,'marcelorodriguez@gmail.com'),(27336664,40,'Florencia','Maria','Bourre','1995-07-27','Femenino',1677654,'Moreno',789,2000,'Rosario','Santa Fe',2,1,'florenciabourre@gmail.com'),(27886543,45,'Nicolas',NULL,'Perez','1997-06-21','Nicolas',16897321,'Oroño',2354,2000,'Rosario','Santa Fe',4,1,'nicolasperez@gmail.com'),(45057226,50,'Facundo','Ezequiel','Palermo','2000-01-11',NULL,15559091,NULL,NULL,NULL,NULL,NULL,1,1,NULL),(40005006,55,'Ema',NULL,'Candida','1998-02-02',NULL,15252333,NULL,NULL,NULL,NULL,NULL,1,1,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto` (
  `cd_puesto` int NOT NULL,
  `nm_puesto` text,
  `cd_establecimiento` int DEFAULT NULL,
  `nr_piso` int DEFAULT NULL,
  `nr_sequencia` int DEFAULT NULL,
  PRIMARY KEY (`cd_puesto`),
  KEY `cd_establecimiento` (`cd_establecimiento`),
  KEY `nr_sequencia` (`nr_sequencia`),
  CONSTRAINT `nr_sequencia` FOREIGN KEY (`nr_sequencia`) REFERENCES `salario` (`nr_sequencia`),
  CONSTRAINT `puesto_ibfk_1` FOREIGN KEY (`cd_establecimiento`) REFERENCES `establecimiento` (`cd_establecimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` VALUES (1,'Admisión',1,0,1),(2,'Facturación',1,2,2),(3,'Encargado del sector',1,0,3),(4,'Recursos Humanos',1,3,4),(5,'Contaduria',1,3,5),(6,'Admisión',2,0,1),(7,'Facturación',2,2,2),(8,'Encargado del sector',2,0,3),(9,'Recursos Humanos',2,3,4),(10,'Contaduria',2,3,5),(11,'Admisión',3,0,1),(12,'Facturación',3,2,2),(13,'Encargado del sector',3,0,3),(14,'Recursos Humanos',3,3,4),(15,'Contaduria',3,3,5),(16,'Admisión',4,0,1),(17,'Facturación',4,2,2),(18,'Encargado del sector',4,0,3),(19,'Recursos Humanos',4,3,4),(20,'Contaduria',4,3,5),(21,'Admisión',5,0,1),(22,'Facturación',5,2,2),(23,'Encargado del sector',5,0,3),(24,'Recursos Humanos',5,3,4),(25,'Contaduria',5,3,5);
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salario`
--

DROP TABLE IF EXISTS `salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salario` (
  `cd_puesto` int DEFAULT NULL,
  `nr_sequencia` int NOT NULL,
  `vl_sueldo` decimal(10,0) DEFAULT NULL,
  `vl_presentismo` decimal(10,0) DEFAULT NULL,
  `vl_adicional` decimal(10,0) DEFAULT NULL,
  `vl_horas_extras` decimal(10,0) DEFAULT NULL,
  `vl_jubilacion` decimal(10,0) DEFAULT NULL,
  `vl_obra_social` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`nr_sequencia`),
  KEY `cd_puesto` (`cd_puesto`),
  CONSTRAINT `salario_ibfk_1` FOREIGN KEY (`cd_puesto`) REFERENCES `puesto` (`cd_puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario`
--

LOCK TABLES `salario` WRITE;
/*!40000 ALTER TABLE `salario` DISABLE KEYS */;
INSERT INTO `salario` VALUES (1,1,9500,10000,12000,800,-1000,-3000),(2,2,100000,10000,12000,900,-1100,-4000),(3,3,150000,11000,NULL,1600,-1500,-8000),(4,4,160000,11000,NULL,1600,-1500,-8000),(5,5,110000,10000,NULL,1000,-1000,-3000),(6,6,200000,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `salario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salario_establecimiento_view`
--

DROP TABLE IF EXISTS `salario_establecimiento_view`;
/*!50001 DROP VIEW IF EXISTS `salario_establecimiento_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salario_establecimiento_view` AS SELECT 
 1 AS `nm_puesto`,
 1 AS `vl_sueldo`,
 1 AS `nm_establecimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salario_puesto_view`
--

DROP TABLE IF EXISTS `salario_puesto_view`;
/*!50001 DROP VIEW IF EXISTS `salario_puesto_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salario_puesto_view` AS SELECT 
 1 AS `nm_puesto`,
 1 AS `vl_sueldo`,
 1 AS `vl_presentismo`,
 1 AS `vl_adicional`,
 1 AS `vl_horas_extras`,
 1 AS `vl_jubilacion`,
 1 AS `vl_obra_social`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sectores_view`
--

DROP TABLE IF EXISTS `sectores_view`;
/*!50001 DROP VIEW IF EXISTS `sectores_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sectores_view` AS SELECT 
 1 AS `cd_establecimiento`,
 1 AS `nm_establecimiento`,
 1 AS `nm_puesto`,
 1 AS `nr_piso`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `empleados_sector_establecimiento_view`
--

/*!50001 DROP VIEW IF EXISTS `empleados_sector_establecimiento_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_sector_establecimiento_view` AS select count(`e`.`cd_cod_persona`) AS `count(e.cd_cod_persona)`,`p`.`nm_puesto` AS `nm_puesto`,`es`.`nm_establecimiento` AS `nm_establecimiento` from ((`empleados` `e` join `puesto` `p`) join `establecimiento` `es`) where ((`e`.`cd_puesto` = `p`.`cd_puesto`) and (`p`.`cd_establecimiento` = `es`.`cd_establecimiento`)) group by `p`.`nm_puesto`,`es`.`nm_establecimiento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleados_view`
--

/*!50001 DROP VIEW IF EXISTS `empleados_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_view` AS select `p`.`cd_cod_persona` AS `cd_cod_persona`,`p`.`nm_nombre` AS `nm_nombre`,`p`.`nm_seg_nombre` AS `nm_seg_nombre`,`p`.`nm_apellido` AS `nm_apellido`,`p`.`nr_dni` AS `nr_dni`,`e`.`nr_legajo` AS `nr_legajo` from (`empleados` `e` join `persona` `p`) where (`e`.`cd_cod_persona` = `p`.`cd_cod_persona`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salario_establecimiento_view`
--

/*!50001 DROP VIEW IF EXISTS `salario_establecimiento_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_establecimiento_view` AS select `p`.`nm_puesto` AS `nm_puesto`,`s`.`vl_sueldo` AS `vl_sueldo`,`es`.`nm_establecimiento` AS `nm_establecimiento` from ((`salario` `s` join `puesto` `p`) join `establecimiento` `es`) where ((`p`.`cd_puesto` = `s`.`cd_puesto`) and (`p`.`cd_establecimiento` = `es`.`cd_establecimiento`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salario_puesto_view`
--

/*!50001 DROP VIEW IF EXISTS `salario_puesto_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_puesto_view` AS select distinct `p`.`nm_puesto` AS `nm_puesto`,`s`.`vl_sueldo` AS `vl_sueldo`,`s`.`vl_presentismo` AS `vl_presentismo`,`s`.`vl_adicional` AS `vl_adicional`,`s`.`vl_horas_extras` AS `vl_horas_extras`,`s`.`vl_jubilacion` AS `vl_jubilacion`,`s`.`vl_obra_social` AS `vl_obra_social` from (`salario` `s` join `puesto` `p`) where (`s`.`nr_sequencia` = `p`.`nr_sequencia`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sectores_view`
--

/*!50001 DROP VIEW IF EXISTS `sectores_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sectores_view` AS select `e`.`cd_establecimiento` AS `cd_establecimiento`,`e`.`nm_establecimiento` AS `nm_establecimiento`,`p`.`nm_puesto` AS `nm_puesto`,`p`.`nr_piso` AS `nr_piso` from (`establecimiento` `e` join `puesto` `p`) where (`e`.`cd_establecimiento` = `p`.`cd_establecimiento`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-06 19:49:27
