CREATE DATABASE  IF NOT EXISTS `paredb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `paredb`;
-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: paredb
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `autos`
--

DROP TABLE IF EXISTS `autos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autos` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) DEFAULT NULL,
  `progresivo` char(6) DEFAULT NULL,
  `entrada_salida` char(1) DEFAULT 'E' COMMENT '(E) - PARA ENTRADA   \r(\nS) - PARA SALIDA',
  `fecha_entrada` varchar(10) DEFAULT NULL,
  `fecha_salida` varchar(10) DEFAULT NULL,
  `hora_entrada` varchar(10) DEFAULT NULL,
  `hora_salida` varchar(10) DEFAULT NULL,
  `horas_estadia` int(3) DEFAULT NULL,
  `minutos_estadia` int(3) DEFAULT NULL,
  `monto` double DEFAULT '0',
  `turno_entrada_id` int(11) DEFAULT NULL,
  `turno_salida_id` int(11) DEFAULT NULL,
  `id_tarifa` int(6) DEFAULT NULL,
  `id_caseta` int(3) DEFAULT NULL,
  `operador_salida` int(10) DEFAULT '0',
  `operador_entrada` int(10) DEFAULT '0',
  `id_boleto_perdido` int(11) DEFAULT '0',
  `id_boleto_cancelado` int(11) DEFAULT '0',
  `id_boleto_manual` int(11) DEFAULT '0',
  `id_boleto_contra` int(11) DEFAULT '0',
  `boleto_perdido` varchar(4) DEFAULT 'NO',
  `boleto_cancelado` varchar(4) DEFAULT 'NO',
  `boleto_contra` varchar(4) DEFAULT 'NO',
  `boleto_manual` varchar(4) DEFAULT 'NO',
  `boleto_pendiente` varchar(4) DEFAULT 'NO',
  `recibo` varchar(5) DEFAULT 'NO',
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `clave` char(6) DEFAULT NULL,
  `descuento` decimal(10,0) DEFAULT '0',
  `serie` char(2) DEFAULT '0',
  `notas` varchar(80) DEFAULT NULL,
  `id_cliente` int(5) DEFAULT NULL,
  `estado_servidor` varchar(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autos`
--

LOCK TABLES `autos` WRITE;
/*!40000 ALTER TABLE `autos` DISABLE KEYS */;
/*!40000 ALTER TABLE `autos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_cancelado`
--

LOCK TABLES `boleto_cancelado` WRITE;
/*!40000 ALTER TABLE `boleto_cancelado` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleto_cancelado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto_manual`
--

DROP TABLE IF EXISTS `boleto_manual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_manual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrada` varchar(10) DEFAULT NULL,
  `fecha_salida` varchar(10) DEFAULT NULL,
  `hora_entrada` varchar(10) DEFAULT NULL,
  `hora_salida` varchar(10) DEFAULT NULL,
  `razon` varchar(45) DEFAULT NULL,
  `id_auto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_manual`
--

LOCK TABLES `boleto_manual` WRITE;
/*!40000 ALTER TABLE `boleto_manual` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleto_manual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto_pendiente`
--

DROP TABLE IF EXISTS `boleto_pendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto_pendiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_auto` int(11) DEFAULT '0',
  `id_turno_pendiente` int(11) DEFAULT '0',
  `serie` varchar(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto_pendiente`
--

LOCK TABLES `boleto_pendiente` WRITE;
/*!40000 ALTER TABLE `boleto_pendiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleto_pendiente` ENABLE KEYS */;
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
INSERT INTO `caja` VALUES (1,0,1,'1000',2000);
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
  `series` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caseta`
--

LOCK TABLES `caseta` WRITE;
/*!40000 ALTER TABLE `caseta` DISABLE KEYS */;
INSERT INTO `caseta` VALUES (1,'Caseta 1',1,1,'0');
/*!40000 ALTER TABLE `caseta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_operativo`
--

DROP TABLE IF EXISTS `centro_operativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro_operativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `centro_costos` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_operativo`
--

LOCK TABLES `centro_operativo` WRITE;
/*!40000 ALTER TABLE `centro_operativo` DISABLE KEYS */;
INSERT INTO `centro_operativo` VALUES (1,1,'AICM'),(2,2,'INAH A'),(3,3,'INAH B'),(4,4,'BEST BUY'),(5,8,'CIME');
/*!40000 ALTER TABLE `centro_operativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_turno`
--

DROP TABLE IF EXISTS `detalle_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_turno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio_inicial` bigint(20) DEFAULT '0',
  `folio_final` bigint(20) DEFAULT '0',
  `no_bol_turno_a` int(11) DEFAULT '0',
  `no_bol_cancelados` int(11) DEFAULT '0',
  `no_bol_perdidos` int(11) DEFAULT '0',
  `no_bol_cobrados` int(11) DEFAULT '0',
  `no_bol_turno_s` int(11) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0',
  `no_bol` int(11) DEFAULT '0',
  `id_turno` int(11) DEFAULT NULL,
  `no_bol_manual` int(11) DEFAULT '0',
  `no_bol_contra` int(11) DEFAULT '0',
  `serie` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_turno`
--

LOCK TABLES `detalle_turno` WRITE;
/*!40000 ALTER TABLE `detalle_turno` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_turno` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_movimiento`
--

LOCK TABLES `detalles_movimiento` WRITE;
/*!40000 ALTER TABLE `detalles_movimiento` DISABLE KEYS */;
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
INSERT INTO `estacionamiento` VALUES (1,34,'N Heroes',1,1,'Museo de antropologia S/N','Valet');
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
INSERT INTO `progresivos` VALUES (1,'0','130',1),(2,'PERDIDO','15',1),(3,'RETIRO_PARCIAL','83703',1),(4,'RECIBO_PAGO','33547',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retiro_parcial`
--

LOCK TABLES `retiro_parcial` WRITE;
/*!40000 ALTER TABLE `retiro_parcial` DISABLE KEYS */;
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
  `tarifa_unica` decimal(10,0) DEFAULT NULL,
  `monto_inicial` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_turno` varchar(45) DEFAULT NULL,
  `fecha_apertura` varchar(45) DEFAULT NULL,
  `fecha_cierre` varchar(45) DEFAULT NULL,
  `hora_apertura` varchar(45) DEFAULT NULL,
  `hora_cierre` varchar(45) DEFAULT NULL,
  `id_empleado_apertura` int(11) DEFAULT '0',
  `id_empleado_cierre` varchar(45) DEFAULT NULL,
  `activo` varchar(45) DEFAULT 'NO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
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
  `clave` varchar(12) DEFAULT NULL,
  `nombre_completo` varchar(80) NOT NULL,
  `id_puesto` smallint(3) unsigned zerofill DEFAULT NULL,
  `tipo_empleado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (008,NULL,NULL,001,'Oscar','pupffi',1,'qwerty','Oscar Paredes',NULL,'Administrador');
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

-- Dump completed on 2014-11-04 11:32:29
