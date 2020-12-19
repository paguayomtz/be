-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 18:27:52
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
(25, 'ADMINISTRACION'),
(14, 'ADMINISTRACION GENERAL'),
(22, 'AGRONOMIA'),
(29, 'CALIDAD'),
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
(30, 'OPERACIONES'),
(31, 'RECLUTAMIENTO '),
(1, 'RECURSOS HUMANOS'),
(27, 'SEGUROS '),
(5, 'TECNOLOGIAS DE LA INFORMACION'),
(32, 'VENTAS '),
(28, 'VENTAS CREDITOS PYME '),
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
(1, 'COMPUCAD', 'ALEJANDRA CERVANTES', '(33) 3366-6677 ext.103', 'acervantes@compucad.mx', 0),
(2, 'PUNTO FORZA', 'MONICA FRANCO', '	3666-3333 ext. 100', 'mfranco@puntoforza.com', 0),
(3, 'FRANQUICIAS GALLASTEGUI', 'MONICA GANDARA', '36421123', 'mgandara@hotmail.com', 0),
(4, 'BIGO', 'VICTOR MORENO', '3414390554', 'victor.moreno@bigo.mx', 1),
(5, 'SANE', 'ISABEL HERNANDEZ ROMAN', '(376) 7654020 EXT.264', 'ihernandez@sane.com.mx', 1),
(6, 'MI DULCE ESTANCIA ASILO', 'JESUS ARENAS', ' 33 3570 1427', 'direccion@sicosa.net', 1),
(7, 'CAJASA', 'ARIANA RUIZ', '36685420', 'Ariana.Ruiz@amher.com.mx', 0),
(8, 'BUSKLOPPER', 'OLGA SANTANA - VICTOR AGUILAR', ' (33) 36450769/36634849  ', 'enlace@buskoppler.com', 0),
(9, 'MENDOZA ASESORES', 'CESAR MENDOZA', '36301326', 'mendoza_asesores@me.com', 1),
(10, 'KENWORTH', 'Rodrigo Velasco ', '3330013300', 'rvelasco@kenworthjalisco.com', 0),
(11, 'TERRMAR BRANDS', 'JESSICA CASTRO', '20163116', 'jcastro@terramarbrands.com', 1),
(12, 'Grupo Solido', 'Zaira Ayala', '3335784626', 'zeayala@solido.com.mx', 1),
(13, 'PSA PRODUCTOS SELECTOS DE AGAVE', 'Guadalupe Santana', '3310476761', 'gsantana@grupopsa.com', 1),
(14, 'HO1A INOVACIONES', 'Javier Santana', '55 9171 8890 ', 'fsantana@ho1a.com', 1),
(15, 'CORI', 'Lic. Mary Carmen P&eacute;rez  ', '3616980783/.(33) 3674.3850', 'marycarmen.perez@cori.org.mx ', 1),
(16, 'EVO COLOR ', 'Lic. Luis Echeverria ', '3311631095', 'luis.echeverrria@evocolor.com.mx ', 1),
(17, 'ALANTA SEGUROS ', 'Vanessa Serratos ', '33 33778840', 'vserrratos@alanta.mx', 1),
(18, 'VERSA MUEBLES ', 'Lic. Julian Carbonell', '332317915 ext.1010/331725', 'gerenciacomercial@tecnomuebles.com', 1),
(19, 'CSO', 'Adrian Murillo', '3331201212', 'amurillo@c-s-o.mx', 1),
(20, 'C&amp;G', 'Sra Noemi / Jose luis Gutierrez', '3331899488', 'noemidavila5@hotmail.com&gt;', 1),
(21, 'Perdura', 'Gerardo', 'sn', 'gerardo@plastitrim.com.mx', 0),
(22, 'Bandrex', 'Guillermo sierra / Consuelo Sandoval RH', '37777375- 121', 'gsierra@bandrex.com.mx    csandoval@bandrex.com.mx', 1),
(23, 'Tajion', 'Lorena velazco', 'SN', 'lorena.velasco@tajin.com', 0),
(24, 'canadevi  / JC', 'Martha Enao       ', '3331573066', 'marthalucia_henao@hotmail.com', 1),
(25, 'Carl.s JR', 'Mario  Garcia', '3313269342 ', 'mfacio@stargdl.mx', 0),
(26, 'Carl.s JR', 'Mario  Garcia', '3313269342 ', 'mfacio@stargdl.mx', 0),
(27, 'Prosatec / Proconsa    Rtello', 'Marcos oceguera', 'NA', '  moseguera@proconsa.com.mx ', 1),
(28, 'NApresa  / JC', 'Marcos Dau Director general fuente interna JC', '  38803835 ', 'marcos.dau@napresa.com.mx ', 1),
(29, 'Grupo Red Frio', 'Roberto Martinez (Director)  Fuente interna JC', '38360600 Ext.630 ', 'roberto@gruporedfrio.mx', 1),
(30, 'San Mina', 'Oscar Maldonado   Director RH   (Fuente Interna JC', 'oscar.maldonado@sanmina-sci.co', 'oscar.maldonado@sanmina-sci.com', 1),
(31, 'Grupo empresarial Villagomez', 'Oscar Nava  (Gerente RH los cabos ind. de la const', ' 6241081089', 'gerenciarrhh@ge-villa.com', 1),
(32, 'N&quot;N', 'Diego Ulloa (Director, fuente interna Rafael Tello', '3333625437', 'dulloa@n2n.mx', 1),
(33, 'Vitanova (Hospital)', 'Dra. luz elena Burgos (Directora fuente interna Rt', '3336623378', 'd.r.burgos@outlook.com', 1),
(34, 'Hermanos vazques Medina  ', 'CP Ruben Vazquez Medina  (contacto interno Mario V', '31230063 oficina GDL', 'ruben@vazquez.com.mx', 1),
(35, 'Bradescard Mexico', 'Erika Andrea Gomez Ahuatl   (contacto interno Clau', '33 38842317', 'egomez@bradesco.com.mx', 1),
(36, 'punto Led', 'Daniel Araujo (contacto interno Rtello,  Avante ca', '33 13681732', 'gerencia@puntoled.mx', 1),
(37, 'Inverlevy Promotora de inversion', 'Jorge abraham de la torre navarro (Avante camara d', '3320010120', 'jt@inverlevy.com', 1),
(38, 'Redes UNET', 'Jose esquivias (contacto interno RT  Avante)', '23059324', 'jesquivi@redesunet.com', 1),
(39, 'Construcarr', 'Ricardo Luna Galindo (Fuente interna JC)', '33 36060784', 'ricardo.lunag@construcarr.com', 1),
(40, 'Espacios  (Arquitectura y dise&ntilde;os)', 'Diego Morales  (fuente interna camara de comercio ', '36415635', 'contacto@mmasmespacios.com', 1),
(41, 'Punto Led (Anuncios luminosos en Led.)', 'Daniel Araujo (Fuente interna Camara de comercio a', '33 13681732', 'gerencia@puntoled.mx', 1),
(42, 'Asfii   (asesoria y estrategia financiera)', 'Alan Yafet Lozano  (fuente interna camara de comer', '3338071892', 'a.lozano@asfii.com.mx', 1),
(43, 'Fluxing  (ingenieria TI)', 'Cristobal san roman (fuente interna camara de come', '3310897439', 'cristobal.sanroman@fluxing.mx', 1),
(44, 'DIFEPA (Tuberias)', 'Alfonso Camarena nares (fuente interna camara de c', '36147590', 'alfonso@difepa.com', 1),
(45, 'Menovum (Sistemas medicos)', 'Saul Pacheco (fuente interna Camara de comercio Av', '32019522', 'saul.pacheco@menovum.com', 1),
(46, 'N&amp;P Legal (justicia alternativa) abogados', 'Daniela Parra (fuente interna camara de comercio A', '245680 54', 'daniella@nyplegal.mx', 1),
(47, 'ETERNO Huertos Familiares  HELA solar', 'Ana Marcela Herrera', '23060844   cel 3312526279', 'marcela@semillaseterno .com', 1),
(48, 'CO- PILOT Finanzas business partner', 'Alfonso Bringas   Circulos empresariales Camara', '5543526329', 'abringas@copilot.com.mx', 1),
(49, 'NUBIKA services  (finanzas)', 'Rodrigo Ruiz Garcia (circulos emp. Camara de comer', '36110815 y cel 3314273287', 'r.ruiz@nubika.com.mx', 1),
(50, 'OLEOFINOS  (aceites grasas y vegetales)', 'Ernesto Gutierrez ibarraran (circulos Emp. camara)', '37774800  y cel 3339544002', 'ernesto.gutierrez@oleofinos.com.mx', 1),
(51, 'Gestion e inteligencia regulatoria   (cofepris)', 'QFB Santiago pulido    (circulos Emp. camara comer', '33 16475825  y cel 3317911183', 'qfbsamm@gmail.com', 1),
(52, 'TEIDESH CENTRO HOLISTICO Y DESARROLLO HUMANO', 'MSF LAURA ESPINOSA P  (CIRCULOS EMP CAMARA)', '38482983 Y CEL 3315676981', 'teidesh@outlook.com', 1),
(53, 'GEN grupo empresarial  (serv. financieros  hoteler', 'Alicia castellanos  Gerente serv. Fin. circulos em', '36168982 y cel 3332009405', 'aliciacastellanos@santamariaresort.com.mx', 1),
(54, 'metalform aceros y lamina acanalada', 'juan carlos Lira vazquez (circulos empresariales c', '3313700973', 'atesa_aceros@hotmail.com', 1),
(55, 'FLORAMI  (agencia de viajes)', 'Isabel Ramirez (circulos emp. camara de com)', '31333476   y cel 3331155702', 'isabel@viajesflrami.com', 1),
(56, 'Grupo indultrial Fenix', 'Marlen colmenares quijano', '33307674   y cel 3310766671', 'marlenc.gif@gmail.com', 1),
(57, 'BIOINOCUO (MANEJO INTEGRAL DE PLAGAS)', 'INES ROCIO MORENO  (CIRCULOS EMP. CAMARA)', '3331850568', 'ines.moreno.bioinocuo@gmail.com', 1),
(58, 'B. Box seguridad privada', 'Fernanda Larios (circulos camara de com)', 'cel 3313009315', 'fernanda.larios@bboxsecurity.com', 1),
(59, 'Pitchbull', 'Patricia demetrio  (Jc)', '47374976', 'patricia.demetrio@pitchbull.com', 1);

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
(23, 'ANA JAZMIN SOLORIO CARRILLO', 1, 7, 1, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_JUNIOR_ANA JAZMIN SOLORIO CARRILLO.pdf', 'karla.copado', '2018-01-31', 1, 'No enviada a SANE, falta de experiencia en giro alimenticio, y le falta m&aacute;s experiencia en una coordinaci&oacute;n.'),
(24, 'MARIANA DEL CARMEN GODOY NAVARRO', 1, 7, 2, 'curris/1/JEFE DE RECURSOS HUMANOS/1_JEFE DE RECURSOS HUMANOS_SENIOR_MARIANA DEL CARMEN GODOY NAVARRO.pdf', 'karla.copado', '2018-01-31', 1, 'no enviada a SANE falta de experiencia en giro alimenticio'),
(29, 'PEDRO AGUAYO MARTINEZ', 5, 6, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/SISTEMAS/TECNOLOGIAS DE LA INFORMACION_SISTEMAS_MIDDLE_PEDRO AGUAYO MARTINEZ.pdf', 'administrador', '2018-02-21', 1, 'Hola'),
(35, 'DIEGO ARMANDO HUERTA HURTADO', 8, 18, 1, 'curris/INGENIERIA/INGENIERO DE CALIDAD/INGENIERIA_INGENIERO DE CALIDAD_JUNIOR_DIEGO ARMANDO HUERTA HURTADO.docx', 'karla.copado', '2018-03-14', 0, ''),
(39, 'BRISA NAYELY CERRITOS RADILLA', 3, 20, 2, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/VENTAS_EJECUTIVA DE VENTAS_MIDDLE_BRISA NAYELY CERRITOS RADILLA.pdf', 'karla.copado', '2018-03-14', 0, ''),
(44, 'CESAR RODRIGUEZ ALVARADO', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/CONTABILIDAD_CONTADOR GENERAL_MIDDLE_CESAR RODRIGUEZ ALVARADO.doc', 'karla.copado', '2018-03-15', 0, ''),
(45, 'CRISTINA LIZAOLA REYES', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_CRISTINA LIZAOLA REYES.pdf', 'administrador', '2018-03-16', 0, ''),
(46, 'KARLA ANGELICA GARCIA PRUDENCIO', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_KARLA ANGELICA GARCIA PRUDENCIO.docx', 'administrador', '2018-03-16', 0, ''),
(47, 'MARIA GORETTI RODRIGUEZ VILLANUEVA', 14, 23, 2, 'curris/ADMINISTRACION GENERAL/AUXILIAR ADMINISTRATIVA/ADMINISTRACION GENERAL_AUXILIAR ADMINISTRATIVA_MIDDLE_MARIA GORETTI RODRIGUEZ VILLANUEVA.doc', 'administrador', '2018-03-16', 0, ''),
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
(150, 'EDNA DANIELA BARRETO GONZALEZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/EDNA DANIELA BARRETO GONZALEZ.docx', 'administrador', '2018-07-09', 0, ''),
(151, 'JESSICA HERNANDEZ ROBELLADA', 3, 43, 3, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/SENIOR/JESSICA HERNANDEZ ROBELLADA.pdf', 'administrador', '2018-08-17', 0, ''),
(152, 'VICTOR CARDENAS HERNANDEZ', 3, 43, 3, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/SENIOR/VICTOR CARDENAS HERNANDEZ.pdf', 'administrador', '2018-08-17', 0, ''),
(153, 'JAIME ADAN LARIOS MOLINA', 3, 43, 2, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/MIDDLE/JAIME ADAN LARIOS MOLINA.pdf', 'administrador', '2018-08-17', 0, ''),
(154, 'YEDITHZA VELAZQUEZ NAVA', 3, 43, 3, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/SENIOR/YEDITHZA VELAZQUEZ NAVA.pdf', 'administrador', '2018-08-17', 0, ''),
(155, 'JOSE BERNARDO GUERRERO MUNGUIA', 3, 43, 3, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/SENIOR/JOSE BERNARDO GUERRERO MUNGUIA.pdf', 'administrador', '2018-08-17', 0, ''),
(156, 'JESUS ARMANDO PEREZ CHAVEZ', 3, 43, 1, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVO COMERCIAL TI/JUNIOR/JESUS ARMANDO PEREZ CHAVEZ.docx', 'administrador', '2018-08-17', 0, ''),
(157, 'ALEJANDRO RABAGO', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/ALEJANDRO RABAGO.pdf', 'administrador', '2018-09-11', 0, ''),
(158, 'RAFAEL TELLOS F.', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/RAFAEL TELLOS F..docx', 'administrador', '2018-09-11', 0, ''),
(159, 'JENNY COVARRUBIAS', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/JENNY COVARRUBIAS.pdf', 'administrador', '2018-09-14', 0, ''),
(160, 'GISELLE SANCHEZ FLORES PARKMAN', 1, 35, 2, 'curris/RECURSOS HUMANOS/JEFE DO/MIDDLE/GISELLE SANCHEZ FLORES PARKMAN.pdf', 'administrador', '2018-09-14', 0, ''),
(161, 'TERESITA DE JESUS PENA GONZALEZ', 1, 29, 1, 'curris/RECURSOS HUMANOS/GERENTE DE RH/JUNIOR/TERESITA DE JESUS PENA GONZALEZ.pdf', 'administrador', '2018-09-14', 0, ''),
(162, 'ENRIQUE PEREZ ZACARIAS', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/ENRIQUE PEREZ ZACARIAS.doc', 'administrador', '2018-09-14', 0, ''),
(163, 'EDGAR CASILLAS GUDINO', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/EDGAR CASILLAS GUDINO.pdf', 'administrador', '2018-09-14', 0, ''),
(164, 'JOSE MANUEL AHUMADA LOPEZ', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/JOSE MANUEL AHUMADA LOPEZ.doc', 'administrador', '2018-09-14', 0, ''),
(165, 'RAYMUNDO GOMEZ HERNANDEZ', 20, 44, 2, 'curris/FINANZAS/CONTRALOR/MIDDLE/RAYMUNDO GOMEZ HERNANDEZ.docx', 'administrador', '2018-09-14', 0, ''),
(167, 'SALVADOR MURO REYES', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/SALVADOR MURO REYES.pdf', 'administrador', '2018-09-14', 0, ''),
(168, 'AGUSTIN SANTANA GARCIA', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/AGUSTIN SANTANA GARCIA.doc', 'administrador', '2018-09-14', 0, ''),
(169, 'RAFAEL.TELLO', 0, 0, 0, 'perfiles/curris/RAFAEL.TELLO.pdf', 'Candidato', '2018-09-19', 0, ''),
(171, 'DAPHNE MANN GUARDIOLA', 7, 46, 2, 'curris/MERCADOTECNIA_PUBLICIDAD_RELACIONES PUBLICAS/ASISTENTE DE MKT/MIDDLE/DAPHNE MANN GUARDIOLA.pdf', 'rafael.tello', '2018-09-19', 0, ''),
(172, 'LUIS GERARDO NAVARRO', 24, 47, 2, 'curris/DIRECTOR MANUFACTURA ALIMENTOS/DIRECTOR DE OPERACIONES/MIDDLE/LUIS GERARDO NAVARRO.pdf', 'rafael.tello', '2018-09-19', 0, ''),
(173, 'JOSE ROBERTO MOLL', 7, 45, 2, 'curris/MERCADOTECNIA_PUBLICIDAD_RELACIONES PUBLICAS/GERENTE/DIRECTOR DE MKT/MIDDLE/JOSE ROBERTO MOLL.pdf', 'rafael.tello', '2018-09-19', 0, ''),
(174, 'MARIO VERDUZCO', 0, 0, 0, 'perfiles/curris/MARIO VERDUZCO.doc', 'Candidato', '2018-09-20', 0, ''),
(175, 'CESAR AUGUSTO VARGAS TORRES', 5, 4, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/DESARROLLADOR JAVA/MIDDLE/CESAR AUGUSTO VARGAS TORRES.pdf', 'victor.chavez', '2018-09-21', 0, ''),
(176, 'IGNACIO JUAREZ CANTU', 4, 2, 1, 'curris/CONTABILIDAD/CONTADOR GENERAL/JUNIOR/IGNACIO JUAREZ CANTU.docx', 'victor.chavez', '2018-09-21', 0, ''),
(177, 'MAYRA JANETH CHAVEZ MURILLO', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/MAYRA JANETH CHAVEZ MURILLO.pdf', 'administrador', '2018-10-19', 0, ''),
(178, 'JOSE ANTONIO GONZALEZ PULIDO', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/JOSE ANTONIO GONZALEZ PULIDO.pdf', 'administrador', '2018-10-19', 0, ''),
(179, 'RODOLFO VERDUZCO GARCIA', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/RODOLFO VERDUZCO GARCIA.docx', 'administrador', '2018-10-19', 0, ''),
(180, 'SALVADOR RUIZ VAZQUEZ', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/SALVADOR RUIZ VAZQUEZ.pdf', 'administrador', '2018-10-19', 0, ''),
(181, 'MONICA LIZDETH PEREZ IXTLAHUAQUE', 4, 48, 2, 'curris/CONTABILIDAD/NOMINISTA/MIDDLE/MONICA LIZDETH PEREZ IXTLAHUAQUE.doc', 'administrador', '2018-10-19', 0, ''),
(182, 'ANA RUTH HERNANDEZ GARCIA', 4, 48, 2, 'curris/CONTABILIDAD/NOMINISTA/MIDDLE/ANA RUTH HERNANDEZ GARCIA.docx', 'administrador', '2018-10-19', 0, ''),
(183, 'KARINA IVETTE VARGAS LEMUS', 4, 48, 3, 'curris/CONTABILIDAD/NOMINISTA/SENIOR/KARINA IVETTE VARGAS LEMUS.doc', 'administrador', '2018-10-19', 0, ''),
(184, 'ANABEL RAMIREZ GOMEZ', 4, 48, 2, 'curris/CONTABILIDAD/NOMINISTA/MIDDLE/ANABEL RAMIREZ GOMEZ.pdf', 'administrador', '2018-10-19', 0, ''),
(185, 'GABRIELA BERENICE PEREZ BAEZ', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/MIDDLE/GABRIELA BERENICE PEREZ BAEZ.pdf', 'administrador', '2018-10-19', 0, ''),
(186, 'MIGUEL ANGEL BALTAZAR MEDELLIN', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/MIGUEL ANGEL BALTAZAR MEDELLIN.doc', 'administrador', '2018-10-19', 0, ''),
(187, 'LORENA CASTREJON CRUZ', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/LORENA CASTREJON CRUZ.pdf', 'administrador', '2018-10-19', 0, ''),
(188, 'ANGEL ALBERTO MACIAS MUNGUIA', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/ANGEL ALBERTO MACIAS MUNGUIA.pdf', 'administrador', '2018-10-19', 0, ''),
(189, 'PEDRO SANTIAGO CISNEROS PACHUCA', 4, 48, 3, 'curris/CONTABILIDAD/NOMINISTA/SENIOR/PEDRO SANTIAGO CISNEROS PACHUCA.doc', 'administrador', '2018-10-19', 0, ''),
(190, 'MARIA GUADALUPE HIDALGO LOPEZ', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/MARIA GUADALUPE HIDALGO LOPEZ.pdf', 'administrador', '2018-10-19', 0, ''),
(191, 'DARA SANCHEZ RAMIREZ', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/MIDDLE/DARA SANCHEZ RAMIREZ.pdf', 'administrador', '2018-10-19', 0, ''),
(192, 'FLAVIA LIZETTE MORELOS SOLTERO', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/FLAVIA LIZETTE MORELOS SOLTERO.doc', 'administrador', '2018-10-19', 0, ''),
(193, 'ELIZABETH RODRIGUEZ RAMIREZ', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/ELIZABETH RODRIGUEZ RAMIREZ.docx', 'administrador', '2018-10-19', 0, ''),
(197, 'ALFONSO BRINGAS SOTELO', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/ALFONSO BRINGAS SOTELO.doc', 'victor.chavez', '2018-10-19', 0, ''),
(198, 'ALDO CRUZ RAMIREZ IBARRA', 4, 2, 2, 'curris/CONTABILIDAD/CONTADOR GENERAL/MIDDLE/ALDO CRUZ RAMIREZ IBARRA.docx', 'victor.chavez', '2018-10-19', 0, ''),
(199, 'OSCAR RODRIGUEZ ALVAREZ', 24, 47, 3, 'curris/DIRECTOR MANUFACTURA ALIMENTOS/DIRECTOR DE OPERACIONES/SENIOR/OSCAR RODRIGUEZ ALVAREZ.doc', 'victor.chavez', '2018-10-19', 0, ''),
(200, 'CESAR RICARDO LOPEZ GONZALEZ', 20, 44, 3, 'curris/FINANZAS/CONTRALOR/SENIOR/CESAR RICARDO LOPEZ GONZALEZ.doc', 'victor.chavez', '2018-10-19', 0, ''),
(201, 'EFRAIN BALDERAS PADRON', 5, 4, 3, 'curris/TECNOLOGIAS DE LA INFORMACION/DESARROLLADOR JAVA/SENIOR/EFRAIN BALDERAS PADRON.doc', 'victor.chavez', '2018-10-19', 0, ''),
(202, 'ARTURO MORELIA RESENDIZ', 5, 4, 3, 'curris/TECNOLOGIAS DE LA INFORMACION/DESARROLLADOR JAVA/SENIOR/ARTURO MORELIA RESENDIZ.pdf', 'victor.chavez', '2018-10-19', 0, ''),
(203, 'CLAUDIA MORA', 0, 0, 0, 'perfiles/curris/CLAUDIA MORA.pdf', 'Candidato', '2019-04-02', 0, ''),
(204, 'RAFAEL TELLO SOLIS', 0, 0, 0, 'perfiles/curris/RAFAEL TELLO SOLIS.docx', 'Candidato', '2019-04-02', 0, ''),
(205, 'RAFAEL TELLO SOLIS', 1, 37, 3, 'curris/RECURSOS HUMANOS/DIRECTOR DE RH/SENIOR/RAFAEL TELLO SOLIS.docx', 'rafael.tello', '2019-04-02', 0, ''),
(206, 'RAUL MUNOZ', 5, 5, 3, 'curris/TECNOLOGIAS DE LA INFORMACION/ADMINISTRADOR DE PROYECTOS TI/SENIOR/RAUL MUNOZ.pdf', 'rafael.tello', '2019-04-04', 0, ''),
(209, 'JUAN CARLOS RUIZ GONZALEZ', 4, 2, 3, 'curris/CONTABILIDAD/CONTADOR GENERAL/SENIOR/JUAN CARLOS RUIZ GONZALEZ.doc', 'victor.chavez', '2019-04-05', 0, ''),
(211, 'MARIA EDITH FLORES CISNEROS ', 1, 29, 3, 'curris/RECURSOS HUMANOS/GERENTE DE RH/SENIOR/MARIA EDITH FLORES CISNEROS .docx', 'diana.toledo', '2019-04-10', 0, ''),
(213, 'DULCE MARIA SANCHEZ PALOMINO ', 8, 18, 2, 'curris/INGENIERIA/INGENIERO DE CALIDAD/MIDDLE/DULCE MARIA SANCHEZ PALOMINO .doc', 'diana.toledo', '2019-04-15', 0, ''),
(232, 'GABRIELA AGUILA VAZQUEZ', 1, 7, 1, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/JUNIOR/GABRIELA AGUILA VAZQUEZ.pdf', 'administrador', '2019-06-27', 0, ''),
(233, 'ANA ELIZABETH PORTUGAL MAGANA', 1, 7, 2, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/MIDDLE/ANA ELIZABETH PORTUGAL MAGANA.docx', 'administrador', '2019-06-27', 0, ''),
(234, 'MARGARITA RIVAS CORREA', 1, 7, 3, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/SENIOR/MARGARITA RIVAS CORREA.pdf', 'administrador', '2019-06-27', 0, ''),
(235, 'JANETT RODRIGUEZ PADILLA', 1, 7, 3, 'curris/RECURSOS HUMANOS/JEFE DE RECURSOS HUMANOS/SENIOR/JANETT RODRIGUEZ PADILLA.pdf', 'administrador', '2019-06-27', 0, ''),
(236, 'RAFAEL RODRIGUEZ BALTAZAR', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/RAFAEL RODRIGUEZ BALTAZAR.pdf', 'administrador', '2019-06-27', 0, ''),
(237, 'ANTONIO GABRIEL CUELLAR SANTOS', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/ANTONIO GABRIEL CUELLAR SANTOS.pdf', 'administrador', '2019-06-27', 0, ''),
(238, 'JORGE LUIS ALVARE LOMELI', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/JORGE LUIS ALVARE LOMELI.docx', 'administrador', '2019-06-27', 0, ''),
(239, 'AARON PLASCENCIA LOPEZ', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/AARON PLASCENCIA LOPEZ.pdf', 'administrador', '2019-06-27', 0, ''),
(240, 'OSWALDO VERGES ZERMENO', 30, 62, 3, 'curris/OPERACIONES/DIRECTOR OP/SENIOR/OSWALDO VERGES ZERMENO.pdf', 'administrador', '2019-06-27', 0, ''),
(241, 'ADOLFO RANFERI ALVARADO ', 30, 62, 3, 'curris/OPERACIONES/DIRECTOR OP/SENIOR/ADOLFO RANFERI ALVARADO .pdf', 'administrador', '2019-06-27', 0, ''),
(242, 'ELIA AGUILAR MARTINEZ', 30, 62, 2, 'curris/OPERACIONES/DIRECTOR OP/MIDDLE/ELIA AGUILAR MARTINEZ.docx', 'administrador', '2019-06-27', 0, ''),
(243, 'CHRISTIAN MEZA RODRIGUEZ', 30, 62, 3, 'curris/OPERACIONES/DIRECTOR OP/SENIOR/CHRISTIAN MEZA RODRIGUEZ.docx', 'administrador', '2019-06-27', 0, ''),
(244, 'JOSE DE JESUS VALERIANO ', 31, 65, 2, 'curris/RECLUTAMIENTO /RECLUTAMIENTO /MIDDLE/JOSE DE JESUS VALERIANO .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(245, 'ROCIO ELIZABETH JACOBO SOLORZANO ', 3, 66, 1, 'curris/VENTAS_ATENCION A CLIENTES/VENDEDOR/JUNIOR/ROCIO ELIZABETH JACOBO SOLORZANO .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(246, 'SAUL ENRIQUEZ BENAVIDES ', 5, 67, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/JEFE IT /MIDDLE/SAUL ENRIQUEZ BENAVIDES .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(247, 'JUAN PABLO FLORES GALVEZ ', 5, 67, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/JEFE IT /MIDDLE/JUAN PABLO FLORES GALVEZ .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(248, 'ALEJANDRO RODRIGUEZ PULIDO ', 5, 67, 2, 'curris/TECNOLOGIAS DE LA INFORMACION/JEFE IT /MIDDLE/ALEJANDRO RODRIGUEZ PULIDO .docx', 'diana.toledo', '2019-07-19', 0, ''),
(249, 'HILDA HERNANDEZ ', 3, 20, 1, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/JUNIOR/HILDA HERNANDEZ .docx', 'diana.toledo', '2019-07-19', 0, ''),
(250, 'SOCORRO GUTIERREZ GARCIA ', 3, 20, 1, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/JUNIOR/SOCORRO GUTIERREZ GARCIA .docx', 'diana.toledo', '2019-07-19', 0, ''),
(252, 'CECILIA JUDITH MACIAS FRANCO', 3, 20, 1, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/JUNIOR/CECILIA JUDITH MACIAS FRANCO.docx', 'diana.toledo', '2019-07-19', 0, ''),
(253, 'LILIANA GUERRERO ZARAGOZA ', 3, 20, 1, 'curris/VENTAS_ATENCION A CLIENTES/EJECUTIVA DE VENTAS/JUNIOR/LILIANA GUERRERO ZARAGOZA .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(254, 'SARAH GALVAN PEREZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/SARAH GALVAN PEREZ .docx', 'diana.toledo', '2019-07-19', 0, ''),
(255, 'VERONICA DE LEIJA RAMIREZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/VERONICA DE LEIJA RAMIREZ .docx', 'diana.toledo', '2019-07-19', 0, ''),
(256, 'ERIKA IMELDA MEZA RUVALCABA ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/ERIKA IMELDA MEZA RUVALCABA .docx', 'diana.toledo', '2019-07-19', 0, ''),
(257, 'VANESSA MARISOL HARO GUERRERO ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/VANESSA MARISOL HARO GUERRERO .doc', 'diana.toledo', '2019-07-19', 0, ''),
(258, 'ALMA PATRICIA PEREZ LAGUNA ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/ALMA PATRICIA PEREZ LAGUNA .docx', 'diana.toledo', '2019-07-19', 0, ''),
(259, 'PERLA YARET PEREZ MARQUEZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/PERLA YARET PEREZ MARQUEZ .pdf', 'diana.toledo', '2019-07-19', 0, ''),
(260, 'NANCY AYALA OLVERA ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/NANCY AYALA OLVERA .docx', 'diana.toledo', '2019-07-19', 0, ''),
(261, 'LAURA MIRELES CHOLICO ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/LAURA MIRELES CHOLICO .doc', 'diana.toledo', '2019-07-19', 0, ''),
(262, 'ILSE MADRIGAL', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/ILSE MADRIGAL.pdf', 'diana.toledo', '2019-07-23', 0, ''),
(263, 'GLADIS PATRICIA ZAVALA HERNANDEZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/GLADIS PATRICIA ZAVALA HERNANDEZ .docx', 'diana.toledo', '2019-07-23', 0, ''),
(264, 'ALICIA ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/ALICIA .doc', 'diana.toledo', '2019-07-23', 0, ''),
(265, 'DANIELA MINERV RAMIREZ JIMENEZ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/DANIELA MINERV RAMIREZ JIMENEZ.docx', 'diana.toledo', '2019-08-05', 0, ''),
(266, 'DIANA LUCIA DOMINGUEZ MARTINEZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/DIANA LUCIA DOMINGUEZ MARTINEZ .docx', 'diana.toledo', '2019-08-05', 0, ''),
(267, 'AMPARO BERENICE LOPEZ RAMIREZ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/AMPARO BERENICE LOPEZ RAMIREZ.docx', 'diana.toledo', '2019-08-05', 0, ''),
(268, 'XOCHITL CAROLINA HERNANDEZ HERNANDEZ ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/XOCHITL CAROLINA HERNANDEZ HERNANDEZ .docx', 'diana.toledo', '2019-08-05', 0, ''),
(269, 'ELISA MARGARITA MARTIN DEL CAMPO ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/ELISA MARGARITA MARTIN DEL CAMPO .docx', 'diana.toledo', '2019-08-05', 0, ''),
(270, 'MARTHA JULIETA MARTINEZ KASTEN ', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/MARTHA JULIETA MARTINEZ KASTEN .docx', 'diana.toledo', '2019-08-05', 0, ''),
(271, 'DALIA PATRICIA TORRES VALDOVINOS', 14, 70, 1, 'curris/ADMINISTRACION GENERAL/ASISTENTE ADMINSTRATIVO /JUNIOR/DALIA PATRICIA TORRES VALDOVINOS.docx', 'diana.toledo', '2019-08-05', 0, ''),
(272, 'SELENE MAGANA CAZARES', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/SELENE MAGANA CAZARES.pdf', 'administrador', '2019-08-05', 0, ''),
(273, 'RAMON GUILLERMO RAMIREZ GONZALEZ', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/RAMON GUILLERMO RAMIREZ GONZALEZ.doc', 'administrador', '2019-08-05', 0, ''),
(274, 'GILBERTO TORRES', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/GILBERTO TORRES.docx', 'administrador', '2019-08-05', 0, ''),
(275, 'LUIS AARON ROJAS LOPEZ', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/LUIS AARON ROJAS LOPEZ.docx', 'administrador', '2019-08-05', 0, ''),
(276, 'GUILLERMO ESPINOSA VALADEZ', 29, 59, 3, 'curris/CALIDAD/JEFATURA DE CALIDAD/SENIOR/GUILLERMO ESPINOSA VALADEZ.docx', 'administrador', '2019-08-05', 0, ''),
(277, 'JORGE ALBERTO BRISENO SOTELO', 29, 71, 1, 'curris/CALIDAD/GERENTE DE CALIDAD/JUNIOR/JORGE ALBERTO BRISENO SOTELO.doc', 'administrador', '2019-08-05', 0, ''),
(278, 'RAQUEL FORZAN', 14, 72, 3, 'curris/ADMINISTRACION GENERAL/DIRECTOR ASILO DE ANCIANOS /SENIOR/RAQUEL FORZAN.pdf', 'administrador', '2019-08-05', 0, ''),
(279, 'ALBERTO SANCHEZ PEREZ', 32, 73, 3, 'curris/VENTAS /INGENIERO COMERCIAL/SENIOR/ALBERTO SANCHEZ PEREZ.pdf', 'administrador', '2019-08-05', 0, ''),
(280, 'OSWALDO ENRIQUEZ ZEPEDA', 32, 73, 2, 'curris/VENTAS /INGENIERO COMERCIAL/MIDDLE/OSWALDO ENRIQUEZ ZEPEDA.pdf', 'administrador', '2019-08-05', 0, ''),
(281, 'ANA KARINA TOSTADO HERNANDEZ', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/ANA KARINA TOSTADO HERNANDEZ.docx', 'administrador', '2019-08-05', 0, ''),
(282, 'MICHELLE OLIVARES RUVALCABA', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/MICHELLE OLIVARES RUVALCABA.docx', 'administrador', '2019-08-06', 0, ''),
(283, 'OSCAR HIDALGO QUEZADA', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/OSCAR HIDALGO QUEZADA.doc', 'administrador', '2019-08-06', 0, ''),
(284, 'LAURA LIVIER GALINDO MORENO', 1, 29, 3, 'curris/RECURSOS HUMANOS/GERENTE DE RH/SENIOR/LAURA LIVIER GALINDO MORENO.pdf', 'administrador', '2019-08-06', 0, ''),
(285, 'MARIA EDITH FLORES CISNEROS', 1, 29, 2, 'curris/RECURSOS HUMANOS/GERENTE DE RH/MIDDLE/MARIA EDITH FLORES CISNEROS.docx', 'administrador', '2019-08-06', 0, ''),
(286, 'MAURICIO LOPEZ ORTEGA', 1, 29, 3, 'curris/RECURSOS HUMANOS/GERENTE DE RH/SENIOR/MAURICIO LOPEZ ORTEGA.docx', 'administrador', '2019-08-06', 0, ''),
(287, 'ANA LILIA LEVARIO', 1, 29, 3, 'curris/RECURSOS HUMANOS/GERENTE DE RH/SENIOR/ANA LILIA LEVARIO.pdf', 'administrador', '2019-08-06', 0, ''),
(288, 'ANDRES RODRIGUEZ REVELES', 1, 9, 3, 'curris/RECURSOS HUMANOS/RECLUTADOR/SENIOR/ANDRES RODRIGUEZ REVELES.docx', 'administrador', '2019-08-06', 0, ''),
(289, 'CRUZ IDALIA MILLAN SANCHEZ', 1, 9, 2, 'curris/RECURSOS HUMANOS/RECLUTADOR/MIDDLE/CRUZ IDALIA MILLAN SANCHEZ.doc', 'administrador', '2019-08-06', 0, ''),
(290, 'DANIEL ALEJANDRO CUENCA BRAVO', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/DANIEL ALEJANDRO CUENCA BRAVO.pdf', 'administrador', '2019-08-06', 0, ''),
(291, 'JORGE DIEGO PELAGIO GARCIA', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/JORGE DIEGO PELAGIO GARCIA.pdf', 'administrador', '2019-08-06', 0, ''),
(292, 'JORGE ALBERTO RODRIGUEZ', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/JORGE ALBERTO RODRIGUEZ.pdf', 'administrador', '2019-08-06', 0, ''),
(293, 'OSCAR RAUL VELIZ HERNANDEZ', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/OSCAR RAUL VELIZ HERNANDEZ.doc', 'administrador', '2019-08-06', 0, ''),
(294, 'MIRIAM EDITH VICCON POZOS', 20, 32, 2, 'curris/FINANZAS/GERENTE DE FINANZAS/MIDDLE/MIRIAM EDITH VICCON POZOS.pdf', 'administrador', '2019-08-06', 0, ''),
(295, 'MONICA DE LA TRINIDAD MENDEZ MACHADO', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/MONICA DE LA TRINIDAD MENDEZ MACHADO.pdf', 'administrador', '2019-08-06', 0, ''),
(296, 'CARLOS DIAZ DEL TORO', 20, 32, 3, 'curris/FINANZAS/GERENTE DE FINANZAS/SENIOR/CARLOS DIAZ DEL TORO.docx', 'administrador', '2019-08-06', 0, '');

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
(42, 'CONSULTOR DE PROCESOS', 8),
(43, 'EJECUTIVO COMERCIAL TI', 3),
(44, 'CONTRALOR', 20),
(45, 'GERENTE/DIRECTOR DE MKT', 7),
(46, 'ASISTENTE DE MKT', 7),
(47, 'DIRECTOR DE OPERACIONES', 24),
(48, 'NOMINISTA', 4),
(49, 'SOPORTE TECNICO ', 5),
(50, 'ANALISTA FINANCIERO ', 20),
(51, 'ABOGADO MERCANTIL Y CIVIL ', 13),
(52, 'VENTAS CREDITOS PYME ', 3),
(53, 'TECNICO EN SEGUROS ', 27),
(54, 'JEFE DE EJECUTIVOS DE VENTA', 27),
(55, 'EJECUTIVO DE VENTAS JUNIOR ', 3),
(57, 'VENTAS PYME JUNIOR ', 28),
(58, 'ASISTENTE ADMINISTRATIVO', 27),
(59, 'JEFATURA DE CALIDAD', 29),
(62, 'DIRECTOR OP', 30),
(65, 'RECLUTAMIENTO ', 31),
(66, 'VENDEDOR', 3),
(67, 'JEFE IT ', 5),
(69, 'VENTAS ', 3),
(70, 'ASISTENTE ADMINSTRATIVO ', 14),
(71, 'GERENTE DE CALIDAD', 29),
(72, 'DIRECTOR ASILO DE ANCIANOS ', 14),
(73, 'INGENIERO COMERCIAL', 32);

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
(3, 4, '', '', '', '', '', 3, 'administrador', '2019-06-27'),
(4, 111, 'Es buen candidato para nivel gerencia senior para areas de calidad, conoce de inocuidad y procesos de an&aacute;lisis f&iacute;sico qu&iacute;micos y certificaciones', 'Este candidato se vio para un proceso de selecci&oacute;n con SANE sin embargo el nivel de compensaci&oacute;n solicitado por Roberto era mayor', 'no se cuenta con evaluaciones psicom&eacute;tricas', '', 'postular a PSA', 2, 'rafael.tello', '2018-05-29'),
(5, 112, 'Bueno para nivel gerencia en areas de calidad o aseguramiento de calidad, Mejora continua y procesos de certificaci&oacute;n.', 'No ha sido enviado a procesos de selecci&oacute;n', '', '', '', 1, 'rafael.tello', '2018-05-29'),
(6, 41, 'Experiencia de 2 a&ntilde;os en el puesto, conoce de facturaci&oacute;n 3.3, ha manejado adminpaq, su pretensi&oacute;n econ&oacute;mica es de $10,000 mensuales libres', 'Citada a entrevista ', '', '', '', 2, 'administrador', '2018-05-30'),
(7, 73, 'Experiencia de 20 a&ntilde;os en el &aacute;rea de RH, le ha tocado estructurar el &aacute;rea de rh desde cero en algunas de las empresas donde ha laborado. Tiene una pretensi&oacute;n econ&oacute;mica de $35,000 nominales ', 'Citado a entrevista con el cliente el d&iacute;a 07 de mayo/ candidato seleccionado fecha tentativa de ingreso 11 de junio de 2018.', 'Evualuado con Khor, resultados favorables', 'no solicitado por el cliente', 'En espera de cita para firma de contrato', 3, 'administrador', '2018-05-30'),
(8, 97, 'cuenta con experiencia de 5 a&ntilde;os en DO, 3 a&ntilde;os en empresa del giro alimenticio. Tiene una pretensi&oacute;n econ&oacute;mica de $40,000 mensuales nominales.', 'Entrevistada por cliente d&iacute;a lunes 28 de mayo, indican que se  encuentran fuera de rango salarial, descartada.', 'no se le aplicaron', 'no se le aplicaron', 'Buena candidata, abierta a escuchar m&aacute;s ofertas', 3, 'administrador', '2018-05-30'),
(9, 98, 'Cuenta con experiencia en DO de alrededor de 1 a&ntilde;o,  radica en chapala, tiene una pretensi&oacute;n econ&oacute;mica de $28,000 mensuales libres.', 'candidata finalista, en espera de decisi&oacute;n por parte del cliente. ', 'Aplicadas, resultados enviadas al cliente.', 'No solicitado por parte del cliente', '', 1, 'administrador', '2018-05-30'),
(10, 100, 'Cuenta con experiencia de 3 a&ntilde;os 6 meses en DO, actualmente labora en una empresa del giro tequilero (Casa Cuervo), tiene una maestr&iacute;a en DO por parte de la UNIVA. pretensi&oacute;n econ&oacute;mica de $30,000 mensuales nominales.', 'Comenta que por la relaci&oacute;n comercial de CASA CUERVO- SANE no es posible considerarla a la vacante.', 'no aplicadas', 'No aplicadas', 'Buena candidata, abierta a ofertas laborales.', 3, 'administrador', '2018-05-30'),
(11, 102, 'Cuenta con experiencia de 4 a&ntilde;os 6 meses en DO, actualmente labora en una constructora y anteriormente estuvo laborando en una empresa del giro alimenticio. Pretensi&oacute;n econ&oacute;mica de $20,000 mensuales libres', 'La candidata desert&oacute; del proceso por el tema de distancia', 'no aplicadas', 'no aplicado', 'Buena candidata, abierta a ofertas laborales.', 2, 'administrador', '2018-05-30'),
(12, 115, 'Cuenta con 4 a&ntilde;os de experiencia en el area de DO, anteriormente estuvo laborando en NIssan como Gerente de Gesti&oacute;n de Talento en donde desempe&ntilde;&oacute; varios proyectos en temas de Desarrollo Organizacional', 'Entrevistada por cliente el d&iacute;a 01 de junio de 2018/ seleccionada por el cliente/ ingreso 18 de junio de 2018', 'resultados favorables.', 'No solicitado por el cliente', 'Candidata seleccionada para SANE sin embargo a &uacute;ltimo momento declina a la oferta. Candidata no viable', 2, 'administrador', '2019-06-27'),
(13, 77, 'Cuenta con experiencia de 7 a&ntilde;os en el &aacute;rea administrativa como gerente, conoce de presupuestos mensuales, supervisi&oacute;n de &aacute;reas administrativas, elaboraci&oacute;n de estados financieros. Su pretensi&oacute;n econ&oacute;mica $40,000 mensuales nominales', 'Seleccionada por el cliente y presentaci&oacute;n de propuesta econ&oacute;mica 07 de junio de 2018', 'resultados favorables', 'no solicitado por el cliente', 'Fecha de ingreso 11 de junio de 2018/ salida en abril 2018 de la empresa ALTESI (Fue despedida)', 2, 'administrador', '2019-06-27'),
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
(36, 150, 'cuenta con experiencia de 3 a&ntilde;os como gerente de RH, su &uacute;ltima experiencia laboral fue como gerente de rh en una empresa de Log&iacute;stica. Tiene una licenciatura en Relaciones Industriales por parte del ITESO, tiene un porcentaje de ingl&eacute;s avanzado. Su pretensi&oacute;n econ&oacute;mica $25,000 mensuales libres.', 'Entrevistada para vacante de cliente Kenworth sin embargo no fue enviada ya que el cliente ya hab&iacute;a seleccionado candidato.', '', '', '', 2, 'administrador', '2018-07-09'),
(37, 155, 'Candidato con experiencia de 4 a&ntilde;os en ventas consultivas en telecomunicaciones e Inform&aacute;tica, anteriormente labor&oacute; en Alestra. Tiene experiencia de 1 a&ntilde;o 6 meses manejando personal. Su pretensi&oacute;n econ&oacute;mica es de 30,000 mensuales nominales base + comisiones.', 'Enviado al cliente de Ho1a el 08 de agosto  entrevistado el 12 de agosto, est&aacute; contemplado como finalista', '', '', '', 2, 'administrador', '2018-08-17'),
(38, 154, 'Candidata con experiencia de 6 a&ntilde;os en ventas consultivas en soluciones en TI, actualmente labora en Inseti IT como ejecutiva de ventas. Su pretensi&oacute;n econ&oacute;mica es de $25,000 mensuales libres + comisiones. ', 'En espera de fecha de entrevista por parte de cliente Ho1a', '', '', '', 2, 'administrador', '2018-08-17'),
(39, 151, 'Candidata con experiencia de 5 a&ntilde;os en ventas consultivas en servicios de TI y Telecomunicaciones, actualmente laborando en Alestra. Su pretensi&oacute;n econ&oacute;mica es de $30,000 mensuales nominales + comisiones. ', 'Enviada a cliente Ho1a 13 de agosto de 2018, entrevistada por cliente 15 de agosto 2018. Contemplada como candidata finalista.', '', '', '', 3, 'administrador', '2018-08-17'),
(40, 152, 'Candidato con experiencia de 11 a&ntilde;os en ventas consultivas de servicios de TI y Telecomunicaciones. Su pretensi&oacute;n econ&oacute;mica es de $20,000 mensuales libres m&aacute;s comisiones.', '', '', '', 'candidato enviado a HO1A sin embargo no fue seleccioando', 3, 'administrador', '2019-06-27'),
(41, 153, 'Candidato con experiencia de 2 a&ntilde;os en ventas consultivas en Ti y telecomunicaciones. Actualmente labora Portenntum, su pretensi&oacute;n econ&oacute;mica es de $23,000 mensuales nominales.', '', '', '', 'candidato enviado para una posici&oacute;n en HO1A sin embargo no fue seleccionado', 2, 'administrador', '2019-06-27'),
(42, 156, 'Candidato con experiencia mayormente en sector de Telecomunicaciones, ha laborado en Telmex, A&amp;T y Corporativo Movistar. Su pretensi&oacute;n econ&oacute;mica es de $20,000 mensuales nominales.', 'Entrevistado y Descartado por cliente Ho1a, no dieron retroalimentaci&oacute;n.', '', '', '', 2, 'administrador', '2018-08-17'),
(43, 159, 'Cuenta con experiencia de 5 a&ntilde;os en el &aacute;rea de DO, tiene amplios conocimientos en DNC, evaluaciones de desempe&ntilde;o (360), nine Box, RYS, y le ha tocado participar en procesos de certificaci&oacute;n de ISO. Tiene un porcentaje de ingl&eacute;s avanzado. su pretensi&oacute;n econ&oacute;mica es de $32,000 mensuales nominales.', 'Seleccionada por cliente SANE, fecha tentativa de ingreso lunes 08 de Octubre 2018', 'resultados favorables', 'resultados favorables', '', 2, 'administrador', '2018-09-14'),
(44, 160, 'Cuenta con experiencia de 3 a&ntilde;os en el &aacute;rea de DO, cuenta con conocimientos en capacitaci&oacute;n, evaluaciones de desempe&ntilde;o, programas de cultura organizacional. Su &aacute;rea de oportunidad va enfocada a la parte administrativa de RH. Su pretensi&oacute;n econ&oacute;mica es de $20,000 mensuales libres. ', 'Descartada por cliente (no dieron retro)', 'no aplicadas', 'no aplicado', '', 1, 'administrador', '2018-09-14'),
(45, 161, 'Candidata con experiencia de 12 a&ntilde;os en el &aacute;rea administrativa de RH. Conoce de n&oacute;minas, imss, RYS, capacitaci&oacute;n, etc. Su pretensi&oacute;n econ&oacute;mica es de $28,000 mensuales nominales.', 'descartada por cliente (no dieron retro)', 'no aplicadas', 'no aplicadas', '', 2, 'administrador', '2018-09-14'),
(46, 162, 'Candidato con 17 a&ntilde;os de experiencia en el &aacute;rea de contralor&iacute;a en empresas diversos giros entre ellos el tequilero. Su pretensi&oacute;n econ&oacute;mica $40,000 mensuales nominales + prestaciones superiores', 'Candidato seleccionado en empresa SANE, en espera de fecha de ingreso', 'Aplicadas', 'aplicadas', '', 3, 'administrador', '2018-09-14'),
(47, 167, 'Candidato con experiencia de 10 a&ntilde;os en el &aacute;rea de contralor&iacute;a, ha laborado en diversos giros entre ellos en el giro de bebidas. Su pretensi&oacute;n econ&oacute;mica $35,000 mensuales nominales.', 'Descartado por SANE (no proporcionaron retro)', 'No aplicadas', 'No aplicadas', '', 2, 'administrador', '2018-09-14'),
(48, 164, 'Candidato con experiencia de 12 a&ntilde;os en el giro de contralor&iacute;a, ha laborado en empresas de diversos giros entre ellos de alimentos. Su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales nominales + prestaciones superiores.', 'Uno de los finalistas de SANE, pero al final fue descartado', 'no aplicadas', 'no aplicadas', '', 3, 'administrador', '2018-09-14'),
(49, 165, 'Candidato con 3 a&ntilde;os de experiencia en el area de contralor&iacute;a, ha laborado en empresa del giro alimenticio.', 'Descartado por el cliente', 'no aplicadas', 'no aplicadas', '', 2, 'administrador', '2018-09-14'),
(50, 166, 'Candidato con 1 a&ntilde;o de experiencia en contralor&iacute;a, actualmente laborando en una empresa de berries. su pretensi&oacute;n econ&oacute;mica es de $32,000 mensuales nominales.', 'descartado por el cliente', 'no aplicadas', 'no aplicadas', '', 1, 'administrador', '2018-09-14'),
(51, 168, 'candidato con 10 a&ntilde;os en el &aacute;rea de contralor&iacute;a, ha laborado en empresas del giro alimenticio. Su pretensi&oacute;n econ&oacute;mica $35,000 mensuales nominales', 'Descartado por cliente SANE (comentan que no cubre con perfil que buscan)', 'no aplicadas', 'No aplicadas', '', 3, 'administrador', '2018-09-14'),
(52, 171, 'Referida por Jorge Chavez perfil para MKT o ventas, labora para legens mx  y anterior con Adidas y AM PM', 'NA', 'NA', 'NA', 'NA', 0, 'rafael.tello', '2018-09-19'),
(53, 173, 'Referido por Jorge Chavez para posiciones directivas o gerenciales perfil: MKT o RP', '', '', '', '', 0, 'rafael.tello', '2018-09-19'),
(54, 172, 'Referido por Jorge Ch&aacute;vez para posici&oacute;n ejecutiva en operaciones o supply ind. alimenticia', '', '', '', 'poca disponibilidad para cambio de residencia', 0, 'rafael.tello', '2018-09-19'),
(55, 177, 'Candidata con experiencia de 10 a&ntilde;os en el sector de administraci&oacute;n y finanzas en empresas del giro outsourcing. Su pretensi&oacute;n econ&oacute;mica $45,000 mensuales libres.', 'Entrevistada por Eugenia Barr&oacute;n (AGENTIA)', 'no aplicadas', 'no aplicado', '', 3, 'administrador', '2018-10-19'),
(56, 178, 'Candidato cuenta con 16 a&ntilde;os de experiencia como Gte de administraci&oacute;n y finanzas en empresas del giro Outsourcing. Su pretensi&oacute;n econ&oacute;mica es de $35,000 mensuales libres.', 'Entrevistado por Eugenia Barr&oacute;n (AGENTIA)', 'No aplicadas', 'no aplicado', '', 3, 'administrador', '2018-10-19'),
(57, 179, 'Candidato con experiencia de 12 a&ntilde;os en el puesto, especialmente en empresas del giro automotriz (agencias). Su pretensi&oacute;n econ&oacute;mica $40,000 mensuales libres.', 'Entrevistado por Eugenia Barr&oacute;n (Agentia)', 'no aplicadas', 'No aplicado', '', 2, 'administrador', '2018-10-19'),
(58, 180, 'Candidato con experiencia de 8 a&ntilde;os en una gerencia de administraci&oacute;n y finanzas, la &uacute;ltima experiencia en un agencia de colocaci&oacute;n (7 meses). Su pretensi&oacute;n econ&oacute;mica es de $45,000 mensuales ', 'Entrevistado por Eugenia Barr&oacute;n (Agentia)', 'no aplicadas', 'no aplicado', '', 2, 'administrador', '2018-10-19'),
(59, 12, '', 'CANDIDATO CONTRATADO POR BIGO COMO PROJECT MANAGER', '', '', '', 2, 'administrador', '2019-06-27'),
(60, 86, '', '', '', '', 'Es biling&uuml;e, tiene buen perfil para una posici&oacute;n de recepci&oacute;n o auxiliar administrativa', 0, 'administrador', '2019-06-27'),
(61, 114, '', '', '', '', 'Toda su experiencia ha sido como contralor', 0, 'administrador', '2019-06-27'),
(62, 232, 'Candidata con buen expertis en giro de la construcci&oacute;n enfocada a RH', '', 'Aplicadas, compatible con el perfil a un 70%', 'no solicitado por el cliente', 'Candidata enviada a proceso a la empresa concretos de los altos, SELECCIONADA ingreso 08 de julio de 2019', 2, 'administrador', '2019-06-27'),
(63, 235, '', '', '', '', 'Candidata enviada a la empresa concretos de los altos, sin embargo no fue seleccionada.', 2, 'administrador', '2019-06-27'),
(64, 234, '', '', '', '', 'candidata enviada a proceso a empresa concretos de los altos, sin embargo no fue seleccionada', 2, 'administrador', '2019-06-27'),
(65, 233, '', '', '', '', 'Candidata enviada a proceso a la empresa concretos de los altos, sin embargo no fue seleccionada', 2, 'administrador', '2019-06-27'),
(66, 236, 'Buena experiencia en jefatura de calidad en el sector metalmec&aacute;nico, cuenta con certificaci&oacute;n en BLACK BELT.  Buen nivel de ingl&eacute;s. Pretensi&oacute;n salarial de $35,000 mensuales nominales y prestaciones superiores.', '', '', '', 'Candidato enviado al cliente TAMX (TORAY), en espera de retro.', 3, 'administrador', '2019-06-27'),
(67, 237, 'Cuenta con experiencia en el sector automotriz y metalmec&aacute;nico. Pretensi&oacute;n econ&oacute;mica de $35,000 mensuales nominales y prestaciones superiores a las de ley', '', '', '', 'candidato enviado a cliente TAMZ (TORAY), en espera de retro.', 2, 'administrador', '2019-06-27'),
(68, 238, 'Alto nivel de expertis en coordinaci&oacute;n e implementaci&oacute;n de SGC en empresas del giro automotriz,  certificado en BALCK BELT, buen nivel de ingl&eacute;s. actualmente percibe $42,000 mensuales nonimales y prestaciones superiores a las de ley.', '', '', '', 'candidato enviado al cliente TAMX (TORAY), en espera de retro.', 3, 'administrador', '2019-06-27'),
(69, 239, 'Alto nivel de expertis en jefatura de calidad principalmente en el sectior automotriz, cuenta con certificaci&oacute;n BLACK BELT, y otras adicionales relacionadas al sector automotriz. buen nivel de ingl&eacute;s.  Pretensi&oacute;n econ&oacute;mica de $35,000 mensuales nominales y prestaciones superiores', '', '', '', 'candidato enviado al cliente TAMZ (TORAY), en espera de retro.', 3, 'administrador', '2019-06-27'),
(70, 240, 'Candidato con buen nivel de expertis en el &aacute;rea de operaciones en el sector alimenticio. Ha trabajado bajo normas de seguridad alimentaria HACCP, ISO 2200, FSSC 22000. Cuenta con MBA y una certificaci&oacute;n BLACK BELT, alto nivel de ingl&eacute;s. Pretensi&oacute;n econ&oacute;mica de $90,000 mensuales nominales y prestaciones superiores a las de ley.', 'Candidato considerado como finalista por el cliente', 'aplicadas. ', '', 'Candidato finalista, en espera de retro por parte del director.', 3, 'administrador', '2019-06-27'),
(71, 241, 'Cuenta con amplia experiencia en la direccion de operaciones sobre todo en empresas del sector alimenticio. Cuenta con un MBA y ha trabajado con empresas certificadas en FSC2000, HACCP E ISO 9001. Buen nievl de ingl&eacute;s. Pretensi&oacute;n econ&oacute;mica de $90,000 mensuales nominales y prestaciones superiores a las de ley.', 'Candidato considerado como finalista por parte del cliente', '', '', 'en espera de retro por parte del director ', 3, 'administrador', '2019-06-27'),
(72, 242, 'tiene experiencia de 3 a&ntilde;os en la direcci&oacute;n de operaciones (sector de artes gr&aacute;ficas), sin embargo anteriormente labor&oacute; en Cargill una empresa del sector alimenticio en la direcci&oacute;n de Supply Chain. Buen nivel de ingl&eacute;s. Su pretensi&oacute;n econ&oacute;mica es de $60,000 mensuales libres y prestaciones superiores a las de ley.', '', '', '', 'en espera de programaci&oacute;n de entrevista con el cliente.', 2, 'administrador', '2019-06-27'),
(73, 243, 'Tiene buena experiencia en la posici&oacute;n como director de operaciones sobre todo el giro tequilero. Conoce y ha trabajado bajo normas enfocadas en la seguridad alimenticia FSSSC 22000, ISO 22 000, buen nivel de ingl&eacute;s. Pretensi&oacute;n econ&oacute;mica de $60,000 mensuales libres y prestaciones superiores a las de ley.', 'Descartado por el cliente', '', '', '', 2, 'administrador', '2019-06-27'),
(74, 276, 'Cuenta con experiencia de 12 a&ntilde;os en el &aacute;rea de calidad, laborando mayormente en el giro electr&oacute;nico. Maneja un porcentaje de ingl&eacute;s de un 80%, tiene experiencia en norma IAFT 16949, ISO 9001.20015. Su pretensi&oacute;n econ&oacute;mica oscila en los 38,500 mensuales nominales y prestaciones superiores. ', 'DESCARTADO POR CLIENTE TORAY', '', '', '', 2, 'administrador', '2019-08-05'),
(75, 275, 'Cuenta con experiencia de 8 a&ntilde;os en el &aacute;rea de calidad, dos a&ntilde;os de ellos como coordinador. Su experiencia principal ha sido en el giro automotriz por lo que conoce de normas como IAFT 16949 e ISO 9001:20015. Porcentaje de ingl&eacute;s avanzado, su pretensi&oacute;n ec&oacute;nomica es de $35,000 mensuales nominales y prestaciones superiores a las de ley.', 'DESCARTADO POR CLIENTE TORAY', '', '', '', 2, 'administrador', '2019-08-05'),
(76, 274, 'Candidato con experiencia de 5 a&ntilde;os en el &aacute;rea de calidad, 3 de ellos como coordinador. Cuenta con amplia experiencia en el sector automotriz, conoce de la norma IAFT16949, ISO 9001:208, ISO 9001:2015. Cuenta con un porcentaje de ingl&eacute;s avanzado, su pretensi&oacute;n econ&oacute;mica oscila en los $40,000 mensuales nominales en adelante y prestaciones superiores. Actualmente radica en Le&oacute;n Gto', '', '', '', 'Al candidato se le entrevist&oacute;, sin embargo rechaz&oacute; la vacante con cliente toray debido a que la oferta era menor de lo que incluso percibe actualmente.', 3, 'administrador', '2019-08-05'),
(77, 273, 'Candidato con experiencia de 10 a&ntilde;os en el &aacute;rea de calidad. Su experiencia ha sido mayormente en el giro electr&oacute;nico y metalmecanico. Conoce de la norma IAFT16949 E ISO 9000- 14000. Cuenta con un nivel de ingl&eacute;s avanzado y su pretensi&oacute;n econ&oacute;mica es de $45,000 mensuales nominales y prestaciones superiores a las de ley.', 'CANDIDATO DESCARTADO POR CLIENTE TORAY', '', '', '', 2, 'administrador', '2019-08-05'),
(78, 272, 'Cuenta con experiencia de 11 a&ntilde;os en el &aacute;rea de calidad, 4 de ellos en la coordinaci&oacute;n. Su experiencia ha sido mayormente en el giro automotriz, por lo que cuenta con amplia experiencia en normas como IAFT16949 E ISO 9001. Cuenta con un nivel de ingl&eacute;s avanzado y su pretensi&oacute;n econ&oacute;mica es de $40,000 mensuales nominales y prestaciones superiores a las de ley.', '', '', '', 'CANDIDATA DECLINA AL PROCESO', 3, 'administrador', '2019-08-05'),
(79, 277, 'Cuenta con experiencia de 9 a&ntilde;os en el &aacute;rea de calidad, 3 de ellos en la gerencia de calidad. La mayor parte de su experiencia ha sido en el giro textil. Maneja un porcentaje de ingl&eacute;s Avanzado y su pretensi&oacute;n econ&oacute;mica es de $40,000 mensuales nominales y prestaciones superiores a las de ley. ', '', '', '', '', 2, 'administrador', '2019-08-05'),
(80, 278, 'Cuenta con experiencia de 19 a&ntilde;os laborando en la coordinaci&oacute;n de proyectos en asociaciones civiles (labor&oacute; anteriormente en TELETON). Tiene s&oacute;lida experiencia en temas de vinculaci&oacute;n, administraci&oacute;n y operaci&oacute;n de este tipo de asociaciones. Su pretensi&oacute;n econ&oacute;mica es de $30,000 mensuales libres y prestaciones de ley.', 'CANDIDATA ENVIADA A CLIENTE MI DULCE ESTANCIA, SIN EMBARGO &Eacute;STE CANCELA LA VACANTE.', '', '', '', 3, 'administrador', '2019-08-05'),
(81, 279, 'Cuenta con experiencia de 12 a&ntilde;os en ventas t&eacute;cnicas enfocadas en el &aacute;rea mec&aacute;nica- el&eacute;ctrica y electr&oacute;nica. Actulamente se encuentra laborando en una empresa enfocada a la venta de motorreductores, bombas, tableros el&eacute;ctricos. Tiene un nivel de ingl&eacute;s avanzado y su pretensi&oacute;n econ&oacute;mica es de $18,000 mensuales libres base m&aacute;s comisiones.', 'Candidato finalista para propuesta econ&oacute;mica con el cliente, sin embargo el cliente cancela vacante por cuestiones internas.', '', '', '', 2, 'administrador', '2019-08-05'),
(82, 280, 'Cuenta con experiencia de 3 a&ntilde;os en el sector de ventas t&eacute;cnicas. Actualmente labora en una empresa dedicada a la venta de instrumentaci&oacute;n industrial. Maneja un nivel de ingl&eacute;s intermedio y su pretensi&oacute;n econ&oacute;mica oscila en los $14,000 mensuales libres m&aacute;s comisiones.', 'Candidato enviado a cliente MARFEL, sin embargo el candidato declina al proceso por la distancia.', '', '', '', 2, 'administrador', '2019-08-05'),
(83, 290, 'Cuenta con 4 a&ntilde;os de experiencia desempe&ntilde;&aacute;ndose como gerente de administraci&oacute;n y finanzas. Cuenta con una maestr&iacute;a en finanzas empresariales, su mayor experiencia ha sido en el sector de la construcci&oacute;n e inmobiliario. Su pretensi&oacute;n econ&oacute;mica es de $50,000 mensuales libres.', 'CONTRATADO POR EMPRESA CONCRETOS DE LOS ALTOS ', '', '', '', 2, 'administrador', '2019-08-06'),
(84, 291, 'Cuenta con 11 a&ntilde;os desempe&ntilde;&aacute;ndose en gerencias de administraci&oacute;n y finanzas. Cuenta con un IPADE y un diplomado en defensa fiscal. Actualmente se encuentra laborando en una empresa dedicada a las soluciones en seguridad electr&oacute;nica. Su pretensi&oacute;n ec&oacute;nomica es de $55,000 mensuales libres. ', '', '', '', 'Hab&iacute;a sido seleccionado para la empresa de Concretos de los altos, sin embargo el candidato declina al proceso por tema salarial. ', 3, 'administrador', '2019-08-06'),
(85, 292, 'Cuenta con 3 a&ntilde;os de experiencia desempe&ntilde;andose como Gerente de Administraci&oacute;n y Finanzas. Cuenta con un MBA. Su experiencia ha sido mayormente en el giro manufacturero. Su pretensi&oacute;n econ&oacute;mica es de $40,000 mensuales libres.', 'Candidato descartado por el cliente Concretos de los Altos. ', '', '', '', 2, 'administrador', '2019-08-06'),
(86, 293, 'Cuenta con 7 a&ntilde;os de experiencia  desempe&ntilde;&aacute;ndose como gerente de administraci&oacute;n y finanzas. Cuenta con Maestr&iacute;a trunca en Administraci&oacute;n de Negocios. Actualmente se encuentra laborando en una empresa del giro textil. Su pretensi&oacute;n econ&oacute;mica es de $50,000 mensuales libres. ', 'CANDIDATO DESCARTADO POR LA EMPRESA CONCRETOS DE LOS ALTOS', '', '', '', 2, 'administrador', '2019-08-06'),
(87, 294, 'Cuenta con experiencia de 8 a&ntilde;os desempe&ntilde;&aacute;ndose como Gerente de Administraci&oacute;n y Finanzas. Actualmente labora en una empresa del giro inmobiliario. Tiene una maestr&iacute;a en fiscal (trunca) y actualmente cursa otra maestr&iacute;a en finanzas (modalidad en linea). Su pretensi&oacute;n econ&oacute;mica es de $40,000 mensuales libres. ', 'CANDIDATA DESCARTADA POR CLIENTE CONCRETOS DE LOS ALTOS', '', '', '', 2, 'administrador', '2019-08-06'),
(88, 295, 'Cuenta con experiencia de 18 a&ntilde;os desempe&ntilde;&aacute;ndose como Gerente de Administraci&oacute;n y finanzas, mayormente laborando en empresas del giro de la construcci&oacute;n como en &quot;tierra y armon&iacute;a&quot;. Tiene una maestr&iacute;a en ingenier&iacute;a financiera por parte de la universidad de guadalajara. Actualmente se encuentra laborando como Asesora externa para algunas compa&ntilde;&iacute;as. Su pretensi&oacute;n econ&oacute;mica es de $50,000 mensuales libres. ', 'CANDIDATA DESCARTADA POR CLIENTE CONCRETOS DE LOS ALTOS', '', '', '', 3, 'administrador', '2019-08-06'),
(89, 296, 'Cuenta con experiencia de 10 a&ntilde;os desempe&ntilde;&aacute;ndose en la posici&oacute;n de gerente de administraci&oacute;n y finanzas. Cuenta con una maestr&iacute;a en administraci&oacute;n de negocios por parte del ITESO. Actualmente labora en una empresa del giro de la construcci&oacute;n. Su pretensi&oacute;n econ&oacute;mica oscila en los $50,000 mensuales libres. ', '', '', '', 'CANDIDATO DECLIN&Oacute; AL PROCESO CON CLIENTE CONCRETOS DE LOS ALTOS', 2, 'administrador', '2019-08-06');

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
(2, 'administrador', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'Administrador', 'admin@beconsulting.com.mx ', 'ADMINISTRADOR', 0, 'foto_perfil/administrador.jpg'),
(5, 'karla.copado', '9bb5b24e06e42a97c6dac74e77b51a83c8e21078', 'KARLA COPADO', 'kcopado@beconsulting.com.mx ', 'RECLUTADOR', 0, 'foto_perfil/karla.copado.png'),
(8, 'rafael.tello', 'a3c75d2db58d92921dfada907965c95cf24f52e9', 'RAFAEL TELLO', 'rtello@beconsulting.com.mx', 'RECLUTADOR', 1, '../img/user.png'),
(9, 'victor.chavez', 'b5097f027ad1976d95cb2871da4815916a1310c5', 'VICTOR CHAVEZ', 'vchavezbeconsulting.com.mx', 'RECLUTADOR', 1, '../img/user.png'),
(10, 'diana.toledo', '80b68ce6a66cbd7553777de3a648b9a639b3405f', 'DIANA TOLEDO', 'dtoledo@beconsulting.com.mx', 'RECLUTADOR', 0, '../img/user.png'),
(12, 'diego.martinez', '2ed1cecb36161ab7d99697aa52db95f3a83578f0', 'DIEGO MARTINEZ', 'dmartinez@beconsulting.com.mx', 'RECLUTADOR', 0, '../img/user.png');

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
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `resenas`
--
ALTER TABLE `resenas`
  MODIFY `id_resena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
