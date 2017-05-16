-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2017 a las 03:36:12
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `wux`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `COD_GRUPO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(60) NOT NULL,
  `ORDEN` int(10) NOT NULL,
  PRIMARY KEY (`COD_GRUPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`COD_GRUPO`, `DESCRIPCION`, `ORDEN`) VALUES
(1, 'Unidad 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE IF NOT EXISTS `idioma` (
  `COD_IDIOMA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(30) NOT NULL,
  PRIMARY KEY (`COD_IDIOMA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`COD_IDIOMA`, `DESCRIPCION`) VALUES
(1, 'Kakchikel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leccion`
--

CREATE TABLE IF NOT EXISTS `leccion` (
  `COD_LECCION` int(11) NOT NULL AUTO_INCREMENT,
  `COD_MODULO` int(11) NOT NULL,
  `TITULO` varchar(60) NOT NULL,
  `ORDEN` int(10) NOT NULL,
  PRIMARY KEY (`COD_LECCION`),
  KEY `FKLECCION229606` (`COD_MODULO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `leccion`
--

INSERT INTO `leccion` (`COD_LECCION`, `COD_MODULO`, `TITULO`, `ORDEN`) VALUES
(1, 1, 'Lección 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
  `COD_MODULO` int(11) NOT NULL AUTO_INCREMENT,
  `COD_GRUPO` int(11) NOT NULL,
  `DESCRIPCION` varchar(60) NOT NULL,
  PRIMARY KEY (`COD_MODULO`),
  KEY `FKMODULO780488` (`COD_GRUPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`COD_MODULO`, `COD_GRUPO`, `DESCRIPCION`) VALUES
(1, 1, 'Colores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `COD_SECCION` int(11) NOT NULL AUTO_INCREMENT,
  `COD_IDIOMA` int(11) NOT NULL,
  `COD_LECCION` int(11) NOT NULL,
  `EXPRESION` varchar(300) NOT NULL,
  `TRADUCCION` varchar(300) NOT NULL,
  `IMG1` varchar(100) NOT NULL DEFAULT '',
  `IMG2` varchar(100) NOT NULL DEFAULT '',
  `AUDIO` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`COD_SECCION`),
  KEY `FKSECCION265978` (`COD_IDIOMA`),
  KEY `FKSECCION639352` (`COD_LECCION`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`COD_SECCION`, `COD_IDIOMA`, `COD_LECCION`, `EXPRESION`, `TRADUCCION`, `IMG1`, `IMG2`, `AUDIO`) VALUES
(1, 1, 1, 'Qlan', 'Amarillo', 'img/dados.jpg', 'img/dados.jpg', 'palabra.mp3'),
(2, 1, 1, 'Räx', 'Verde', 'img/dados.jpg', 'img/dados.jpg', 'palabra.mp3'),
(3, 1, 1, 'Xar', 'Azul', 'img/dados.jpg', 'img/dados.jpg', 'palabra.mp3'),
(4, 1, 1, 'Këq', 'Rojo', 'img/dados.jpg', 'img/dados.jpg', 'palabra.mp3'),
(5, 1, 1, 'Säq', 'Blanco', 'img/dados.jpg', 'img/dados.jpg', 'palabra.mp3');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `leccion`
--
ALTER TABLE `leccion`
  ADD CONSTRAINT `FKLECCION229606` FOREIGN KEY (`COD_MODULO`) REFERENCES `modulo` (`COD_MODULO`);

--
-- Filtros para la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `FKMODULO780488` FOREIGN KEY (`COD_GRUPO`) REFERENCES `grupo` (`COD_GRUPO`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `FKSECCION639352` FOREIGN KEY (`COD_LECCION`) REFERENCES `leccion` (`COD_LECCION`),
  ADD CONSTRAINT `FKSECCION265978` FOREIGN KEY (`COD_IDIOMA`) REFERENCES `idioma` (`COD_IDIOMA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
