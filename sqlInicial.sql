CREATE DATABASE  IF NOT EXISTS `paredb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `paredb`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: paredb
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boleto_cancelado`
--

DROP TABLE IF EXISTS `boleto_cancelado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_cancelado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_turno` int(11) DEFAULT NULL,
  `id_auto` int(11) DEFAULT NULL,
  `razon` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_cancelado`
--

LOCK TABLES `boleto_cancelado` WRITE;
/*!40000 ALTER TABLE `boleto_cancelado` DISABLE KEYS */;
INSERT INTO `boleto_cancelado` VALUES (1,9,34,'11'),(2,10,35,'14'),(3,11,39,'qaz'),(4,12,41,'14');
/*!40000 ALTER TABLE `boleto_cancelado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto_perdido`
--

DROP TABLE IF EXISTS `boleto_perdido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_perdido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `progresivo` int(11) DEFAULT NULL,
  `id_auto` int(11) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `id_propietario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_perdido`
--

LOCK TABLES `boleto_perdido` WRITE;
/*!40000 ALTER TABLE `boleto_perdido` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleto_perdido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` decimal(10,0) DEFAULT NULL,
  `id_caseta` int(11) DEFAULT NULL,
  `fondo` varchar(45) DEFAULT NULL,
  `monto_alarma` int(11) DEFAULT '500',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (1,0,1,'200',1000);
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caseta`
--

DROP TABLE IF EXISTS `caseta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caseta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `id_estacionameinto` int(11) DEFAULT NULL,
  `id_tarifa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseta`
--

LOCK TABLES `caseta` WRITE;
/*!40000 ALTER TABLE `caseta` DISABLE KEYS */;
INSERT INTO `caseta` VALUES (1,'Caseta 1',1,1);
/*!40000 ALTER TABLE `caseta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_movimiento`
--

DROP TABLE IF EXISTS `detalles_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_movimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `rango_horario` varchar(45) DEFAULT NULL,
  `cantidad_boletos` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,0) DEFAULT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `serie` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_movimiento`
--

LOCK TABLES `detalles_movimiento` WRITE;
/*!40000 ALTER TABLE `detalles_movimiento` DISABLE KEYS */;
INSERT INTO `detalles_movimiento` VALUES (9,'Boleto','00:01-00:15',2,20,40,10,'A'),(10,'Boleto','00:01-00:15',3,20,60,11,'A'),(11,'Cancelado','',1,0,0,12,'A'),(12,'Boleto','00:01-00:15',1,20,20,12,'A');
/*!40000 ALTER TABLE `detalles_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estacionamiento`
--

DROP TABLE IF EXISTS `estacionamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estacionamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centro_costos` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `caseta_actual` int(11) DEFAULT NULL,
  `id_tarifa` int(11) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacionamiento`
--

LOCK TABLES `estacionamiento` WRITE;
/*!40000 ALTER TABLE `estacionamiento` DISABLE KEYS */;
INSERT INTO `estacionamiento` VALUES (1,34,'Oficinas',1,1,'Montes Urales','Autoservicio');
/*!40000 ALTER TABLE `estacionamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progresivos`
--

DROP TABLE IF EXISTS `progresivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progresivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `ultimo_progresivo` char(12) DEFAULT NULL,
  `id_cajero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progresivos`
--

LOCK TABLES `progresivos` WRITE;
/*!40000 ALTER TABLE `progresivos` DISABLE KEYS */;
INSERT INTO `progresivos` VALUES (1,'BOLETO','85183',1),(2,'PERDIDO','52',1),(3,'RETIRO_PARCIAL','115',1),(4,'RECIBO_PAGO','11',1);
/*!40000 ALTER TABLE `progresivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario_perdido`
--

DROP TABLE IF EXISTS `propietario_perdido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propietario_perdido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `tipo_identificacion` varchar(45) DEFAULT NULL,
  `numero_identificacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario_perdido`
--

LOCK TABLES `propietario_perdido` WRITE;
/*!40000 ALTER TABLE `propietario_perdido` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietario_perdido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retiro_parcial`
--

DROP TABLE IF EXISTS `retiro_parcial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retiro_parcial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `progresivo` int(11) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `id_caseta` int(11) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  `monto_real` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retiro_parcial`
--

LOCK TABLES `retiro_parcial` WRITE;
/*!40000 ALTER TABLE `retiro_parcial` DISABLE KEYS */;
INSERT INTO `retiro_parcial` VALUES (6,105,'2014-09-09','14:12:43',1,3,15,18),(7,106,'2014-09-12','15:51:05',1,6,300,155),(8,107,'2014-09-12','15:57:18',1,7,-125,-125),(9,108,'2014-09-12','16:03:03',1,8,40,40),(10,109,'2014-09-12','16:16:04',1,8,0,0),(11,110,'2014-09-12','16:40:00',1,9,60,60),(12,111,'2014-09-12','16:55:31',1,10,20,20),(13,112,'2014-09-12','17:05:02',1,11,40,40),(14,113,'2014-09-12','17:07:18',1,12,20,20),(15,114,'2014-09-12','17:13:19',1,12,0,0);
/*!40000 ALTER TABLE `retiro_parcial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fracciones` int(11) DEFAULT NULL,
  `costos` varchar(100) DEFAULT NULL,
  `precio_hora` decimal(10,0) DEFAULT NULL,
  `tarifa_maxima` decimal(10,0) DEFAULT NULL,
  `boleto_perdido` decimal(10,0) DEFAULT NULL,
  `hora_inicial` varchar(10) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
INSERT INTO `tarifa` VALUES (1,4,'10.0@4.0@4.0@2.0',20,0,200,'1','Tarifa regular'),(4,4,'0.0@0.0@0.0@0.0',0,0,200,'0','Troquel');
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_entradas_parking`
--

DROP TABLE IF EXISTS `tbl_entradas_parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_entradas_parking` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `serie` char(2) DEFAULT '0',
  `matricula` varchar(10) DEFAULT NULL,
  `entrada_salida` char(1) DEFAULT 'E' COMMENT '(E) - PARA ENTRADA   \r(\nS) - PARA SALIDA',
  `id_tarifa` int(6) unsigned zerofill DEFAULT NULL,
  `tarifa` double DEFAULT NULL,
  `progresivo` char(6) DEFAULT NULL,
  `fecha_entrada` date DEFAULT '1900-01-01',
  `hora_entrada` time DEFAULT '00:00:00',
  `fecha_salida` date DEFAULT NULL,
  `hora_salida` time DEFAULT '00:00:00',
  `operador_entrada` int(10) DEFAULT NULL,
  `operador_salida` int(10) DEFAULT '0',
  `estado` char(1) DEFAULT 'N' COMMENT 'N - PARA ESTADO NORMAL  \r\nC - PARA ESTADO CANCELADO\r\nT - PARA TRASLADADO',
  `notas` varchar(80) DEFAULT NULL,
  `id_caseta` int(3) DEFAULT NULL,
  `horas_cortesia` float DEFAULT '0',
  `horas_estadia` int(3) DEFAULT NULL,
  `minutos_estadia` int(3) DEFAULT NULL,
  `monto_tangible` double DEFAULT '0',
  `horas_tangible` double DEFAULT '0',
  `minutos_tangible` double DEFAULT '0',
  `monto_intangible` double DEFAULT '0',
  `horas_intangible` double DEFAULT '0',
  `minutos_intangible` double DEFAULT '0',
  `id_cliente` int(5) DEFAULT NULL,
  `turno_entrada_id` int(11) DEFAULT NULL,
  `turno_salida_id` int(11) DEFAULT NULL,
  `id_boleto_perdido` int(11) DEFAULT '0',
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `id_boleto_cancelado` int(11) DEFAULT '0',
  `clave` char(6) DEFAULT NULL,
  `recibo` varchar(5) DEFAULT 'NO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_entradas_parking`
--

LOCK TABLES `tbl_entradas_parking` WRITE;
/*!40000 ALTER TABLE `tbl_entradas_parking` DISABLE KEYS */;
INSERT INTO `tbl_entradas_parking` VALUES (000037,'A','','S',000001,NULL,'000012','2014-09-12','17:00:00','2014-09-12','17:03:36',5,0,'N',NULL,1,0,0,3,20,0,0,0,0,0,NULL,11,11,0,'',NULL,NULL,0,'FTTKB','NO'),(000038,'A','','S',000001,NULL,'000123','2014-09-12','17:00:00','2014-09-12','17:00:59',5,0,'N',NULL,1,0,0,0,20,0,0,0,0,0,NULL,11,11,0,'',NULL,NULL,0,'AYUYB','NO'),(000039,'A','','S',000001,NULL,'001235','2014-09-12','17:04:00','2014-09-12','17:04:39',5,0,'N',NULL,1,0,0,0,0,0,0,0,0,0,NULL,11,11,0,'',NULL,NULL,3,'TRNWL','NO'),(000040,'A','','S',000001,NULL,'000001','2014-09-12','17:06:00','2014-09-12','17:06:28',5,0,'N',NULL,1,0,0,0,20,0,0,0,0,0,NULL,12,12,0,'',NULL,NULL,0,'USOVG','NO'),(000041,'A','','S',000001,NULL,'000002','2014-09-12','17:06:00','2014-09-12','17:06:42',5,0,'N',NULL,1,0,0,0,0,0,0,0,0,0,NULL,12,12,0,'',NULL,NULL,4,'CVKAN','NO');
/*!40000 ALTER TABLE `tbl_entradas_parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servicio`
--

DROP TABLE IF EXISTS `tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_servicio` (
  `id` smallint(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `servicio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servicio`
--

LOCK TABLES `tipo_servicio` WRITE;
/*!40000 ALTER TABLE `tipo_servicio` DISABLE KEYS */;
INSERT INTO `tipo_servicio` VALUES (000001,'SERVICIO 1'),(000002,'SERVICIO 2'),(000003,'SERVICIO 3');
/*!40000 ALTER TABLE `tipo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_turno`
--

DROP TABLE IF EXISTS `tipo_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_turno` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  `hora_inicial` time DEFAULT NULL,
  `hora_final` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_turno`
--

LOCK TABLES `tipo_turno` WRITE;
/*!40000 ALTER TABLE `tipo_turno` DISABLE KEYS */;
INSERT INTO `tipo_turno` VALUES (1,'Matutino','07:00:00','14:59:59'),(2,'Vespertino','15:00:00','22:59:59'),(3,'Nocturno','23:00:00','17:59:59');
/*!40000 ALTER TABLE `tipo_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turnos` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_turno` varchar(45) DEFAULT NULL,
  `fecha_apertura` varchar(45) DEFAULT NULL,
  `fecha_cierre` varchar(45) DEFAULT NULL,
  `hora_apertura` varchar(45) DEFAULT NULL,
  `hora_cierre` varchar(45) DEFAULT NULL,
  `folio_inicial` bigint(20) DEFAULT '0',
  `folio_final` bigint(20) DEFAULT '0',
  `no_bol_turno_a` int(11) DEFAULT '0',
  `no_bol_cancelados` int(11) DEFAULT '0',
  `no_bol_perdidos` int(11) DEFAULT '0',
  `no_bol_cobrados` int(11) DEFAULT '0',
  `no_bol_turno_s` int(11) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0',
  `id_operador` int(11) DEFAULT '0',
  `no_bol` int(11) DEFAULT '0',
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (11,'Primer turno','2014-09-12','2014-09-12','16:56:59','17:05:06',85178,85181,0,1,0,2,0,60,5,3),(12,'Segundo turno','2014-09-12','2014-09-12','17:06:05','17:13:28',85181,85183,0,1,0,1,0,20,5,2);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` tinyint(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_centro_operaciones` tinyint(3) unsigned zerofill DEFAULT NULL,
  `id_centro_costos` tinyint(3) unsigned zerofill DEFAULT NULL,
  `id_caseta` tinyint(3) unsigned zerofill DEFAULT NULL,
  `nombre` char(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contras` char(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nivel` tinyint(1) DEFAULT NULL,
  `clave_usuario` varchar(12) DEFAULT NULL,
  `nombre_completo` varchar(80) NOT NULL,
  `id_puesto` smallint(3) unsigned zerofill DEFAULT NULL,
  `tipo_empleado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (005,001,001,001,'Administrador','Admin',1,'000','Administrador',001,'Administrador'),(007,NULL,NULL,001,'Oscar','QORVJL',1,NULL,'Oscar Paredes',NULL,'Cajero');
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

-- Dump completed on 2014-09-12 17:49:36
