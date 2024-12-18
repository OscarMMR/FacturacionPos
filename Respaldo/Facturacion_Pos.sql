-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_db_facturacion_pos
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.20-MariaDB-cll-lve

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
-- Table structure for table `Asesor`
--

DROP TABLE IF EXISTS `Asesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asesor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idZona` varchar(15) NOT NULL,
  `nmAsesor` varchar(45) NOT NULL,
  `nbDocumento` varchar(15) NOT NULL,
  `idEstado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asesor`
--

LOCK TABLES `Asesor` WRITE;
/*!40000 ALTER TABLE `Asesor` DISABLE KEYS */;
INSERT INTO `Asesor` VALUES (1,'01','PABLO SANCHEZ','91784258',1),(2,'02','DANIEL LOPEZ','1045789458',1),(3,'03','DORA ROJAS','37754802',1),(4,'04','SANTIAGO PEREZ','91784258',1),(5,'05','VIVIANA DIAZ','1085785481',1);
/*!40000 ALTER TABLE `Asesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) unsigned NOT NULL,
  `tpDocumento` varchar(5) NOT NULL,
  `nbDocumento` varchar(15) NOT NULL,
  `nmNombre1` varchar(50) NOT NULL,
  `nmNombre2` varchar(50) DEFAULT NULL,
  `nmApellido1` varchar(50) NOT NULL,
  `nmApellido2` varchar(50) DEFAULT NULL,
  `nmRazonSocial` varchar(250) DEFAULT NULL,
  `nmNegocio` varchar(250) DEFAULT NULL,
  `txDireccion` varchar(50) NOT NULL,
  `txBarrio` varchar(30) NOT NULL,
  `nbTelefono` varchar(30) DEFAULT NULL,
  `idCiudad` varchar(20) NOT NULL,
  `idZona` varchar(15) NOT NULL,
  `idEstado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nbDocumento_UNIQUE` (`nbDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,100000,'C','91897785','OSCAR','MAURICIO','MELENDEZ','','OSCAR MAURICIO MELENDEZ ','','CL 22 20 60','ALARCON','3188628745','68001','01',1),(2,100001,'C','1095741581','VIVIANA','PAOLA','PEREZ','','VIVIANA PAOLA PEREZ ','','MZ4 LT 17 C3','BUENOS AIRES','3184584711','68001','01',1),(3,100002,'C','37758402','TATIANA','CATALINA','MONSALVE','DIAZ','LEIDY CATALINA MONSALVE DIAZ','','AV 33 45 23','CENTRO','3182245977','68001','01',0),(4,100003,'C','63789541','MARIA','HUDITH','MALAVERA','GOMEZ','MARIA HUDITH MALAVERA GOMEZ','','CR 33 32 13','SAN FRANCISCO','','68001','03',1),(5,100004,'N','9007843325','','','','','   ','COOPERATIVA MULTIACTIVA','TV 22 87 34','SOTOMAYOR','3177814578','05001','02',1),(6,100005,'C','91784147','JAVIER','','TORRES','','JAVIER  TORRES ','','SCA T1 APTO 202','CABECERA','3207894581','11001','03',0),(7,100006,'N','8004871354','','','','','   ','DISTRIBUIDORA SAN DIEGO','CR 45 23 56','MUTIS','3157654789','11001','03',1),(8,100007,'N','8004647821','','','','','   ','DEPORTIVOS EL MAGO','CL 23 33 56','CABECERA','','68001','01',1),(9,100008,'C','1098587458','DANNA','VALENTINA','AVILA','PEREZ','DANNA VALENTINA AVILA PEREZ','','CR 56 27 34','SOTOMAYOR','3024597845','05001','02',1),(10,100009,'C','1099412587','THOMAS','SANTIAGO','ROJAS','PEREZ','THOMAS SANTIAGO ROJAS PEREZ','','MZ17 LT4 C34','BUENOS AIRES','','68001','01',1);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estado`
--

DROP TABLE IF EXISTS `Estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estado` (
  `idEstado` int(11) NOT NULL,
  `nmEstado` varchar(20) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estado`
--

LOCK TABLES `Estado` WRITE;
/*!40000 ALTER TABLE `Estado` DISABLE KEYS */;
INSERT INTO `Estado` VALUES (0,'INACTIVO'),(1,'ACTIVO'),(2,'BLOQUEADO');
/*!40000 ALTER TABLE `Estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListaCiudad`
--

DROP TABLE IF EXISTS `ListaCiudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListaCiudad` (
  `idCiudad` varchar(5) NOT NULL,
  `nmCiudad` varchar(45) NOT NULL,
  `idDepartamento` varchar(5) NOT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListaCiudad`
--

LOCK TABLES `ListaCiudad` WRITE;
/*!40000 ALTER TABLE `ListaCiudad` DISABLE KEYS */;
INSERT INTO `ListaCiudad` VALUES ('05001','MEDELLIN','05'),('08001','BARRANQUILLA','08'),('11001','BOGOTA D.C','11'),('13001','CARTAGENA','13'),('20001','VALLEDUPAR','20'),('47001','SANTA MARTA','47'),('68001','BUCARAMANGA','68'),('76001','CALI','76');
/*!40000 ALTER TABLE `ListaCiudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrdCompra`
--

DROP TABLE IF EXISTS `OrdCompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrdCompra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOrden` int(20) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `valor` varchar(45) NOT NULL,
  `idZona` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrdCompra`
--

LOCK TABLES `OrdCompra` WRITE;
/*!40000 ALTER TABLE `OrdCompra` DISABLE KEYS */;
INSERT INTO `OrdCompra` VALUES (1,1,100000,8602,10,'2801','01'),(2,1,100000,4411,5,'2031','01'),(3,1,100000,4450,5,'2318','01'),(4,2,100001,8602,5,'2801','01'),(5,2,100001,4411,5,'2031','01'),(6,2,100001,4450,15,'2318','01'),(7,3,100004,8602,50,'2801','02'),(8,3,100004,4450,50,'2318','02'),(9,4,100007,10002,10,'4786','01'),(10,4,100007,8602,5,'2801','01'),(11,4,100007,4411,3,'2031','01'),(12,5,100003,4450,10,'2318','03'),(13,5,100003,10666,2,'29073','03'),(14,5,100003,4430,15,'2170','03');
/*!40000 ALTER TABLE `OrdCompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idProducto` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `valor` int(5) NOT NULL,
  `impuesto` int(5) NOT NULL,
  `idProveedor` int(5) NOT NULL,
  `idEstado` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,'4411','YOG ORIGINAL FRESA 200G',2031,19,1,1),(2,'4430','ALPIN TETRA CHOCOLATE 200G',2170,19,1,1),(3,'4450','AVENA ORIGINAL VASO 250G',2318,19,1,1),(4,'8602','BONYURT ZUCARITAS 170G',2801,19,1,1),(5,'10001','ALPINITO FRE 45G X4UND',4786,0,1,1),(6,'10002','ALPINITO MELO 45G X4UND',4786,0,1,1),(7,'10003','ALPINITO MOR 45G X4UND',4786,0,1,1),(8,'1055','Q HOLAN CELEB 250G',17936,19,1,1),(9,'10666','MPL X6 UND YOGO CEREAL 130G',29073,19,1,1),(10,'1060','Mantequilla Alpina 200g',48451,19,1,1);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `id` int(11) NOT NULL,
  `idProveedor` int(5) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (1,1,'ALPINA PRODUCTOS ALIMENTICIOS','TV25 35 45','BOGOTA'),(2,10002,'Comercializadora Norte','Calle 45 #67-89','Medellín'),(3,10003,'Importadora Occidental','Carrera 12 #34-56','Cali'),(4,10004,'Suministros y Servicios','Cl. 23 #78-90','Barranquilla'),(5,10005,'Almacén del Sur','Av. Sur 56','Cartagena'),(6,10006,'Productos del Llano','Km 5 Vía Villavicencio','Villavicencio'),(7,10007,'Materiales del Oriente','Calle Real 89','Bucaramanga'),(8,10008,'Electrodomésticos Modernos','Av. Industrial 45','Pereira'),(9,10009,'Papelería y Más','Carrera 7 #65-10','Manizales'),(10,10010,'Distribuidora del Caribe','Cl. del Comercio 22','Santa Marta'),(11,10001,'Distribuidora Central','Av. Principal 123','Bogotá');
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venta`
--

DROP TABLE IF EXISTS `Venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Venta` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idOrden` int(20) NOT NULL,
  `nroFactura` varchar(10) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venta`
--

LOCK TABLES `Venta` WRITE;
/*!40000 ALTER TABLE `Venta` DISABLE KEYS */;
INSERT INTO `Venta` VALUES (1,1,'FE001',100000,8602,10,'2801'),(2,1,'FE001',100000,4411,5,'2031'),(3,1,'FE001',100000,4450,5,'2318'),(4,2,'FE002',100001,8602,5,'2801'),(5,2,'FE002',100001,4411,5,'2031'),(6,2,'FE002',100001,4450,15,'2318'),(7,5,'FE003',100003,4450,10,'2318'),(8,5,'FE003',100003,10666,2,'29073'),(9,5,'FE003',100003,4430,15,'2170');
/*!40000 ALTER TABLE `Venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `relacion_clte_fct_vw`
--

DROP TABLE IF EXISTS `relacion_clte_fct_vw`;
/*!50001 DROP VIEW IF EXISTS `relacion_clte_fct_vw`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `relacion_clte_fct_vw` AS SELECT 
 1 AS `idCliente`,
 1 AS `nmRazonSocial`,
 1 AS `txDireccion`,
 1 AS `txBarrio`,
 1 AS `idCiudad`,
 1 AS `nmCiudad`,
 1 AS `idZona`,
 1 AS `nroFactura`,
 1 AS `idProducto`,
 1 AS `cantidad`,
 1 AS `valor`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `relacion_clte_fct_vw`
--

/*!50001 DROP VIEW IF EXISTS `relacion_clte_fct_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_estudiantes_221024`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `relacion_clte_fct_vw` AS select `v`.`idCliente` AS `idCliente`,`c`.`nmRazonSocial` AS `nmRazonSocial`,`c`.`txDireccion` AS `txDireccion`,`c`.`txBarrio` AS `txBarrio`,`c`.`idCiudad` AS `idCiudad`,`lc`.`nmCiudad` AS `nmCiudad`,`c`.`idZona` AS `idZona`,`v`.`nroFactura` AS `nroFactura`,`v`.`idProducto` AS `idProducto`,`v`.`cantidad` AS `cantidad`,`v`.`valor` AS `valor`,round(`v`.`cantidad` * `v`.`valor`,0) AS `total` from (((`Venta` `v` join `Cliente` `c` on(`c`.`idCliente` = `v`.`idCliente`)) join `ListaCiudad` `lc` on(`lc`.`idCiudad` = `c`.`idCiudad`)) join `Asesor` `a` on(`a`.`idZona` = `c`.`idZona`)) */;
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

-- Dump completed on 2024-12-17 21:16:00
