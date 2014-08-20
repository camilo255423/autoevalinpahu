-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: autoevalinpahu
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
-- Table structure for table `caracteristica_pregunta_proceso`
--

DROP TABLE IF EXISTS `caracteristica_pregunta_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracteristica_pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_caracteristica_proceso` int(11) NOT NULL,
  KEY `id_caracteristica_proceso` (`id_caracteristica_proceso`),
  KEY `id_pregunta_proceso` (`id_pregunta_proceso`),
  CONSTRAINT `caracteristica_pregunta_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`),
  CONSTRAINT `caracteristica_pregunta_proceso_ibfk_2` FOREIGN KEY (`id_caracteristica_proceso`) REFERENCES `caracteristica_proceso` (`id_caracteristica_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica_pregunta_proceso`
--

LOCK TABLES `caracteristica_pregunta_proceso` WRITE;
/*!40000 ALTER TABLE `caracteristica_pregunta_proceso` DISABLE KEYS */;
INSERT INTO `caracteristica_pregunta_proceso` VALUES (2,1);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (6,3);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (7,3);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (8,3);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (7,12);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (8,12);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (8,1);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (6,6);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (6,22);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (1,10);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (7,5);
INSERT INTO `caracteristica_pregunta_proceso` VALUES (11,5);
/*!40000 ALTER TABLE `caracteristica_pregunta_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristica_proceso`
--

DROP TABLE IF EXISTS `caracteristica_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracteristica_proceso` (
  `id_caracteristica_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero_caracteristica` int(11) NOT NULL,
  `id_factor_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_caracteristica_proceso`),
  KEY `id_factor_proceso` (`id_factor_proceso`),
  CONSTRAINT `caracteristica_proceso_ibfk_1` FOREIGN KEY (`id_factor_proceso`) REFERENCES `factor_proceso` (`id_factor_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica_proceso`
--

LOCK TABLES `caracteristica_proceso` WRITE;
/*!40000 ALTER TABLE `caracteristica_proceso` DISABLE KEYS */;
INSERT INTO `caracteristica_proceso` VALUES (1,'Característica 1','Característica 1',1,1);
INSERT INTO `caracteristica_proceso` VALUES (2,'Característica 2','Característica 2',2,1);
INSERT INTO `caracteristica_proceso` VALUES (3,'Característica 3','Característica 3',3,1);
INSERT INTO `caracteristica_proceso` VALUES (4,'Característica 4','Característica 4',4,1);
INSERT INTO `caracteristica_proceso` VALUES (5,'Característica 5','Característica 5',5,2);
INSERT INTO `caracteristica_proceso` VALUES (6,'Característica 6','Característica 6',6,2);
INSERT INTO `caracteristica_proceso` VALUES (7,'Característica 7','Característica 7',7,2);
INSERT INTO `caracteristica_proceso` VALUES (8,'Característica 8','Característica 8',8,2);
INSERT INTO `caracteristica_proceso` VALUES (9,'Característica 9','Característica 9',9,2);
INSERT INTO `caracteristica_proceso` VALUES (10,'Característica 10','Característica 10',10,3);
INSERT INTO `caracteristica_proceso` VALUES (11,'Característica 11','Característica 11',11,3);
INSERT INTO `caracteristica_proceso` VALUES (12,'Característica 12','Característica 12',12,3);
INSERT INTO `caracteristica_proceso` VALUES (13,'Característica 13','Característica 13',13,3);
INSERT INTO `caracteristica_proceso` VALUES (14,'Característica 14','Característica 14',14,3);
INSERT INTO `caracteristica_proceso` VALUES (15,'Característica 15','Característica 15',15,3);
INSERT INTO `caracteristica_proceso` VALUES (16,'Característica 16','Característica 16',16,3);
INSERT INTO `caracteristica_proceso` VALUES (17,'Característica 17','Característica 17',17,3);
INSERT INTO `caracteristica_proceso` VALUES (18,'Característica 18','Característica 18',18,4);
INSERT INTO `caracteristica_proceso` VALUES (19,'Característica 19','Característica 19',19,4);
INSERT INTO `caracteristica_proceso` VALUES (20,'Característica 20','Característica 20',20,4);
INSERT INTO `caracteristica_proceso` VALUES (21,'Característica 21','Característica 21',21,4);
INSERT INTO `caracteristica_proceso` VALUES (22,'Característica 22','Característica 22',22,4);
INSERT INTO `caracteristica_proceso` VALUES (23,'Característica 23','Característica 23',23,4);
INSERT INTO `caracteristica_proceso` VALUES (24,'Característica 24','Característica 24',24,4);
INSERT INTO `caracteristica_proceso` VALUES (25,'Característica 25','Característica 25',25,4);
INSERT INTO `caracteristica_proceso` VALUES (26,'Característica 26','Característica 26',26,4);
INSERT INTO `caracteristica_proceso` VALUES (27,'Característica 27','Característica 27',27,4);
INSERT INTO `caracteristica_proceso` VALUES (28,'Característica 28','Característica 28',28,4);
INSERT INTO `caracteristica_proceso` VALUES (29,'Característica 29','Característica 29',29,4);
INSERT INTO `caracteristica_proceso` VALUES (30,'Característica 30','Característica 30',30,4);
INSERT INTO `caracteristica_proceso` VALUES (31,'Característica 31','Característica 31',31,4);
INSERT INTO `caracteristica_proceso` VALUES (32,'Característica 32','Característica 32',32,5);
INSERT INTO `caracteristica_proceso` VALUES (33,'Característica 33','Característica 33',33,6);
INSERT INTO `caracteristica_proceso` VALUES (34,'Característica 34','Característica 34',34,6);
INSERT INTO `caracteristica_proceso` VALUES (35,'Característica 35','Característica 35',35,6);
INSERT INTO `caracteristica_proceso` VALUES (36,'Característica 36','Característica 36',36,6);
INSERT INTO `caracteristica_proceso` VALUES (37,'Característica 37','Característica 37',37,7);
INSERT INTO `caracteristica_proceso` VALUES (38,'Característica 38','Característica 38',38,7);
INSERT INTO `caracteristica_proceso` VALUES (39,'Característica 39','Característica 39',39,7);
INSERT INTO `caracteristica_proceso` VALUES (40,'Característica 40','Característica 40',40,8);
INSERT INTO `caracteristica_proceso` VALUES (41,'Característica 41','Característica 41',41,8);
INSERT INTO `caracteristica_proceso` VALUES (42,'Característica 42','Característica 42',42,8);
INSERT INTO `caracteristica_proceso` VALUES (43,'Característica 1','Característica 1',1,11);
INSERT INTO `caracteristica_proceso` VALUES (44,'Característica 1','Característica 1',1,12);
INSERT INTO `caracteristica_proceso` VALUES (45,'Característica 2','Característica 2',2,12);
INSERT INTO `caracteristica_proceso` VALUES (46,'Característica 3','Característica 3',3,12);
INSERT INTO `caracteristica_proceso` VALUES (47,'Característica 4','Característica 4',4,12);
INSERT INTO `caracteristica_proceso` VALUES (48,'Característica 5','Característica 5',5,13);
INSERT INTO `caracteristica_proceso` VALUES (49,'Característica 6','Característica 6',6,13);
INSERT INTO `caracteristica_proceso` VALUES (50,'Característica 7','Característica 7',7,13);
INSERT INTO `caracteristica_proceso` VALUES (51,'Característica 8','Característica 8',8,13);
INSERT INTO `caracteristica_proceso` VALUES (52,'Característica 9','Característica 9',9,13);
INSERT INTO `caracteristica_proceso` VALUES (53,'Característica 10','Característica 10',10,14);
INSERT INTO `caracteristica_proceso` VALUES (54,'Característica 11','Característica 11',11,14);
INSERT INTO `caracteristica_proceso` VALUES (55,'Característica 12','Característica 12',12,14);
INSERT INTO `caracteristica_proceso` VALUES (56,'Característica 13','Característica 13',13,14);
INSERT INTO `caracteristica_proceso` VALUES (57,'Característica 14','Característica 14',14,14);
INSERT INTO `caracteristica_proceso` VALUES (58,'Característica 15','Característica 15',15,14);
INSERT INTO `caracteristica_proceso` VALUES (59,'Característica 16','Característica 16',16,14);
INSERT INTO `caracteristica_proceso` VALUES (60,'Característica 17','Característica 17',17,14);
INSERT INTO `caracteristica_proceso` VALUES (61,'Característica 18','Característica 18',18,15);
INSERT INTO `caracteristica_proceso` VALUES (62,'Característica 19','Característica 19',19,15);
INSERT INTO `caracteristica_proceso` VALUES (63,'Característica 20','Característica 20',20,15);
INSERT INTO `caracteristica_proceso` VALUES (64,'Característica 21','Característica 21',21,15);
INSERT INTO `caracteristica_proceso` VALUES (65,'Característica 22','Característica 22',22,15);
INSERT INTO `caracteristica_proceso` VALUES (66,'Característica 23','Característica 23',23,15);
INSERT INTO `caracteristica_proceso` VALUES (67,'Característica 24','Característica 24',24,15);
INSERT INTO `caracteristica_proceso` VALUES (68,'Característica 25','Característica 25',25,15);
INSERT INTO `caracteristica_proceso` VALUES (69,'Característica 26','Característica 26',26,15);
INSERT INTO `caracteristica_proceso` VALUES (70,'Característica 27','Característica 27',27,15);
INSERT INTO `caracteristica_proceso` VALUES (71,'Característica 28','Característica 28',28,15);
INSERT INTO `caracteristica_proceso` VALUES (72,'Característica 29','Característica 29',29,15);
INSERT INTO `caracteristica_proceso` VALUES (73,'Característica 30','Característica 30',30,15);
INSERT INTO `caracteristica_proceso` VALUES (74,'Característica 31','Característica 31',31,15);
INSERT INTO `caracteristica_proceso` VALUES (75,'Característica 32','Característica 32',32,16);
INSERT INTO `caracteristica_proceso` VALUES (76,'Característica 33','Característica 33',33,17);
INSERT INTO `caracteristica_proceso` VALUES (77,'Característica 34','Característica 34',34,17);
INSERT INTO `caracteristica_proceso` VALUES (78,'Característica 35','Característica 35',35,17);
INSERT INTO `caracteristica_proceso` VALUES (79,'Característica 36','Característica 36',36,17);
INSERT INTO `caracteristica_proceso` VALUES (80,'Característica 37','Característica 37',37,18);
INSERT INTO `caracteristica_proceso` VALUES (81,'Característica 38','Característica 38',38,18);
INSERT INTO `caracteristica_proceso` VALUES (82,'Característica 39','Característica 39',39,18);
INSERT INTO `caracteristica_proceso` VALUES (83,'Característica 40','Característica 40',40,19);
INSERT INTO `caracteristica_proceso` VALUES (84,'Característica 41','Característica 41',41,19);
INSERT INTO `caracteristica_proceso` VALUES (85,'Característica 42','Característica 42',42,19);
INSERT INTO `caracteristica_proceso` VALUES (86,'Característica 144','xxxx',144,23);
INSERT INTO `caracteristica_proceso` VALUES (87,'Característica 145','xxxs',145,24);
/*!40000 ALTER TABLE `caracteristica_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `codigo` varchar(20) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factor_proceso`
--

DROP TABLE IF EXISTS `factor_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factor_proceso` (
  `id_factor_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_proceso` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero_factor` int(11) NOT NULL,
  PRIMARY KEY (`id_factor_proceso`),
  KEY `id_proceso` (`id_proceso`),
  CONSTRAINT `factor_proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factor_proceso`
--

LOCK TABLES `factor_proceso` WRITE;
/*!40000 ALTER TABLE `factor_proceso` DISABLE KEYS */;
INSERT INTO `factor_proceso` VALUES (1,1,'MISIÓN, PROYECTO INSTITUCIONAL Y DE PROGRAMA','',1);
INSERT INTO `factor_proceso` VALUES (2,1,'ESTUDIANTES','',2);
INSERT INTO `factor_proceso` VALUES (3,1,'PROFESORES','',3);
INSERT INTO `factor_proceso` VALUES (4,1,'PROCESOS ACADÉMICOS\n','',4);
INSERT INTO `factor_proceso` VALUES (5,1,'VISIBILIDAD NACIONAL E INTERNACIONAL','',5);
INSERT INTO `factor_proceso` VALUES (6,1,'INVESTIGACIÓN Y CREACIÓN ARTÍSTICA Y CULTURAL.','',6);
INSERT INTO `factor_proceso` VALUES (7,1,'BIENESTAR INSTITUCIONAL','',7);
INSERT INTO `factor_proceso` VALUES (8,1,'ORGANIZACIÓN, ADMINISTRACIÓN Y GESTIÓN','',8);
INSERT INTO `factor_proceso` VALUES (9,1,'IMPACTO DE LOS EGRESADOS EN EL MEDIO','',9);
INSERT INTO `factor_proceso` VALUES (10,1,'RECURSOS FÍSICOS Y FINANCIEROS','',10);
INSERT INTO `factor_proceso` VALUES (11,2,'MISIÓN, PROYECTO INSTITUCIONAL Y DE PROGRAMA ','',1);
INSERT INTO `factor_proceso` VALUES (12,3,'MISIÓN, PROYECTO INSTITUCIONAL Y DE PROGRAMA ','',1);
INSERT INTO `factor_proceso` VALUES (13,3,'ESTUDIANTES','',2);
INSERT INTO `factor_proceso` VALUES (14,3,'PROFESORES','',3);
INSERT INTO `factor_proceso` VALUES (15,3,'PROCESOS ACADÉMICOS\n','',4);
INSERT INTO `factor_proceso` VALUES (16,3,'VISIBILIDAD NACIONAL E INTERNACIONAL','',5);
INSERT INTO `factor_proceso` VALUES (17,3,'INVESTIGACIÓN Y CREACIÓN ARTÍSTICA Y CULTURAL.','',6);
INSERT INTO `factor_proceso` VALUES (18,3,'BIENESTAR INSTITUCIONAL','',7);
INSERT INTO `factor_proceso` VALUES (19,3,'ORGANIZACIÓN, ADMINISTRACIÓN Y GESTIÓN','',8);
INSERT INTO `factor_proceso` VALUES (20,3,'IMPACTO DE LOS EGRESADOS EN EL MEDIO','',9);
INSERT INTO `factor_proceso` VALUES (21,3,'RECURSOS FÍSICOS Y FINANCIEROS','',10);
INSERT INTO `factor_proceso` VALUES (23,1,'Factor Cultural','',15);
INSERT INTO `factor_proceso` VALUES (24,1,'factor x','',32);
/*!40000 ALTER TABLE `factor_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuente_proceso`
--

DROP TABLE IF EXISTS `fuente_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuente_proceso` (
  `id_fuente_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `enunciado` longtext NOT NULL,
  `id_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_fuente_proceso`),
  KEY `id_proceso` (`id_proceso`),
  CONSTRAINT `fuente_proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuente_proceso`
--

LOCK TABLES `fuente_proceso` WRITE;
/*!40000 ALTER TABLE `fuente_proceso` DISABLE KEYS */;
INSERT INTO `fuente_proceso` VALUES (1,'Estudiantes','','Este es el enunciado del cuestionario de estudiantes...',1);
INSERT INTO `fuente_proceso` VALUES (2,'Profesores','','enunciado para profesores...',1);
INSERT INTO `fuente_proceso` VALUES (3,'Administrativos','','preguntas para administrativos',1);
INSERT INTO `fuente_proceso` VALUES (4,'Directivos','','',1);
INSERT INTO `fuente_proceso` VALUES (5,'Directivos','','',3);
INSERT INTO `fuente_proceso` VALUES (6,'Estudiantes','','otra cosa',3);
INSERT INTO `fuente_proceso` VALUES (7,'Profesores','','enunciado para profesores...',3);
INSERT INTO `fuente_proceso` VALUES (8,'Administrativos','','preguntas para administrativos',3);
/*!40000 ALTER TABLE `fuente_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `codCarrera` int(3) NOT NULL,
  `codMateria` varchar(50) NOT NULL,
  `Materia` varchar(255) NOT NULL,
  PRIMARY KEY (`codMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (23,'1440004','TRABAJO PEDAGO. COMUNIDADES EN CONDICION DE DESPLAZAMIENTO');
INSERT INTO `materia` VALUES (23,'1443139','ASTRONOMIA GENERAL');
INSERT INTO `materia` VALUES (23,'1443148','MECANICA I');
INSERT INTO `materia` VALUES (23,'1443149','CALCULO DIFERENCIAL');
INSERT INTO `materia` VALUES (23,'1443150','COMPETENCIAS COMUNICATIVAS');
INSERT INTO `materia` VALUES (23,'1443151','EDUCACION EN CIENCIAS');
INSERT INTO `materia` VALUES (23,'1443152','MECANICA II');
INSERT INTO `materia` VALUES (23,'1443153','CALCULO INTEGRAL');
INSERT INTO `materia` VALUES (23,'1443154','ALGEBRA LINEAL');
INSERT INTO `materia` VALUES (23,'1443155','CIENCIA, CULTURA Y DESARROLLO');
INSERT INTO `materia` VALUES (23,'1443156','ELECTROMAGNETISMO I');
INSERT INTO `materia` VALUES (23,'1443157','TERMODINAMICA');
INSERT INTO `materia` VALUES (23,'1443158','CALCULO VECTORIAL');
INSERT INTO `materia` VALUES (23,'1443159','POLITICAS EDUCATIVAS');
INSERT INTO `materia` VALUES (23,'1443160','ELECTROMAGNETISMO II');
INSERT INTO `materia` VALUES (23,'1443161','FISICA DE ONDAS');
INSERT INTO `materia` VALUES (23,'1443162','ECUACIONES DIFERENCIALES');
INSERT INTO `materia` VALUES (23,'1443163','PROGRAMACION DE COMPUTADORES I');
INSERT INTO `materia` VALUES (23,'1443164','PEDAGOGIA Y ENFOQUES COGNITIVOS');
INSERT INTO `materia` VALUES (23,'1443165','MECANICA CUANTICA');
INSERT INTO `materia` VALUES (23,'1443166','LABORATORIO DE FISICA MODERNA');
INSERT INTO `materia` VALUES (23,'1443167','GEOMETRIA Y FISICA');
INSERT INTO `materia` VALUES (23,'1443168','PROGRAMACION DE COMPUTADORES II');
INSERT INTO `materia` VALUES (23,'1443169','SEMINARIO DE IDIOMA EXTRANGERO');
INSERT INTO `materia` VALUES (23,'1443170','RELATIVIDAD');
INSERT INTO `materia` VALUES (23,'1443171','FISICA ESTADISTICA');
INSERT INTO `materia` VALUES (23,'1443172','METODOS COMPUTACIONALES EN LA FISICA');
INSERT INTO `materia` VALUES (23,'1443173','PROYECTO EDUCATIVO Y CURRICULO');
INSERT INTO `materia` VALUES (23,'1443174','COLOQUIO I');
INSERT INTO `materia` VALUES (23,'1443175','ENSE?ANZA DE LAS CIENCIAS');
INSERT INTO `materia` VALUES (23,'1443176','SEMINARIO DE INVESTIGACION I');
INSERT INTO `materia` VALUES (23,'1443177','PRACTICA PEDAGOGICA I');
INSERT INTO `materia` VALUES (23,'1443178','ENSE?ANZA DE LA FISICA');
INSERT INTO `materia` VALUES (23,'1443179','SEMINARIO DE INVESTIGACION II');
INSERT INTO `materia` VALUES (23,'1443180','PRACTICA PEDAGOGICA II');
INSERT INTO `materia` VALUES (23,'1443181','COLOQUIO II');
INSERT INTO `materia` VALUES (23,'1443182','SEMINARIO DE INVESTIGACION III');
INSERT INTO `materia` VALUES (23,'1443183','PRACTICA PEDAGOGICA III');
INSERT INTO `materia` VALUES (23,'1443184','TRABAJO DE GRADO');
INSERT INTO `materia` VALUES (23,'1443185','HISTORIA Y FILOSOFIA DE LAS CIENCIAS');
INSERT INTO `materia` VALUES (23,'1443186','SEMINARIO DE INVESTIGACION IV');
INSERT INTO `materia` VALUES (23,'1443187','PRACTICA PEDAGOGICA IV');
INSERT INTO `materia` VALUES (23,'1443188','COLOQUIO III');
INSERT INTO `materia` VALUES (23,'1443192','PROBL. CONTEM. EN EDUC.');
INSERT INTO `materia` VALUES (23,'1443195','SISTEMAS,INVAR.Y TEOR. MODER. DE LA FIS.');
INSERT INTO `materia` VALUES (23,'1443198','INST.,LA MED. EN LA FIS.Y EL PAP. DE COM');
INSERT INTO `materia` VALUES (23,'1443202','AMBIENTE DE LAS CIENCIAS');
INSERT INTO `materia` VALUES (23,'1443209','TEORIAS DEL ETER');
INSERT INTO `materia` VALUES (23,'1443220','MECANICA CUANTICA II');
INSERT INTO `materia` VALUES (23,'1443230','INTERFACES');
INSERT INTO `materia` VALUES (23,'1443235','ELECTROMAGNETISMO AVANZADO');
INSERT INTO `materia` VALUES (23,'1443239','TALLER DE MATEMATICAS');
INSERT INTO `materia` VALUES (23,'1443240','TALLER DE MECANICA');
INSERT INTO `materia` VALUES (23,'1443241','INGLES I');
INSERT INTO `materia` VALUES (23,'1443242','INGLES II');
INSERT INTO `materia` VALUES (23,'1443243','INTRODUCCION A LA FISICA NUCLEAR');
INSERT INTO `materia` VALUES (23,'1443244','CIENCIA Y TECNOLOGIA PARA LA FORMACION CIUDADADANA');
INSERT INTO `materia` VALUES (23,'1443245','DERECHOS HUMANOS Y DERECHO INTERNACIONAL HUMANITARIO');
INSERT INTO `materia` VALUES (23,'1443246','PROCESOS ESCRITURALES EN EL AMBITO DE LA CIENCIA Y LA TECNOL');
INSERT INTO `materia` VALUES (24,'1446001','PROYECTO DE GRADO');
INSERT INTO `materia` VALUES (24,'1446048','SISTEMAS CAD');
INSERT INTO `materia` VALUES (24,'1446049','GRAFICADORES ESPECIALES');
INSERT INTO `materia` VALUES (24,'1446050','ESTATICA Y DINAMICA');
INSERT INTO `materia` VALUES (24,'1446053','DISE?O TECNOLOGICO II');
INSERT INTO `materia` VALUES (24,'1446061','DISE?O TECNOLOGICO IV');
INSERT INTO `materia` VALUES (24,'1446062','DISE?O TECNOLOGICO V');
INSERT INTO `materia` VALUES (24,'1446075','PROYECTO DE GRADO');
INSERT INTO `materia` VALUES (24,'1446114','CIRCUITOS I');
INSERT INTO `materia` VALUES (24,'1446115','CIRCUITOS II');
INSERT INTO `materia` VALUES (24,'1446116','CIRCUITOS III');
INSERT INTO `materia` VALUES (24,'1446118','DISE?O DIGITAL I');
INSERT INTO `materia` VALUES (24,'1446119','DISE?O DIGITAL II');
INSERT INTO `materia` VALUES (24,'1446120','DISE?O DIGITAL III');
INSERT INTO `materia` VALUES (24,'1446125','SISTEMAS COMUNICACION III');
INSERT INTO `materia` VALUES (24,'1446126','SISTEMAS DE CONTROL I');
INSERT INTO `materia` VALUES (24,'1446127','SISTEMAS DE CONTROL II');
INSERT INTO `materia` VALUES (24,'1446128','SISTEMAS DE CONTROL III');
INSERT INTO `materia` VALUES (24,'1446139','TECNOLOGIA Y CIENCIA');
INSERT INTO `materia` VALUES (24,'1446161','EDUCACION Y SOCIEDAD');
INSERT INTO `materia` VALUES (24,'1446164','PEDAGOGIA Y PSICOLOGIA');
INSERT INTO `materia` VALUES (24,'1446165','PEDAGOGIA Y CONOCIMIENTO');
INSERT INTO `materia` VALUES (24,'1446184','HABILIDADES COMUNICATIVAS');
INSERT INTO `materia` VALUES (24,'1446236','DISE?O Y CREACION DE AMBIENTES E - LEARNING');
INSERT INTO `materia` VALUES (24,'1446237','MODERACION Y GESTION DE AMBIENTES E LEARNING');
INSERT INTO `materia` VALUES (24,'1446238','EXPRESION GRAFICA I');
INSERT INTO `materia` VALUES (24,'1446239','MATEMATICA I');
INSERT INTO `materia` VALUES (24,'1446240','FUNDAMENTOS DE TECNOLOGIA II');
INSERT INTO `materia` VALUES (24,'1446241','EXPRESION GRAFICA II');
INSERT INTO `materia` VALUES (24,'1446242','MATEMATICAS II');
INSERT INTO `materia` VALUES (24,'1446243','FISICA I');
INSERT INTO `materia` VALUES (24,'1446244','EDUCACION ECONOMIA  Y POLITICA');
INSERT INTO `materia` VALUES (24,'1446245','TEORIA Y METODOS DEL DISE?O');
INSERT INTO `materia` VALUES (24,'1446246','EXPRESION GRAFICA III');
INSERT INTO `materia` VALUES (24,'1446247','MATEMATICA III');
INSERT INTO `materia` VALUES (24,'1446248','FISICA II');
INSERT INTO `materia` VALUES (24,'1446249','DISE?O TECNOLOGICO I');
INSERT INTO `materia` VALUES (24,'1446250','MATEMATICAS IV');
INSERT INTO `materia` VALUES (24,'1446251','MATERIALES Y PROCESOS I');
INSERT INTO `materia` VALUES (24,'1446252','INFORMATICA I');
INSERT INTO `materia` VALUES (24,'1446253','TEORIAS Y MODELOS PEDAGOGICOS');
INSERT INTO `materia` VALUES (24,'1446254','DISE?O TECNOLOGICO III');
INSERT INTO `materia` VALUES (24,'1446255','MATERIALES Y PROCESOS II');
INSERT INTO `materia` VALUES (24,'1446256','INFORMATICA II');
INSERT INTO `materia` VALUES (24,'1446257','INFORMATICA III');
INSERT INTO `materia` VALUES (24,'1446258','SEMINARIO DE INVESTIGACION I');
INSERT INTO `materia` VALUES (24,'1446259','SEMINARIO DE PRACTICA EDUCATIVA');
INSERT INTO `materia` VALUES (24,'1446260','INGLES I');
INSERT INTO `materia` VALUES (24,'1446261','SEMINARIO DE INVESTIGACI0N II');
INSERT INTO `materia` VALUES (24,'1446262','PRACTICA EDUCATIVA I');
INSERT INTO `materia` VALUES (24,'1446263','DISE?O TECNOLOGICO VI');
INSERT INTO `materia` VALUES (24,'1446264','OPTATIVA PROFESIONAL I');
INSERT INTO `materia` VALUES (24,'1446265','INGLES II');
INSERT INTO `materia` VALUES (24,'1446266','TRABAJO DE GRADO');
INSERT INTO `materia` VALUES (24,'1446268','PRACTICA EDUCATIVA II');
INSERT INTO `materia` VALUES (24,'1446271','ETICA PROFESIONAL');
INSERT INTO `materia` VALUES (24,'1446272','TECNOLOGIA Y SOCIEDAD');
INSERT INTO `materia` VALUES (24,'1446273','PRACTICA EDUCATIVA III');
INSERT INTO `materia` VALUES (25,'1446276','DISE?O ELECTRONICO I');
INSERT INTO `materia` VALUES (25,'1446277','DISE?O ELECTRONICO III');
INSERT INTO `materia` VALUES (25,'1446278','INTRODUCCION A LA FISICA MODERNA');
INSERT INTO `materia` VALUES (25,'1446279','CIRCUITOS IV');
INSERT INTO `materia` VALUES (24,'1446280','FUNDAMENTOS DE TECNOLOGIA I');
INSERT INTO `materia` VALUES (25,'1446281','INSTRUMENTACION ELECTRONICA');
INSERT INTO `materia` VALUES (25,'1446282','SEMINARIO PRACTICA PEDAGOGICA');
INSERT INTO `materia` VALUES (25,'1446283','SISTEMAS DE COMUNICACIONES I');
INSERT INTO `materia` VALUES (25,'1446284','PEDAGOGIA Y DIDACTICA DE LA TECNOLOGIA');
INSERT INTO `materia` VALUES (25,'1446286','ETICA PROFESIONAL');
INSERT INTO `materia` VALUES (25,'1446287','OPTATIVA PROFESIONAL II');
INSERT INTO `materia` VALUES (25,'1446288','DISE?O ELECTRONICO II');
INSERT INTO `materia` VALUES (25,'1446289','ELECTRONICA DE POTENCIA');
INSERT INTO `materia` VALUES (25,'1446290','OPTATIVA PROFESIONAL I');
INSERT INTO `materia` VALUES (25,'1446300','CURSO DE PROGRAMACION CON MATLAB');
INSERT INTO `materia` VALUES (25,'1446302','INSTRUMENTACION Y ROBOTICA PARA EXPERIMENTACION EN CIENCIAS');
INSERT INTO `materia` VALUES (25,'1446303','ROBOTICA ESCOLAR');
INSERT INTO `materia` VALUES (25,'1446304','DISE?O DE VIDEO JUEGOS Y AMBIENTES 3D ORIENTADOS A LA EDUCAC');
INSERT INTO `materia` VALUES (25,'1446305','RURALIDAD CIENCIA Y TECNOLOGIA');
INSERT INTO `materia` VALUES (24,'1446307','EDUCACION AEROESPACIAL I');
INSERT INTO `materia` VALUES (25,'1446308','EL MUNDO TECNICO PREHISPANO');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_respuesta`
--

DROP TABLE IF EXISTS `opciones_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_respuesta` (
  `id_opcion` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  `valor` int(11) NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`),
  CONSTRAINT `opciones_respuesta_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_respuesta`
--

LOCK TABLES `opciones_respuesta` WRITE;
/*!40000 ALTER TABLE `opciones_respuesta` DISABLE KEYS */;
INSERT INTO `opciones_respuesta` VALUES (1,'Totalmente de acuerdo',5,1);
INSERT INTO `opciones_respuesta` VALUES (2,'De acuerdo',4,1);
INSERT INTO `opciones_respuesta` VALUES (3,'Indeciso',3,1);
INSERT INTO `opciones_respuesta` VALUES (4,'En desacuerdo',2,1);
INSERT INTO `opciones_respuesta` VALUES (5,'Totalmente en Desacuerdo',1,1);
/*!40000 ALTER TABLE `opciones_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_fuente_proceso`
--

DROP TABLE IF EXISTS `pregunta_fuente_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_fuente_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_fuente_proceso` int(11) NOT NULL,
  `orden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pregunta_proceso`,`id_fuente_proceso`),
  KEY `id_fuente_proceso` (`id_fuente_proceso`),
  CONSTRAINT `pregunta_fuente_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`),
  CONSTRAINT `pregunta_fuente_proceso_ibfk_2` FOREIGN KEY (`id_fuente_proceso`) REFERENCES `fuente_proceso` (`id_fuente_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_fuente_proceso`
--

LOCK TABLES `pregunta_fuente_proceso` WRITE;
/*!40000 ALTER TABLE `pregunta_fuente_proceso` DISABLE KEYS */;
INSERT INTO `pregunta_fuente_proceso` VALUES (1,2,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (2,1,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (2,3,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (6,1,1);
INSERT INTO `pregunta_fuente_proceso` VALUES (6,2,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (6,3,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (7,2,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (7,3,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (8,2,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (8,3,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (11,2,0);
INSERT INTO `pregunta_fuente_proceso` VALUES (11,4,0);
/*!40000 ALTER TABLE `pregunta_fuente_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_proceso`
--

DROP TABLE IF EXISTS `pregunta_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `enunciado` longtext NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_pregunta_proceso`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`),
  KEY `id_proceso` (`id_proceso`),
  CONSTRAINT `pregunta_proceso_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`),
  CONSTRAINT `pregunta_proceso_ibfk_2` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_proceso`
--

LOCK TABLES `pregunta_proceso` WRITE;
/*!40000 ALTER TABLE `pregunta_proceso` DISABLE KEYS */;
INSERT INTO `pregunta_proceso` VALUES (1,'La Misión de INPAHU está en directa concordancia con la naturaleza de la Institución, su tradición, objetivos y logros académicos en la formación integral de personas autónomas, con espiritu emprendedor, actitud investigativa, capaces de adoptar, aplicar y transferir los conocimientos científicos, técnicos y tecnológicos a sus áreas de competencia, a las nuevas condiciones empresariales y a la realidad del país.',1,1);
INSERT INTO `pregunta_proceso` VALUES (2,'Los procesos académicos y administrativos de INPAHU están en coherencia con su Misión y son pertinentes para garantizar su desarrollo a cabalidad.',1,1);
INSERT INTO `pregunta_proceso` VALUES (6,'pregunta  22...',1,1);
INSERT INTO `pregunta_proceso` VALUES (7,'pregunta otra...',1,1);
INSERT INTO `pregunta_proceso` VALUES (8,'pregunta otra...2',1,1);
INSERT INTO `pregunta_proceso` VALUES (10,'La Misión de INPAHU está en directa concordancia con la naturaleza de la Institución, su tradición, objetivos y logros académicos en la formación integral de personas autónomas, con espiritu emprendedor, actitud investigativa, capaces de adoptar, aplicar y transferir los conocimientos científicos, técnicos y tecnológicos a sus áreas de competencia, a las nuevas condiciones empresariales y a la realidad del país.',1,2);
INSERT INTO `pregunta_proceso` VALUES (11,'Los procesos académicos y administrativos de INPAHU están en coherencia con su Misión y son pertinentes para garantizar su desarrollo a cabalidad.',1,2);
INSERT INTO `pregunta_proceso` VALUES (12,'pregunta...',1,2);
INSERT INTO `pregunta_proceso` VALUES (15,'pregunta otra 3...',1,2);
INSERT INTO `pregunta_proceso` VALUES (16,'La Misión de INPAHU está en directa concordancia con la naturaleza de la Institución, su tradición, objetivos y logros académicos en la formación integral de personas autónomas, con espiritu emprendedor, actitud investigativa, capaces de adoptar, aplicar y transferir los conocimientos científicos, técnicos y tecnológicos a sus áreas de competencia, a las nuevas condiciones empresariales y a la realidad del país.',1,3);
INSERT INTO `pregunta_proceso` VALUES (17,'Los procesos académicos y administrativos de INPAHU están en coherencia con su Misión y son pertinentes para garantizar su desarrollo a cabalidad.',1,3);
INSERT INTO `pregunta_proceso` VALUES (18,'pregunta...',1,3);
INSERT INTO `pregunta_proceso` VALUES (19,'pregunta otra...',1,3);
INSERT INTO `pregunta_proceso` VALUES (20,'pregunta otra...2',1,3);
INSERT INTO `pregunta_proceso` VALUES (21,'pregunta otra 3...',1,3);
/*!40000 ALTER TABLE `pregunta_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso` (
  `id_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_tipo_proceso` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id_proceso`),
  KEY `id_tipo_proceso` (`id_tipo_proceso`),
  CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`id_tipo_proceso`) REFERENCES `tipo_proceso` (`id_tipo_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'2013-10-12','2014-02-15',1,'Proceso de prueba');
INSERT INTO `proceso` VALUES (2,'2013-11-08','2013-11-23',1,'yyyy');
INSERT INTO `proceso` VALUES (3,'2013-11-08','2014-10-31',1,'zzz');
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa` (
  `codPrograma` int(3) NOT NULL,
  `programa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta` (
  `id_usuario_proceso` int(11) NOT NULL,
  `id_fuente_proceso` int(11) NOT NULL,
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_proceso`,`id_fuente_proceso`,`id_pregunta_proceso`),
  KEY `id_fuente_proceso` (`id_fuente_proceso`),
  KEY `id_pregunta_proceso` (`id_pregunta_proceso`),
  KEY `id_opcion` (`id_opcion`),
  CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_usuario_proceso`) REFERENCES `usuario_fuente_proceso` (`id_usuario_proceso`),
  CONSTRAINT `respuesta_ibfk_2` FOREIGN KEY (`id_fuente_proceso`) REFERENCES `fuente_proceso` (`id_fuente_proceso`),
  CONSTRAINT `respuesta_ibfk_3` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`),
  CONSTRAINT `respuesta_ibfk_4` FOREIGN KEY (`id_opcion`) REFERENCES `opciones_respuesta` (`id_opcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (91628692,1,6,1);
INSERT INTO `respuesta` VALUES (91628692,2,1,1);
INSERT INTO `respuesta` VALUES (91628692,2,11,1);
INSERT INTO `respuesta` VALUES (91628692,3,6,1);
INSERT INTO `respuesta` VALUES (91628692,3,8,1);
INSERT INTO `respuesta` VALUES (91628693,2,1,1);
INSERT INTO `respuesta` VALUES (91628693,3,2,1);
INSERT INTO `respuesta` VALUES (91628693,3,6,1);
INSERT INTO `respuesta` VALUES (91628694,2,11,1);
INSERT INTO `respuesta` VALUES (91628694,3,7,1);
INSERT INTO `respuesta` VALUES (91628696,1,2,1);
INSERT INTO `respuesta` VALUES (91628696,1,6,1);
INSERT INTO `respuesta` VALUES (91628696,2,6,1);
INSERT INTO `respuesta` VALUES (91628696,2,7,1);
INSERT INTO `respuesta` VALUES (91628696,2,11,1);
INSERT INTO `respuesta` VALUES (91628696,3,2,1);
INSERT INTO `respuesta` VALUES (91628697,1,6,1);
INSERT INTO `respuesta` VALUES (91628698,2,8,1);
INSERT INTO `respuesta` VALUES (91628698,3,8,1);
INSERT INTO `respuesta` VALUES (91628699,1,6,1);
INSERT INTO `respuesta` VALUES (91628700,1,2,1);
INSERT INTO `respuesta` VALUES (91628700,2,11,1);
INSERT INTO `respuesta` VALUES (91628701,2,7,1);
INSERT INTO `respuesta` VALUES (91628701,2,11,1);
INSERT INTO `respuesta` VALUES (91628702,2,11,1);
INSERT INTO `respuesta` VALUES (91628702,3,6,1);
INSERT INTO `respuesta` VALUES (91628702,3,7,1);
INSERT INTO `respuesta` VALUES (91628705,2,7,1);
INSERT INTO `respuesta` VALUES (91628705,2,11,1);
INSERT INTO `respuesta` VALUES (91628705,3,7,1);
INSERT INTO `respuesta` VALUES (91628706,1,6,1);
INSERT INTO `respuesta` VALUES (91628706,2,8,1);
INSERT INTO `respuesta` VALUES (91628706,2,11,1);
INSERT INTO `respuesta` VALUES (91628706,3,6,1);
INSERT INTO `respuesta` VALUES (91628708,1,2,1);
INSERT INTO `respuesta` VALUES (91628708,2,1,1);
INSERT INTO `respuesta` VALUES (91628708,2,11,1);
INSERT INTO `respuesta` VALUES (91628708,3,7,1);
INSERT INTO `respuesta` VALUES (91628709,3,7,1);
INSERT INTO `respuesta` VALUES (91628709,3,8,1);
INSERT INTO `respuesta` VALUES (91628710,1,2,1);
INSERT INTO `respuesta` VALUES (91628710,1,6,1);
INSERT INTO `respuesta` VALUES (91628710,2,1,1);
INSERT INTO `respuesta` VALUES (91628710,3,2,1);
INSERT INTO `respuesta` VALUES (91628711,1,6,1);
INSERT INTO `respuesta` VALUES (91628711,2,1,1);
INSERT INTO `respuesta` VALUES (91628712,1,2,1);
INSERT INTO `respuesta` VALUES (91628712,1,6,1);
INSERT INTO `respuesta` VALUES (91628712,2,1,1);
INSERT INTO `respuesta` VALUES (91628712,3,2,1);
INSERT INTO `respuesta` VALUES (91628712,3,6,1);
INSERT INTO `respuesta` VALUES (91628712,3,7,1);
INSERT INTO `respuesta` VALUES (91628713,1,2,1);
INSERT INTO `respuesta` VALUES (91628713,2,1,1);
INSERT INTO `respuesta` VALUES (91628713,2,6,1);
INSERT INTO `respuesta` VALUES (91628713,3,8,1);
INSERT INTO `respuesta` VALUES (91628714,2,7,1);
INSERT INTO `respuesta` VALUES (91628714,2,11,1);
INSERT INTO `respuesta` VALUES (91628715,2,1,1);
INSERT INTO `respuesta` VALUES (91628715,2,6,1);
INSERT INTO `respuesta` VALUES (91628715,3,2,1);
INSERT INTO `respuesta` VALUES (91628716,1,2,1);
INSERT INTO `respuesta` VALUES (91628716,3,2,1);
INSERT INTO `respuesta` VALUES (91628717,2,7,1);
INSERT INTO `respuesta` VALUES (91628718,2,7,1);
INSERT INTO `respuesta` VALUES (91628718,3,2,1);
INSERT INTO `respuesta` VALUES (91628718,3,6,1);
INSERT INTO `respuesta` VALUES (91628718,3,7,1);
INSERT INTO `respuesta` VALUES (91628718,3,8,1);
INSERT INTO `respuesta` VALUES (91628719,1,2,1);
INSERT INTO `respuesta` VALUES (91628719,2,11,1);
INSERT INTO `respuesta` VALUES (91628720,2,1,1);
INSERT INTO `respuesta` VALUES (91628720,2,7,1);
INSERT INTO `respuesta` VALUES (91628720,2,8,1);
INSERT INTO `respuesta` VALUES (91628720,3,7,1);
INSERT INTO `respuesta` VALUES (91628720,3,8,1);
INSERT INTO `respuesta` VALUES (91628721,1,2,1);
INSERT INTO `respuesta` VALUES (91628721,2,1,1);
INSERT INTO `respuesta` VALUES (91628721,2,7,1);
INSERT INTO `respuesta` VALUES (91628721,2,8,1);
INSERT INTO `respuesta` VALUES (91628721,2,11,1);
INSERT INTO `respuesta` VALUES (91628721,3,7,1);
INSERT INTO `respuesta` VALUES (91628722,2,11,1);
INSERT INTO `respuesta` VALUES (91628723,2,7,1);
INSERT INTO `respuesta` VALUES (91628723,3,2,1);
INSERT INTO `respuesta` VALUES (91628723,3,6,1);
INSERT INTO `respuesta` VALUES (91628723,3,8,1);
INSERT INTO `respuesta` VALUES (91628724,1,2,1);
INSERT INTO `respuesta` VALUES (91628724,1,6,1);
INSERT INTO `respuesta` VALUES (91628724,2,6,1);
INSERT INTO `respuesta` VALUES (91628724,2,7,1);
INSERT INTO `respuesta` VALUES (91628724,3,6,1);
INSERT INTO `respuesta` VALUES (91628725,1,6,1);
INSERT INTO `respuesta` VALUES (91628725,2,11,1);
INSERT INTO `respuesta` VALUES (91628725,3,2,1);
INSERT INTO `respuesta` VALUES (91628725,3,7,1);
INSERT INTO `respuesta` VALUES (91628725,3,8,1);
INSERT INTO `respuesta` VALUES (91628726,1,2,1);
INSERT INTO `respuesta` VALUES (91628726,2,11,1);
INSERT INTO `respuesta` VALUES (91628726,3,2,1);
INSERT INTO `respuesta` VALUES (91628727,3,2,1);
INSERT INTO `respuesta` VALUES (91628728,3,6,1);
INSERT INTO `respuesta` VALUES (91628729,2,6,1);
INSERT INTO `respuesta` VALUES (91628729,2,11,1);
INSERT INTO `respuesta` VALUES (91628729,3,6,1);
INSERT INTO `respuesta` VALUES (91628730,2,6,1);
INSERT INTO `respuesta` VALUES (91628731,2,7,1);
INSERT INTO `respuesta` VALUES (91628731,3,7,1);
INSERT INTO `respuesta` VALUES (91628732,2,7,1);
INSERT INTO `respuesta` VALUES (91628733,1,6,1);
INSERT INTO `respuesta` VALUES (91628733,2,6,1);
INSERT INTO `respuesta` VALUES (91628734,2,6,1);
INSERT INTO `respuesta` VALUES (91628735,2,1,1);
INSERT INTO `respuesta` VALUES (91628736,2,7,1);
INSERT INTO `respuesta` VALUES (91628736,2,8,1);
INSERT INTO `respuesta` VALUES (91628736,2,11,1);
INSERT INTO `respuesta` VALUES (91628738,1,2,1);
INSERT INTO `respuesta` VALUES (91628738,1,6,1);
INSERT INTO `respuesta` VALUES (91628738,2,6,1);
INSERT INTO `respuesta` VALUES (91628739,1,2,1);
INSERT INTO `respuesta` VALUES (91628739,1,6,1);
INSERT INTO `respuesta` VALUES (91628739,2,8,1);
INSERT INTO `respuesta` VALUES (91628739,3,2,1);
INSERT INTO `respuesta` VALUES (91628740,1,2,1);
INSERT INTO `respuesta` VALUES (91628740,2,7,1);
INSERT INTO `respuesta` VALUES (91628740,3,8,1);
INSERT INTO `respuesta` VALUES (91628741,3,8,1);
INSERT INTO `respuesta` VALUES (91628742,1,2,1);
INSERT INTO `respuesta` VALUES (91628743,2,8,1);
INSERT INTO `respuesta` VALUES (91628743,3,7,1);
INSERT INTO `respuesta` VALUES (91628744,1,2,1);
INSERT INTO `respuesta` VALUES (91628744,2,8,1);
INSERT INTO `respuesta` VALUES (91628744,3,6,1);
INSERT INTO `respuesta` VALUES (91628744,3,7,1);
INSERT INTO `respuesta` VALUES (91628745,1,2,1);
INSERT INTO `respuesta` VALUES (91628745,2,1,1);
INSERT INTO `respuesta` VALUES (91628745,2,8,1);
INSERT INTO `respuesta` VALUES (91628745,3,7,1);
INSERT INTO `respuesta` VALUES (91628747,1,6,1);
INSERT INTO `respuesta` VALUES (91628747,2,7,1);
INSERT INTO `respuesta` VALUES (91628747,3,6,1);
INSERT INTO `respuesta` VALUES (91628747,3,8,1);
INSERT INTO `respuesta` VALUES (91628748,2,6,1);
INSERT INTO `respuesta` VALUES (91628748,3,6,1);
INSERT INTO `respuesta` VALUES (91628748,3,8,1);
INSERT INTO `respuesta` VALUES (91628749,1,2,1);
INSERT INTO `respuesta` VALUES (91628749,2,1,1);
INSERT INTO `respuesta` VALUES (91628749,2,7,1);
INSERT INTO `respuesta` VALUES (91628749,3,7,1);
INSERT INTO `respuesta` VALUES (91628749,3,8,1);
INSERT INTO `respuesta` VALUES (91628750,3,6,1);
INSERT INTO `respuesta` VALUES (91628750,3,7,1);
INSERT INTO `respuesta` VALUES (91628751,1,6,1);
INSERT INTO `respuesta` VALUES (91628751,2,1,1);
INSERT INTO `respuesta` VALUES (91628751,2,8,1);
INSERT INTO `respuesta` VALUES (91628752,2,8,1);
INSERT INTO `respuesta` VALUES (91628754,3,8,1);
INSERT INTO `respuesta` VALUES (91628755,1,2,1);
INSERT INTO `respuesta` VALUES (91628755,2,11,1);
INSERT INTO `respuesta` VALUES (91628757,2,8,1);
INSERT INTO `respuesta` VALUES (91628758,1,2,1);
INSERT INTO `respuesta` VALUES (91628759,1,6,1);
INSERT INTO `respuesta` VALUES (91628759,3,8,1);
INSERT INTO `respuesta` VALUES (91628760,2,1,1);
INSERT INTO `respuesta` VALUES (91628760,2,11,1);
INSERT INTO `respuesta` VALUES (91628760,3,8,1);
INSERT INTO `respuesta` VALUES (91628761,2,11,1);
INSERT INTO `respuesta` VALUES (91628761,3,2,1);
INSERT INTO `respuesta` VALUES (91628761,3,6,1);
INSERT INTO `respuesta` VALUES (91628762,2,6,1);
INSERT INTO `respuesta` VALUES (91628762,2,7,1);
INSERT INTO `respuesta` VALUES (91628763,1,6,1);
INSERT INTO `respuesta` VALUES (91628763,3,6,1);
INSERT INTO `respuesta` VALUES (91628763,3,8,1);
INSERT INTO `respuesta` VALUES (91628765,2,8,1);
INSERT INTO `respuesta` VALUES (91628765,3,7,1);
INSERT INTO `respuesta` VALUES (91628765,3,8,1);
INSERT INTO `respuesta` VALUES (91628766,1,6,1);
INSERT INTO `respuesta` VALUES (91628766,2,1,1);
INSERT INTO `respuesta` VALUES (91628766,2,8,1);
INSERT INTO `respuesta` VALUES (91628766,2,11,1);
INSERT INTO `respuesta` VALUES (91628768,3,7,1);
INSERT INTO `respuesta` VALUES (91628768,3,8,1);
INSERT INTO `respuesta` VALUES (91628769,1,2,1);
INSERT INTO `respuesta` VALUES (91628769,2,7,1);
INSERT INTO `respuesta` VALUES (91628769,2,8,1);
INSERT INTO `respuesta` VALUES (91628769,3,8,1);
INSERT INTO `respuesta` VALUES (91628770,1,6,1);
INSERT INTO `respuesta` VALUES (91628770,2,11,1);
INSERT INTO `respuesta` VALUES (91628770,3,7,1);
INSERT INTO `respuesta` VALUES (91628770,3,8,1);
INSERT INTO `respuesta` VALUES (91628771,1,2,1);
INSERT INTO `respuesta` VALUES (91628771,2,1,1);
INSERT INTO `respuesta` VALUES (91628771,2,6,1);
INSERT INTO `respuesta` VALUES (91628771,2,7,1);
INSERT INTO `respuesta` VALUES (91628772,1,6,1);
INSERT INTO `respuesta` VALUES (91628772,3,7,1);
INSERT INTO `respuesta` VALUES (91628773,2,11,1);
INSERT INTO `respuesta` VALUES (91628773,3,2,1);
INSERT INTO `respuesta` VALUES (91628773,3,6,1);
INSERT INTO `respuesta` VALUES (91628774,2,1,1);
INSERT INTO `respuesta` VALUES (91628774,2,6,1);
INSERT INTO `respuesta` VALUES (91628775,2,6,1);
INSERT INTO `respuesta` VALUES (91628776,3,2,1);
INSERT INTO `respuesta` VALUES (91628777,2,8,1);
INSERT INTO `respuesta` VALUES (91628777,2,11,1);
INSERT INTO `respuesta` VALUES (91628777,3,2,1);
INSERT INTO `respuesta` VALUES (91628778,3,2,1);
INSERT INTO `respuesta` VALUES (91628778,3,6,1);
INSERT INTO `respuesta` VALUES (91628779,1,2,1);
INSERT INTO `respuesta` VALUES (91628779,2,7,1);
INSERT INTO `respuesta` VALUES (91628779,2,8,1);
INSERT INTO `respuesta` VALUES (91628780,1,2,1);
INSERT INTO `respuesta` VALUES (91628780,2,1,1);
INSERT INTO `respuesta` VALUES (91628781,2,11,1);
INSERT INTO `respuesta` VALUES (91628781,3,6,1);
INSERT INTO `respuesta` VALUES (91628781,3,8,1);
INSERT INTO `respuesta` VALUES (91628782,2,7,1);
INSERT INTO `respuesta` VALUES (91628783,2,6,1);
INSERT INTO `respuesta` VALUES (91628783,2,8,1);
INSERT INTO `respuesta` VALUES (91628783,2,11,1);
INSERT INTO `respuesta` VALUES (91628783,3,2,1);
INSERT INTO `respuesta` VALUES (91628783,3,7,1);
INSERT INTO `respuesta` VALUES (91628784,1,6,1);
INSERT INTO `respuesta` VALUES (91628784,2,7,1);
INSERT INTO `respuesta` VALUES (91628786,2,7,1);
INSERT INTO `respuesta` VALUES (91628786,2,11,1);
INSERT INTO `respuesta` VALUES (91628787,1,2,1);
INSERT INTO `respuesta` VALUES (91628787,3,7,1);
INSERT INTO `respuesta` VALUES (91628788,3,2,1);
INSERT INTO `respuesta` VALUES (91628789,2,1,1);
INSERT INTO `respuesta` VALUES (91628789,3,8,1);
INSERT INTO `respuesta` VALUES (91628790,1,2,1);
INSERT INTO `respuesta` VALUES (91628790,3,6,1);
INSERT INTO `respuesta` VALUES (91628790,3,8,1);
INSERT INTO `respuesta` VALUES (79628676,1,2,2);
INSERT INTO `respuesta` VALUES (91628691,2,6,2);
INSERT INTO `respuesta` VALUES (91628691,2,11,2);
INSERT INTO `respuesta` VALUES (91628691,3,6,2);
INSERT INTO `respuesta` VALUES (91628691,3,7,2);
INSERT INTO `respuesta` VALUES (91628692,2,7,2);
INSERT INTO `respuesta` VALUES (91628693,2,6,2);
INSERT INTO `respuesta` VALUES (91628693,3,7,2);
INSERT INTO `respuesta` VALUES (91628694,1,2,2);
INSERT INTO `respuesta` VALUES (91628694,2,6,2);
INSERT INTO `respuesta` VALUES (91628695,2,1,2);
INSERT INTO `respuesta` VALUES (91628696,3,7,2);
INSERT INTO `respuesta` VALUES (91628697,3,8,2);
INSERT INTO `respuesta` VALUES (91628698,1,6,2);
INSERT INTO `respuesta` VALUES (91628698,2,11,2);
INSERT INTO `respuesta` VALUES (91628698,3,2,2);
INSERT INTO `respuesta` VALUES (91628699,1,2,2);
INSERT INTO `respuesta` VALUES (91628699,2,6,2);
INSERT INTO `respuesta` VALUES (91628699,2,11,2);
INSERT INTO `respuesta` VALUES (91628699,3,6,2);
INSERT INTO `respuesta` VALUES (91628700,2,6,2);
INSERT INTO `respuesta` VALUES (91628700,3,2,2);
INSERT INTO `respuesta` VALUES (91628700,3,6,2);
INSERT INTO `respuesta` VALUES (91628701,1,2,2);
INSERT INTO `respuesta` VALUES (91628701,3,2,2);
INSERT INTO `respuesta` VALUES (91628701,3,8,2);
INSERT INTO `respuesta` VALUES (91628702,2,6,2);
INSERT INTO `respuesta` VALUES (91628702,2,7,2);
INSERT INTO `respuesta` VALUES (91628703,1,6,2);
INSERT INTO `respuesta` VALUES (91628703,2,11,2);
INSERT INTO `respuesta` VALUES (91628704,3,2,2);
INSERT INTO `respuesta` VALUES (91628705,2,1,2);
INSERT INTO `respuesta` VALUES (91628705,3,6,2);
INSERT INTO `respuesta` VALUES (91628706,1,2,2);
INSERT INTO `respuesta` VALUES (91628707,1,2,2);
INSERT INTO `respuesta` VALUES (91628707,2,11,2);
INSERT INTO `respuesta` VALUES (91628707,3,2,2);
INSERT INTO `respuesta` VALUES (91628708,2,6,2);
INSERT INTO `respuesta` VALUES (91628708,2,8,2);
INSERT INTO `respuesta` VALUES (91628709,2,8,2);
INSERT INTO `respuesta` VALUES (91628709,3,2,2);
INSERT INTO `respuesta` VALUES (91628710,2,7,2);
INSERT INTO `respuesta` VALUES (91628710,3,6,2);
INSERT INTO `respuesta` VALUES (91628711,1,2,2);
INSERT INTO `respuesta` VALUES (91628711,2,6,2);
INSERT INTO `respuesta` VALUES (91628711,2,8,2);
INSERT INTO `respuesta` VALUES (91628711,2,11,2);
INSERT INTO `respuesta` VALUES (91628711,3,6,2);
INSERT INTO `respuesta` VALUES (91628711,3,8,2);
INSERT INTO `respuesta` VALUES (91628713,3,2,2);
INSERT INTO `respuesta` VALUES (91628713,3,6,2);
INSERT INTO `respuesta` VALUES (91628714,1,6,2);
INSERT INTO `respuesta` VALUES (91628714,3,2,2);
INSERT INTO `respuesta` VALUES (91628715,3,7,2);
INSERT INTO `respuesta` VALUES (91628716,2,7,2);
INSERT INTO `respuesta` VALUES (91628716,3,6,2);
INSERT INTO `respuesta` VALUES (91628716,3,8,2);
INSERT INTO `respuesta` VALUES (91628717,2,11,2);
INSERT INTO `respuesta` VALUES (91628717,3,2,2);
INSERT INTO `respuesta` VALUES (91628718,2,1,2);
INSERT INTO `respuesta` VALUES (91628718,2,8,2);
INSERT INTO `respuesta` VALUES (91628718,2,11,2);
INSERT INTO `respuesta` VALUES (91628719,2,6,2);
INSERT INTO `respuesta` VALUES (91628719,3,2,2);
INSERT INTO `respuesta` VALUES (91628719,3,7,2);
INSERT INTO `respuesta` VALUES (91628720,3,6,2);
INSERT INTO `respuesta` VALUES (91628721,2,6,2);
INSERT INTO `respuesta` VALUES (91628722,1,6,2);
INSERT INTO `respuesta` VALUES (91628723,2,11,2);
INSERT INTO `respuesta` VALUES (91628723,3,7,2);
INSERT INTO `respuesta` VALUES (91628724,2,11,2);
INSERT INTO `respuesta` VALUES (91628724,3,2,2);
INSERT INTO `respuesta` VALUES (91628725,1,2,2);
INSERT INTO `respuesta` VALUES (91628726,3,6,2);
INSERT INTO `respuesta` VALUES (91628726,3,7,2);
INSERT INTO `respuesta` VALUES (91628727,1,2,2);
INSERT INTO `respuesta` VALUES (91628727,1,6,2);
INSERT INTO `respuesta` VALUES (91628727,2,1,2);
INSERT INTO `respuesta` VALUES (91628727,2,7,2);
INSERT INTO `respuesta` VALUES (91628728,2,7,2);
INSERT INTO `respuesta` VALUES (91628728,2,8,2);
INSERT INTO `respuesta` VALUES (91628729,1,6,2);
INSERT INTO `respuesta` VALUES (91628729,2,7,2);
INSERT INTO `respuesta` VALUES (91628730,2,7,2);
INSERT INTO `respuesta` VALUES (91628730,3,6,2);
INSERT INTO `respuesta` VALUES (91628731,2,6,2);
INSERT INTO `respuesta` VALUES (91628731,2,8,2);
INSERT INTO `respuesta` VALUES (91628731,2,11,2);
INSERT INTO `respuesta` VALUES (91628731,3,2,2);
INSERT INTO `respuesta` VALUES (91628731,3,6,2);
INSERT INTO `respuesta` VALUES (91628732,1,2,2);
INSERT INTO `respuesta` VALUES (91628732,2,1,2);
INSERT INTO `respuesta` VALUES (91628732,3,7,2);
INSERT INTO `respuesta` VALUES (91628733,2,1,2);
INSERT INTO `respuesta` VALUES (91628734,1,2,2);
INSERT INTO `respuesta` VALUES (91628734,2,7,2);
INSERT INTO `respuesta` VALUES (91628734,3,7,2);
INSERT INTO `respuesta` VALUES (91628735,2,6,2);
INSERT INTO `respuesta` VALUES (91628735,3,6,2);
INSERT INTO `respuesta` VALUES (91628735,3,8,2);
INSERT INTO `respuesta` VALUES (91628736,2,6,2);
INSERT INTO `respuesta` VALUES (91628736,3,2,2);
INSERT INTO `respuesta` VALUES (91628736,3,8,2);
INSERT INTO `respuesta` VALUES (91628737,1,2,2);
INSERT INTO `respuesta` VALUES (91628737,1,6,2);
INSERT INTO `respuesta` VALUES (91628737,3,6,2);
INSERT INTO `respuesta` VALUES (91628739,2,6,2);
INSERT INTO `respuesta` VALUES (91628740,2,11,2);
INSERT INTO `respuesta` VALUES (91628741,1,2,2);
INSERT INTO `respuesta` VALUES (91628741,1,6,2);
INSERT INTO `respuesta` VALUES (91628741,2,11,2);
INSERT INTO `respuesta` VALUES (91628741,3,2,2);
INSERT INTO `respuesta` VALUES (91628742,2,6,2);
INSERT INTO `respuesta` VALUES (91628742,3,6,2);
INSERT INTO `respuesta` VALUES (91628743,2,6,2);
INSERT INTO `respuesta` VALUES (91628743,2,7,2);
INSERT INTO `respuesta` VALUES (91628743,2,11,2);
INSERT INTO `respuesta` VALUES (91628744,1,6,2);
INSERT INTO `respuesta` VALUES (91628744,2,1,2);
INSERT INTO `respuesta` VALUES (91628744,2,7,2);
INSERT INTO `respuesta` VALUES (91628744,3,8,2);
INSERT INTO `respuesta` VALUES (91628745,3,2,2);
INSERT INTO `respuesta` VALUES (91628746,2,11,2);
INSERT INTO `respuesta` VALUES (91628747,2,11,2);
INSERT INTO `respuesta` VALUES (91628747,3,7,2);
INSERT INTO `respuesta` VALUES (91628748,3,7,2);
INSERT INTO `respuesta` VALUES (91628749,3,6,2);
INSERT INTO `respuesta` VALUES (91628750,2,1,2);
INSERT INTO `respuesta` VALUES (91628751,1,2,2);
INSERT INTO `respuesta` VALUES (91628751,3,6,2);
INSERT INTO `respuesta` VALUES (91628751,3,8,2);
INSERT INTO `respuesta` VALUES (91628752,3,2,2);
INSERT INTO `respuesta` VALUES (91628753,1,2,2);
INSERT INTO `respuesta` VALUES (91628754,2,6,2);
INSERT INTO `respuesta` VALUES (91628754,2,11,2);
INSERT INTO `respuesta` VALUES (91628754,3,6,2);
INSERT INTO `respuesta` VALUES (91628754,3,7,2);
INSERT INTO `respuesta` VALUES (91628755,3,7,2);
INSERT INTO `respuesta` VALUES (91628755,3,8,2);
INSERT INTO `respuesta` VALUES (91628756,1,6,2);
INSERT INTO `respuesta` VALUES (91628756,2,8,2);
INSERT INTO `respuesta` VALUES (91628758,2,7,2);
INSERT INTO `respuesta` VALUES (91628759,2,1,2);
INSERT INTO `respuesta` VALUES (91628759,3,6,2);
INSERT INTO `respuesta` VALUES (91628760,3,2,2);
INSERT INTO `respuesta` VALUES (91628761,2,1,2);
INSERT INTO `respuesta` VALUES (91628761,2,8,2);
INSERT INTO `respuesta` VALUES (91628762,2,11,2);
INSERT INTO `respuesta` VALUES (91628763,2,6,2);
INSERT INTO `respuesta` VALUES (91628763,2,8,2);
INSERT INTO `respuesta` VALUES (91628763,2,11,2);
INSERT INTO `respuesta` VALUES (91628763,3,7,2);
INSERT INTO `respuesta` VALUES (91628764,1,2,2);
INSERT INTO `respuesta` VALUES (91628764,2,1,2);
INSERT INTO `respuesta` VALUES (91628765,3,6,2);
INSERT INTO `respuesta` VALUES (91628766,2,6,2);
INSERT INTO `respuesta` VALUES (91628766,2,7,2);
INSERT INTO `respuesta` VALUES (91628767,1,6,2);
INSERT INTO `respuesta` VALUES (91628767,2,8,2);
INSERT INTO `respuesta` VALUES (91628768,1,6,2);
INSERT INTO `respuesta` VALUES (91628768,2,6,2);
INSERT INTO `respuesta` VALUES (91628769,1,6,2);
INSERT INTO `respuesta` VALUES (91628769,2,1,2);
INSERT INTO `respuesta` VALUES (91628771,2,11,2);
INSERT INTO `respuesta` VALUES (91628771,3,7,2);
INSERT INTO `respuesta` VALUES (91628772,2,8,2);
INSERT INTO `respuesta` VALUES (91628772,3,2,2);
INSERT INTO `respuesta` VALUES (91628773,2,7,2);
INSERT INTO `respuesta` VALUES (91628774,1,6,2);
INSERT INTO `respuesta` VALUES (91628774,2,7,2);
INSERT INTO `respuesta` VALUES (91628774,3,8,2);
INSERT INTO `respuesta` VALUES (91628775,1,6,2);
INSERT INTO `respuesta` VALUES (91628775,2,1,2);
INSERT INTO `respuesta` VALUES (91628775,2,7,2);
INSERT INTO `respuesta` VALUES (91628775,2,11,2);
INSERT INTO `respuesta` VALUES (91628775,3,7,2);
INSERT INTO `respuesta` VALUES (91628776,1,2,2);
INSERT INTO `respuesta` VALUES (91628776,2,8,2);
INSERT INTO `respuesta` VALUES (91628776,3,6,2);
INSERT INTO `respuesta` VALUES (91628778,2,11,2);
INSERT INTO `respuesta` VALUES (91628779,2,6,2);
INSERT INTO `respuesta` VALUES (91628779,3,7,2);
INSERT INTO `respuesta` VALUES (91628780,2,6,2);
INSERT INTO `respuesta` VALUES (91628780,2,11,2);
INSERT INTO `respuesta` VALUES (91628780,3,6,2);
INSERT INTO `respuesta` VALUES (91628780,3,7,2);
INSERT INTO `respuesta` VALUES (91628781,2,7,2);
INSERT INTO `respuesta` VALUES (91628782,2,8,2);
INSERT INTO `respuesta` VALUES (91628782,2,11,2);
INSERT INTO `respuesta` VALUES (91628783,3,8,2);
INSERT INTO `respuesta` VALUES (91628784,2,11,2);
INSERT INTO `respuesta` VALUES (91628784,3,2,2);
INSERT INTO `respuesta` VALUES (91628784,3,8,2);
INSERT INTO `respuesta` VALUES (91628785,2,1,2);
INSERT INTO `respuesta` VALUES (91628785,2,8,2);
INSERT INTO `respuesta` VALUES (91628786,1,2,2);
INSERT INTO `respuesta` VALUES (91628786,2,1,2);
INSERT INTO `respuesta` VALUES (91628786,2,8,2);
INSERT INTO `respuesta` VALUES (91628786,3,8,2);
INSERT INTO `respuesta` VALUES (91628787,2,1,2);
INSERT INTO `respuesta` VALUES (91628788,2,6,2);
INSERT INTO `respuesta` VALUES (91628789,1,2,2);
INSERT INTO `respuesta` VALUES (91628789,1,6,2);
INSERT INTO `respuesta` VALUES (91628789,3,6,2);
INSERT INTO `respuesta` VALUES (91628691,2,8,3);
INSERT INTO `respuesta` VALUES (91628691,3,8,3);
INSERT INTO `respuesta` VALUES (91628693,1,2,3);
INSERT INTO `respuesta` VALUES (91628693,1,6,3);
INSERT INTO `respuesta` VALUES (91628693,3,8,3);
INSERT INTO `respuesta` VALUES (91628694,1,6,3);
INSERT INTO `respuesta` VALUES (91628695,2,8,3);
INSERT INTO `respuesta` VALUES (91628695,3,6,3);
INSERT INTO `respuesta` VALUES (91628697,2,6,3);
INSERT INTO `respuesta` VALUES (91628697,2,7,3);
INSERT INTO `respuesta` VALUES (91628697,2,8,3);
INSERT INTO `respuesta` VALUES (91628697,3,2,3);
INSERT INTO `respuesta` VALUES (91628698,1,2,3);
INSERT INTO `respuesta` VALUES (91628698,2,6,3);
INSERT INTO `respuesta` VALUES (91628698,3,6,3);
INSERT INTO `respuesta` VALUES (91628699,3,7,3);
INSERT INTO `respuesta` VALUES (91628699,3,8,3);
INSERT INTO `respuesta` VALUES (91628700,2,8,3);
INSERT INTO `respuesta` VALUES (91628700,3,7,3);
INSERT INTO `respuesta` VALUES (91628700,3,8,3);
INSERT INTO `respuesta` VALUES (91628701,1,6,3);
INSERT INTO `respuesta` VALUES (91628701,2,8,3);
INSERT INTO `respuesta` VALUES (91628703,1,2,3);
INSERT INTO `respuesta` VALUES (91628703,2,1,3);
INSERT INTO `respuesta` VALUES (91628703,3,7,3);
INSERT INTO `respuesta` VALUES (91628704,2,8,3);
INSERT INTO `respuesta` VALUES (91628704,3,7,3);
INSERT INTO `respuesta` VALUES (91628705,1,2,3);
INSERT INTO `respuesta` VALUES (91628705,1,6,3);
INSERT INTO `respuesta` VALUES (91628705,2,6,3);
INSERT INTO `respuesta` VALUES (91628706,2,1,3);
INSERT INTO `respuesta` VALUES (91628706,2,7,3);
INSERT INTO `respuesta` VALUES (91628706,3,8,3);
INSERT INTO `respuesta` VALUES (91628707,2,1,3);
INSERT INTO `respuesta` VALUES (91628707,3,6,3);
INSERT INTO `respuesta` VALUES (91628708,2,7,3);
INSERT INTO `respuesta` VALUES (91628708,3,6,3);
INSERT INTO `respuesta` VALUES (91628709,1,2,3);
INSERT INTO `respuesta` VALUES (91628709,1,6,3);
INSERT INTO `respuesta` VALUES (91628709,2,11,3);
INSERT INTO `respuesta` VALUES (91628710,2,11,3);
INSERT INTO `respuesta` VALUES (91628711,3,7,3);
INSERT INTO `respuesta` VALUES (91628712,2,8,3);
INSERT INTO `respuesta` VALUES (91628713,1,6,3);
INSERT INTO `respuesta` VALUES (91628713,2,7,3);
INSERT INTO `respuesta` VALUES (91628714,1,2,3);
INSERT INTO `respuesta` VALUES (91628714,2,8,3);
INSERT INTO `respuesta` VALUES (91628714,3,7,3);
INSERT INTO `respuesta` VALUES (91628715,1,6,3);
INSERT INTO `respuesta` VALUES (91628715,2,11,3);
INSERT INTO `respuesta` VALUES (91628715,3,6,3);
INSERT INTO `respuesta` VALUES (91628716,2,1,3);
INSERT INTO `respuesta` VALUES (91628717,3,7,3);
INSERT INTO `respuesta` VALUES (91628717,3,8,3);
INSERT INTO `respuesta` VALUES (91628718,1,6,3);
INSERT INTO `respuesta` VALUES (91628719,2,7,3);
INSERT INTO `respuesta` VALUES (91628719,2,8,3);
INSERT INTO `respuesta` VALUES (91628719,3,8,3);
INSERT INTO `respuesta` VALUES (91628720,1,2,3);
INSERT INTO `respuesta` VALUES (91628720,1,6,3);
INSERT INTO `respuesta` VALUES (91628720,2,6,3);
INSERT INTO `respuesta` VALUES (91628722,2,1,3);
INSERT INTO `respuesta` VALUES (91628722,2,6,3);
INSERT INTO `respuesta` VALUES (91628722,3,2,3);
INSERT INTO `respuesta` VALUES (91628722,3,8,3);
INSERT INTO `respuesta` VALUES (91628724,2,1,3);
INSERT INTO `respuesta` VALUES (91628724,2,8,3);
INSERT INTO `respuesta` VALUES (91628724,3,7,3);
INSERT INTO `respuesta` VALUES (91628725,2,1,3);
INSERT INTO `respuesta` VALUES (91628725,2,6,3);
INSERT INTO `respuesta` VALUES (91628726,2,7,3);
INSERT INTO `respuesta` VALUES (91628726,3,8,3);
INSERT INTO `respuesta` VALUES (91628727,2,8,3);
INSERT INTO `respuesta` VALUES (91628727,3,6,3);
INSERT INTO `respuesta` VALUES (91628728,1,6,3);
INSERT INTO `respuesta` VALUES (91628728,2,1,3);
INSERT INTO `respuesta` VALUES (91628728,3,8,3);
INSERT INTO `respuesta` VALUES (91628729,2,1,3);
INSERT INTO `respuesta` VALUES (91628729,3,7,3);
INSERT INTO `respuesta` VALUES (91628729,3,8,3);
INSERT INTO `respuesta` VALUES (91628730,1,6,3);
INSERT INTO `respuesta` VALUES (91628732,3,2,3);
INSERT INTO `respuesta` VALUES (91628732,3,8,3);
INSERT INTO `respuesta` VALUES (91628733,2,7,3);
INSERT INTO `respuesta` VALUES (91628733,2,11,3);
INSERT INTO `respuesta` VALUES (91628733,3,6,3);
INSERT INTO `respuesta` VALUES (91628734,2,1,3);
INSERT INTO `respuesta` VALUES (91628734,2,11,3);
INSERT INTO `respuesta` VALUES (91628735,2,8,3);
INSERT INTO `respuesta` VALUES (91628735,3,2,3);
INSERT INTO `respuesta` VALUES (91628736,1,2,3);
INSERT INTO `respuesta` VALUES (91628737,2,7,3);
INSERT INTO `respuesta` VALUES (91628738,3,2,3);
INSERT INTO `respuesta` VALUES (91628739,3,7,3);
INSERT INTO `respuesta` VALUES (91628739,3,8,3);
INSERT INTO `respuesta` VALUES (91628740,1,6,3);
INSERT INTO `respuesta` VALUES (91628740,2,1,3);
INSERT INTO `respuesta` VALUES (91628740,3,2,3);
INSERT INTO `respuesta` VALUES (91628741,2,8,3);
INSERT INTO `respuesta` VALUES (91628741,3,6,3);
INSERT INTO `respuesta` VALUES (91628742,2,1,3);
INSERT INTO `respuesta` VALUES (91628742,2,7,3);
INSERT INTO `respuesta` VALUES (91628742,2,11,3);
INSERT INTO `respuesta` VALUES (91628742,3,2,3);
INSERT INTO `respuesta` VALUES (91628743,1,2,3);
INSERT INTO `respuesta` VALUES (91628743,3,2,3);
INSERT INTO `respuesta` VALUES (91628744,3,2,3);
INSERT INTO `respuesta` VALUES (91628746,2,6,3);
INSERT INTO `respuesta` VALUES (91628746,2,7,3);
INSERT INTO `respuesta` VALUES (91628747,2,8,3);
INSERT INTO `respuesta` VALUES (91628748,1,2,3);
INSERT INTO `respuesta` VALUES (91628748,1,6,3);
INSERT INTO `respuesta` VALUES (91628748,2,1,3);
INSERT INTO `respuesta` VALUES (91628749,2,8,3);
INSERT INTO `respuesta` VALUES (91628750,1,2,3);
INSERT INTO `respuesta` VALUES (91628750,2,7,3);
INSERT INTO `respuesta` VALUES (91628750,3,2,3);
INSERT INTO `respuesta` VALUES (91628751,2,7,3);
INSERT INTO `respuesta` VALUES (91628752,2,1,3);
INSERT INTO `respuesta` VALUES (91628752,2,7,3);
INSERT INTO `respuesta` VALUES (91628752,3,8,3);
INSERT INTO `respuesta` VALUES (91628753,2,7,3);
INSERT INTO `respuesta` VALUES (91628753,2,11,3);
INSERT INTO `respuesta` VALUES (91628753,3,7,3);
INSERT INTO `respuesta` VALUES (91628753,3,8,3);
INSERT INTO `respuesta` VALUES (91628754,1,6,3);
INSERT INTO `respuesta` VALUES (91628754,2,8,3);
INSERT INTO `respuesta` VALUES (91628754,3,2,3);
INSERT INTO `respuesta` VALUES (91628755,2,1,3);
INSERT INTO `respuesta` VALUES (91628755,3,2,3);
INSERT INTO `respuesta` VALUES (91628755,3,6,3);
INSERT INTO `respuesta` VALUES (91628756,3,7,3);
INSERT INTO `respuesta` VALUES (91628756,3,8,3);
INSERT INTO `respuesta` VALUES (91628757,2,1,3);
INSERT INTO `respuesta` VALUES (91628757,2,6,3);
INSERT INTO `respuesta` VALUES (91628757,2,7,3);
INSERT INTO `respuesta` VALUES (91628757,2,11,3);
INSERT INTO `respuesta` VALUES (91628757,3,8,3);
INSERT INTO `respuesta` VALUES (91628758,1,6,3);
INSERT INTO `respuesta` VALUES (91628758,2,1,3);
INSERT INTO `respuesta` VALUES (91628758,3,7,3);
INSERT INTO `respuesta` VALUES (91628758,3,8,3);
INSERT INTO `respuesta` VALUES (91628759,2,7,3);
INSERT INTO `respuesta` VALUES (91628760,3,6,3);
INSERT INTO `respuesta` VALUES (91628761,1,6,3);
INSERT INTO `respuesta` VALUES (91628761,2,6,3);
INSERT INTO `respuesta` VALUES (91628762,3,2,3);
INSERT INTO `respuesta` VALUES (91628763,1,2,3);
INSERT INTO `respuesta` VALUES (91628763,3,2,3);
INSERT INTO `respuesta` VALUES (91628765,2,7,3);
INSERT INTO `respuesta` VALUES (91628765,3,2,3);
INSERT INTO `respuesta` VALUES (91628766,1,2,3);
INSERT INTO `respuesta` VALUES (91628766,3,6,3);
INSERT INTO `respuesta` VALUES (91628767,2,1,3);
INSERT INTO `respuesta` VALUES (91628767,2,6,3);
INSERT INTO `respuesta` VALUES (91628767,3,6,3);
INSERT INTO `respuesta` VALUES (91628768,3,6,3);
INSERT INTO `respuesta` VALUES (91628769,2,6,3);
INSERT INTO `respuesta` VALUES (91628770,2,1,3);
INSERT INTO `respuesta` VALUES (91628770,2,6,3);
INSERT INTO `respuesta` VALUES (91628770,2,7,3);
INSERT INTO `respuesta` VALUES (91628770,2,8,3);
INSERT INTO `respuesta` VALUES (91628770,3,6,3);
INSERT INTO `respuesta` VALUES (91628771,1,6,3);
INSERT INTO `respuesta` VALUES (91628771,3,6,3);
INSERT INTO `respuesta` VALUES (91628771,3,8,3);
INSERT INTO `respuesta` VALUES (91628772,1,2,3);
INSERT INTO `respuesta` VALUES (91628773,1,2,3);
INSERT INTO `respuesta` VALUES (91628773,1,6,3);
INSERT INTO `respuesta` VALUES (91628773,2,8,3);
INSERT INTO `respuesta` VALUES (91628774,1,2,3);
INSERT INTO `respuesta` VALUES (91628774,3,6,3);
INSERT INTO `respuesta` VALUES (91628775,2,8,3);
INSERT INTO `respuesta` VALUES (91628775,3,6,3);
INSERT INTO `respuesta` VALUES (91628776,2,11,3);
INSERT INTO `respuesta` VALUES (91628777,2,6,3);
INSERT INTO `respuesta` VALUES (91628777,2,7,3);
INSERT INTO `respuesta` VALUES (91628777,3,6,3);
INSERT INTO `respuesta` VALUES (91628778,1,2,3);
INSERT INTO `respuesta` VALUES (91628778,1,6,3);
INSERT INTO `respuesta` VALUES (91628778,2,8,3);
INSERT INTO `respuesta` VALUES (91628779,3,2,3);
INSERT INTO `respuesta` VALUES (91628780,2,8,3);
INSERT INTO `respuesta` VALUES (91628781,3,2,3);
INSERT INTO `respuesta` VALUES (91628782,1,6,3);
INSERT INTO `respuesta` VALUES (91628782,3,2,3);
INSERT INTO `respuesta` VALUES (91628782,3,7,3);
INSERT INTO `respuesta` VALUES (91628782,3,8,3);
INSERT INTO `respuesta` VALUES (91628783,1,6,3);
INSERT INTO `respuesta` VALUES (91628783,2,1,3);
INSERT INTO `respuesta` VALUES (91628785,1,6,3);
INSERT INTO `respuesta` VALUES (91628785,3,2,3);
INSERT INTO `respuesta` VALUES (91628786,2,6,3);
INSERT INTO `respuesta` VALUES (91628786,3,7,3);
INSERT INTO `respuesta` VALUES (91628787,3,8,3);
INSERT INTO `respuesta` VALUES (91628788,2,11,3);
INSERT INTO `respuesta` VALUES (91628788,3,6,3);
INSERT INTO `respuesta` VALUES (91628788,3,7,3);
INSERT INTO `respuesta` VALUES (91628788,3,8,3);
INSERT INTO `respuesta` VALUES (91628789,2,6,3);
INSERT INTO `respuesta` VALUES (91628789,2,11,3);
INSERT INTO `respuesta` VALUES (91628789,3,2,3);
INSERT INTO `respuesta` VALUES (91628790,2,7,3);
INSERT INTO `respuesta` VALUES (91628691,1,2,4);
INSERT INTO `respuesta` VALUES (91628691,1,6,4);
INSERT INTO `respuesta` VALUES (91628691,2,1,4);
INSERT INTO `respuesta` VALUES (91628691,2,7,4);
INSERT INTO `respuesta` VALUES (91628691,3,2,4);
INSERT INTO `respuesta` VALUES (91628692,1,2,4);
INSERT INTO `respuesta` VALUES (91628692,2,8,4);
INSERT INTO `respuesta` VALUES (91628692,3,2,4);
INSERT INTO `respuesta` VALUES (91628692,3,7,4);
INSERT INTO `respuesta` VALUES (91628693,2,7,4);
INSERT INTO `respuesta` VALUES (91628694,2,1,4);
INSERT INTO `respuesta` VALUES (91628694,2,7,4);
INSERT INTO `respuesta` VALUES (91628694,2,8,4);
INSERT INTO `respuesta` VALUES (91628695,1,2,4);
INSERT INTO `respuesta` VALUES (91628695,2,11,4);
INSERT INTO `respuesta` VALUES (91628695,3,7,4);
INSERT INTO `respuesta` VALUES (91628696,2,1,4);
INSERT INTO `respuesta` VALUES (91628696,3,6,4);
INSERT INTO `respuesta` VALUES (91628697,1,2,4);
INSERT INTO `respuesta` VALUES (91628697,3,7,4);
INSERT INTO `respuesta` VALUES (91628699,2,7,4);
INSERT INTO `respuesta` VALUES (91628699,2,8,4);
INSERT INTO `respuesta` VALUES (91628699,3,2,4);
INSERT INTO `respuesta` VALUES (91628700,1,6,4);
INSERT INTO `respuesta` VALUES (91628700,2,1,4);
INSERT INTO `respuesta` VALUES (91628700,2,7,4);
INSERT INTO `respuesta` VALUES (91628701,2,1,4);
INSERT INTO `respuesta` VALUES (91628701,2,6,4);
INSERT INTO `respuesta` VALUES (91628701,3,6,4);
INSERT INTO `respuesta` VALUES (91628702,1,2,4);
INSERT INTO `respuesta` VALUES (91628702,2,1,4);
INSERT INTO `respuesta` VALUES (91628702,2,8,4);
INSERT INTO `respuesta` VALUES (91628702,3,2,4);
INSERT INTO `respuesta` VALUES (91628702,3,8,4);
INSERT INTO `respuesta` VALUES (91628703,2,6,4);
INSERT INTO `respuesta` VALUES (91628703,2,7,4);
INSERT INTO `respuesta` VALUES (91628703,3,2,4);
INSERT INTO `respuesta` VALUES (91628703,3,6,4);
INSERT INTO `respuesta` VALUES (91628703,3,8,4);
INSERT INTO `respuesta` VALUES (91628704,2,1,4);
INSERT INTO `respuesta` VALUES (91628704,2,6,4);
INSERT INTO `respuesta` VALUES (91628705,3,2,4);
INSERT INTO `respuesta` VALUES (91628706,2,6,4);
INSERT INTO `respuesta` VALUES (91628706,3,2,4);
INSERT INTO `respuesta` VALUES (91628707,2,6,4);
INSERT INTO `respuesta` VALUES (91628707,2,8,4);
INSERT INTO `respuesta` VALUES (91628707,3,8,4);
INSERT INTO `respuesta` VALUES (91628708,1,6,4);
INSERT INTO `respuesta` VALUES (91628708,3,2,4);
INSERT INTO `respuesta` VALUES (91628709,2,1,4);
INSERT INTO `respuesta` VALUES (91628709,2,6,4);
INSERT INTO `respuesta` VALUES (91628709,2,7,4);
INSERT INTO `respuesta` VALUES (91628710,3,7,4);
INSERT INTO `respuesta` VALUES (91628710,3,8,4);
INSERT INTO `respuesta` VALUES (91628712,2,6,4);
INSERT INTO `respuesta` VALUES (91628712,3,8,4);
INSERT INTO `respuesta` VALUES (91628713,2,11,4);
INSERT INTO `respuesta` VALUES (91628713,3,7,4);
INSERT INTO `respuesta` VALUES (91628714,3,6,4);
INSERT INTO `respuesta` VALUES (91628714,3,8,4);
INSERT INTO `respuesta` VALUES (91628715,1,2,4);
INSERT INTO `respuesta` VALUES (91628715,3,8,4);
INSERT INTO `respuesta` VALUES (91628716,2,8,4);
INSERT INTO `respuesta` VALUES (91628716,3,7,4);
INSERT INTO `respuesta` VALUES (91628717,2,8,4);
INSERT INTO `respuesta` VALUES (91628718,1,2,4);
INSERT INTO `respuesta` VALUES (91628718,2,6,4);
INSERT INTO `respuesta` VALUES (91628719,1,6,4);
INSERT INTO `respuesta` VALUES (91628719,3,6,4);
INSERT INTO `respuesta` VALUES (91628721,1,6,4);
INSERT INTO `respuesta` VALUES (91628721,3,2,4);
INSERT INTO `respuesta` VALUES (91628722,1,2,4);
INSERT INTO `respuesta` VALUES (91628722,3,6,4);
INSERT INTO `respuesta` VALUES (91628722,3,7,4);
INSERT INTO `respuesta` VALUES (91628723,1,2,4);
INSERT INTO `respuesta` VALUES (91628723,2,1,4);
INSERT INTO `respuesta` VALUES (91628723,2,6,4);
INSERT INTO `respuesta` VALUES (91628724,3,8,4);
INSERT INTO `respuesta` VALUES (91628725,2,7,4);
INSERT INTO `respuesta` VALUES (91628726,1,6,4);
INSERT INTO `respuesta` VALUES (91628726,2,1,4);
INSERT INTO `respuesta` VALUES (91628726,2,8,4);
INSERT INTO `respuesta` VALUES (91628728,1,2,4);
INSERT INTO `respuesta` VALUES (91628728,2,11,4);
INSERT INTO `respuesta` VALUES (91628729,1,2,4);
INSERT INTO `respuesta` VALUES (91628729,2,8,4);
INSERT INTO `respuesta` VALUES (91628730,2,1,4);
INSERT INTO `respuesta` VALUES (91628730,2,11,4);
INSERT INTO `respuesta` VALUES (91628731,1,2,4);
INSERT INTO `respuesta` VALUES (91628731,2,1,4);
INSERT INTO `respuesta` VALUES (91628731,3,8,4);
INSERT INTO `respuesta` VALUES (91628732,1,6,4);
INSERT INTO `respuesta` VALUES (91628732,2,8,4);
INSERT INTO `respuesta` VALUES (91628732,2,11,4);
INSERT INTO `respuesta` VALUES (91628732,3,6,4);
INSERT INTO `respuesta` VALUES (91628733,1,2,4);
INSERT INTO `respuesta` VALUES (91628733,2,8,4);
INSERT INTO `respuesta` VALUES (91628733,3,2,4);
INSERT INTO `respuesta` VALUES (91628733,3,7,4);
INSERT INTO `respuesta` VALUES (91628733,3,8,4);
INSERT INTO `respuesta` VALUES (91628734,2,8,4);
INSERT INTO `respuesta` VALUES (91628735,1,2,4);
INSERT INTO `respuesta` VALUES (91628735,1,6,4);
INSERT INTO `respuesta` VALUES (91628735,2,7,4);
INSERT INTO `respuesta` VALUES (91628735,3,7,4);
INSERT INTO `respuesta` VALUES (91628736,3,6,4);
INSERT INTO `respuesta` VALUES (91628737,2,1,4);
INSERT INTO `respuesta` VALUES (91628737,2,6,4);
INSERT INTO `respuesta` VALUES (91628737,3,7,4);
INSERT INTO `respuesta` VALUES (91628737,3,8,4);
INSERT INTO `respuesta` VALUES (91628738,2,1,4);
INSERT INTO `respuesta` VALUES (91628738,3,6,4);
INSERT INTO `respuesta` VALUES (91628738,3,7,4);
INSERT INTO `respuesta` VALUES (91628739,2,1,4);
INSERT INTO `respuesta` VALUES (91628740,2,6,4);
INSERT INTO `respuesta` VALUES (91628740,2,8,4);
INSERT INTO `respuesta` VALUES (91628740,3,6,4);
INSERT INTO `respuesta` VALUES (91628741,2,1,4);
INSERT INTO `respuesta` VALUES (91628741,2,7,4);
INSERT INTO `respuesta` VALUES (91628742,1,6,4);
INSERT INTO `respuesta` VALUES (91628742,2,8,4);
INSERT INTO `respuesta` VALUES (91628743,2,1,4);
INSERT INTO `respuesta` VALUES (91628743,3,6,4);
INSERT INTO `respuesta` VALUES (91628744,2,6,4);
INSERT INTO `respuesta` VALUES (91628744,2,11,4);
INSERT INTO `respuesta` VALUES (91628745,2,6,4);
INSERT INTO `respuesta` VALUES (91628746,1,2,4);
INSERT INTO `respuesta` VALUES (91628746,1,6,4);
INSERT INTO `respuesta` VALUES (91628746,3,2,4);
INSERT INTO `respuesta` VALUES (91628746,3,6,4);
INSERT INTO `respuesta` VALUES (91628746,3,7,4);
INSERT INTO `respuesta` VALUES (91628746,3,8,4);
INSERT INTO `respuesta` VALUES (91628747,2,6,4);
INSERT INTO `respuesta` VALUES (91628747,3,2,4);
INSERT INTO `respuesta` VALUES (91628748,2,7,4);
INSERT INTO `respuesta` VALUES (91628749,1,6,4);
INSERT INTO `respuesta` VALUES (91628749,2,6,4);
INSERT INTO `respuesta` VALUES (91628749,2,11,4);
INSERT INTO `respuesta` VALUES (91628749,3,2,4);
INSERT INTO `respuesta` VALUES (91628750,2,6,4);
INSERT INTO `respuesta` VALUES (91628750,2,8,4);
INSERT INTO `respuesta` VALUES (91628751,3,2,4);
INSERT INTO `respuesta` VALUES (91628752,1,2,4);
INSERT INTO `respuesta` VALUES (91628752,1,6,4);
INSERT INTO `respuesta` VALUES (91628752,3,7,4);
INSERT INTO `respuesta` VALUES (91628753,2,1,4);
INSERT INTO `respuesta` VALUES (91628753,3,6,4);
INSERT INTO `respuesta` VALUES (91628754,1,2,4);
INSERT INTO `respuesta` VALUES (91628754,2,7,4);
INSERT INTO `respuesta` VALUES (91628755,1,6,4);
INSERT INTO `respuesta` VALUES (91628755,2,6,4);
INSERT INTO `respuesta` VALUES (91628755,2,8,4);
INSERT INTO `respuesta` VALUES (91628756,2,1,4);
INSERT INTO `respuesta` VALUES (91628756,2,7,4);
INSERT INTO `respuesta` VALUES (91628756,2,11,4);
INSERT INTO `respuesta` VALUES (91628756,3,2,4);
INSERT INTO `respuesta` VALUES (91628756,3,6,4);
INSERT INTO `respuesta` VALUES (91628757,3,6,4);
INSERT INTO `respuesta` VALUES (91628757,3,7,4);
INSERT INTO `respuesta` VALUES (91628758,2,6,4);
INSERT INTO `respuesta` VALUES (91628758,2,11,4);
INSERT INTO `respuesta` VALUES (91628758,3,2,4);
INSERT INTO `respuesta` VALUES (91628758,3,6,4);
INSERT INTO `respuesta` VALUES (91628759,2,6,4);
INSERT INTO `respuesta` VALUES (91628759,2,8,4);
INSERT INTO `respuesta` VALUES (91628759,2,11,4);
INSERT INTO `respuesta` VALUES (91628759,3,7,4);
INSERT INTO `respuesta` VALUES (91628760,2,6,4);
INSERT INTO `respuesta` VALUES (91628760,3,7,4);
INSERT INTO `respuesta` VALUES (91628761,3,7,4);
INSERT INTO `respuesta` VALUES (91628761,3,8,4);
INSERT INTO `respuesta` VALUES (91628762,1,2,4);
INSERT INTO `respuesta` VALUES (91628762,1,6,4);
INSERT INTO `respuesta` VALUES (91628762,2,8,4);
INSERT INTO `respuesta` VALUES (91628763,2,1,4);
INSERT INTO `respuesta` VALUES (91628764,1,6,4);
INSERT INTO `respuesta` VALUES (91628764,2,6,4);
INSERT INTO `respuesta` VALUES (91628764,2,8,4);
INSERT INTO `respuesta` VALUES (91628764,2,11,4);
INSERT INTO `respuesta` VALUES (91628764,3,2,4);
INSERT INTO `respuesta` VALUES (91628764,3,6,4);
INSERT INTO `respuesta` VALUES (91628764,3,7,4);
INSERT INTO `respuesta` VALUES (91628764,3,8,4);
INSERT INTO `respuesta` VALUES (91628765,1,2,4);
INSERT INTO `respuesta` VALUES (91628765,2,1,4);
INSERT INTO `respuesta` VALUES (91628765,2,11,4);
INSERT INTO `respuesta` VALUES (91628766,3,7,4);
INSERT INTO `respuesta` VALUES (91628766,3,8,4);
INSERT INTO `respuesta` VALUES (91628767,2,7,4);
INSERT INTO `respuesta` VALUES (91628767,2,11,4);
INSERT INTO `respuesta` VALUES (91628767,3,2,4);
INSERT INTO `respuesta` VALUES (91628768,1,2,4);
INSERT INTO `respuesta` VALUES (91628768,2,1,4);
INSERT INTO `respuesta` VALUES (91628768,2,8,4);
INSERT INTO `respuesta` VALUES (91628769,2,11,4);
INSERT INTO `respuesta` VALUES (91628769,3,2,4);
INSERT INTO `respuesta` VALUES (91628769,3,6,4);
INSERT INTO `respuesta` VALUES (91628769,3,7,4);
INSERT INTO `respuesta` VALUES (91628770,1,2,4);
INSERT INTO `respuesta` VALUES (91628770,3,2,4);
INSERT INTO `respuesta` VALUES (91628771,2,8,4);
INSERT INTO `respuesta` VALUES (91628771,3,2,4);
INSERT INTO `respuesta` VALUES (91628772,2,6,4);
INSERT INTO `respuesta` VALUES (91628772,2,7,4);
INSERT INTO `respuesta` VALUES (91628772,3,8,4);
INSERT INTO `respuesta` VALUES (91628773,2,6,4);
INSERT INTO `respuesta` VALUES (91628773,3,7,4);
INSERT INTO `respuesta` VALUES (91628774,3,2,4);
INSERT INTO `respuesta` VALUES (91628774,3,7,4);
INSERT INTO `respuesta` VALUES (91628775,1,2,4);
INSERT INTO `respuesta` VALUES (91628775,3,8,4);
INSERT INTO `respuesta` VALUES (91628776,1,6,4);
INSERT INTO `respuesta` VALUES (91628776,2,7,4);
INSERT INTO `respuesta` VALUES (91628776,3,7,4);
INSERT INTO `respuesta` VALUES (91628776,3,8,4);
INSERT INTO `respuesta` VALUES (91628777,3,8,4);
INSERT INTO `respuesta` VALUES (91628778,3,7,4);
INSERT INTO `respuesta` VALUES (91628779,1,6,4);
INSERT INTO `respuesta` VALUES (91628779,2,11,4);
INSERT INTO `respuesta` VALUES (91628779,3,8,4);
INSERT INTO `respuesta` VALUES (91628780,1,6,4);
INSERT INTO `respuesta` VALUES (91628781,1,2,4);
INSERT INTO `respuesta` VALUES (91628781,1,6,4);
INSERT INTO `respuesta` VALUES (91628781,2,1,4);
INSERT INTO `respuesta` VALUES (91628781,2,6,4);
INSERT INTO `respuesta` VALUES (91628782,1,2,4);
INSERT INTO `respuesta` VALUES (91628782,2,1,4);
INSERT INTO `respuesta` VALUES (91628782,3,6,4);
INSERT INTO `respuesta` VALUES (91628783,2,7,4);
INSERT INTO `respuesta` VALUES (91628785,1,2,4);
INSERT INTO `respuesta` VALUES (91628785,2,6,4);
INSERT INTO `respuesta` VALUES (91628785,2,7,4);
INSERT INTO `respuesta` VALUES (91628785,3,8,4);
INSERT INTO `respuesta` VALUES (91628786,1,6,4);
INSERT INTO `respuesta` VALUES (91628786,3,6,4);
INSERT INTO `respuesta` VALUES (91628787,1,6,4);
INSERT INTO `respuesta` VALUES (91628787,2,7,4);
INSERT INTO `respuesta` VALUES (91628787,2,8,4);
INSERT INTO `respuesta` VALUES (91628787,3,2,4);
INSERT INTO `respuesta` VALUES (91628787,3,6,4);
INSERT INTO `respuesta` VALUES (91628788,1,2,4);
INSERT INTO `respuesta` VALUES (91628788,1,6,4);
INSERT INTO `respuesta` VALUES (91628788,2,7,4);
INSERT INTO `respuesta` VALUES (91628789,2,7,4);
INSERT INTO `respuesta` VALUES (91628789,3,7,4);
INSERT INTO `respuesta` VALUES (91628790,2,6,4);
INSERT INTO `respuesta` VALUES (91628790,2,11,4);
INSERT INTO `respuesta` VALUES (91628790,3,7,4);
INSERT INTO `respuesta` VALUES (79628676,1,6,5);
INSERT INTO `respuesta` VALUES (91628692,2,6,5);
INSERT INTO `respuesta` VALUES (91628693,2,8,5);
INSERT INTO `respuesta` VALUES (91628693,2,11,5);
INSERT INTO `respuesta` VALUES (91628694,3,2,5);
INSERT INTO `respuesta` VALUES (91628694,3,6,5);
INSERT INTO `respuesta` VALUES (91628694,3,8,5);
INSERT INTO `respuesta` VALUES (91628695,1,6,5);
INSERT INTO `respuesta` VALUES (91628695,2,6,5);
INSERT INTO `respuesta` VALUES (91628695,2,7,5);
INSERT INTO `respuesta` VALUES (91628695,3,2,5);
INSERT INTO `respuesta` VALUES (91628695,3,8,5);
INSERT INTO `respuesta` VALUES (91628696,2,8,5);
INSERT INTO `respuesta` VALUES (91628696,3,8,5);
INSERT INTO `respuesta` VALUES (91628697,2,1,5);
INSERT INTO `respuesta` VALUES (91628697,2,11,5);
INSERT INTO `respuesta` VALUES (91628697,3,6,5);
INSERT INTO `respuesta` VALUES (91628698,2,1,5);
INSERT INTO `respuesta` VALUES (91628698,2,7,5);
INSERT INTO `respuesta` VALUES (91628698,3,7,5);
INSERT INTO `respuesta` VALUES (91628699,2,1,5);
INSERT INTO `respuesta` VALUES (91628701,3,7,5);
INSERT INTO `respuesta` VALUES (91628702,1,6,5);
INSERT INTO `respuesta` VALUES (91628703,2,8,5);
INSERT INTO `respuesta` VALUES (91628704,1,2,5);
INSERT INTO `respuesta` VALUES (91628704,1,6,5);
INSERT INTO `respuesta` VALUES (91628704,2,7,5);
INSERT INTO `respuesta` VALUES (91628704,2,11,5);
INSERT INTO `respuesta` VALUES (91628704,3,6,5);
INSERT INTO `respuesta` VALUES (91628704,3,8,5);
INSERT INTO `respuesta` VALUES (91628705,2,8,5);
INSERT INTO `respuesta` VALUES (91628705,3,8,5);
INSERT INTO `respuesta` VALUES (91628706,3,7,5);
INSERT INTO `respuesta` VALUES (91628707,1,6,5);
INSERT INTO `respuesta` VALUES (91628707,2,7,5);
INSERT INTO `respuesta` VALUES (91628707,3,7,5);
INSERT INTO `respuesta` VALUES (91628708,3,8,5);
INSERT INTO `respuesta` VALUES (91628709,3,6,5);
INSERT INTO `respuesta` VALUES (91628710,2,6,5);
INSERT INTO `respuesta` VALUES (91628710,2,8,5);
INSERT INTO `respuesta` VALUES (91628711,2,7,5);
INSERT INTO `respuesta` VALUES (91628711,3,2,5);
INSERT INTO `respuesta` VALUES (91628712,2,7,5);
INSERT INTO `respuesta` VALUES (91628712,2,11,5);
INSERT INTO `respuesta` VALUES (91628713,2,8,5);
INSERT INTO `respuesta` VALUES (91628714,2,1,5);
INSERT INTO `respuesta` VALUES (91628714,2,6,5);
INSERT INTO `respuesta` VALUES (91628715,2,7,5);
INSERT INTO `respuesta` VALUES (91628715,2,8,5);
INSERT INTO `respuesta` VALUES (91628716,1,6,5);
INSERT INTO `respuesta` VALUES (91628716,2,6,5);
INSERT INTO `respuesta` VALUES (91628716,2,11,5);
INSERT INTO `respuesta` VALUES (91628717,1,2,5);
INSERT INTO `respuesta` VALUES (91628717,1,6,5);
INSERT INTO `respuesta` VALUES (91628717,2,1,5);
INSERT INTO `respuesta` VALUES (91628717,2,6,5);
INSERT INTO `respuesta` VALUES (91628717,3,6,5);
INSERT INTO `respuesta` VALUES (91628719,2,1,5);
INSERT INTO `respuesta` VALUES (91628720,2,11,5);
INSERT INTO `respuesta` VALUES (91628720,3,2,5);
INSERT INTO `respuesta` VALUES (91628721,3,6,5);
INSERT INTO `respuesta` VALUES (91628721,3,8,5);
INSERT INTO `respuesta` VALUES (91628722,2,7,5);
INSERT INTO `respuesta` VALUES (91628722,2,8,5);
INSERT INTO `respuesta` VALUES (91628723,1,6,5);
INSERT INTO `respuesta` VALUES (91628723,2,8,5);
INSERT INTO `respuesta` VALUES (91628725,2,8,5);
INSERT INTO `respuesta` VALUES (91628725,3,6,5);
INSERT INTO `respuesta` VALUES (91628726,2,6,5);
INSERT INTO `respuesta` VALUES (91628727,2,6,5);
INSERT INTO `respuesta` VALUES (91628727,2,11,5);
INSERT INTO `respuesta` VALUES (91628727,3,7,5);
INSERT INTO `respuesta` VALUES (91628727,3,8,5);
INSERT INTO `respuesta` VALUES (91628728,2,6,5);
INSERT INTO `respuesta` VALUES (91628728,3,2,5);
INSERT INTO `respuesta` VALUES (91628728,3,7,5);
INSERT INTO `respuesta` VALUES (91628729,3,2,5);
INSERT INTO `respuesta` VALUES (91628730,1,2,5);
INSERT INTO `respuesta` VALUES (91628730,2,8,5);
INSERT INTO `respuesta` VALUES (91628730,3,2,5);
INSERT INTO `respuesta` VALUES (91628730,3,7,5);
INSERT INTO `respuesta` VALUES (91628730,3,8,5);
INSERT INTO `respuesta` VALUES (91628731,1,6,5);
INSERT INTO `respuesta` VALUES (91628732,2,6,5);
INSERT INTO `respuesta` VALUES (91628734,1,6,5);
INSERT INTO `respuesta` VALUES (91628734,3,2,5);
INSERT INTO `respuesta` VALUES (91628734,3,6,5);
INSERT INTO `respuesta` VALUES (91628734,3,8,5);
INSERT INTO `respuesta` VALUES (91628735,2,11,5);
INSERT INTO `respuesta` VALUES (91628736,1,6,5);
INSERT INTO `respuesta` VALUES (91628736,2,1,5);
INSERT INTO `respuesta` VALUES (91628736,3,7,5);
INSERT INTO `respuesta` VALUES (91628737,2,8,5);
INSERT INTO `respuesta` VALUES (91628737,2,11,5);
INSERT INTO `respuesta` VALUES (91628737,3,2,5);
INSERT INTO `respuesta` VALUES (91628738,2,7,5);
INSERT INTO `respuesta` VALUES (91628738,2,8,5);
INSERT INTO `respuesta` VALUES (91628738,2,11,5);
INSERT INTO `respuesta` VALUES (91628738,3,8,5);
INSERT INTO `respuesta` VALUES (91628739,2,7,5);
INSERT INTO `respuesta` VALUES (91628739,2,11,5);
INSERT INTO `respuesta` VALUES (91628739,3,6,5);
INSERT INTO `respuesta` VALUES (91628740,3,7,5);
INSERT INTO `respuesta` VALUES (91628741,2,6,5);
INSERT INTO `respuesta` VALUES (91628741,3,7,5);
INSERT INTO `respuesta` VALUES (91628742,3,7,5);
INSERT INTO `respuesta` VALUES (91628742,3,8,5);
INSERT INTO `respuesta` VALUES (91628743,1,6,5);
INSERT INTO `respuesta` VALUES (91628743,3,8,5);
INSERT INTO `respuesta` VALUES (91628745,1,6,5);
INSERT INTO `respuesta` VALUES (91628745,2,7,5);
INSERT INTO `respuesta` VALUES (91628745,2,11,5);
INSERT INTO `respuesta` VALUES (91628745,3,6,5);
INSERT INTO `respuesta` VALUES (91628745,3,8,5);
INSERT INTO `respuesta` VALUES (91628746,2,1,5);
INSERT INTO `respuesta` VALUES (91628746,2,8,5);
INSERT INTO `respuesta` VALUES (91628747,1,2,5);
INSERT INTO `respuesta` VALUES (91628747,2,1,5);
INSERT INTO `respuesta` VALUES (91628748,2,8,5);
INSERT INTO `respuesta` VALUES (91628748,2,11,5);
INSERT INTO `respuesta` VALUES (91628748,3,2,5);
INSERT INTO `respuesta` VALUES (91628750,1,6,5);
INSERT INTO `respuesta` VALUES (91628750,2,11,5);
INSERT INTO `respuesta` VALUES (91628750,3,8,5);
INSERT INTO `respuesta` VALUES (91628751,2,6,5);
INSERT INTO `respuesta` VALUES (91628751,2,11,5);
INSERT INTO `respuesta` VALUES (91628751,3,7,5);
INSERT INTO `respuesta` VALUES (91628752,2,6,5);
INSERT INTO `respuesta` VALUES (91628752,2,11,5);
INSERT INTO `respuesta` VALUES (91628752,3,6,5);
INSERT INTO `respuesta` VALUES (91628753,1,6,5);
INSERT INTO `respuesta` VALUES (91628753,2,6,5);
INSERT INTO `respuesta` VALUES (91628753,2,8,5);
INSERT INTO `respuesta` VALUES (91628753,3,2,5);
INSERT INTO `respuesta` VALUES (91628754,2,1,5);
INSERT INTO `respuesta` VALUES (91628755,2,7,5);
INSERT INTO `respuesta` VALUES (91628756,1,2,5);
INSERT INTO `respuesta` VALUES (91628756,2,6,5);
INSERT INTO `respuesta` VALUES (91628757,1,2,5);
INSERT INTO `respuesta` VALUES (91628757,1,6,5);
INSERT INTO `respuesta` VALUES (91628757,3,2,5);
INSERT INTO `respuesta` VALUES (91628758,2,8,5);
INSERT INTO `respuesta` VALUES (91628759,1,2,5);
INSERT INTO `respuesta` VALUES (91628759,3,2,5);
INSERT INTO `respuesta` VALUES (91628760,1,2,5);
INSERT INTO `respuesta` VALUES (91628760,1,6,5);
INSERT INTO `respuesta` VALUES (91628760,2,7,5);
INSERT INTO `respuesta` VALUES (91628760,2,8,5);
INSERT INTO `respuesta` VALUES (91628761,1,2,5);
INSERT INTO `respuesta` VALUES (91628761,2,7,5);
INSERT INTO `respuesta` VALUES (91628762,2,1,5);
INSERT INTO `respuesta` VALUES (91628762,3,6,5);
INSERT INTO `respuesta` VALUES (91628762,3,7,5);
INSERT INTO `respuesta` VALUES (91628762,3,8,5);
INSERT INTO `respuesta` VALUES (91628763,2,7,5);
INSERT INTO `respuesta` VALUES (91628764,2,7,5);
INSERT INTO `respuesta` VALUES (91628765,1,6,5);
INSERT INTO `respuesta` VALUES (91628765,2,6,5);
INSERT INTO `respuesta` VALUES (91628766,3,2,5);
INSERT INTO `respuesta` VALUES (91628767,1,2,5);
INSERT INTO `respuesta` VALUES (91628767,3,7,5);
INSERT INTO `respuesta` VALUES (91628767,3,8,5);
INSERT INTO `respuesta` VALUES (91628768,2,7,5);
INSERT INTO `respuesta` VALUES (91628768,2,11,5);
INSERT INTO `respuesta` VALUES (91628768,3,2,5);
INSERT INTO `respuesta` VALUES (91628772,2,1,5);
INSERT INTO `respuesta` VALUES (91628772,2,11,5);
INSERT INTO `respuesta` VALUES (91628772,3,6,5);
INSERT INTO `respuesta` VALUES (91628773,2,1,5);
INSERT INTO `respuesta` VALUES (91628773,3,8,5);
INSERT INTO `respuesta` VALUES (91628774,2,8,5);
INSERT INTO `respuesta` VALUES (91628774,2,11,5);
INSERT INTO `respuesta` VALUES (91628775,3,2,5);
INSERT INTO `respuesta` VALUES (91628776,2,1,5);
INSERT INTO `respuesta` VALUES (91628776,2,6,5);
INSERT INTO `respuesta` VALUES (91628777,1,2,5);
INSERT INTO `respuesta` VALUES (91628777,1,6,5);
INSERT INTO `respuesta` VALUES (91628777,2,1,5);
INSERT INTO `respuesta` VALUES (91628777,3,7,5);
INSERT INTO `respuesta` VALUES (91628778,2,1,5);
INSERT INTO `respuesta` VALUES (91628778,2,6,5);
INSERT INTO `respuesta` VALUES (91628778,2,7,5);
INSERT INTO `respuesta` VALUES (91628778,3,8,5);
INSERT INTO `respuesta` VALUES (91628779,2,1,5);
INSERT INTO `respuesta` VALUES (91628779,3,6,5);
INSERT INTO `respuesta` VALUES (91628780,2,7,5);
INSERT INTO `respuesta` VALUES (91628780,3,2,5);
INSERT INTO `respuesta` VALUES (91628780,3,8,5);
INSERT INTO `respuesta` VALUES (91628781,2,8,5);
INSERT INTO `respuesta` VALUES (91628781,3,7,5);
INSERT INTO `respuesta` VALUES (91628782,2,6,5);
INSERT INTO `respuesta` VALUES (91628783,1,2,5);
INSERT INTO `respuesta` VALUES (91628783,3,6,5);
INSERT INTO `respuesta` VALUES (91628784,1,2,5);
INSERT INTO `respuesta` VALUES (91628784,2,1,5);
INSERT INTO `respuesta` VALUES (91628784,2,6,5);
INSERT INTO `respuesta` VALUES (91628784,2,8,5);
INSERT INTO `respuesta` VALUES (91628784,3,6,5);
INSERT INTO `respuesta` VALUES (91628784,3,7,5);
INSERT INTO `respuesta` VALUES (91628785,2,11,5);
INSERT INTO `respuesta` VALUES (91628785,3,6,5);
INSERT INTO `respuesta` VALUES (91628785,3,7,5);
INSERT INTO `respuesta` VALUES (91628786,3,2,5);
INSERT INTO `respuesta` VALUES (91628787,2,6,5);
INSERT INTO `respuesta` VALUES (91628787,2,11,5);
INSERT INTO `respuesta` VALUES (91628788,2,1,5);
INSERT INTO `respuesta` VALUES (91628788,2,8,5);
INSERT INTO `respuesta` VALUES (91628789,2,8,5);
INSERT INTO `respuesta` VALUES (91628790,1,6,5);
INSERT INTO `respuesta` VALUES (91628790,2,1,5);
INSERT INTO `respuesta` VALUES (91628790,2,8,5);
INSERT INTO `respuesta` VALUES (91628790,3,2,5);
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_proceso`
--

DROP TABLE IF EXISTS `tipo_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_proceso` (
  `id_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_proceso`
--

LOCK TABLES `tipo_proceso` WRITE;
/*!40000 ALTER TABLE `tipo_proceso` DISABLE KEYS */;
INSERT INTO `tipo_proceso` VALUES (1,'Autoevaluación Institucional');
INSERT INTO `tipo_proceso` VALUES (2,'Autoevaluación de Programa');
INSERT INTO `tipo_proceso` VALUES (11,'tipo 1');
/*!40000 ALTER TABLE `tipo_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_respuesta`
--

DROP TABLE IF EXISTS `tipo_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_respuesta` (
  `id_tipo_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_respuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_respuesta`
--

LOCK TABLES `tipo_respuesta` WRITE;
/*!40000 ALTER TABLE `tipo_respuesta` DISABLE KEYS */;
INSERT INTO `tipo_respuesta` VALUES (1,'escala 1-5 acuerdo - desacuerdo');
/*!40000 ALTER TABLE `tipo_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_fuente_proceso`
--

DROP TABLE IF EXISTS `usuario_fuente_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_fuente_proceso` (
  `id_usuario_proceso` int(11) NOT NULL,
  `usuario_proceso` varchar(200) NOT NULL,
  `id_fuente_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_proceso`,`id_fuente_proceso`),
  KEY `id_usuario_proceso` (`id_usuario_proceso`),
  KEY `id_fuente_proceso` (`id_fuente_proceso`),
  CONSTRAINT `usuario_fuente_proceso_ibfk_1` FOREIGN KEY (`id_fuente_proceso`) REFERENCES `fuente_proceso` (`id_fuente_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_fuente_proceso`
--

LOCK TABLES `usuario_fuente_proceso` WRITE;
/*!40000 ALTER TABLE `usuario_fuente_proceso` DISABLE KEYS */;
INSERT INTO `usuario_fuente_proceso` VALUES (79628676,'79628676',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628691,'91628691',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628691,'91628691',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628691,'91628691',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628692,'91628692',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628692,'91628692',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628692,'91628692',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628693,'91628693',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628693,'91628693',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628693,'91628693',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628694,'91628694',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628694,'91628694',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628694,'91628694',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628695,'91628695',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628695,'91628695',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628695,'91628695',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628696,'91628696',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628696,'91628696',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628696,'91628696',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628697,'91628697',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628697,'91628697',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628697,'91628697',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628698,'91628698',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628698,'91628698',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628698,'91628698',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628699,'91628699',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628699,'91628699',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628699,'91628699',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628700,'91628700',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628700,'91628700',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628700,'91628700',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628701,'91628701',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628701,'91628701',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628701,'91628701',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628702,'91628702',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628702,'91628702',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628702,'91628702',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628703,'91628703',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628703,'91628703',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628703,'91628703',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628704,'91628704',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628704,'91628704',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628704,'91628704',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628705,'91628705',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628705,'91628705',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628705,'91628705',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628706,'91628706',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628706,'91628706',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628706,'91628706',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628707,'91628707',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628707,'91628707',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628707,'91628707',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628708,'91628708',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628708,'91628708',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628708,'91628708',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628709,'91628709',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628709,'91628709',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628709,'91628709',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628710,'91628710',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628710,'91628710',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628710,'91628710',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628711,'91628711',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628711,'91628711',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628711,'91628711',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628712,'91628712',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628712,'91628712',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628712,'91628712',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628713,'91628713',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628713,'91628713',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628713,'91628713',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628714,'91628714',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628714,'91628714',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628714,'91628714',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628715,'91628715',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628715,'91628715',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628715,'91628715',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628716,'91628716',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628716,'91628716',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628716,'91628716',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628717,'91628717',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628717,'91628717',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628717,'91628717',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628718,'91628718',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628718,'91628718',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628718,'91628718',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628719,'91628719',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628719,'91628719',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628719,'91628719',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628720,'91628720',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628720,'91628720',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628720,'91628720',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628721,'91628721',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628721,'91628721',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628721,'91628721',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628722,'91628722',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628722,'91628722',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628722,'91628722',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628723,'91628723',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628723,'91628723',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628723,'91628723',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628724,'91628724',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628724,'91628724',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628724,'91628724',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628725,'91628725',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628725,'91628725',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628725,'91628725',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628726,'91628726',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628726,'91628726',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628726,'91628726',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628727,'91628727',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628727,'91628727',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628727,'91628727',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628728,'91628728',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628728,'91628728',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628728,'91628728',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628729,'91628729',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628729,'91628729',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628729,'91628729',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628730,'91628730',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628730,'91628730',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628730,'91628730',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628731,'91628731',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628731,'91628731',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628731,'91628731',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628732,'91628732',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628732,'91628732',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628732,'91628732',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628733,'91628733',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628733,'91628733',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628733,'91628733',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628734,'91628734',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628734,'91628734',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628734,'91628734',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628735,'91628735',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628735,'91628735',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628735,'91628735',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628736,'91628736',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628736,'91628736',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628736,'91628736',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628737,'91628737',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628737,'91628737',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628737,'91628737',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628738,'91628738',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628738,'91628738',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628738,'91628738',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628739,'91628739',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628739,'91628739',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628739,'91628739',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628740,'91628740',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628740,'91628740',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628740,'91628740',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628741,'91628741',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628741,'91628741',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628741,'91628741',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628742,'91628742',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628742,'91628742',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628742,'91628742',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628743,'91628743',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628743,'91628743',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628743,'91628743',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628744,'91628744',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628744,'91628744',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628744,'91628744',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628745,'91628745',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628745,'91628745',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628745,'91628745',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628746,'91628746',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628746,'91628746',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628746,'91628746',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628747,'91628747',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628747,'91628747',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628747,'91628747',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628748,'91628748',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628748,'91628748',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628748,'91628748',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628749,'91628749',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628749,'91628749',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628749,'91628749',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628750,'91628750',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628750,'91628750',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628750,'91628750',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628751,'91628751',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628751,'91628751',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628751,'91628751',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628752,'91628752',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628752,'91628752',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628752,'91628752',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628753,'91628753',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628753,'91628753',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628753,'91628753',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628754,'91628754',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628754,'91628754',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628754,'91628754',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628755,'91628755',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628755,'91628755',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628755,'91628755',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628756,'91628756',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628756,'91628756',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628756,'91628756',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628757,'91628757',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628757,'91628757',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628757,'91628757',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628758,'91628758',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628758,'91628758',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628758,'91628758',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628759,'91628759',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628759,'91628759',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628759,'91628759',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628760,'91628760',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628760,'91628760',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628760,'91628760',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628761,'91628761',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628761,'91628761',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628761,'91628761',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628762,'91628762',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628762,'91628762',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628762,'91628762',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628763,'91628763',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628763,'91628763',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628763,'91628763',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628764,'91628764',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628764,'91628764',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628764,'91628764',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628765,'91628765',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628765,'91628765',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628765,'91628765',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628766,'91628766',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628766,'91628766',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628766,'91628766',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628767,'91628767',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628767,'91628767',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628767,'91628767',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628768,'91628768',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628768,'91628768',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628768,'91628768',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628769,'91628769',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628769,'91628769',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628769,'91628769',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628770,'91628770',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628770,'91628770',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628770,'91628770',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628771,'91628771',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628771,'91628771',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628771,'91628771',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628772,'91628772',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628772,'91628772',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628772,'91628772',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628773,'91628773',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628773,'91628773',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628773,'91628773',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628774,'91628774',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628774,'91628774',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628774,'91628774',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628775,'91628775',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628775,'91628775',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628775,'91628775',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628776,'91628776',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628776,'91628776',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628776,'91628776',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628777,'91628777',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628777,'91628777',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628777,'91628777',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628778,'91628778',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628778,'91628778',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628778,'91628778',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628779,'91628779',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628779,'91628779',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628779,'91628779',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628780,'91628780',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628780,'91628780',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628780,'91628780',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628781,'91628781',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628781,'91628781',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628781,'91628781',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628782,'91628782',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628782,'91628782',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628782,'91628782',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628783,'91628783',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628783,'91628783',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628783,'91628783',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628784,'91628784',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628784,'91628784',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628784,'91628784',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628785,'91628785',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628785,'91628785',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628785,'91628785',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628786,'91628786',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628786,'91628786',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628786,'91628786',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628787,'91628787',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628787,'91628787',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628787,'91628787',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628788,'91628788',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628788,'91628788',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628788,'91628788',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628789,'91628789',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628789,'91628789',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628789,'91628789',3);
INSERT INTO `usuario_fuente_proceso` VALUES (91628790,'91628790',1);
INSERT INTO `usuario_fuente_proceso` VALUES (91628790,'91628790',2);
INSERT INTO `usuario_fuente_proceso` VALUES (91628790,'91628790',3);
/*!40000 ALTER TABLE `usuario_fuente_proceso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-20  8:00:19
