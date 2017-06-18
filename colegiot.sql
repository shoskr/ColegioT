-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2017 a las 22:31:43
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegiot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `rut` varchar(9) NOT NULL,
  `nombre_alumno` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `curso` varchar(45) NOT NULL,
  `direccionl` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_usuario`
--

CREATE TABLE `alumno_usuario` (
  `Alumno_rut` varchar(9) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `rut` varchar(9) NOT NULL,
  `nombre_profesor` varchar(100) NOT NULL,
  `fecha_contrato` date NOT NULL,
  `asignatura` varchar(45) NOT NULL,
  `valor_tutoria` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

CREATE TABLE `tutoria` (
  `id_tutoria` int(11) NOT NULL,
  `fecha_tutoria` date NOT NULL,
  `estado` varchar(45) NOT NULL,
  `Alumno_rut` varchar(9) NOT NULL,
  `Profesor_rut` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `TipoPerfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `alumno_usuario`
--
ALTER TABLE `alumno_usuario`
  ADD PRIMARY KEY (`Alumno_rut`,`usuario_id_usuario`),
  ADD KEY `fk_Alumno_has_usuario_usuario1_idx` (`usuario_id_usuario`),
  ADD KEY `fk_Alumno_has_usuario_Alumno1_idx` (`Alumno_rut`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD PRIMARY KEY (`id_tutoria`),
  ADD KEY `fk_tutoria_Alumno_idx` (`Alumno_rut`),
  ADD KEY `fk_tutoria_Profesor1_idx` (`Profesor_rut`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  MODIFY `id_tutoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_usuario`
--
ALTER TABLE `alumno_usuario`
  ADD CONSTRAINT `fk_Alumno_has_usuario_Alumno1` FOREIGN KEY (`Alumno_rut`) REFERENCES `alumno` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_has_usuario_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD CONSTRAINT `fk_tutoria_Alumno` FOREIGN KEY (`Alumno_rut`) REFERENCES `alumno` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tutoria_Profesor1` FOREIGN KEY (`Profesor_rut`) REFERENCES `profesor` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
