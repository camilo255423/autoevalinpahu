-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2013 a las 21:43:57
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `autoevalinpahu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica_pregunta_proceso`
--

CREATE TABLE IF NOT EXISTS `caracteristica_pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_caracteristica_proceso` int(11) NOT NULL,
  KEY `id_caracteristica_proceso` (`id_caracteristica_proceso`),
  KEY `id_pregunta_proceso` (`id_pregunta_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica_proceso`
--

CREATE TABLE IF NOT EXISTS `caracteristica_proceso` (
  `id_caracteristica_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero` int(11) NOT NULL,
  `id_factor_proceso` int(11) NOT NULL,
  PRIMARY KEY (`id_caracteristica_proceso`),
  KEY `id_factor_proceso` (`id_factor_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factor_proceso`
--

CREATE TABLE IF NOT EXISTS `factor_proceso` (
  `id_factor_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_proceso` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `numero_factor` int(11) NOT NULL,
  PRIMARY KEY (`id_factor_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuente_proceso`
--

CREATE TABLE IF NOT EXISTS `fuente_proceso` (
  `id_fuente_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `enunciado` longtext NOT NULL,
  PRIMARY KEY (`id_fuente_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_respuesta`
--

CREATE TABLE IF NOT EXISTS `opciones_respuesta` (
  `id_opcion` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_fuente_proceso`
--

CREATE TABLE IF NOT EXISTS `pregunta_fuente_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL,
  `id_fuente_proceso` int(11) NOT NULL,
  UNIQUE KEY `id_pregunta_proceso_2` (`id_pregunta_proceso`),
  UNIQUE KEY `id_fuente_proceso_2` (`id_fuente_proceso`),
  KEY `id_pregunta_proceso` (`id_pregunta_proceso`),
  KEY `id_fuente_proceso` (`id_fuente_proceso`),
  KEY `id_pregunta_proceso_3` (`id_pregunta_proceso`),
  KEY `id_pregunta_proceso_4` (`id_pregunta_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_proceso`
--

CREATE TABLE IF NOT EXISTS `pregunta_proceso` (
  `id_pregunta_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `enunciado` longtext NOT NULL,
  `id_tipo_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_pregunta_proceso`),
  KEY `id_tipo_respuesta` (`id_tipo_respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE IF NOT EXISTS `proceso` (
  `id_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `tipo_proceso` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proceso`
--

CREATE TABLE IF NOT EXISTS `tipo_proceso` (
  `id_tipo_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_respuesta`
--

CREATE TABLE IF NOT EXISTS `tipo_respuesta` (
  `id_tipo_respuesta` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tipo_respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristica_pregunta_proceso`
--
ALTER TABLE `caracteristica_pregunta_proceso`
  ADD CONSTRAINT `caracteristica_pregunta_proceso_ibfk_2` FOREIGN KEY (`id_caracteristica_proceso`) REFERENCES `caracteristica_proceso` (`id_caracteristica_proceso`),
  ADD CONSTRAINT `caracteristica_pregunta_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`);

--
-- Filtros para la tabla `caracteristica_proceso`
--
ALTER TABLE `caracteristica_proceso`
  ADD CONSTRAINT `caracteristica_proceso_ibfk_1` FOREIGN KEY (`id_factor_proceso`) REFERENCES `factor_proceso` (`id_factor_proceso`);

--
-- Filtros para la tabla `factor_proceso`
--
ALTER TABLE `factor_proceso`
  ADD CONSTRAINT `factor_proceso_ibfk_1` FOREIGN KEY (`id_factor_proceso`) REFERENCES `proceso` (`id_proceso`);

--
-- Filtros para la tabla `opciones_respuesta`
--
ALTER TABLE `opciones_respuesta`
  ADD CONSTRAINT `opciones_respuesta_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`);

--
-- Filtros para la tabla `pregunta_fuente_proceso`
--
ALTER TABLE `pregunta_fuente_proceso`
  ADD CONSTRAINT `pregunta_fuente_proceso_ibfk_2` FOREIGN KEY (`id_fuente_proceso`) REFERENCES `fuente_proceso` (`id_fuente_proceso`),
  ADD CONSTRAINT `pregunta_fuente_proceso_ibfk_1` FOREIGN KEY (`id_pregunta_proceso`) REFERENCES `pregunta_proceso` (`id_pregunta_proceso`);

--
-- Filtros para la tabla `pregunta_proceso`
--
ALTER TABLE `pregunta_proceso`
  ADD CONSTRAINT `pregunta_proceso_ibfk_1` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`);

--
-- Filtros para la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `tipo_proceso` (`id_tipo_proceso`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
