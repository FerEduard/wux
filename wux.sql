-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2017 a las 00:58:18
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`COD_IDIOMA`, `DESCRIPCION`) VALUES
(1, 'Kakchikel'),
(27, 'Español'),
(28, 'Portuguez');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `leccion`
--

INSERT INTO `leccion` (`COD_LECCION`, `COD_MODULO`, `TITULO`, `ORDEN`) VALUES
(1, 1, 'Lección 1', 1),
(2, 2, 'Lección 1', 1),
(3, 2, 'Lección 2', 2),
(4, 2, 'Lección 3', 3),
(5, 2, 'Lección 4', 4),
(6, 3, 'Lección 1', 1),
(7, 4, 'Lección 1', 1),
(8, 4, 'Lección 2', 2),
(9, 4, 'Lección 3', 3),
(10, 4, 'Lección 4', 4),
(12, 5, 'Lección 1', 1),
(13, 5, 'Lección 2', 2),
(14, 6, 'Lección 1', 1),
(15, 6, 'Lección 2', 2),
(16, 7, 'Lección 1', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`COD_MODULO`, `COD_GRUPO`, `DESCRIPCION`) VALUES
(1, 1, 'Colores'),
(2, 1, 'Números'),
(3, 1, 'Personas'),
(4, 1, 'Animales'),
(5, 1, 'Tiempo'),
(6, 1, 'Números 2'),
(7, 1, 'Ocupaciones');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`COD_SECCION`, `COD_IDIOMA`, `COD_LECCION`, `EXPRESION`, `TRADUCCION`, `IMG1`, `IMG2`, `AUDIO`) VALUES
(1, 1, 1, 'Qlan', 'Amarillo', 'img/globos.jpg', 'img/bananos.jpg', 'palabra.mp3'),
(2, 1, 1, 'Räx', 'Verde', 'img/manzanas.jpg', 'img/grama.jpg', 'palabra.mp3'),
(3, 1, 1, 'Xar', 'Azul', 'img/cielo.jpg', 'img/dados.jpg', 'palabra.mp3'),
(4, 1, 1, 'Këq', 'Rojo', 'img/vasos.jpg', 'img/cerezas.jpg', 'palabra.mp3'),
(5, 1, 1, 'Säq', 'Blanco', 'img/rosas.jpg', 'img/invierno.jpg', 'palabra.mp3'),
(6, 1, 1, 'Qleb', 'Negro', 'img/pantera.jpg', 'img/celular.jpg', 'palabra.mp3'),
(7, 1, 2, 'Jun', 'Uno', 'img/calendario.jpg', 'img/contable.jpg', 'palabra.mp3'),
(8, 1, 2, 'Ka’i’', 'Dos', 'img/calendario.jpg', 'img/contable.jpg', ''),
(9, 1, 2, 'Oxi’', 'Tres', 'img/calendario.jpg', 'img/contable.jpg', ''),
(10, 1, 2, 'Kaji’', 'Cuatro', 'img/calendario.jpg', 'img/contable.jpg', ''),
(11, 1, 2, 'Wo’o’', 'Cinco', 'img/calendario.jpg', 'img/contable.jpg', ''),
(12, 1, 3, 'Waqi’', 'Seis', 'img/calendario.jpg', 'img/contable.jpg', ''),
(13, 1, 3, 'Wuqu’', 'Siete', 'img/calendario.jpg', 'img/contable.jpg', ''),
(14, 1, 3, 'Waqxaqi’', 'Ocho', 'img/calendario.jpg', 'img/contable.jpg', ''),
(15, 1, 3, 'B’eleje’', 'Nueve', 'img/calendario.jpg', 'img/contable.jpg', ''),
(16, 1, 3, 'Lajuj', 'Diez', 'img/calendario.jpg', 'img/contable.jpg', ''),
(17, 1, 4, 'Julajuj', 'Once', 'img/calendario.jpg', 'img/contable.jpg', ''),
(18, 1, 4, 'Kab’lajuj', 'Doce', 'img/calendario.jpg', 'img/contable.jpg', ''),
(19, 1, 4, 'Oxajuj', 'Trece', 'img/calendario.jpg', 'img/contable.jpg', ''),
(20, 1, 4, 'Kajlajuj', 'Catorce', 'img/calendario.jpg', 'img/contable.jpg', ''),
(21, 1, 4, 'Wolajuj', 'Quince', 'img/calendario.jpg', 'img/contable.jpg', ''),
(22, 1, 5, 'Waqlajuj', 'Dieciséis', 'img/calendario.jpg', 'img/contable.jpg', ''),
(23, 1, 5, 'Wuqlajuj', 'Diecisiete', 'img/calendario.jpg', 'img/contable.jpg', ''),
(24, 1, 5, 'Waqxaqlajuj', 'Dieciocho', 'img/calendario.jpg', 'img/contable.jpg', ''),
(25, 1, 5, 'B’elejlajuj', 'Diecinueve', 'img/calendario.jpg', 'img/contable.jpg', ''),
(26, 1, 5, 'Juk’aj', 'Veinte', 'img/calendario.jpg', 'img/contable.jpg', ''),
(27, 1, 6, 'Ixöq', 'Mujer', '', '', ''),
(28, 1, 6, 'Ak’wal', 'Niño/Niña', '', '', ''),
(29, 1, 6, 'Te’ej', 'Madre', '', '', ''),
(30, 1, 6, 'Tata’aj', 'Padre', '', '', ''),
(31, 1, 6, 'Ati’t', 'Abuela', '', '', ''),
(32, 1, 6, 'Mama’aj', 'Abuelo', '', '', ''),
(33, 1, 7, 'Chiköq', 'Animal', 'img/animales.jpg', 'img/perros.jpg', ''),
(34, 1, 7, 'Chomapi’y', 'Pavo Real', 'img/pavo real1.jpg', 'img/pavo real2.jpg', ''),
(35, 1, 7, 'Chomik’uk', 'Rinoceronte', 'img/rinoceronte1.jpg', 'img/rinoceronte2.jpg', ''),
(36, 1, 7, 'B’alam', 'Jaguar', 'img/jaguar1.jpg', 'img/jaguar2.jpg', ''),
(37, 1, 7, 'Xiwan', 'Zorro', 'img/zorro1.jpg', 'img/zorro2.jpg', ''),
(38, 1, 8, 'Mama’ äk', 'Gallo', 'img/gallo1.jpg', 'img/gallo2.jpg', ''),
(39, 1, 8, 'Ixöq wakx', 'Vaca', 'img/vaca1.jpg', 'img/vaca2.jpg', ''),
(40, 1, 8, 'Tz’i’', 'Perro', 'img/perros.jpg', 'img/perro2.jpg', ''),
(41, 1, 8, 'Qo’l', 'Pavo', 'img/pavo1.jpg', 'img/pavo2.jpg', ''),
(42, 1, 8, 'Ch’oy', 'Ratón', 'img/raton1.jpg', 'img/raton2.jpg', ''),
(43, 1, 9, 'Kuk', 'Ardilla', 'img/ardilla1.jpg', 'img/ardilla2.jpg', ''),
(44, 1, 9, 'Umbül', 'Conejo', 'img/conejo1.jpg', 'img/conejo2.jpg', ''),
(45, 1, 9, 'Tz’unün', 'Colibrí', 'img/colibri1.jpg', 'img/colibri2.jpg', ''),
(46, 1, 9, 'Tukur', 'Búho', 'img/buho1.jpg', 'img/buho2.jpg', ''),
(47, 1, 9, 'Palamax', 'Mariposa', 'img/mariposa1.jpg', 'img/mariposa2.jpg', ''),
(48, 1, 10, 'Q’uq’', 'Quetzal', 'img/quetzal1.jpg', 'img/quetzal2.jpg', ''),
(49, 1, 10, 'B’alam', 'Leopardo', 'img/leopardo1.jpg', 'img/leopardo2.jpg', ''),
(50, 1, 10, 'Kej', 'Venado', 'img/venado1.jpg', 'img/venado2.jpg', ''),
(51, 1, 10, 'Utiw', 'Lobo', 'img/lobo1.jpg', 'img/lobo2.jpg', ''),
(56, 1, 12, 'Myer', 'Hace rato', 'img/calendario.jpg', 'img/contable.jpg', ''),
(57, 1, 12, 'Wajami', 'Hoy', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(58, 1, 12, 'Chwa’q', 'Mañana', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(59, 1, 12, 'Kaq’il', 'Pasado Mañana', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(60, 1, 12, 'Oxij', 'Dentro de tres días', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(61, 1, 13, 'Kajij', 'Dentro de cuatro días', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(62, 1, 13, 'Chaq’a’', 'En la noche', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(63, 1, 13, 'Kaq’ijir', 'Anteayer', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(64, 1, 13, 'Junab’ir', 'El año pasado', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(65, 1, 13, 'Kab’ab’ir', 'Hace dos años', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(66, 1, 14, 'Nab’ey', 'Primero', 'img/calendario.jpg', 'img/reloj.jpg', ''),
(67, 1, 14, 'Ruka’n', 'Segundo', 'img/calendario.jpg', 'img/contable.jpg', ''),
(68, 1, 14, 'Rox', 'Tercero', 'img/calendario.jpg', 'img/contable.jpg', ''),
(69, 1, 14, 'Rukaj', 'Cuarto', 'img/calendario.jpg', 'img/contable.jpg', ''),
(70, 1, 14, 'Ro’', 'Quinto', 'img/calendario.jpg', 'img/contable.jpg', ''),
(71, 1, 15, 'Ruwaq', 'Sexto', 'img/calendario.jpg', 'img/contable.jpg', ''),
(72, 1, 15, 'Ruwuq', 'Séptimo', 'img/calendario.jpg', 'img/contable.jpg', ''),
(73, 1, 15, 'Ruwaqxaq', 'Octavo', 'img/calendario.jpg', 'img/contable.jpg', ''),
(74, 1, 15, 'Rub’elej', 'Noveno', 'img/calendario.jpg', 'img/contable.jpg', ''),
(75, 1, 15, 'Rulaj', 'Décimo', 'img/calendario.jpg', 'img/contable.jpg', ''),
(76, 1, 16, 'Aq’omanel', 'Médico', '', '', ''),
(77, 1, 16, 'Tijonel', 'Maestro', '', '', ''),
(78, 1, 16, 'B’anöy kaxlanwäy', 'Panadero', '', '', ''),
(79, 1, 16, 'B’anöy xajab’', 'Zapatero', '', '', '');

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
  ADD CONSTRAINT `FKSECCION265978` FOREIGN KEY (`COD_IDIOMA`) REFERENCES `idioma` (`COD_IDIOMA`),
  ADD CONSTRAINT `FKSECCION639352` FOREIGN KEY (`COD_LECCION`) REFERENCES `leccion` (`COD_LECCION`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
