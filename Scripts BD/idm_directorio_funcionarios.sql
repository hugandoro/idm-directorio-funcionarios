-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-09-2020 a las 15:42:11
-- Versión del servidor: 5.7.26
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `idm_directorio_funcionarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorio`
--

DROP TABLE IF EXISTS `directorio`;
CREATE TABLE IF NOT EXISTS `directorio` (
  `nombres` varchar(100) NOT NULL DEFAULT '0',
  `apellidos` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `formacion_academica` varchar(200) NOT NULL,
  `experiencia_laboral` varchar(200) NOT NULL,
  `cargo` varchar(200) NOT NULL,
  `dependencia` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directorio`
--

INSERT INTO `directorio` (`nombres`, `apellidos`, `ciudad`, `departamento`, `pais`, `formacion_academica`, `experiencia_laboral`, `cargo`, `dependencia`, `telefono`, `correo`, `id`) VALUES
('Luis Ernesto', 'Valencia', NULL, '', 'Colombia', '', '', 'Gerencia Institucional', 'Gerencia Institucional', '(6) 3228821 Ext. 104', 'direccion@idm.gov.co', 1),
('Marta', 'Contreras Correa', NULL, '', 'Colombia', '', '', 'Subdireccion Administrativa y Financiera', 'Subdireccion Administrativa y Financiera', '(6) 3228821 Ext. 107', 'subdireccion_admin@idm.gov.co', 2),
('Blanca Nidia', 'Ramirez', NULL, '', 'Colombia', '', '', 'Asesoria Control Interno', 'Asesoria Control Interno', '(6) 3228821 Ext. 109', 'asesoriacontrolinterno@idm.gov.co', 3),
('Wilfredy', 'Arias Mejía', NULL, '', 'Colombia', '', '', 'Profesional Universitario (Tesoreria)', 'Profesional Universitario (Tesoreria)', '(6) 3228821 Ext. 122', 'tesoreria@idm.gov.co', 4),
('Rigoberto', 'Lopera Muñoz', NULL, '', 'Colombia', '', '', 'Profesional Universitario (Arquitectura)', 'Profesional Universitario (Arquitectura)', '(6) 3228821 Ext. 110', 'arquitectura@idm.gov.co', 5),
('María Nancy', 'Romero Murillo', NULL, '', 'Colombia', '', '', 'Trabajo Social', 'Trabajo Social', '(6) 3228821 Ext. 112', 'trabajosocial@idm.gov.co', 6),
('Yul', 'Arias Villegas', NULL, '', 'Colombia', '', '', 'Tecnico Operativo', 'Tecnico Operativo', '(6) 3228821 Ext. 111', 'tecnico.operativo@idm.gov.co', 7),
('Beatriz Elena', 'Salazar Tabares', NULL, '', 'Colombia', '', '', 'Tecnico Administrativo', 'Tecnico Administrativo', '(6) 3228821 Ext. 106', 'tecnico.admin@idm.gov.co', 8),
('Andrea Marcela', 'Vásquez', NULL, '', 'Colombia', '', '', 'Auxiliar Administrativa', 'Auxiliar Administrativa', '(6) 3228821 Ext. 102', 'aux_admin@idm.gov.co', 9),
('Yolanda', 'Florez Mendoza', NULL, '', 'Colombia', '', '', 'Secretaria Ejecutiva', 'Secretaria Ejecutiva', '(6) 3228821', 'institucional@idm.gov.co', 10),
('Dora', 'Pulido de Loaiza', NULL, '', 'Colombia', '', '', 'Auxiliar de Servicios Generales', 'Auxiliar de Servicios Generales', '(6) 3228821', '', 11),
('Jose Libardo', 'Nieto', NULL, '', 'Colombia', '', '', 'Auxiliar de Mensajería', 'Auxiliar de Mensajería', '(6) 3228821', 'joselibardonl@gmail.com', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
