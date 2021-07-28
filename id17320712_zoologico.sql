-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-07-2021 a las 22:44:40
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17320712_zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cuidadores`
--

CREATE TABLE `Cuidadores` (
  `idCuidadores` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dirección` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_ingreso_parque` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fechacuidadorespecies` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cuidadorespecies` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sexo_cuidador` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `idespecies` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_cientifico` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_general` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `habitat_natural` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Cuidadores_idCuidadores` int(11) NOT NULL,
  `sexo_especie` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_has_Hábitats`
--

CREATE TABLE `especies_has_Hábitats` (
  `especies_idespecies` int(11) NOT NULL,
  `Hábitats_idHábitats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_has_zona`
--

CREATE TABLE `especies_has_zona` (
  `especies_idespecies` int(11) NOT NULL,
  `zona_idzona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Guías`
--

CREATE TABLE `Guías` (
  `idGuías` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dirrecion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_inicio_trabajo` date NOT NULL,
  `guias_itinerarios` date NOT NULL,
  `guia_hora_asignado_itinerario` date NOT NULL,
  `sexo_guia` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Guías_has_Itinerarios`
--

CREATE TABLE `Guías_has_Itinerarios` (
  `Guías_idGuías` int(11) NOT NULL,
  `Itinerarios_idItinerarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hábitats`
--

CREATE TABLE `Hábitats` (
  `idHábitats` int(11) NOT NULL,
  `nombre_habitat` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `clima` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `vegetacion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `predominantes` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `continentes` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hábitats_has_especies`
--

CREATE TABLE `Hábitats_has_especies` (
  `Hábitats_idHábitats` int(11) NOT NULL,
  `especies_idespecies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Itinerarios`
--

CREATE TABLE `Itinerarios` (
  `idItinerarios` int(11) NOT NULL,
  `codigode_Itinerario` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `duración _recorrido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `longitud_itinerario` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `maxvicitante` int(11) NOT NULL,
  `numvicitaespecies` int(11) NOT NULL,
  `recorrido_de_zonas_del_parque` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `zonarecorrida` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `idzona` int(11) NOT NULL,
  `nombre_zona` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `extencion_ocupa` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `el_zoologico` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_has_Itinerarios`
--

CREATE TABLE `zona_has_Itinerarios` (
  `zona_idzona` int(11) NOT NULL,
  `Itinerarios_idItinerarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cuidadores`
--
ALTER TABLE `Cuidadores`
  ADD PRIMARY KEY (`idCuidadores`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`idespecies`),
  ADD KEY `fk_especies_Cuidadores1` (`Cuidadores_idCuidadores`);

--
-- Indices de la tabla `especies_has_Hábitats`
--
ALTER TABLE `especies_has_Hábitats`
  ADD PRIMARY KEY (`especies_idespecies`,`Hábitats_idHábitats`),
  ADD KEY `fk_especies_has_Hábitats_Hábitats1` (`Hábitats_idHábitats`);

--
-- Indices de la tabla `especies_has_zona`
--
ALTER TABLE `especies_has_zona`
  ADD PRIMARY KEY (`especies_idespecies`,`zona_idzona`),
  ADD KEY `fk_especies_has_zona_zona1` (`zona_idzona`);

--
-- Indices de la tabla `Guías`
--
ALTER TABLE `Guías`
  ADD PRIMARY KEY (`idGuías`);

--
-- Indices de la tabla `Guías_has_Itinerarios`
--
ALTER TABLE `Guías_has_Itinerarios`
  ADD PRIMARY KEY (`Guías_idGuías`,`Itinerarios_idItinerarios`),
  ADD KEY `fk_Guías_has_Itinerarios_Itinerarios1` (`Itinerarios_idItinerarios`);

--
-- Indices de la tabla `Hábitats`
--
ALTER TABLE `Hábitats`
  ADD PRIMARY KEY (`idHábitats`);

--
-- Indices de la tabla `Hábitats_has_especies`
--
ALTER TABLE `Hábitats_has_especies`
  ADD PRIMARY KEY (`Hábitats_idHábitats`,`especies_idespecies`),
  ADD KEY `fk_Hábitats_has_especies_especies1` (`especies_idespecies`);

--
-- Indices de la tabla `Itinerarios`
--
ALTER TABLE `Itinerarios`
  ADD PRIMARY KEY (`idItinerarios`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`idzona`);

--
-- Indices de la tabla `zona_has_Itinerarios`
--
ALTER TABLE `zona_has_Itinerarios`
  ADD PRIMARY KEY (`zona_idzona`,`Itinerarios_idItinerarios`),
  ADD KEY `fk_zona_has_Itinerarios_Itinerarios1` (`Itinerarios_idItinerarios`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especies`
--
ALTER TABLE `especies`
  ADD CONSTRAINT `fk_especies_Cuidadores1` FOREIGN KEY (`Cuidadores_idCuidadores`) REFERENCES `Cuidadores` (`idCuidadores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especies_has_Hábitats`
--
ALTER TABLE `especies_has_Hábitats`
  ADD CONSTRAINT `fk_especies_has_Hábitats_Hábitats1` FOREIGN KEY (`Hábitats_idHábitats`) REFERENCES `Hábitats` (`idHábitats`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_especies_has_Hábitats_especies1` FOREIGN KEY (`especies_idespecies`) REFERENCES `especies` (`idespecies`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especies_has_zona`
--
ALTER TABLE `especies_has_zona`
  ADD CONSTRAINT `fk_especies_has_zona_especies` FOREIGN KEY (`especies_idespecies`) REFERENCES `especies` (`idespecies`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_especies_has_zona_zona1` FOREIGN KEY (`zona_idzona`) REFERENCES `zona` (`idzona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Guías_has_Itinerarios`
--
ALTER TABLE `Guías_has_Itinerarios`
  ADD CONSTRAINT `fk_Guías_has_Itinerarios_Guías1` FOREIGN KEY (`Guías_idGuías`) REFERENCES `Guías` (`idGuías`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Guías_has_Itinerarios_Itinerarios1` FOREIGN KEY (`Itinerarios_idItinerarios`) REFERENCES `Itinerarios` (`idItinerarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Hábitats_has_especies`
--
ALTER TABLE `Hábitats_has_especies`
  ADD CONSTRAINT `fk_Hábitats_has_especies_Hábitats1` FOREIGN KEY (`Hábitats_idHábitats`) REFERENCES `Hábitats` (`idHábitats`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Hábitats_has_especies_especies1` FOREIGN KEY (`especies_idespecies`) REFERENCES `especies` (`idespecies`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `zona_has_Itinerarios`
--
ALTER TABLE `zona_has_Itinerarios`
  ADD CONSTRAINT `fk_zona_has_Itinerarios_Itinerarios1` FOREIGN KEY (`Itinerarios_idItinerarios`) REFERENCES `Itinerarios` (`idItinerarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zona_has_Itinerarios_zona1` FOREIGN KEY (`zona_idzona`) REFERENCES `zona` (`idzona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
