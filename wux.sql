-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2017 a las 04:20:28
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
  `REC` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`COD_SECCION`),
  KEY `FKSECCION265978` (`COD_IDIOMA`),
  KEY `FKSECCION639352` (`COD_LECCION`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`COD_SECCION`, `COD_IDIOMA`, `COD_LECCION`, `EXPRESION`, `TRADUCCION`, `IMG1`, `IMG2`, `AUDIO`, `REC`) VALUES
(1, 1, 1, 'Qlan', 'Amarillo', 'img/globos.jpg', 'img/bananos.jpg', 'amarillo.mp3', ''),
(2, 1, 1, 'Räx', 'Verde', 'img/manzanas.jpg', 'img/grama.jpg', 'verde.mp3', '&red& &res& &Rest& &re& &race&'),
(3, 1, 1, 'Xar', 'Azul', 'img/cielo.jpg', 'img/dados.jpg', 'azul.mp3', '&Jack& &chat& &jazz& &ya& &SAT& &chat& &ya& &chance& &San& &Hash& &Hatch& &Ha Ash& &ja&'),
(4, 1, 1, 'Këq', 'Rojo', 'img/vasos.jpg', 'img/cerezas.jpg', 'rojo.mp3', ''),
(5, 1, 1, 'Säq', 'Blanco', 'img/rosas.jpg', 'img/invierno.jpg', 'blanco.mp3', ''),
(6, 1, 1, 'Qleb', 'Negro', 'img/pantera.jpg', 'img/celular.jpg', 'negro.mp3', ''),
(7, 1, 2, 'Jun', 'Uno', 'img/calendario.jpg', 'img/contable.jpg', 'uno.mp3', '&home& &Juan& &un& &Hulk& &jun& &home& &jul&'),
(8, 1, 2, 'Ka’i’', 'Dos', 'img/calendario.jpg', 'img/contable.jpg', 'dos.mp3', '&caí& &cae& &Kai& &calle& &Kay& &cae&'),
(9, 1, 2, 'Oxi’', 'Tres', 'img/calendario.jpg', 'img/contable.jpg', 'tres.mp3', '&así& &hoy sí& &hoy y& &o si& &olli& &Osi& &Oye&'),
(10, 1, 2, 'Kaji’', 'Cuatro', 'img/calendario.jpg', 'img/contable.jpg', 'cuatro.mp3', ''),
(11, 1, 2, 'Wo’o’', 'Cinco', 'img/calendario.jpg', 'img/contable.jpg', 'cinco.mp3', ''),
(12, 1, 3, 'Waqi’', 'Seis', 'img/calendario.jpg', 'img/contable.jpg', 'seis.mp3', ''),
(13, 1, 3, 'Wuqu’', 'Siete', 'img/calendario.jpg', 'img/contable.jpg', 'siete.mp3', ''),
(14, 1, 3, 'Waqxaqi’', 'Ocho', 'img/calendario.jpg', 'img/contable.jpg', 'ocho.mp3', ''),
(15, 1, 3, 'B’eleje’', 'Nueve', 'img/calendario.jpg', 'img/contable.jpg', 'nueve.mp3', '&Vélez& &Belén& &ver& &blg& &LG& &bng&'),
(16, 1, 3, 'Lajuj', 'Diez', 'img/calendario.jpg', 'img/contable.jpg', 'diez.mp3', ''),
(17, 1, 4, 'Julajuj', 'Once', 'img/calendario.jpg', 'img/contable.jpg', 'once.mp3', '&hoola hoop& &hula hoop& &jula ju& &julajop& &julaju& '),
(18, 1, 4, 'Kab’lajuj', 'Doce', 'img/calendario.jpg', 'img/contable.jpg', 'doce.mp3', '&Carla hot& &habla hockey& &habla hot& &tabla hockey& &tabla home& &tabla hop& &tabla hot& &Yahoo& &Apple&'),
(19, 1, 4, 'Oxajuj', 'Trece', 'img/calendario.jpg', 'img/contable.jpg', 'trece.mp3', '&bajo& &el ajo& &enojo& &flaco& &Hola ju& &página& &syllabus& &xelaju& &Xelajú& &Yahoo&'),
(20, 1, 4, 'Kajlajuj', 'Catorce', 'img/calendario.jpg', 'img/contable.jpg', 'catorce.mp3', ''),
(21, 1, 4, 'Wolajuj', 'Quince', 'img/calendario.jpg', 'img/contable.jpg', 'quince.mp3', '&bola ju& &Cuanajo& &golazo& &Guanaco& &guanaja& &guanajo& &guanaju& &Hola ju& &wallapop&'),
(22, 1, 5, 'Waqlajuj', 'Dieciséis', 'img/calendario.jpg', 'img/contable.jpg', 'dieciseis.mp3', ''),
(23, 1, 5, 'Wuqlajuj', 'Diecisiete', 'img/calendario.jpg', 'img/contable.jpg', 'diecisiete.mp3', ''),
(24, 1, 5, 'Waqxaqlajuj', 'Dieciocho', 'img/calendario.jpg', 'img/contable.jpg', 'dieciocho.mp3', ''),
(25, 1, 5, 'B’elejlajuj', 'Diecinueve', 'img/calendario.jpg', 'img/contable.jpg', 'diecinueve.mp3', ''),
(26, 1, 5, 'Juk’aj', 'Veinte', 'img/calendario.jpg', 'img/contable.jpg', 'veinte.mp3', ''),
(27, 1, 6, 'Ixöq', 'Mujer', '', '', 'mujer.mp3', ''),
(28, 1, 6, 'Ak’wal', 'Niño/Niña', '', '', 'nino.mp3', ''),
(29, 1, 6, 'Te’ej', 'Madre', '', '', 'madre.mp3', ''),
(30, 1, 6, 'Tata’aj', 'Padre', '', '', 'padre.mp3', ''),
(31, 1, 6, 'Ati’t', 'Abuela', '', '', '', ''),
(32, 1, 6, 'Mama’aj', 'Abuelo', '', '', '', ''),
(33, 1, 7, 'Chiköq', 'Animal', 'img/animales.jpg', 'img/perros.jpg', 'animal.mp3', '&chica& &Chicago& &chicas& &Chicken& &chico& &chicos& &coc& &coca& &ok& &rock& '),
(34, 1, 7, 'Chomapi’y', 'Pavo Real', 'img/pavo real1.jpg', 'img/pavo real2.jpg', '', ''),
(35, 1, 7, 'Chomik’uk', 'Rinoceronte', 'img/rinoceronte1.jpg', 'img/rinoceronte2.jpg', '', ''),
(36, 1, 7, 'B’alam', 'Jaguar', 'img/jaguar1.jpg', 'img/jaguar2.jpg', '', ''),
(37, 1, 7, 'Xiwan', 'Zorro', 'img/zorro1.jpg', 'img/zorro2.jpg', '', ''),
(38, 1, 8, 'Mama’ äk', 'Gallo', 'img/gallo1.jpg', 'img/gallo2.jpg', 'gallo.mp3', '&mama& &mamá& &mamá && &mamá es& &Mamma&'),
(39, 1, 8, 'Ixöq wakx', 'Vaca', 'img/vaca1.jpg', 'img/vaca2.jpg', 'vaca.mp3', '&hiso watch& &hisopos& &hizo watch& &I so watch& &Isaac& &Isaac watch& &Isaac watts& &ISO watch& &isox& &issaquah& '),
(40, 1, 8, 'Tz’i’', 'Perro', 'img/perros.jpg', 'img/perro2.jpg', 'perro.mp3', ''),
(41, 1, 8, 'Qo’l', 'Pavo/Chompipe', 'img/pavo1.jpg', 'img/pavo2.jpg', 'pavo.mp3', ''),
(42, 1, 8, 'Ch’oy', 'Ratón', 'img/raton1.jpg', 'img/raton2.jpg', 'raton.mp3', ''),
(43, 1, 9, 'Kuk', 'Ardilla', 'img/ardilla1.jpg', 'img/ardilla2.jpg', 'ardilla.mp3', ''),
(44, 1, 9, 'Umül', 'Conejo', 'img/conejo1.jpg', 'img/conejo2.jpg', 'conejo.mp3', ''),
(45, 1, 9, 'Tz’unün', 'Colibrí', 'img/colibri1.jpg', 'img/colibri2.jpg', 'colibri.mp3', ''),
(46, 1, 9, 'Tukur', 'Búho', 'img/buho1.jpg', 'img/buho2.jpg', 'buho.mp3', ''),
(47, 1, 9, 'Palamax', 'Mariposa', 'img/mariposa1.jpg', 'img/mariposa2.jpg', 'mariposa.mp3', ''),
(48, 1, 10, 'Q’uq’', 'Quetzal', 'img/quetzal1.jpg', 'img/quetzal2.jpg', 'quetzal.mp3', ''),
(49, 1, 10, 'B’alam', 'Leopardo', 'img/leopardo1.jpg', 'img/leopardo2.jpg', 'leopardo.mp3', ''),
(50, 1, 10, 'Kej', 'Caballo', 'img/caballo1.jpg', 'img/caballo2.jpg', 'caballo.mp3', ''),
(51, 1, 10, 'Utiw', 'Lobo', 'img/lobo1.jpg', 'img/lobo2.jpg', 'lobo.mp3', ''),
(56, 1, 12, 'Myer', 'Hace rato', 'img/calendario.jpg', 'img/contable.jpg', 'hace rato.mp3', ''),
(57, 1, 12, 'Wajami', 'Hoy', 'img/calendario.jpg', 'img/reloj.jpg', 'hoy.mp3', ''),
(58, 1, 12, 'Chwa’q', 'Mañana', 'img/calendario.jpg', 'img/reloj.jpg', 'manana.mp3', ''),
(59, 1, 12, 'Kaq’il', 'Pasado Mañana', 'img/calendario.jpg', 'img/reloj.jpg', 'pasado manana.mp3', ''),
(60, 1, 12, 'Pa'' Oxi'' Quij', 'Dentro de tres días', 'img/calendario.jpg', 'img/reloj.jpg', 'dentro de tres dias.mp3', ''),
(61, 1, 13, 'Pa'' Kaji'' Quij', 'Dentro de cuatro días', 'img/calendario.jpg', 'img/reloj.jpg', 'dentro de cuatro dias.mp3', ''),
(62, 1, 13, 'Chaq’a’', 'En la noche', 'img/calendario.jpg', 'img/reloj.jpg', 'en la noche.mp3', ''),
(63, 1, 13, 'Kaq’ijir', 'Anteayer', 'img/calendario.jpg', 'img/reloj.jpg', '', ''),
(64, 1, 13, 'Junab’ir', 'El año pasado', 'img/calendario.jpg', 'img/reloj.jpg', 'el ano pasado.mp3', ''),
(65, 1, 13, 'Kab’ab’ir', 'Hace dos años', 'img/calendario.jpg', 'img/reloj.jpg', '', ''),
(66, 1, 14, 'Nab’ey', 'Primero', 'img/calendario.jpg', 'img/reloj.jpg', 'primero.mp3', ''),
(67, 1, 14, 'Ruka’n', 'Segundo', 'img/calendario.jpg', 'img/contable.jpg', 'segundo.mp3', ''),
(68, 1, 14, 'Rox', 'Tercero', 'img/calendario.jpg', 'img/contable.jpg', 'tercero.mp3', ''),
(69, 1, 14, 'Rukaj', 'Cuarto', 'img/calendario.jpg', 'img/contable.jpg', 'cuarto.mp3', ''),
(70, 1, 14, 'Ro’', 'Quinto', 'img/calendario.jpg', 'img/contable.jpg', 'quinto.mp3', ''),
(71, 1, 15, 'Ruwaq', 'Sexto', 'img/calendario.jpg', 'img/contable.jpg', 'sexto.mp3', ''),
(72, 1, 15, 'Ruwuq', 'Séptimo', 'img/calendario.jpg', 'img/contable.jpg', 'septimo.mp3', ''),
(73, 1, 15, 'Ruwaqxaq', 'Octavo', 'img/calendario.jpg', 'img/contable.jpg', 'octavo.mp3', ''),
(74, 1, 15, 'Rub’elej', 'Noveno', 'img/calendario.jpg', 'img/contable.jpg', 'noveno.mp3', ''),
(75, 1, 15, 'Rulaj', 'Décimo', 'img/calendario.jpg', 'img/contable.jpg', 'decimo.mp3', ''),
(76, 1, 16, 'Aq’omanel', 'Médico', '', '', 'medico.mp3', ''),
(77, 1, 16, 'Tijonel', 'Maestro', '', '', 'maestro.mp3', ''),
(78, 1, 16, 'B’anöy kaxlanwäy', 'Panadero', '', '', 'panadero.mp3', ''),
(79, 1, 16, 'B’anöy xajab’', 'Zapatero', '', '', 'zapatero.mp3', '');

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
