-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2018 a las 00:27:26
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `be`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id_area` int(11) NOT NULL,
  `area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `area`) VALUES
(14, 'ADMINISTRACION GENERAL'),
(22, 'AGRONOMIA'),
(9, 'COMPRAS/COMERCIO EXTERIOR'),
(23, 'CONSTRUCCION'),
(10, 'CONSTRUCCION/OBRA'),
(4, 'CONTABILIDAD'),
(24, 'DIRECTOR MANUFACTURA ALIMENTOS'),
(20, 'FINANZAS'),
(8, 'INGENIERIA'),
(13, 'LEGAL/ASESORIA'),
(6, 'LOGISTICA/TRANSPORTE/DISTRIBUCION'),
(11, 'MEDICINA/SALUD'),
(7, 'MERCADOTECNIA/PUBLICIDAD/RELACIONES PUBLICAS'),
(1, 'RECURSOS HUMANOS'),
(5, 'TECNOLOGIAS DE LA INFORMACION'),
(3, 'VENTAS/ATENCION A CLIENTES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `contacto` varchar(50) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cliente`, `contacto`, `telefono`, `email`, `estatus`) VALUES
(1, 'COMPUCAD', 'ALEJANDRA CERVANTES', '(33) 3366-6677 ext.103', 'acervantes@compucad.mx', 1),
(2, 'PUNTO FORZA', 'MONICA FRANCO', '	3666-3333 ext. 100', 'mfranco@puntoforza.com', 1),
(3, 'FRANQUICIAS GALLASTEGUI', 'MONICA GANDARA', '36421123', 'mgandara@hotmail.com', 1),
(4, 'BIGO', 'VICTOR MORENO', '3414390554', 'victor.moreno@bigo.mx', 1),
(5, 'SANE', 'ISABEL HERNANDEZ ROMAN', '(376) 7654020 EXT.264', 'ihernandez@sane.com.mx', 1),
(6, 'MI DULCE ESTANCIA ASILO', 'JESUS ARENAS', ' 33 3570 1427', 'direccion@sicosa.net', 1),
(7, 'CAJASA', 'ARIANA RUIZ', '36685420', 'Ariana.Ruiz@amher.com.mx', 1),
(8, 'BUSKLOPPER', 'OLGA SANTANA - VICTOR AGUILAR', ' (33) 36450769/36634849  ', 'enlace@buskoppler.com', 1),
(9, 'MENDOZA ASESORES', 'CESAR MENDOZA', '36301326', 'mendoza_asesores@me.com', 1),
(10, 'KENWORTH', 'Rodrigo Velasco ', '3330013300', 'rvelasco@kenworthjalisco.com', 1),
(11, 'TERRMAR BRANDS', 'JESSICA CASTRO', '20163116', 'jcastro@terramarbrands.com', 1),
(12, 'Grupo Solido', 'Zaira Ayala', '3335784626', 'zeayala@solido.com.mx', 1),
(13, 'PSA PRODUCTOS SELECTOS DE AGAVE', 'Guadalupe Santana', '3310476761', 'gsantana@grupopsa.com', 1),
(14, 'HO1A INOVACIONES', 'Javier Santana', '55 9171 8890 ', 'fsantana@ho1a.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id_nivel` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nivel`) VALUES
(1, 'JUNIOR'),
(2, 'MIDDLE'),
(3, 'SENIOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ide_area` int(11) NOT NULL,
  `ide_puesto` int(11) NOT NULL,
  `ide_nivel` int(11) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `subio` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `estatus` int(11) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `nombre`, `ide_area`, `ide_puesto`, `ide_nivel`, `cv`, `subio`, `fecha`, `estatus`, `observaciones`) VALUES
(3, 'KARLA IZBETH GALINDO OSORIO', 9, 1, 2, 'curris/COMPRAS_COMERCIO EXTERIOR/COMPRADOR/SENIOR/KARLA IZBETH GALINDO OSORIO.pdf', 'karla.copado', '2018-01-18', 1, 'Candidata descartada para compras por Punto Forza. '),
(4, 'RICARDO JOSUE RAMIREZ ORTEGA', 9, 1, 2, 'curris/COMPRAS-COMERCIO EXTERIOR/COMPRADOR/COMPRAS-COMERCIO EXTERIOR_COMPRADOR_SENIOR_RICARDO JOSUE RAMIREZ ORTEGA.docx', 'karla.copado', '2018-01-18', 1, 'descartado de PF, tiene experiencia en compras nacionales en el giro m&eacute;dico y mtto industrial'),
(5, 'CHRISTIAN LEDEZMA DUE&Ntilde;AS', 9, 1, 2, 'curris/COMPRAS-COMERCIO EXTERIOR/COMPRADOR/COMPRAS-COMERCIO EXTERIOR_COMPRADOR_SENIOR_CHRISTIAN LEDEZMA DUE&Ntilde;AS.docx', 'karla.copado', '2018-01-18', 1, 'Descartado de PF, tiene experiencia en compras de materia prima en empresa de accesorios para dama..'),
(6, 'JORGE ANTONIO NAVARRO SERNA', 9, 1, 1, 'curris/COMPRAS-COMERCIO EXTERIOR/COMPRADOR/COMPRAS-COMERCIO EXTERIOR_COMPRADOR_JUNIOR_JORGE ANTONIO NAVARRO SERNA.docx', 'karla.copado', '2018-01-18', 1, 'candidato descartado por PF, tiene experiencia de 1 a&ntilde;o en compras en ...empresa de herrajes. '),
(7, 'CESAR ARTURO CASILLAS OSORIO', 11, 3, 1, 'curris/MEDICINA-SALUD/PSICOLOGO CLINICO/MEDICINA-SALUD_PSICOLOGO CLINICO_JUNIOR_CESAR ARTURO CASILLAS OSORIO.pdf', 'karla.copado', '2018-01-18', 1, 'candidato descartado de CORI, tiene experiencia en el &aacute;rea cl&iacute;nica con ni&ntilde;os'),
(8, 'AMABEL ALATORRE REA', 11, 3, 3, 'curris/MEDICINA-SALUD/PSICOLOGO CLINICO/MEDICINA-SALUD_PSICOLOGO CLINICO_DIRECTIVO_AMABEL ALATORRE REA.doc', 'karla.copado', '2018-01-18', 1, 'Candidata descartada de CORI, tiene buena experiencia en el area educativa como encargada de Departamento psicol&oacute;gico.'),
(9, 'JOSUE OLVERA', 5, 4, 2, 'curris/INGENIERIA/DESARROLLADOR JAVA/INGENIERIA_DESARROLLADOR JAVA_SENIOR_JOSUE OLVERA.docx', 'karla.copado', '2018-01-18', 0, ''),
(10, 'PABLO ARMANDO SAMPERIO GOMEZ', 5, 4, 2, 'curris/INGENIERIA/DESARROLLADOR JAVA/INGENIERIA_DESARROLLADOR JAVA_SENIOR_PABLO ARMANDO SAMPERIO GOMEZ.pdf', 'karla.copado', '2018-01-18', 0, ''),
(11, 'ARTURO PAREDES LUCIO', 5, 4, 2, 'curris/INGENIERIA/DESARROLLADOR JAVA/INGENIERIA_DESARROLLADOR JAVA_SENIOR_ARTURO PAREDES LUCIO.docx', 'karla.copado', '2018-01-18', 0, ''),
(12, 'DUSTIN OSVALDO DELGADO LOPEZ', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_DUSTIN OSVALDO DELGADO LOPEZ.docx', 'karla.copado', '2018-01-18', 0, ''),
(13, 'GRECIA ARELI LOPEZ OROZCO', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_GRECIA ARELI LOPEZ OROZCO.pdf', 'karla.copado', '2018-01-18', 0, ''),
(14, 'JANET CAROLINA HIDALGO GUZMAN', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_JANET CAROLINA HIDALGO GUZMAN.pdf', 'karla.copado', '2018-01-18', 1, 'Declin&oacute; al proceso, contraofertaron en su empleo actual'),
(15, 'CESAR ANTONIO REYES ENRIQUEZ', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_CESAR ANTONIO REYES ENRIQUEZ.doc', 'karla.copado', '2018-01-18', 1, 'No se present&oacute; a entrevista en BIGO, Descartado'),
(16, 'ALEJANDRO FARFAN ROSADO', 5, 5, 1, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_JUNIOR_ALEJANDRO FARFAN ROSADO.pdf', 'karla.copado', '2018-01-18', 1, 'candidato pendiente de enviar a BIGO, es de puebla'),
(17, 'JOSE ROBERTO VARGAS HERNANDEZ', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_JOSE ROBERTO VARGAS HERNANDEZ.pdf', 'karla.copado', '2018-01-23', 0, ''),
(18, 'MARIA ISABEL CHAIDEZ LOPEZ', 5, 5, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/TECNOLOGIAS DE LA INFORMACION_ADMINISTRADOR DE PROYECTOS TI_SENIOR_MARIA ISABEL CHAIDEZ LOPEZ.docx', 'karla.copado', '2018-01-23', 0, ''),
(19, 'MARIANA VARGAS G&Oacute;MEZ', 1, 7, 2, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_SENIOR_MARIANA VARGAS G&Oacute;MEZ.doc', 'karla.copado', '2018-01-31', 0, ''),
(20, 'LUIS FERNANDO SANCHEZ VAZQUEZ', 1, 7, 2, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_SENIOR_LUIS FERNANDO SANCHEZ VAZQUEZ.docx', 'karla.copado', '2018-01-31', 0, ''),
(21, 'MELISA CARVAJAL', 1, 7, 2, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_SENIOR_MELISA CARVAJAL.pdf', 'karla.copado', '2018-01-31', 0, ''),
(23, 'ANA JAZMIN SOLORIO CARRILLO', 1, 7, 1, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_JUNIOR_ANA JAZMIN SOLORIO CARRILLO.pdf', 'karla.copado', '2018-01-31', 1, 'No enviada a SANE, falta de experiencia en giro alimenticio, y le falta m&aacute;s experiencia en una coordinaci&oacute;n.'),
(24, 'MARIANA DEL CARMEN GODOY NAVARRO', 1, 7, 2, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_SENIOR_MARIANA DEL CARMEN GODOY NAVARRO.pdf', 'karla.copado', '2018-01-31', 1, 'no enviada a SANE falta de experiencia en giro alimenticio'),
(25, 'VICTOR CHEVEZ', 5, 5, 2, 'curris/5/5/5_5_SENIOR_VICTOR CHEVEZ.pdf', 'karla.copado', '2018-02-03', 0, ''),
(29, 'PEDRO AGUAYO MARTINEZ', 5, 6, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/SISTEMAS/TECNOLOGIAS DE LA INFORMACION_SISTEMAS_MIDDLE_PEDRO AGUAYO MARTINEZ.pdf', 'administrador', '2018-02-21', 1, 'Hola'),
(32, 'FELIPE RUIZ', 9, 1, 2, 'curris/COMPRAS-COMERCIO EXTERIOR/COMPRADOR/COMPRAS-COMERCIO EXTERIOR_COMPRADOR_MIDDLE_FELIPE RUIZ.pdf', 'administrador', '2018-03-02', 0, ''),
(34, 'JOSE ALBERTO BALLESTEROS RODRIGUEZ', 8, 18, 1, 'curris/INGENIERIA/INGENIERO DE CALIDAD/INGENIERIA_INGENIERO DE CALIDAD_JUNIOR_JOSE ALBERTO BALLESTEROS RODRIGUEZ.docx', 'karla.copado', '2018-03-14', 0, ''),
(35, 'DIEGO ARMANDO HUERTA HURTADO', 8, 18, 1, 'curris/INGENIERIA/INGENIERO DE CALIDAD/INGENIERIA_INGENIERO DE CALIDAD_JUNIOR_DIEGO ARMANDO HUERTA HURTADO.docx', 'karla.copado', '2018-03-14', 0, ''),
(36, 'BARBARA L&Oacute;PEZ HERNANDEZ', 11, 10, 2, 'curris/MEDICINA-SALUD/DIRECTOR ASILO/MEDICINA-SALUD_DIRECTOR ASILO_MIDDLE_BARBARA L&Oacute;PEZ HERNANDEZ.docx', 'karla.copado', '2018-03-14', 0, ''),
(37, 'DANIEL RODRIGUEZ PARRA', 11, 10, 2, 'curris/MEDICINA-SALUD/DIRECTOR ASILO/MEDICINA-SALUD_DIRECTOR ASILO_MIDDLE_DANIEL RODRIGUEZ PARRA.docx', 'karla.copado', '2018-03-14', 0, ''),
(38, 'NANCY JENNIFER BASTIDA MEZA', 11, 10, 2, 'curris/MEDICINA-SALUD/DIRECTOR ASILO/MEDICINA-SALUD_DIRECTOR ASILO_MIDDLE_NANCY JENNIFER BASTIDA MEZA.pdf', 'karla.copado', '2018-03-14', 0, ''),
(39, 'BRISA NAYELY CERRITOS RADILLA', 3, 20, 2, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/VENTAS_EJECUTIVA DE VENTAS_MIDDLE_BRISA NAYELY CERRITOS RADILLA.pdf', 'karla.copado', '2018-03-14', 0, ''),
(40, 'ROSA ISELA LU&Eacute;VANO GARC&Iacute;A', 3, 20, 2, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/VENTAS_EJECUTIVA DE VENTAS_MIDDLE_ROSA ISELA LU&Eacute;VANO GARC&Iacute;A.pdf', 'karla.copado', '2018-03-14', 0, ''),
(41, 'MARIELA LOPEZ HERMOSILLO', 14, 21, 2, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSITRATIVA BILING&Uuml;E/ADMINISTRACION GENERAL_ASISTENTE ADMINSITRATIVA BILING&Uuml;E_MIDDLE_MARIELA LOPEZ HERMOSILLO.doc', 'karla.copado', '2018-03-15', 0, ''),
(42, 'KARLA ANAHY GARCIA MACIAS', 14, 21, 2, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSITRATIVA BILING&Uuml;E/ADMINISTRACION GENERAL_ASISTENTE ADMINSITRATIVA BILING&Uuml;E_MIDDLE_KARLA ANAHY GARCIA MACIAS.pdf', 'karla.copado', '2018-03-15', 0, ''),
(43, 'OLGA LIDIA GARCIA MU&Ntilde;OZ', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/CONTABILIDAD_CONTADOR GENERAL_MIDDLE_OLGA LIDIA GARCIA MU&Ntilde;OZ.docx', 'karla.copado', '2018-03-15', 0, ''),
(44, 'CESAR RODRIGUEZ ALVARADO', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/CONTABILIDAD_CONTADOR GENERAL_MIDDLE_CESAR RODRIGUEZ ALVARADO.doc', 'karla.copado', '2018-03-15', 0, ''),
(45, 'CRISTINA LIZAOLA REYES', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_CRISTINA LIZAOLA REYES.pdf', 'administrador', '2018-03-16', 0, ''),
(46, 'KARLA ANGELICA GARCIA PRUDENCIO', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_KARLA ANGELICA GARCIA PRUDENCIO.docx', 'administrador', '2018-03-16', 0, ''),
(47, 'MARIA GORETTI RODRIGUEZ VILLANUEVA', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_MARIA GORETTI RODRIGUEZ VILLANUEVA.doc', 'administrador', '2018-03-16', 0, ''),
(69, 'PAM', 5, 6, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/SISTEMAS/MIDDLE/PAM.pdf', 'administrador', '2018-04-23', 0, ''),
(70, 'ALMA MEJIA', 14, 23, 1, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/JUNIOR/ALMA MEJIA.docx', 'administrador', '2018-05-11', 0, ''),
(72, 'GUADALUPE CUEVAS LUA', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/GUADALUPE CUEVAS LUA.docx', 'administrador', '2018-05-11', 0, ''),
(73, 'FRANCISCO MONTOYA ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/FRANCISCO MONTOYA .pdf', 'administrador', '2018-05-11', 0, ''),
(74, 'DANIELA BARRETO GONZALEZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/DANIELA BARRETO GONZALEZ.docx', 'administrador', '2018-05-11', 0, ''),
(75, 'ROBERTO CARLOS ORTEGA RAMIREZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/ROBERTO CARLOS ORTEGA RAMIREZ.docx', 'administrador', '2018-05-11', 0, ''),
(76, 'PAULINA VELASCO MARTINEZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/PAULINA VELASCO MARTINEZ.doc', 'administrador', '2018-05-11', 0, ''),
(77, 'VERONICA CORDOVA GOMEZ', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/VERONICA CORDOVA GOMEZ.docx', 'administrador', '2018-05-11', 0, ''),
(78, 'ROSA MARIA TOLEDO CORTES', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/ROSA MARIA TOLEDO CORTES.pdf', 'administrador', '2018-05-11', 0, ''),
(79, 'CLAUDIA LETICIA DEL TORO SANCHEZ', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/CLAUDIA LETICIA DEL TORO SANCHEZ.doc', 'administrador', '2018-05-11', 0, ''),
(80, 'MARIANA PINTOS ALBERTO', 14, 30, 2, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/MIDDLE/MARIANA PINTOS ALBERTO.pdf', 'administrador', '2018-05-11', 0, ''),
(81, 'VANESSA ELENA MEDINA ROMERO', 14, 30, 2, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/MIDDLE/VANESSA ELENA MEDINA ROMERO.doc', 'administrador', '2018-05-11', 0, ''),
(82, 'GABRIELA ESQUEDA ROSARIO', 3, 31, 2, 'curris/VENTAS_ATENCION A CLIENTES/ATENCION A CLIENTES/MIDDLE/GABRIELA ESQUEDA ROSARIO.docx', 'administrador', '2018-05-11', 0, ''),
(83, 'KAREN JOANNA RESENDIZ RANGEL', 3, 31, 2, 'curris/VENTAS_ATENCION A CLIENTES/ATENCION A CLIENTES/MIDDLE/KAREN JOANNA RESENDIZ RANGEL.pdf', 'administrador', '2018-05-11', 0, ''),
(84, 'JOSE DE JESUS MARTINEZ LANDEROS', 3, 31, 2, 'curris/VENTAS_ATENCION A CLIENTES/ATENCION A CLIENTES/MIDDLE/JOSE DE JESUS MARTINEZ LANDEROS.pdf', 'administrador', '2018-05-11', 0, ''),
(85, 'MAURO MARES SOTO', 3, 31, 2, 'curris/VENTAS_ATENCION A CLIENTES/ATENCION A CLIENTES/MIDDLE/MAURO MARES SOTO.docx', 'administrador', '2018-05-11', 0, ''),
(86, 'ALEJANDRA ELIZABETH BARBA COBOS ', 3, 31, 2, 'curris/VENTAS_ATENCION A CLIENTES/ATENCION A CLIENTES/MIDDLE/ALEJANDRA ELIZABETH BARBA COBOS .docx', 'administrador', '2018-05-11', 0, ''),
(87, 'JUAN JOSE GONZALEZ HEREDIA', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/JUAN JOSE GONZALEZ HEREDIA.docx', 'administrador', '2018-05-11', 0, ''),
(88, 'JULIO FERNANDO HERNANDEZ CHAVEZ', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/JULIO FERNANDO HERNANDEZ CHAVEZ.docx', 'administrador', '2018-05-11', 0, ''),
(89, 'JULIO CESAR ROSALES TELLEZ', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/JULIO CESAR ROSALES TELLEZ.doc', 'administrador', '2018-05-11', 0, ''),
(90, 'DAFNE DENISE GOMEZ LIMON ', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/DAFNE DENISE GOMEZ LIMON .pdf', 'administrador', '2018-05-11', 0, ''),
(93, 'SALVADOR OROZCO OROZCO', 0, 0, 0, 'perfiles/curris/SALVADOR OROZCO OROZCO.pdf', 'Candidato', '2018-05-15', 0, ''),
(94, 'CITLALI BECERRIL LOPEZ', 8, 33, 2, 'curris/INGENIERIA/AGRONOMO/MIDDLE/CITLALI BECERRIL LOPEZ.doc', 'victor.chavez', '2018-05-25', 0, ''),
(95, 'VICTOR HORTA FERNANDEZ', 10, 34, 2, 'curris/CONSTRUCCION_OBRA/SUPER INTENDENTE DE OBRA/MIDDLE/VICTOR HORTA FERNANDEZ.doc', 'victor.chavez', '2018-05-25', 0, ''),
(96, 'MALCOM RUBEN VALENZUELA CORDOVA', 10, 34, 2, 'curris/CONSTRUCCION_OBRA/SUPER INTENDENTE DE OBRA/MIDDLE/MALCOM RUBEN VALENZUELA CORDOVA.doc', 'victor.chavez', '2018-05-25', 0, ''),
(97, 'BRENDA ALEJANDRA MORALES GONZALEZ', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/BRENDA ALEJANDRA MORALES GONZALEZ.pdf', 'administrador', '2018-05-25', 0, ''),
(98, 'ANA BELEN ROSAS BECERRA', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/ANA BELEN ROSAS BECERRA.doc', 'administrador', '2018-05-25', 0, ''),
(99, 'SARA ALEJANDRA BECERRA TOSCANO', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/SARA ALEJANDRA BECERRA TOSCANO.docx', 'administrador', '2018-05-25', 0, ''),
(100, 'NIDIA CAROLINA ALVAREZ SANDOVAL', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/NIDIA CAROLINA ALVAREZ SANDOVAL.doc', 'administrador', '2018-05-25', 0, ''),
(101, 'CARLA GABRIELA LUNA SANCHEZ', 1, 35, 1, 'curris/RECURSOS HUMANOS/JEFE DO/JUNIOR/CARLA GABRIELA LUNA SANCHEZ.docx', 'administrador', '2018-05-25', 0, ''),
(102, 'MARIA FERNANDA DIAZ CASTRO', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/MARIA FERNANDA DIAZ CASTRO.pdf', 'administrador', '2018-05-25', 0, ''),
(103, 'ALEJANDRO GALLARDO ARCEO', 1, 29, 3, 'curris/RECURSOS HUMANOS/GERENTE DE RH/SENIOR/ALEJANDRO GALLARDO ARCEO.pdf', 'administrador', '2018-05-25', 0, ''),
(104, 'GABRIELA ELIZABETH GARCIA FLORES', 1, 36, 1, 'curris/RECURSOS HUMANOS/JEFE  RYS/JUNIOR/GABRIELA ELIZABETH GARCIA FLORES.pdf', 'administrador', '2018-05-25', 0, ''),
(105, 'CECILIA ALVAREZ SUAREZ', 1, 36, 3, 'curris/RECURSOS HUMANOS/JEFE  RYS/SENIOR/CECILIA ALVAREZ SUAREZ.pdf', 'administrador', '2018-05-25', 0, ''),
(106, 'ERIKA ALVARADO CAMPUZANO', 1, 36, 3, 'curris/RECURSOS HUMANOS/JEFE  RYS/SENIOR/ERIKA ALVARADO CAMPUZANO.docx', 'administrador', '2018-05-25', 0, ''),
(107, 'HECTOR FERNANDO GOMEZ PELAYO', 1, 36, 3, 'curris/RECURSOS HUMANOS/JEFE  RYS/SENIOR/HECTOR FERNANDO GOMEZ PELAYO.doc', 'administrador', '2018-05-25', 0, ''),
(108, 'ANA BELEN FLORES TAPIA', 1, 7, 2, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/MIDDLE/ANA BELEN FLORES TAPIA.pdf', 'administrador', '2018-05-25', 0, ''),
(109, 'RAFAEL TELLO', 1, 37, 2, 'curris/RECURSOS HUMANOS/DIRECTOR DE RH/MIDDLE/RAFAEL TELLO.docx', 'administrador', '2018-05-25', 0, ''),
(110, 'MONICA ISABEL GUTIERREZ ORTIZ', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/MIDDLE/MONICA ISABEL GUTIERREZ ORTIZ.pdf', 'rafael.tello', '2018-05-29', 0, ''),
(111, 'ROBERTO SALVATIERRA', 8, 18, 2, 'curris/INGENIERIA/INGENIERO DE CALIDAD/MIDDLE/ROBERTO SALVATIERRA.pdf', 'rafael.tello', '2018-05-29', 0, ''),
(112, 'JUAN GILBERTO RDRIGUEZ GAYTAN', 8, 18, 2, 'curris/INGENIERIA/INGENIERO DE CALIDAD/MIDDLE/JUAN GILBERTO RDRIGUEZ GAYTAN.docx', 'rafael.tello', '2018-05-29', 0, ''),
(113, 'RUBEN AGREDANO', 8, 18, 2, 'curris/INGENIERIA/INGENIERO DE CALIDAD/MIDDLE/RUBEN AGREDANO.pdf', 'rafael.tello', '2018-05-29', 0, ''),
(114, 'ROMEO CORTEZ CASTELLANOS', 20, 28, 3, 'curris/FINANZAS/GERENTE FINANZAS/SENIOR/ROMEO CORTEZ CASTELLANOS.pdf', 'rafael.tello', '2018-05-29', 0, ''),
(115, 'MARIA DEL CARMEN ROCHA', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/MARIA DEL CARMEN ROCHA.docx', 'administrador', '2018-06-08', 0, ''),
(117, 'ALVARO MAGANA GODINEZ', 8, 38, 3, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /SENIOR/ALVARO MAGANA GODINEZ.pdf', 'administrador', '2018-06-08', 0, ''),
(118, 'MEZTLI GONZALEZ RAMIREZ', 8, 38, 3, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /SENIOR/MEZTLI GONZALEZ RAMIREZ.pdf', 'administrador', '2018-06-08', 0, ''),
(120, 'MARTHA AURORA ALVAREZ GAY', 8, 38, 2, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /MIDDLE/MARTHA AURORA ALVAREZ GAY.docx', 'administrador', '2018-06-08', 0, ''),
(121, 'ROSA ANGELICA CAZAREZ PASTRANA', 8, 38, 2, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /MIDDLE/ROSA ANGELICA CAZAREZ PASTRANA.docx', 'administrador', '2018-06-08', 0, ''),
(122, 'HECTOR ENRIQUE GARIBAY JUAN QUI', 8, 38, 2, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /MIDDLE/HECTOR ENRIQUE GARIBAY JUAN QUI.pdf', 'administrador', '2018-06-08', 0, ''),
(123, 'OSCAR FERNANDO MURGUIA MENA', 8, 38, 2, 'curris/INGENIERIA/ENCARGADO DE PROCESOS /MIDDLE/OSCAR FERNANDO MURGUIA MENA.pdf', 'administrador', '2018-06-09', 0, ''),
(124, 'ALEJANDRO LOZANO OROZCO', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/ALEJANDRO LOZANO OROZCO.docx', 'administrador', '2018-06-15', 0, ''),
(125, 'JORGE LUIS TROUYET', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/JORGE LUIS TROUYET.pdf', 'victor.chavez', '2018-06-15', 0, ''),
(126, 'LUIS MANUEL ZAMBRANO REYNOSO', 8, 39, 1, 'curris/INGENIERIA/DIRECTOR DE CALIDAD ALIMENTOS/JUNIOR/LUIS MANUEL ZAMBRANO REYNOSO.docx', 'victor.chavez', '2018-06-15', 0, ''),
(127, 'JOEL EFRAIN LEON BEJARANO', 8, 39, 1, 'curris/INGENIERIA/DIRECTOR DE CALIDAD ALIMENTOS/JUNIOR/JOEL EFRAIN LEON BEJARANO.docx', 'victor.chavez', '2018-06-15', 0, ''),
(128, 'ANDRES CID RAMIREZ', 10, 34, 1, 'curris/CONSTRUCCION_OBRA/SUPER INTENDENTE DE OBRA/JUNIOR/ANDRES CID RAMIREZ.pdf', 'victor.chavez', '2018-06-15', 0, ''),
(129, 'CLAUDIA SAENZ ESPARZA', 8, 40, 1, 'curris/INGENIERIA/GERENTE DE CALIDAD ALIMENTOS/JUNIOR/CLAUDIA SAENZ ESPARZA.doc', 'victor.chavez', '2018-06-15', 0, ''),
(130, 'LORENA COVARRUBIAS MARROQUIN', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/LORENA COVARRUBIAS MARROQUIN.pdf', 'administrador', '2018-06-28', 0, ''),
(131, 'BERENICE VIZCARRA CUEVAS', 1, 35, 3, 'curris/RECURSOS HUMANOS/JEFE DO/SENIOR/BERENICE VIZCARRA CUEVAS.pdf', 'administrador', '2018-06-28', 0, ''),
(132, 'TERESA JACQUELINE CADENA OCEGUEDA', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/TERESA JACQUELINE CADENA OCEGUEDA.pdf', 'administrador', '2018-06-28', 0, ''),
(133, 'CRISTOPHER GONZALEZ', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/CRISTOPHER GONZALEZ.pdf', 'administrador', '2018-06-28', 0, ''),
(134, 'TANIA CAROLINA SOSA LOEZA', 1, 7, 1, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/JUNIOR/TANIA CAROLINA SOSA LOEZA.docx', 'administrador', '2018-06-28', 0, ''),
(135, 'ADOLFO SEEMAN DE LEON', 3, 41, 3, 'curris/VENTAS_ATENCION A CLIENTES/DIRECTOR COMERCIAL/SENIOR/ADOLFO SEEMAN DE LEON.doc', 'administrador', '2018-07-06', 0, ''),
(136, 'DOLORES SANCHEZ DEL PINO', 3, 41, 3, 'curris/VENTAS_ATENCION A CLIENTES/DIRECTOR COMERCIAL/SENIOR/DOLORES SANCHEZ DEL PINO.pdf', 'administrador', '2018-07-06', 0, ''),
(137, 'JOSE LUIS HAYASHIDA CARRILLO', 3, 41, 3, 'curris/VENTAS_ATENCION A CLIENTES/DIRECTOR COMERCIAL/SENIOR/JOSE LUIS HAYASHIDA CARRILLO.doc', 'administrador', '2018-07-06', 0, ''),
(139, 'PAULINA FREGOSO ACEVES', 8, 42, 2, 'curris/INGENIERIA/CONSULTOR DE PROCESOS/MIDDLE/PAULINA FREGOSO ACEVES.docx', 'administrador', '2018-07-09', 0, ''),
(140, 'ANA CECILIA CANALE ZAMORA', 8, 42, 2, 'curris/INGENIERIA/CONSULTOR DE PROCESOS/MIDDLE/ANA CECILIA CANALE ZAMORA.pdf', 'administrador', '2018-07-09', 0, ''),
(141, 'MARIA FERNANDA RODRIGUEZ QUINTERO', 8, 42, 3, 'curris/INGENIERIA/CONSULTOR DE PROCESOS/SENIOR/MARIA FERNANDA RODRIGUEZ QUINTERO.pdf', 'administrador', '2018-07-09', 0, ''),
(142, 'MARCELA MARISOL OCHOA GUZMAN', 8, 42, 3, 'curris/INGENIERIA/CONSULTOR DE PROCESOS/SENIOR/MARCELA MARISOL OCHOA GUZMAN.pdf', 'administrador', '2018-07-09', 0, ''),
(143, 'ROGELIO HERNANDEZ BELTRAN', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/ROGELIO HERNANDEZ BELTRAN.doc', 'administrador', '2018-07-09', 0, ''),
(144, 'JESSICA GABRIELA LAUREAN MORALES', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/JESSICA GABRIELA LAUREAN MORALES.DOC', 'administrador', '2018-07-09', 0, ''),
(145, 'ANA KARINA LARA BARRERA', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/ANA KARINA LARA BARRERA.doc', 'administrador', '2018-07-09', 0, ''),
(146, 'ALMA OCHOA SANCHEZ', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/ALMA OCHOA SANCHEZ.docx', 'administrador', '2018-07-09', 0, ''),
(147, 'RUTH NOEMI MORALES SANCHEZ', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/RUTH NOEMI MORALES SANCHEZ.doc', 'administrador', '2018-07-09', 0, ''),
(148, 'MARIA DE JESUS VELAZQUEZ MEDINA', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/MARIA DE JESUS VELAZQUEZ MEDINA.docx', 'administrador', '2018-07-09', 0, ''),
(149, 'ELIA GUADALUPE ORTIZ RAMOS', 14, 30, 3, 'curris/ADMINISTRACION GENERAL/GERENTE ADMINISTRATIVA/SENIOR/ELIA GUADALUPE ORTIZ RAMOS.pdf', 'administrador', '2018-07-09', 0, ''),
(150, 'EDNA DANIELA BARRETO GONZALEZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/EDNA DANIELA BARRETO GONZALEZ.docx', 'administrador', '2018-07-09', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id_proceso` int(11) NOT NULL,
  `ide_perfil` int(11) NOT NULL,
  `ide_cliente` int(11) NOT NULL,
  `reclutador` varchar(50) NOT NULL,
  `entrevista_be` varchar(510) NOT NULL,
  `entrevista_cliente` varchar(510) NOT NULL,
  `sc_economico` varchar(510) NOT NULL,
  `psicometrias` varchar(510) NOT NULL,
  `etapa` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id_proceso`, `ide_perfil`, `ide_cliente`, `reclutador`, `entrevista_be`, `entrevista_cliente`, `sc_economico`, `psicometrias`, `etapa`) VALUES
(1, 1, 2, 'KARLA COPADO', 'candidato viable, cuenta con experiencia de 2 a&ntilde;os en compra de materia prima y mobiliario en general. Domina un 65% de ingl&eacute;s', 'Enviado al cliente 16/01/2018 /entrevista en PF lunes 22 de enero 5:00 pm/ Ingreso en PF 22 de enero 2018', 'no se le realiz&oacute;', 'no se le aplicaron', 6),
(7, 12, 4, 'KARLA COPADO', 'cuenta con experiencia de 3 a&ntilde;os en administraci&oacute;n de proyectos en el giro de TI, ha manejado metodolog&iacute;a PMI, project, vissio, documentaci&oacute;n de procesos. ', 'primera entrevista en bigo  17/01/2018, segunda entrevista 18/01/2018 en espera de seguimiento por parte del cliente/ contratado ingreso el d&iacute;a 15 de febrero 2018', 'no aplicado', 'no aplicadas', 6),
(13, 19, 5, 'KARLA COPADO', 'Candidata con experiencia en empresa del giro alimenticio de 1 a&ntilde;o 6 meses como jefa de RH, conoce de norma ISO 22000:2005 y HACCP', 'Enviada el 31/01/2018 en espera de cita/ ingreso a la empresa el d&iacute;a 12/02/2018', 'no se le ha aplicado', 'se le aplic&oacute; psicotest, resultados favorables', 6),
(18, 35, 7, 'KARLA COPADO', 'Candidato cuenta con experiencia en &aacute;rea de calidad, su &uacute;ltimo empleo en empresa del giro del cart&oacute;n. Conoce de herramientas de calidad y mejora de procesos en l&iacute;neas de producci&oacute;n. Conoce de la norma ISO 9001', 'Enviado al cliente 13/03/2018, citado a entrevista martes 20/03/18', 'no se aplic&oacute;', 'no se realizaron', 5),
(19, 33, 7, 'KARLA COPADO', 'Candidato con experiencia de 3 a&ntilde;os en agencia automotriz como encargado de procesos y calidad. Conoce de bien los procesos en este giro en algunas &aacute;reas como taller, servicio a clientes, reparaciones, refacciones etc. Todo bajo un Sistema de Gesti&oacute;n de Calidad.', 'enviado al cliente el 13/03/18, Citado a entrevista con el cliente martes 20/03/18', 'no se aplic&oacute;', 'no se realizaron', 5),
(21, 36, 6, 'KARLA COPADO', 'Candidata con amplia experiencia en la parte operacional de asilo de ancianos, cuenta con diplomado en tanatolog&iacute;a y una especializaci&oacute;n en Geriatr&iacute;a y Rehabilitaci&oacute;n. faltan m&aacute;s bases en temas de administraci&oacute;n general, si embargo menciona no desconocer los procesos. ', 'Enviada al ing. Arenas el d&iacute;a 02/03/2018 y citada con &eacute;l el 07/03/2018. Contratada, fecha de ingreso por definir', 'Estudio aplicado el d&iacute;a 09 de marzo 2018, por David Urrutia y cuyos resultados fueron favorables.', 'Se le aplicaron KHOR y MIDOT ambos resultados favorables. ', 6),
(24, 39, 7, 'KARLA COPADO', 'Candidata radica en Puerto Vallarta, tiene experiencia en ventas de productos financieros de 5 a&ntilde;os laborando directamente en el banco Scotiabnak Inverlat. Las ventas las realiza tanto en sucursal como en campo dando seguimiento a cartera de clientes vigente y prospectando nuevos (la gran mayor&iacute;a referidos). Busca un sueldo base de $11,500 libres + comisiones', 'Enviada al cliente 07/03/2018, entrevistada por el cliente y en proceso de contrataci&oacute;n.', 'no se le aplic&oacute;, sin embargo se solicitaron referencias laborales con una de las personas que fue su jefe durante tres a&ntilde;os en Scotiabank y su ex jefa del cine, ambas fueron favorables.', 'se le aplicaron las b&aacute;sicas de psicotest y los resultados fueron favorables.', 5),
(26, 42, 8, 'KARLA COPADO', 'Candidata con experiencia de 2 a&ntilde;os en &aacute;rea administrativa, ha realizado facturaci&oacute;n, compras menores, gesti&oacute;n de pagos, armado de contabilidad y atenci&oacute;n y seguimiento a clientes. Cuenta con un  porcentaje de ingl&eacute;s avanzado ya que vivi&oacute; 3 a&ntilde;os en EUA. Actualmente no labora y su pretensi&oacute;n econ&oacute;mica es de $10,000 mensuales libres', 'Enviada al cliente 09/03/2018, citada en empresa el viernes 16 de marzo de 2018', 'no se ha realizado', 'Se aplic&oacute; Psicotest y resultados fueron favorables.', 5),
(27, 41, 8, 'KARLA COPADO', 'Candidata con experiencia de 3 a&ntilde;os en &aacute;rea administrativa, en su actual empleo se desempe&ntilde;a en el &aacute;rea de finanzas en donde tiene a cargo las CXP de tres unidades de negocio extranjeras (puerto rico, Europa y Asia). maneja el sistema SAP, portales bancarios y conciliaciones. Busca otro empleo ya que desea retomar experiencia s&oacute;lo en area administrativa, su pretensi&oacute;n es de $12,000 mensuales libres', 'Enviada al cliente 09/03/2018, citada a entrevista viernes 16 de marzo de 2018', 'no se aplic&oacute;', 'Se aplic&oacute; Psicotest, resultados favorables. ', 5),
(28, 43, 7, 'KARLA COPADO', 'Candidata con experiencia en el &aacute;rea contable de 12 a&ntilde;os, ha llevado contabilidad general, an&aacute;lisis de estados financieros, atenci&oacute;n a auditor&iacute;as, inventarios. Tiene una pretensi&oacute;n econ&oacute;mica de $12,000 mensuales libres ', 'Enviada al cliente el 14/03/2018 y citada en la empresa el 16/03/2018', '', '', 3),
(29, 44, 7, 'KARLA COPADO', 'Candidato con experiencia de 14 a&ntilde;os en el &aacute;rea contable, su &uacute;ltimo empleo formal fue en una empresa de seguridad privada cuyo corporativo constaba de 7 meses y &eacute;l llevaba la contabilidad de 1. su pretensi&oacute;n econ&oacute;mica es de $10,000 mensuales libres.', 'Enviado al cliente 14/03/2018 y citado con ellos el 16/03/2018', '', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id_puesto` int(11) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `ide_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id_puesto`, `puesto`, `ide_area`) VALUES
(1, 'COMPRADOR', 9),
(2, 'CONTADOR GENERAL', 4),
(3, 'PSICOLOGO CLINICO', 11),
(4, 'DESARROLLADOR JAVA', 5),
(5, 'ADMINISTRADOR DE PROYECTOS TI', 5),
(6, 'SISTEMAS', 5),
(7, 'JEFE DE RECURSOS HUMANOS', 1),
(9, 'RECLUTADOR', 1),
(10, 'DIRECTOR ASILO', 11),
(11, 'ANALISTA DE TRAFICO', 9),
(16, 'PRUEBA PUESTO', 15),
(17, 'INGENIERO DE PROCESOS', 8),
(18, 'INGENIERO DE CALIDAD', 8),
(19, 'ASESOR COMERCIAL ', 3),
(20, 'EJECUTIVA DE VENTAS', 3),
(21, 'ASISTENTE ADMINSITRATIVA BILINGUE', 14),
(23, 'AUXILIAR ADMINISTRATIVA', 14),
(28, 'GERENTE FINANZAS', 20),
(29, 'GERENTE DE RH', 1),
(30, 'GERENTE ADMINISTRATIVA', 14),
(31, 'ATENCION A CLIENTES', 3),
(32, 'GERENTE DE FINANZAS', 20),
(33, 'AGRONOMO', 8),
(34, 'SUPER INTENDENTE DE OBRA', 10),
(35, 'JEFE DO', 1),
(36, 'JEFE  RYS', 1),
(37, 'DIRECTOR DE RH', 1),
(38, 'ENCARGADO DE PROCESOS ', 8),
(39, 'DIRECTOR DE CALIDAD ALIMENTOS', 8),
(40, 'GERENTE DE CALIDAD ALIMENTOS', 8),
(41, 'DIRECTOR COMERCIAL', 3),
(42, 'CONSULTOR DE PROCESOS', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenas`
--

CREATE TABLE `resenas` (
  `id_resena` int(11) NOT NULL,
  `ide_perfil` int(11) NOT NULL,
  `entrevista_be` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `retro_cliente` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `psicometrias` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `socio_economico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `comentarios` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `calificacion` int(1) NOT NULL,
  `actualizo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resenas`
--

INSERT INTO `resenas` (`id_resena`, `ide_perfil`, `entrevista_be`, `retro_cliente`, `psicometrias`, `socio_economico`, `comentarios`, `calificacion`, `actualizo`, `fecha`) VALUES
(1, 1, 'Prueba 2', '.', '.', '.', '', 1, 'karla.copado', '2018-05-30'),
(2, 3, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 'Prueba', 2, 'administrador', '2018-05-26'),
(3, 4, 'Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. ', 'Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. ', 'Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. ', 'Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. ', 'Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. \r\nEstas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. Estas es una muestra para hacer pruebas con el texto de las rese&ntilde;as porque es necesario que lo cuadre a la perfecci&oacute;n para evitar cualquier tipo de problemas en el futuro. Es incre&iacute;ble como eh logrado estos avances de manera sobresaliente. ', 3, 'administrador', '2018-05-26'),
(4, 111, 'Es buen candidato para nivel gerencia senior para areas de calidad, conoce de inocuidad y procesos de an&aacute;lisis f&iacute;sico qu&iacute;micos y certificaciones', 'Este candidato se vio para un proceso de selecci&oacute;n con SANE sin embargo el nivel de compensaci&oacute;n solicitado por Roberto era mayor', 'no se cuenta con evaluaciones psicom&eacute;tricas', '', 'postular a PSA', 2, 'rafael.tello', '2018-05-29'),
(5, 112, 'Bueno para nivel gerencia en areas de calidad o aseguramiento de calidad, Mejora continua y procesos de certificaci&oacute;n.', 'No ha sido enviado a procesos de selecci&oacute;n', '', '', '', 1, 'rafael.tello', '2018-05-29'),
(6, 41, 'Experiencia de 2 a&ntilde;os en el puesto, conoce de facturaci&oacute;n 3.3, ha manejado adminpaq, su pretensi&oacute;n econ&oacute;mica es de $10,000 mensuales libres', 'Citada a entrevista ', '', '', '', 2, 'administrador', '2018-05-30'),
(7, 73, 'Experiencia de 20 a&ntilde;os en el &aacute;rea de RH, le ha tocado estructurar el &aacute;rea de rh desde cero en algunas de las empresas donde ha laborado. Tiene una pretensi&oacute;n econ&oacute;mica de $35,000 nominales ', 'Citado a entrevista con el cliente el d&iacute;a 07 de mayo/ candidato seleccionado fecha tentativa de ingreso 11 de junio de 2018.', 'Evualuado con Khor, resultados favorables', 'no solicitado por el cliente', 'En espera de cita para firma de contrato', 3, 'administrador', '2018-05-30'),
(8, 97, 'cuenta con experiencia de 5 a&ntilde;os en DO, 3 a&ntilde;os en empresa del giro alimenticio. Tiene una pretensi&oacute;n econ&oacute;mica de $40,000 mensuales nominales.', 'Entrevistada por cliente d&iacute;a lunes 28 de mayo, indican que se  encuentran fuera de rango salarial, descartada.', 'no se le aplicaron', 'no se le aplicaron', 'Buena candidata, abierta a escuchar m&aacute;s ofertas', 3, 'administrador', '2018-05-30'),
(9, 98, 'Cuenta con experiencia en DO de alrededor de 1 a&ntilde;o,  radica en chapala, tiene una pretensi&oacute;n econ&oacute;mica de $28,000 mensuales libres.', 'candidata finalista, en espera de decisi&oacute;n por parte del cliente. ', 'Aplicadas, resultados enviadas al cliente.', 'No solicitado por parte del cliente', '', 1, 'administrador', '2018-05-30'),
(10, 100, 'Cuenta con experiencia de 3 a&ntilde;os 6 meses en DO, actualmente labora en una empresa del giro tequilero (Casa Cuervo), tiene una maestr&iacute;a en DO por parte de la UNIVA. pretensi&oacute;n econ&oacute;mica de $30,000 mensuales nominales.', 'Comenta que por la relaci&oacute;n comercial de CASA CUERVO- SANE no es posible considerarla a la vacante.', 'no aplicadas', 'No aplicadas', 'Buena candidata, abierta a ofertas laborales.', 3, 'administrador', '2018-05-30'),
(11, 102, 'Cuenta con experiencia de 4 a&ntilde;os 6 meses en DO, actualmente labora en una constructora y anteriormente estuvo laborando en una empresa del giro alimenticio. Pretensi&oacute;n econ&oacute;mica de $20,000 mensuales libres', 'La candidata desert&oacute; del proceso por el tema de distancia', 'no aplicadas', 'no aplicado', 'Buena candidata, abierta a ofertas laborales.', 2, 'administrador', '2018-05-30'),
(12, 115, 'Cuenta con 4 a&ntilde;os de experiencia en el area de DO, anteriormente estuvo laborando en NIssan como Gerente de Gesti&oacute;n de Talento en donde desempe&ntilde;&oacute; varios proyectos en temas de Desarrollo Organizacional', 'Entrevistada por cliente el d&iacute;a 01 de junio de 2018/ seleccionada por el cliente/ ingreso 18 de junio de 2018', 'resultados favorables.', 'No solicitado por el cliente', 'En espera de ingreso a SANE el 18 de junio de 2018', 2, 'administrador', '2018-06-08'),
(13, 77, 'Cuenta con experiencia de 7 a&ntilde;os en el &aacute;rea administrativa como gerente, conoce de presupuestos mensuales, supervisi&oacute;n de &aacute;reas administrativas, elaboraci&oacute;n de estados financieros. Su pretensi&oacute;n econ&oacute;mica $40,000 mensuales nominales', 'Seleccionada por el cliente y presentaci&oacute;n de propuesta econ&oacute;mica 07 de junio de 2018', 'resultados favorables', 'no solicitado por el cliente', 'Fecha de ingreso 11 de junio de 2018', 2, 'administrador', '2018-06-08'),
(14, 79, 'Candidata con 16 a&ntilde;os de experiencia en el area administrativa, ha supervisado &aacute;reas administrativas como RH, contabilidad, tesorer&iacute;a, Compras, realizaci&oacute;n de presupuestos mensuales. Su pretensi&oacute;n econ&oacute;mica $35,000 mensuales libres.', 'Entrevista por el cliente/ descartada en la tercera fase por cliente.', 'no aplicadas', 'no solicitados por el cliente', 'Buena candidata.', 2, 'administrador', '2018-06-08'),
(15, 117, 'Amplia experiencia en Administraci&oacute;n de proyectos, procesos y mejora continua en empresas Trasnacionales. Cuenta con maestr&iacute;a en Administraci&oacute;n de negocios y un diplomado en Administraci&oacute;n de proyectos. Pretensi&oacute;n econ&oacute;mica $38,000 nominales.', 'Vacante cancelada por cliente TAJIN', '', '', '', 3, 'administrador', '2018-06-08'),
(16, 130, 'Candidata con 8 a&ntilde;os en recursos humanos, la mayor parte de ella en el &aacute;rea de Capacitaci&oacute;n y algunos proyectos de DO. Le falta m&aacute;s experiencia en el &aacute;rea de administraci&oacute;n de personal pero indica conocer los procesos. Su pretensi&oacute;n econ&oacute;mica es de $32,000 mensuales nominales + prestaciones superiores.', 'citada con el cliente SANE, pero descartada por falta de experiencia en implementaci&oacute;n de proyectos nuevos en DO', 'no se le aplicaron', 'no se le aplic&oacute;', 'experiencia fuerte en capacitaci&oacute;n, buena en DO, y fortalecer conocimientos en administraci&oacute;n de personal.', 2, 'administrador', '2018-06-28'),
(17, 131, 'Fuerte experiencia en DO de alrededor de 8 a&ntilde;os, cuenta con un posgrado en gesti&oacute;n de capital humano. Ha implementado proyectos nuevos y dado seguimiento a existentes en materia de DO, tambi&eacute;n conoce de administraci&oacute;n de personal. Su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales nominales + prestaciones superiores.', 'Entrevistada por cliente SANE, sin embargo descartada por falta de &quot;click&quot; con el gerente.', 'se le aplicaron, resultados favorables.', 'no aplicado', 'Buena candidata, fuerte experiencia y buena actitud.', 3, 'administrador', '2018-06-28'),
(18, 132, 'experiencia de 5 a&ntilde;os en materia de DO, ha implementado proyectos de Desarrollo Organizacional desde cero e incluso aperturar el &aacute;rea. Conoce tambi&eacute;n de administraci&oacute;n de personal. su pretensi&oacute;n econ&oacute;mica es de 32,000 mensuales nominales + prestaciones superiores.', 'entrevistada por cliente SANE, seleccionada. La candidata declin&oacute; a la oferta laboral por el tema de la distancia.', 'Sin responder por parte de la candidata.', 'no aplicado', '', 3, 'administrador', '2018-06-28'),
(19, 133, 'cuenta con experiencia de 2 a&ntilde;os en materia de DO, la mayor parte de su experiencia ha sido en el &aacute;rea de capacitaci&oacute;n. Cuenta con licenciatura en Administraci&oacute;n de empresas y un diplomado en DO. su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales nominales + prestaciones superiores.', 'No fue enviado al cliente ya que al final el candidato declin&oacute; a continuar con el proceso por el factor distancia.', 'no aplicadas', 'no aplicado', '', 2, 'administrador', '2018-06-28'),
(20, 137, 'candidato con experiencia como director comercial en empresas de Retail trasnacionales, cuenta con ingl&eacute;s avanzado, es Ingeniero Industrial y Sistemas, cuenta con un diplomado en sistemas de planeaci&oacute;n (lo estudi&oacute; en Jap&oacute;n).', 'Informaci&oacute;n enviada a la empresa CLOE sin embargo ya no dieron respuesta', 'No aplicadas', 'No aplicado', '', 3, 'administrador', '2018-07-06'),
(21, 135, 'Candidato con experiencia como director comercial de m&aacute;s de 20 a&ntilde;os en empresas trasnacionales, cuenta con ingl&eacute;s avanzado, tiene un MBA por parte de la universidad de Phoenix. Vive en el DF y su pretensi&oacute;n econ&oacute;mica es de $150,000 mensuales.', 'Informaci&oacute;n del candidato enviada a la empresa CLOE, sin embargo ya no se tuvo respuesta por parte del cliente.', 'No aplicadas', 'No aplicado', '', 3, 'administrador', '2018-07-06'),
(22, 136, 'Candidata Originaria de Espa&ntilde;a, radica actualmente en M&eacute;xico. Tiene experiencia como Directora comercial en empresas Retail a nivel internacional. Habla Italiano y domina un ingl&eacute;s b&aacute;sico. ', 'Informaci&oacute;n de la candidata enviada a la empresa CLOE sin embargo ya no se tuvo respuesta por parte del cliente.', 'No aplicadas', 'No aplicado', '', 3, 'administrador', '2018-07-06'),
(23, 141, 'Candidata entrevistada para vacante de consultor de procesos para cliente Franquicias Gallastegui, su pretensi&oacute;n econ&oacute;mica $19,000 mensuales libres', '', '', '', '', 2, 'administrador', '2018-07-09'),
(24, 139, 'Candidata entrevistada para vacante de consultora de franquicias gallastegui, pretensi&oacute;n econ&oacute;mica $18,000 mensuales libres', '', '', '', '', 2, 'administrador', '2018-07-09'),
(25, 142, 'Candidata entrevistada para vacante de consultora en Franquicias Gallastegui,  pretensi&oacute;n econ&oacute;mica $20,000 mensuales libres', '', '', '', '', 3, 'administrador', '2018-07-09'),
(26, 146, 'Cuenta con maestr&iacute;a en &aacute;rea fiscal, y algunos diplomados en administraci&oacute;n financiera e impuestos. Su experiencia m&aacute;s reciente ha sido como Gerente de Administraci&oacute;n y Finanzas, su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales libres. ', '', '', '', 'La candidata fue entrevistada para la vacante de Contador General en la empresa s&oacute;lido, sin embargo no fue seleccionada.', 3, 'administrador', '2018-07-09'),
(27, 145, 'Es contadora titulada y cuenta con una especialidad en impuestos. Su experiencia m&aacute;s reciente ha sido como jefa de Administraci&oacute;n, su pretensi&oacute;n econ&oacute;mica es de $25,000 mensuales libres. ', '', '', '', 'Candidata entrevista para la vacante de Contador General para la empresa S&oacute;lido, sin embargo no fue seleccionada.', 2, 'administrador', '2018-07-09'),
(28, 144, 'Es titulada en Contabilidad y cuenta con un diplomado de contabilidad de costos para la construcci&oacute;n. Su experiencia m&aacute;s reciente ha sido como como Contadora y Jefe de costos e inventarios en una empresa constructora. Su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales libres.', '', '', '', 'Candidata entrevista para la vacante de Contador General en la empresa S&oacute;lido, sin embargo no fue seleccionada. ', 3, 'administrador', '2018-07-09'),
(29, 143, 'Es titulado de la licenciatura de contabilidad, su experiencia m&aacute;s reciente ha sido como Administrador y Contador en una empresa constructora. Su pretensi&oacute;n econ&oacute;mica es de $25,000 mensuales libres.', 'Candidato seleccionado en la empresa s&oacute;lido para la vacante de contador general.', 'resultados favorables', 'no aplicado', '', 2, 'administrador', '2018-07-09'),
(30, 78, 'Candidata 6 a&ntilde;os de experiencia como gerente administrativa, cuenta con una licenciatura en administraci&oacute;n y una maestr&iacute;a en  finanzas. Su pretensi&oacute;n econ&oacute;mica es de $40,000 mensuales nominales.', 'Enviada a empresa de Aceros sin embargo no fue entrevistada por el cliente.', '', '', '', 2, 'administrador', '2018-07-09'),
(31, 80, 'Candidata con 6 a&ntilde;os de experiencia como gerente de administraci&oacute;n y finanzas. Es titulada en contabilidad y cuenta con una maestr&iacute;a en administraci&oacute;n empresarial. Su pretensi&oacute;n econ&oacute;mica es de $30,000 mensuales libres.', '', '', '', 'Entrevistada para la vacante de gerente de administraci&oacute;n en la empresa de Aceros, sin embargo no fue enviada ya que estaba fuera del rango de edad. ', 2, 'administrador', '2018-07-09'),
(32, 149, 'Candidata con m&aacute;s de 20 a&ntilde;os de experiencia como gerente administrativa, su experiencia m&aacute;s reciente fue como Gerente administrativo en una empresa constructora. Cuenta con un IPADE y algunos diplomados adicionales. Su pretensi&oacute;n econ&oacute;mica $25,000 mensuales libres', 'Seleccionada por el cliente de Aceros sin embargo candidata declin&oacute; a la oferta, por otra mejor propuesta.', 'resultados favorables', 'no aplicado', '', 3, 'administrador', '2018-07-09'),
(33, 148, 'Candidata con 4 a&ntilde;os de experiencia como gerente administrativo, Tiene una maestr&iacute;a en Administraci&oacute;n de Negocios con &eacute;nfasis en finanzas. Su experiencia m&aacute;s reciente ha sido en una empresa dedicada a la fabricaci&oacute;n y distribuci&oacute;n de equipos para protecci&oacute;n personal. Su pretensi&oacute;n econ&oacute;mica $45,000 mensuales nominales.', 'Entrevistada por el cliente de Aceros, sin embargo no fue seleccionada.', 'no aplicadas', 'no aplicado', '', 2, 'administrador', '2018-07-09'),
(34, 147, 'Candidata con experiencia de 6 a&ntilde;os como gerente administrativo, cuenta con una Maestr&iacute;a en derecho fiscal. Su experiencia m&aacute;s reciente ha sido en una empresa dedicada a la comercializaci&oacute;n de equipos de c&oacute;mputo.', 'Entrevistada por el cliente de Aceros, sin embargo no fue seleccionada.', 'resultados favorables', 'no aplicados', '', 2, 'administrador', '2018-07-09'),
(35, 72, 'Candidata con experiencia de 2 a&ntilde;os como Gerente de RH, Cuenta con una licenciatura en Administraci&oacute;n de empresas y un diplomado en finanzas. Su experiencia m&aacute;s reciente ha sido como gerente en una empresa fabricante de dispositivos m&eacute;dicos. Su pretensi&oacute;n econ&oacute;mica es de $20,000 mensuales libres.', 'Entrevistada por cliente Kenworth, sin embargo no fue seleccionada.', '', '', '', 1, 'administrador', '2018-07-09'),
(36, 150, 'cuenta con experiencia de 3 a&ntilde;os como gerente de RH, su &uacute;ltima experiencia laboral fue como gerente de rh en una empresa de Log&iacute;stica. Tiene una licenciatura en Relaciones Industriales por parte del ITESO, tiene un porcentaje de ingl&eacute;s avanzado. Su pretensi&oacute;n econ&oacute;mica $25,000 mensuales libres.', 'Entrevistada para vacante de cliente Kenworth sin embargo no fue enviada ya que el cliente ya hab&iacute;a seleccionado candidato.', '', '', '', 2, 'administrador', '2018-07-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(3) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `nivel_usuario` varchar(20) NOT NULL,
  `bloqueo` int(1) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`, `nombre`, `correo`, `nivel_usuario`, `bloqueo`, `foto`) VALUES
(2, 'administrador', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'Administrador', 'admin@beconsulting.com.mx ', 'ADMINISTRADOR', 0, 'foto_perfil/pedro.aguayo.png'),
(5, 'karla.copado', '9bb5b24e06e42a97c6dac74e77b51a83c8e21078', 'KARLA COPADO', 'kcopado@beconsulting.com.mx ', 'RECLUTADOR', 0, 'foto_perfil/karla.copado.png'),
(8, 'rafael.tello', 'a3c75d2db58d92921dfada907965c95cf24f52e9', 'RAFAEL TELLO', 'rtello@beconsulting.com.mx', 'RECLUTADOR', 0, '../img/user.png'),
(9, 'victor.chavez', 'b5097f027ad1976d95cb2871da4815916a1310c5', 'VICTOR CHAVEZ', 'vchavezbeconsulting.com.mx', 'RECLUTADOR', 0, '../img/user.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`),
  ADD UNIQUE KEY `id_area` (`id_area`),
  ADD UNIQUE KEY `area` (`area`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`),
  ADD UNIQUE KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`),
  ADD UNIQUE KEY `id_perfil` (`id_perfil`),
  ADD KEY `ide_area` (`ide_area`),
  ADD KEY `ide_puesto` (`ide_puesto`),
  ADD KEY `ide_nivel` (`ide_nivel`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id_proceso`),
  ADD UNIQUE KEY `ide_pefil_2` (`ide_perfil`),
  ADD KEY `ide_pefil` (`ide_perfil`),
  ADD KEY `ide_cliente` (`ide_cliente`),
  ADD KEY `ide_cliente_2` (`ide_cliente`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id_puesto`),
  ADD UNIQUE KEY `id_puesto` (`id_puesto`),
  ADD UNIQUE KEY `puesto` (`puesto`),
  ADD KEY `ide_area` (`ide_area`);

--
-- Indices de la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD PRIMARY KEY (`id_resena`),
  ADD KEY `ide_perfil` (`ide_perfil`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `resenas`
--
ALTER TABLE `resenas`
  MODIFY `id_resena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
