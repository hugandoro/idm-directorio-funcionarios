-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generaci�n: 10-06-2021 a las 10:52:34
-- Versi�n del servidor: 5.7.34
-- Versi�n de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de datos: `wwidm_directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorio`
--

CREATE TABLE `directorio` (
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
  `id` int(11) NOT NULL,
  `documento_identificacion` bigint(20) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `antiguedad_en_estado` int(11) NOT NULL,
  `discapacidad` varchar(50) NOT NULL,
  `prepencionado` varchar(2) NOT NULL,
  `cabeza_familia` varchar(2) NOT NULL,
  `perteneciente_grupo` varchar(2) NOT NULL,
  `fuero_sindical` varchar(2) NOT NULL,
  `perfil_empleo` varchar(200) NOT NULL,
  `expectativa_movilidad` varchar(2) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `grado` varchar(20) NOT NULL,
  `naturaleza_empleo` varchar(50) NOT NULL,
  `vinculacion_empleo` varchar(50) NOT NULL,
  `tipo_vacancia` varchar(50) NOT NULL,
  `situacion_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directorio`
--

INSERT INTO `directorio` (`nombres`, `apellidos`, `ciudad`, `departamento`, `pais`, `formacion_academica`, `experiencia_laboral`, `cargo`, `dependencia`, `telefono`, `correo`, `id`, `documento_identificacion`, `genero`, `antiguedad_en_estado`, `discapacidad`, `prepencionado`, `cabeza_familia`, `perteneciente_grupo`, `fuero_sindical`, `perfil_empleo`, `expectativa_movilidad`, `nivel`, `codigo`, `grado`, `naturaleza_empleo`, `vinculacion_empleo`, `tipo_vacancia`, `situacion_admin`) VALUES
('Luis Ernesto', 'Valencia Ramirez', 'Dosquebradas', 'Risaralda', 'Colombia', 'Especializacion', '16 a�os ', 'Director General', 'Direccion', '(6) 3228821 Ext. 110', 'direccion@idm.gov.co ', 1, 18510078, 'Masculino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', '1. T�tulo profesional en ingenier�a, econom�a, administraci�n o derecho.\n2. Postgrado en administraci�n p�blica, gerencia, planeaci�n, gesti�n p�blica, finanzas p�blicas, derecho p�blico o derecho adm', 'SI', 'Directivo', '50', '2', 'LNR', 'LNR', 'No aplica', 'Servicio activo'),
('Marta', 'Contreras Correa', 'Dosquebradas', 'Risaralda', 'Colombia', 'Profesional', '21 a�os', 'Subdireccion Administrativa y Financiera', 'Administrativa y financiera', '(6) 3228821 Ext. 107', 'subdireccion_admin@idm.gov.co ', 2, 31417320, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Titulo profesional en ciencias econ�micas administrativas y financieras y afines.', 'NO', 'Directivo', '68', '1', 'LNR', 'LNR', 'No aplica', 'Servicio activo'),
('Blanca Nidia', 'Ramirez Osorio', 'Dosquebradas', 'Risaralda', 'Colombia', 'Especializacion', '19 a�os', 'Asesoria Control Interno', 'Direccion', '(6) 3228821 Ext. 117', 'asesoriacontrolinterno@idm.gov.co ', 3, 24635200, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Titulo profesional en profesiones relacionadas con las ciencias econ�micas, administrativas, financieras o jur�dicas.', 'NO', 'Asesor', '105', '3', 'Periodo fijo', 'Periodo fijo', 'No aplica', 'Servicio activo'),
('Wilfredy', 'Arias Mej�a', 'Dosquebradas', 'Risaralda', 'Colombia', 'Especializacion', '3 a�os', 'Profesional Universitario (Tesoreria)', 'Administrativa y financiera', '(6) 3228821 Ext. 122', 'tesoreria@idm.gov.co ', 4, 18616050, 'Masculino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Titulo profesional en profesiones relacionadas en ciencias econ�micas y contables, administrativas, financieras o jur�dicas.', 'NO', 'Profesional', '219', '3', 'LNR', 'LNR', 'No aplica', 'Servicio activo'),
('Rigoberto', 'Lopera Mu�oz', 'Dosquebradas', 'Risaralda', 'Colombia', 'Profesional', '11 a�os', 'Profesional Universitario (Arquitectura)', 'Tecnica', '(6) 3228821 Ext. 115', 'arquitectura@idm.gov.co ', 5, 14896615, 'Masculino', 0, 'Ninguna', 'NO', 'NO', 'NO', 'NO', 'T�tulo universitario o profesional en ingenier�a civil, obras civiles, arquitectura o �reas afines a las profesiones antes descritas.', 'SI', 'Directivo', '68', '1', 'LNR', 'LNR', 'No aplica', 'Comision'),
('Mar�a Nancy', 'Romero Murillo', 'Dosquebradas', 'Risaralda', 'Colombia', 'Profesional', '33 a�os', 'Profesional Universitario (Trabajo Social)', 'Tecnica', '(6) 3228821 Ext. 112', 'trabajosocial@idm.gov.co ', 6, 24839307, 'Femenino', 0, 'Ninguna', 'SI', 'SI', 'NO', 'NO', 'Titulo profesional en ciencias sociales humanas relacionadas con psicolog�a, sociolog�a, trabajo social y afines.', 'NO', 'Profesional', '219', '3', 'Carrera administrativa', 'Carrera administrativa', 'No aplica', 'Servicio activo'),
('Yul Erick', 'Arias Villegas', 'Dosquebradas', 'Risaralda', 'Colombia', 'Especializacion', '6 a�os', 'Tecnico Operativo', 'Tecnica', '(6) 3228821 Ext. 111', 'tecnico.operativo@idm.gov.co ', 7, 94412239, 'Masculino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Titulo de tecn�logo en obras civiles.', 'SI', 'Tecnico', '314', '4', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Beatriz Elena', 'Salazar Tabares', 'Dosquebradas', 'Risaralda', 'Colombia', 'Especializacion', '18 a�os', 'Tecnico Administrativo', 'Administrativa y financiera', '(6) 3228821 Ext. 109', 'tecnico.admin@idm.gov.co ', 8, 42118103, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Terminaci�n y aprobaci�n del pensum acad�mica de educaci�n superior en formaci�n profesional en �reas administrativas y/o financieras.', 'SI', 'Tecnico', '367', '6', 'Carrera administrativa', 'Carrera administrativa', 'No aplica', 'Servicio activo'),
('Andrea Marcela', 'V�squez Lopez', 'Dosquebradas', 'Risaralda', 'Colombia', 'Secundaria', '7 a�os', 'Secretaria (Administrativa y Financiera)', 'Administrativa y financiera', '(6) 3228821 Ext. 121', 'aux_admin@idm.gov.co ', 9, 1087989175, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'B�sica primaria y certificado de competencias laborales.', 'SI', 'Asistencial', '440', '3', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Maricela', 'Salazar Quintero', 'Dosquebradas', 'Risaralda', 'Colombia', 'Secundaria', '7 a�os', 'Secretaria Ejecutiva', 'Direccion', '(6) 3228821 Ext. 104', 'institucional@idm.gov.co ', 10, 1087991468, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'Bachiller, certificado de competencias laborales.', 'NO', 'Asistencial', '425', '6', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Dora', 'Pulido de Loaiza', 'Dosquebradas', 'Risaralda', 'Colombia', 'Profesional', '15 a�os', 'Auxiliar de Servicios Generales', 'Direccion', '(6) 3228821 Ext. 114', 'pulidodora1@gmail.com', 11, 42054248, 'Femenino', 0, 'Ninguna', 'SI', 'SI', 'NO', 'SI', 'B�sica primaria.', 'SI', 'Asistencial', '470', '1', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Jose Libardo', 'Nieto Londo�o', 'Dosquebradas', 'Risaralda', 'Colombia', 'Secundaria', '10 a�os', 'Ayudante  Documental', 'Administrativa y financiera', '(6) 3228821 Ext. 101', 'joselibardonl@gmail.com ', 12, 15903377, 'Masculino', 0, 'Ninguna', 'SI', 'SI', 'NO', 'SI', 'B�sica primaria.', 'SI', 'Asistencial', '472', '1', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Juan David', 'Puerta Rivera', 'Dosquebradas', 'Risaralda', 'Colombia', 'Profesional', '2 a�os', 'Profesional Universitario (Proyectos) ', 'Tecnica', '(6) 3228821 Ext. 123', 'profesionaluidm@gmail.com ', 13, 1088324852, 'Masculino', 0, 'Ninguna', 'NO', 'NO', 'NO', 'NO', 'Titulo profesional en ingenier�a, arquitectura, urbanismos y afines.', 'SI', 'Profesional', '219', '3', 'Carrera administrativa', 'Provisional', 'Temporal', 'Servicio activo'),
('Jessica Maria', 'Restrepo Hernandez', 'Dosquebradas', 'Risaralda', 'Colombia', 'Secundaria', '6 a�os', 'Auxiliar Administrativo', 'Administrativa y financiera', '(6) 3228821 Ext. 102', 'jessicarestrepohidm@gmail.com ', 14, 1088033020, 'Femenino', 0, 'Ninguna', 'NO', 'NO', 'NO', 'NO', 'Bachiller.', 'SI', 'Asistencial', '407', '4', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo'),
('Sandra Milena ', 'Ramirez Montoya', 'Dosquebradas', 'Risaralda', 'Colombia', 'Secundaria', '11 a�os', 'Secretaria (Tecnica)', 'Tecnica', '(6) 3228821 Ext. 116', 'sandraramirez0218@gmail.com ', 15, 42146453, 'Femenino', 0, 'Ninguna', 'NO', 'SI', 'NO', 'NO', 'B�sica primaria y certificado de competencias laborales.', 'SI', 'Asistencial', '440', '3', 'Carrera administrativa', 'Provisional', 'Definitiva', 'Servicio activo');

--
-- �ndices para tablas volcadas
--

--
-- Indices de la tabla `directorio`
--
ALTER TABLE `directorio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directorio`
--
ALTER TABLE `directorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
