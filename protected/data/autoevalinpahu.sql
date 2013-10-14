-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2013 at 05:41 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autoevalinpahu`
--

-- --------------------------------------------------------

--
-- Table structure for table `caracteristica_pregunta_proceso`
--

CREATE TABLE IF NOT EXISTS `caracteristica_pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_caracteristica_proceso` int(11) NOT NULL,
  KEY `id_caracteristica_proceso` (`id_caracteristica_proceso`),
  KEY `id_pregunta_proceso` (`id_pregunta_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caracteristica_pregunta_proceso`
--

INSERT INTO `caracteristica_pregunta_proceso` (`id_pregunta_proceso`, `id_caracteristica_proceso`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `caracteristica_proceso`
--

CREATE TABLE IF NOT EXISTS `caracteristica_proceso` (
  `id_caracteristica_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero_caracteristica` int(11) NOT NULL,
  `id_factor_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_caracteristica_proceso`),
  KEY `id_factor_proceso` (`id_factor_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `caracteristica_proceso`
--

INSERT INTO `caracteristica_proceso` (`id_caracteristica_proceso`, `titulo`, `descripcion`, `numero_caracteristica`, `id_factor_proceso`) VALUES
(1, 'Característica 1', '', 1, 1),
(2, 'Característica 2', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `factor_proceso`
--

CREATE TABLE IF NOT EXISTS `factor_proceso` (
  `id_factor_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_proceso` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero_factor` int(11) NOT NULL,
  PRIMARY KEY (`id_factor_proceso`),
  KEY `id_proceso` (`id_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `factor_proceso`
--

INSERT INTO `factor_proceso` (`id_factor_proceso`, `id_proceso`, `titulo`, `descripcion`, `numero_factor`) VALUES
(1, 1, 'Proyecto institucional ', '', 1),
(2, 1, 'Estudiantes', '', 2),
(3, 1, 'Profesores', '', 3),
(4, 1, 'Procesos Académicos', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `fuente_proceso`
--

CREATE TABLE IF NOT EXISTS `fuente_proceso` (
  `id_fuente_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `enunciado` longtext NOT NULL,
  `id_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_fuente_proceso`),
  KEY `id_proceso` (`id_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuente_proceso`
--

INSERT INTO `fuente_proceso` (`id_fuente_proceso`, `nombre`, `descripcion`, `enunciado`, `id_proceso`) VALUES
(1, 'Estudiantes', '', '', 1),
(2, 'Profesores', '', '', 1),
(3, 'Administrativos', '', '', 1),
(4, 'Directivos', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opciones_respuesta`
--

CREATE TABLE IF NOT EXISTS `opciones_respuesta` (
  `id_opcion` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  `valor` int(11) NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `opciones_respuesta`
--

INSERT INTO `opciones_respuesta` (`id_opcion`, `respuesta`, `valor`, `id_tipo_respuesta`) VALUES
(1, 'Totalmente de acuerdo', 5, 1),
(2, 'De acuerdo', 4, 1),
(3, 'Indeciso', 3, 1),
(4, 'En desacuerdo', 2, 1),
(5, 'Totalmente en Desacuerdo', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pregunta_fuente_proceso`
--

CREATE TABLE IF NOT EXISTS `pregunta_fuente_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_fuente_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_pregunta_proceso`,`id_fuente_proceso`),
  KEY `id_fuente_proceso` (`id_fuente_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pregunta_proceso`
--

CREATE TABLE IF NOT EXISTS `pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `enunciado` longtext NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_pregunta_proceso`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`),
  KEY `id_proceso` (`id_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pregunta_proceso`
--

INSERT INTO `pregunta_proceso` (`id_pregunta_proceso`, `enunciado`, `id_tipo_respuesta`, `id_proceso`) VALUES
(1, 'La Misión de INPAHU está en directa concordancia con la naturaleza de la Institución, su tradición, objetivos y logros académicos en la formación integral de personas autónomas, con espiritu emprendedor, actitud investigativa, capaces de adoptar, aplicar y transferir los conocimientos científicos, técnicos y tecnológicos a sus áreas de competencia, a las nuevas condiciones empresariales y a la realidad del país.', 1, 1),
(2, 'Los procesos académicos y administrativos de INPAHU están en coherencia con su Misión y son pertinentes para garantizar su desarrollo a cabalidad.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proceso`
--

CREATE TABLE IF NOT EXISTS `proceso` (
  `id_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_tipo_proceso` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `proceso`
--

INSERT INTO `proceso` (`id_proceso`, `fecha_inicio`, `fecha_fin`, `id_tipo_proceso`, `descripcion`) VALUES
(1, '2013-10-12', '2013-11-14', 1, 'Proceso de prueba');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_proceso`
--

CREATE TABLE IF NOT EXISTS `tipo_proceso` (
  `id_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_proceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tipo_proceso`
--

INSERT INTO `tipo_proceso` (`id_tipo_proceso`, `nombre`) VALUES
(1, 'Autoevaluación Institucional'),
(2, 'Autoevaluación de Programa');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_respuesta`
--

CREATE TABLE IF NOT EXISTS `tipo_respuesta` (
  `id_tipo_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_respuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tipo_respuesta`
--

INSERT INTO `tipo_respuesta` (`id_tipo_respuesta`, `titulo`) VALUES
(1, 'escala 1-5 acuerdo - desacuerdo');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caracteristica_pregunta_proceso`
--
ALTER TABLE `caracteristica_pregunta_proceso`
  ADD CONSTRAINT `caracteristica_pregunta_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`),
  ADD CONSTRAINT `caracteristica_pregunta_proceso_ibfk_2` FOREIGN KEY (`id_caracteristica_proceso`) REFERENCES `caracteristica_proceso` (`id_caracteristica_proceso`);

--
-- Constraints for table `caracteristica_proceso`
--
ALTER TABLE `caracteristica_proceso`
  ADD CONSTRAINT `caracteristica_proceso_ibfk_1` FOREIGN KEY (`id_factor_proceso`) REFERENCES `factor_proceso` (`id_factor_proceso`);

--
-- Constraints for table `factor_proceso`
--
ALTER TABLE `factor_proceso`
  ADD CONSTRAINT `factor_proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`);

--
-- Constraints for table `fuente_proceso`
--
ALTER TABLE `fuente_proceso`
  ADD CONSTRAINT `fuente_proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`);

--
-- Constraints for table `opciones_respuesta`
--
ALTER TABLE `opciones_respuesta`
  ADD CONSTRAINT `opciones_respuesta_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`);

--
-- Constraints for table `pregunta_fuente_proceso`
--
ALTER TABLE `pregunta_fuente_proceso`
  ADD CONSTRAINT `pregunta_fuente_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`),
  ADD CONSTRAINT `pregunta_fuente_proceso_ibfk_2` FOREIGN KEY (`id_fuente_proceso`) REFERENCES `fuente_proceso` (`id_fuente_proceso`);

--
-- Constraints for table `pregunta_proceso`
--
ALTER TABLE `pregunta_proceso`
  ADD CONSTRAINT `pregunta_proceso_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`),
  ADD CONSTRAINT `pregunta_proceso_ibfk_2` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`);

--
-- Constraints for table `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `tipo_proceso` (`id_tipo_proceso`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
