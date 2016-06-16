-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2015 a las 16:06:59
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `petroquimica`
--
CREATE DATABASE IF NOT EXISTS `petroquimica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `petroquimica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE IF NOT EXISTS `cuestionario` (
  `idUsuario` int(11) NOT NULL,
  `pregunta1` int(11) NOT NULL,
  `pregunta2` int(11) NOT NULL,
  `pregunta3` int(11) NOT NULL,
  `pregunta4` int(11) NOT NULL,
  `pregunta5` int(11) NOT NULL,
  `pregunta6` int(11) NOT NULL,
  `pregunta7` int(11) NOT NULL,
  `pregunta8` int(11) NOT NULL,
  `pregunta9` int(11) NOT NULL,
  `pregunta10` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`idUsuario`, `pregunta1`, `pregunta2`, `pregunta3`, `pregunta4`, `pregunta5`, `pregunta6`, `pregunta7`, `pregunta8`, `pregunta9`, `pregunta10`, `idModulo`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) NOT NULL,
  `alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `baja` datetime NOT NULL,
  `modificacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id`, `descripcion`, `alta`, `baja`, `modificacion`) VALUES
(1, 'Contratistas e ingreso a personal nuevo', '2014-04-25 15:55:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(1000) NOT NULL,
  `respCorrecta` int(11) NOT NULL,
  `alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `baja` datetime NOT NULL,
  `modificacion` datetime NOT NULL,
  `idModulo` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respCorrecta`, `alta`, `baja`, `modificacion`, `idModulo`, `index`) VALUES
(1, '¿Al escuchar la siguiente sirena, ¿Cómo debe proceder?', 1, '2014-04-25 15:46:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, 'dentifique el siguiente símbolo', 2, '2014-04-25 15:47:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(3, '¿Si usted se encuentra en una situación de escape de gas con viento en direccion NORTE, ¿Usted debe huir hacia?', 2, '2014-04-25 15:47:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3),
(4, 'En el caso de desempeñarse como operario, ¿cuáles son los elementos de seguridad que debe tener?', 2, '2014-04-25 15:49:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 4),
(5, 'En caso de emergencia usted debe:', 2, '2014-04-25 15:50:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5),
(6, 'Antes de realizar cualquier tipo de trabajo usted debe tener:', 2, '2014-04-25 15:51:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 6),
(7, 'Identifique la sirena', 1, '2014-04-25 15:51:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 7),
(8, '¿En cual de los siguientes tipos de alerta no se utilizan sirenas como sistema de aviso?', 1, '2014-04-25 15:52:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 8),
(9, 'Puede utilizar el teléfono celular en la planta?', 2, '2014-04-25 15:53:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 9),
(10, '¿Cuál de estas es la forma correcta de colocarse la máscara buco-nasal?', 0, '2014-04-25 15:53:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `idUsuario`, `idModulo`, `index`, `respuesta`, `alta`) VALUES
(1, 1, 1, 1, 1, '2014-04-25 16:14:28'),
(2, 1, 1, 2, 2, '2014-04-25 16:14:28'),
(3, 1, 1, 3, 2, '2014-04-25 16:14:28'),
(4, 1, 1, 4, 2, '2014-04-25 16:14:38'),
(5, 1, 1, 5, 2, '2014-04-25 16:14:38'),
(6, 1, 1, 6, 2, '2014-04-25 16:14:38'),
(7, 1, 1, 7, 1, '2014-04-25 16:14:46'),
(8, 1, 1, 8, 1, '2014-04-25 16:14:46'),
(9, 1, 1, 9, 0, '2014-04-25 16:14:46'),
(10, 1, 1, 10, 0, '2014-04-25 16:14:53'),
(11, 349, 1, 1, 1, '2014-04-25 16:14:28'),
(12, 349, 1, 2, 2, '2014-04-25 16:14:28'),
(13, 349, 1, 3, 0, '2014-04-25 16:14:28'),
(14, 349, 1, 4, 1, '2014-04-25 16:14:38'),
(15, 349, 1, 5, 2, '2014-04-25 16:14:38'),
(16, 349, 1, 6, 0, '2014-04-25 16:14:38'),
(17, 349, 1, 7, 1, '2014-04-25 16:14:46'),
(18, 349, 1, 8, 2, '2014-04-25 16:14:46'),
(19, 349, 1, 9, 0, '2014-04-25 16:14:46'),
(20, 349, 1, 10, 1, '2014-04-25 16:14:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `legajo` varchar(255) NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `moduloA` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=352 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `name`, `lastname`, `legajo`, `puesto`, `moduloA`) VALUES
(1, 'santi', 'santi123', 'Santiago', 'Roca', '9999', 'GERENCIA OPERACIONES', 1),
(2, 'reyrobertoelias', 'reyrobertoelias123', 'Roberto Elias ', 'Rey', '31', 'MANTENIMIENTO', 0),
(3, 'paulucciluisalberto', 'paulucciluisalberto123', 'Luis Alberto ', 'Paulucci', '75', 'GERENCIA OPERACIONES', 0),
(4, 'tobanellijuanjose', 'tobanellijuanjose123', 'Juan Jose ', 'Tobanelli', '97', 'PROCESOS', 0),
(5, 'perezjosejulio', 'perezjosejulio123', 'Jose Julio ', 'Perez', '109', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(6, 'capodiegojavier', 'capodiegojavier123', 'Diego Javier ', 'Capo', '111', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(7, 'delucaosvaldo', 'delucaosvaldo123', 'Luca Osvaldo ', 'De', '129', 'TALLER ROTATIVOS', 0),
(8, 'guercicesaragustin', 'guercicesaragustin123', 'Cesar Agustin ', 'Guerci', '150', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(9, 'sanchezhugoarmando', 'sanchezhugoarmando123', 'Hugo Armando ', 'Sanchez', '164', 'GASES', 0),
(10, 'ceballoarmandomaximo', 'ceballoarmandomaximo123', 'Armando Maximo ', 'Ceballo', '182', 'GASES', 0),
(11, 'gerezhectorhugo', 'gerezhectorhugo123', 'Hector Hugo ', 'Gerez', '195', 'GASES', 0),
(12, 'carozzoraulcarlos', 'carozzoraulcarlos123', 'Raul Carlos ', 'Carozzo', '200', 'INGENIERIA Y OBRAS', 0),
(13, 'aracenaalbertodario', 'aracenaalbertodario123', 'Alberto Dario ', 'Aracena', '204', 'TDI', 0),
(14, 'romanoarmandoricardo', 'romanoarmandoricardo123', 'Armando Ricardo ', 'Romano', '223', 'GASES', 0),
(15, 'rioshectordaniel', 'rioshectordaniel123', 'Hector Daniel ', 'Rios', '225', 'CLORO Y SODA CAUSTICA', 0),
(16, 'bertolinodariojuan', 'bertolinodariojuan123', 'Dario Juan ', 'Bertolino', '236', 'DNT - MTD / TDI', 0),
(17, 'ballsrubenjorge', 'ballsrubenjorge123', 'Ruben Jorge ', 'Balls', '249', 'CLORO Y SODA CAUSTICA', 0),
(18, 'galarzaraultomas', 'galarzaraultomas123', 'Raul Tomas ', 'Galarza', '258', 'CLORO Y SODA CAUSTICA', 0),
(19, 'violahoracioangel', 'violahoracioangel123', 'Horacio Angel ', 'Viola', '261', 'CLORO Y SODA CAUSTICA', 0),
(20, 'chiodinhugoabel', 'chiodinhugoabel123', 'Hugo Abel ', 'Chiodin', '273', 'SERVICIOS INDUSTRIALES', 0),
(21, 'benitezpedrogenaro', 'benitezpedrogenaro123', 'Pedro Genaro ', 'Benitez', '275', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(22, 'pellegrinomarioaldo', 'pellegrinomarioaldo123', 'Mario Aldo ', 'Pellegrino', '276', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(23, 'ramellojoseenrique', 'ramellojoseenrique123', 'Jose Enrique ', 'Ramello', '279', 'CLORO Y SODA CAUSTICA', 0),
(24, 'pardoricardoamadeo', 'pardoricardoamadeo123', 'Ricardo Amadeo ', 'Pardo', '282', 'LABORATORIO', 0),
(25, 'quirogarobertoangel', 'quirogarobertoangel123', 'Roberto Angel ', 'Quiroga', '284', 'LABORATORIO', 0),
(26, 'cesarettimiguelangel', 'cesarettimiguelangel123', 'Miguel Angel ', 'Cesaretti', '286', 'DNT - MTD', 0),
(27, 'cecenarrofranciscorodolfo', 'cecenarrofranciscorodolfo123', 'Francisco Rodolfo ', 'Cecenarro', '296', 'TDI', 0),
(28, 'cattaneohectorcleri', 'cattaneohectorcleri123', 'Hector Cleri ', 'Cattaneo', '301', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(29, 'reinosojorgeesteban', 'reinosojorgeesteban123', 'Jorge Esteban ', 'Reinoso', '303', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(30, 'quirogaraulalfonso', 'quirogaraulalfonso123', 'Raul Alfonso ', 'Quiroga', '312', 'DNT - MTD', 0),
(31, 'attwoodadrianruben', 'attwoodadrianruben123', 'Adrian Ruben ', 'Attwood', '321', 'TDI', 0),
(32, 'arevalojosealberto', 'arevalojosealberto123', 'Jose Alberto ', 'Arevalo', '328', 'DNT - MTD', 0),
(33, 'lastrahugoomar', 'lastrahugoomar123', 'Hugo Omar ', 'Lastra', '330', 'TALLER ESTÁTICOS', 0),
(34, 'debattistijuanjose', 'debattistijuanjose123', 'Battisti Juan Jose ', 'De', '333', 'TALLER ESTÁTICOS', 0),
(35, 'voogternestooscar', 'voogternestooscar123', 'Ernesto Oscar ', 'Voogt', '339', 'TALLER ESTÁTICOS', 0),
(36, 'sainzdanielosvaldo', 'sainzdanielosvaldo123', 'Daniel Osvaldo ', 'Sainz', '349', 'MANTENIMIENTO', 0),
(37, 'pruvostsergiogabriel', 'pruvostsergiogabriel123', 'Sergio Gabriel ', 'Pruvost', '352', 'EXPEDICION', 0),
(38, 'pinoarmandopablo', 'pinoarmandopablo123', 'Armando Pablo ', 'Pino', '358', 'CLORO Y SODA CAUSTICA', 0),
(39, 'rodriguezpedroelio', 'rodriguezpedroelio123', 'Pedro Elio ', 'Rodriguez', '359', 'DNT - MTD', 0),
(40, 'sueldoomarangel', 'sueldoomarangel123', 'Omar Angel ', 'Sueldo', '360', 'SERVICIOS INDUSTRIALES', 0),
(41, 'filippaclaudioalberto', 'filippaclaudioalberto123', 'Claudio Alberto ', 'Filippa', '363', 'TDI', 0),
(42, 'amanjuanrafael', 'amanjuanrafael123', 'Juan Rafael ', 'Aman', '366', 'TDI', 0),
(43, 'cavalierijorgeomar', 'cavalierijorgeomar123', 'Jorge Omar ', 'Cavalieri', '367', 'CLORO Y SODA CAUSTICA / P.A.C.', 0),
(44, 'sanchezjuliocesar', 'sanchezjuliocesar123', 'Julio Cesar ', 'Sanchez', '370', 'GESTIÓN MANTENIMIENTO', 0),
(45, 'nietosergiohumberto', 'nietosergiohumberto123', 'Sergio Humberto ', 'Nieto', '372', 'CLORO Y SODA CAUSTICA', 0),
(46, 'goÑivictorraul', 'goÑivictorraul123', 'Victor Raul ', 'GoÑi', '378', 'TALLER ESTÁTICOS', 0),
(47, 'sacchiluisalberto', 'sacchiluisalberto123', 'Luis Alberto ', 'Sacchi', '382', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(48, 'magalhaesnorbertofrancisco', 'magalhaesnorbertofrancisco123', 'Norberto Francisco ', 'Magalhaes', '386', 'ADMINISTRACIÓN INDUSTRIAL', 0),
(49, 'prunierbernardojose', 'prunierbernardojose123', 'Bernardo Jose ', 'Prunier', '388', 'TALLER ESTÁTICOS', 0),
(50, 'baldonienriquealberto', 'baldonienriquealberto123', 'Enrique Alberto ', 'Baldoni', '389', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(51, 'sequeirajuandomingo', 'sequeirajuandomingo123', 'Juan Domingo ', 'Sequeira', '392', 'GASES', 0),
(52, 'albangricardoenrique', 'albangricardoenrique123', 'Ricardo Enrique ', 'Albang', '396', 'TALLER ROTATIVOS', 0),
(53, 'dannawalterjesus', 'dannawalterjesus123', 'Walter Jesus ', 'Danna', '397', 'TALLER ROTATIVOS', 0),
(54, 'grossoatiliovicente', 'grossoatiliovicente123', 'Atilio Vicente ', 'Grosso', '399', 'TALLER ROTATIVOS', 0),
(55, 'giljoseluis', 'giljoseluis123', 'Jose Luis ', 'Gil', '406', 'SERVICIOS INDUSTRIALES', 0),
(56, 'demariarodolfojose', 'demariarodolfojose123', 'Rodolfo Jose ', 'Demaria', '413', 'ADMINISTRACIÓN INDUSTRIAL', 0),
(57, 'baudinomarcelodaniel', 'baudinomarcelodaniel123', 'Marcelo Daniel ', 'Baudino', '423', 'P.A.C.', 0),
(58, 'ramondasergioalejandro', 'ramondasergioalejandro123', 'Sergio Alejandro ', 'Ramonda', '425', 'DNT - MTD', 0),
(59, 'cacciolajuancarlos', 'cacciolajuancarlos123', 'Juan Carlos ', 'Cacciola', '428', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(60, 'barrionuevoeduardogabriel', 'barrionuevoeduardogabriel123', 'Eduardo Gabriel ', 'Barrionuevo', '435', 'DNT - MTD', 0),
(61, 'santoedgardorubÉn', 'santoedgardorubÉn123', 'Edgardo RubÉn ', 'Santo', '437', 'SISTEMAS PLANTA INDUSTRIAL', 0),
(62, 'vitamario', 'vitamario123', 'Mario ', 'Vita', '441', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(63, 'martinezrodolforaul', 'martinezrodolforaul123', 'Rodolfo Raul ', 'Martinez', '443', 'DNT - MTD', 0),
(64, 'ferrerguillermoedgardo', 'ferrerguillermoedgardo123', 'Guillermo Edgardo ', 'Ferrer', '446', 'GASES', 0),
(65, 'nasimberajuancarlos', 'nasimberajuancarlos123', 'Juan Carlos ', 'Nasimbera', '450', 'CLORO Y SODA CAUSTICA', 0),
(66, 'dusserreadolfopablo', 'dusserreadolfopablo123', 'Adolfo Pablo ', 'Dusserre', '452', 'TALLER ESTÁTICOS', 0),
(67, 'cataldosergiooscar', 'cataldosergiooscar123', 'Sergio Oscar ', 'Cataldo', '454', 'DNT - MTD', 0),
(68, 'garciamarcelofabiÁn', 'garciamarcelofabiÁn123', 'Marcelo FabiÁn ', 'Garcia', '455', 'GERENCIA RECURSOS HUMANOS', 0),
(69, 'lopezjorgeluis', 'lopezjorgeluis123', 'Jorge Luis ', 'Lopez', '456', 'LABORATORIO', 0),
(70, 'rivarolafabianalberto', 'rivarolafabianalberto123', 'Fabian Alberto ', 'Rivarola', '459', 'TALLER ROTATIVOS', 0),
(71, 'funesjuancarlos', 'funesjuancarlos123', 'Juan Carlos ', 'Funes', '461', 'DNT - MTD', 0),
(72, 'ceruttigustavoluis', 'ceruttigustavoluis123', 'Gustavo Luis ', 'Cerutti', '463', 'INGENIERIA Y OBRAS', 0),
(73, 'riccarodolfoalberto', 'riccarodolfoalberto123', 'Rodolfo Alberto ', 'Ricca', '466', 'DNT - MTD', 0),
(74, 'ledesmahectoreduardo', 'ledesmahectoreduardo123', 'Hector Eduardo ', 'Ledesma', '467', 'CLORO Y SODA CAUSTICA', 0),
(75, 'lafuentejuanramon', 'lafuentejuanramon123', 'Juan Ramon ', 'Lafuente', '469', 'TDI', 0),
(76, 'moronisergioantonio', 'moronisergioantonio123', 'Sergio Antonio ', 'Moroni', '470', 'PLANIFICACIÓN', 0),
(77, 'sosaluisalberto', 'sosaluisalberto123', 'Luis Alberto ', 'Sosa', '474', 'TALLER ESTÁTICOS', 0),
(78, 'maffinihectorheber', 'maffinihectorheber123', 'Hector Heber ', 'Maffini', '483', 'INGENIERIA Y OBRAS', 0),
(79, 'sobranoclaudioalejandro', 'sobranoclaudioalejandro123', 'Claudio Alejandro ', 'Sobrano', '485', 'TALLER ROTATIVOS', 0),
(80, 'saltojuancarlos', 'saltojuancarlos123', 'Juan Carlos ', 'Salto', '498', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(81, 'dellaliberahugolinor', 'dellaliberahugolinor123', 'Hugo Lino R ', 'Dellalibera', '512', 'CLORO Y SODA CAUSTICA', 0),
(82, 'alignanifabianhermes', 'alignanifabianhermes123', 'Fabian Hermes ', 'Alignani', '515', 'MATERIALES Y SERVICIOS', 0),
(83, 'quirogaedgardalberto', 'quirogaedgardalberto123', 'Edgard Alberto ', 'Quiroga', '520', 'TALLER ROTATIVOS', 0),
(84, 'torrescatalinofaustino', 'torrescatalinofaustino123', 'Catalino Faustino ', 'Torres', '522', 'DNT - MTD', 0),
(85, 'barberisgerardoadalberto', 'barberisgerardoadalberto123', 'Gerardo Adalberto ', 'Barberis', '524', 'TALLER ROTATIVOS', 0),
(86, 'barberoomarelio', 'barberoomarelio123', 'Omar Elio ', 'Barbero', '525', 'TALLER ROTATIVOS', 0),
(87, 'michigoywalteromar', 'michigoywalteromar123', 'Walter Omar ', 'Michigoy', '527', 'TALLER ROTATIVOS', 0),
(88, 'bergesiojuancarlos', 'bergesiojuancarlos123', 'Juan Carlos ', 'Bergesio', '533', 'TALLER ROTATIVOS', 0),
(89, 'vargasramoncarlos', 'vargasramoncarlos123', 'Ramon Carlos ', 'Vargas', '538', 'LABORATORIO', 0),
(90, 'velezjoseluis', 'velezjoseluis123', 'Jose Luis ', 'Velez', '542', 'CLORO Y SODA CAUSTICA', 0),
(91, 'bergaminfernandoraul', 'bergaminfernandoraul123', 'Fernando Raul ', 'Bergamin', '549', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(92, 'castaÑoagustingerman', 'castaÑoagustingerman123', 'Agustin German ', 'CastaÑo', '550', 'GASES', 0),
(93, 'aseniejorgeluis', 'aseniejorgeluis123', 'Jorge Luis ', 'Asenie', '552', 'CLORO Y SODA CAUSTICA', 0),
(94, 'fornespablo', 'fornespablo123', 'Pablo ', 'Fornes', '554', 'GESTIÓN MANTENIMIENTO', 0),
(95, 'carezzanojorgeomar', 'carezzanojorgeomar123', 'Jorge Omar ', 'Carezzano', '555', 'SERVICIOS INDUSTRIALES', 0),
(96, 'baezdanielalberto', 'baezdanielalberto123', 'Daniel Alberto ', 'Baez', '557', 'GASES', 0),
(97, 'peirassocarlosalberto', 'peirassocarlosalberto123', 'Carlos Alberto ', 'Peirasso', '567', 'LABORATORIO', 0),
(98, 'menacesareugenio', 'menacesareugenio123', 'Cesar Eugenio ', 'Mena', '569', 'LOGÍSTICA', 0),
(99, 'funesmarcelooscar', 'funesmarcelooscar123', 'Marcelo Oscar ', 'Funes', '571', 'MATERIALES Y SERVICIOS', 0),
(100, 'mansillaluisalverto', 'mansillaluisalverto123', 'Luis Alverto ', 'Mansilla', '578', 'CLORO Y SODA CAUSTICA', 0),
(101, 'gonellapabloantonio', 'gonellapabloantonio123', 'Pablo Antonio ', 'Gonella', '580', 'EXPEDICION', 0),
(102, 'boffadossigustavoariel', 'boffadossigustavoariel123', 'Gustavo Ariel ', 'Boffadossi', '585', 'GASES', 0),
(103, 'diazjuanantonio', 'diazjuanantonio123', 'Juan Antonio ', 'Diaz', '587', 'CLORO Y SODA CAUSTICA', 0),
(104, 'ferreyrajorgeosvaldo', 'ferreyrajorgeosvaldo123', 'Jorge Osvaldo ', 'Ferreyra', '589', 'CLORO Y SODA CAUSTICA', 0),
(105, 'carranzaguillermodavid', 'carranzaguillermodavid123', 'Guillermo David ', 'Carranza', '591', 'TDI', 0),
(106, 'ciuccinolbertomiguel', 'ciuccinolbertomiguel123', 'Nolberto Miguel ', 'Ciucci', '592', 'GASES', 0),
(107, 'rinconezrodolfogabriel', 'rinconezrodolfogabriel123', 'Rodolfo Gabriel ', 'Rinconez', '594', 'EXPEDICION', 0),
(108, 'ficinienriqueadrian', 'ficinienriqueadrian123', 'Enrique Adrian ', 'Ficini', '595', 'LABORATORIO', 0),
(109, 'smolarzeduardojulian', 'smolarzeduardojulian123', 'Eduardo Julian ', 'Smolarz', '608', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(110, 'casimironicasiojusto', 'casimironicasiojusto123', 'Nicasio Justo ', 'Casimiro', '611', 'TALLER ROTATIVOS', 0),
(111, 'santiagojuanalfredo', 'santiagojuanalfredo123', 'Juan Alfredo ', 'Santiago', '613', 'GERENCIA TÉCNICA', 0),
(112, 'leivajosealberto', 'leivajosealberto123', 'Jose Alberto ', 'Leiva', '615', 'GASES', 0),
(113, 'cracconestorhugo', 'cracconestorhugo123', 'Nestor Hugo ', 'Cracco', '622', 'SERVICIOS INDUSTRIALES', 0),
(114, 'torresclaudiogabriel', 'torresclaudiogabriel123', 'Claudio Gabriel ', 'Torres', '634', 'LABORATORIO', 0),
(115, 'monzonfabianroberto', 'monzonfabianroberto123', 'Fabian Roberto ', 'Monzon', '645', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(116, 'sobrerosergioalejandro', 'sobrerosergioalejandro123', 'Sergio Alejandro ', 'Sobrero', '653', 'GASES', 0),
(117, 'panicuccijuancarlos', 'panicuccijuancarlos123', 'Juan Carlos ', 'Panicucci', '655', 'TALLER ROTATIVOS', 0),
(118, 'herediaedgardoarmando', 'herediaedgardoarmando123', 'Edgardo Armando ', 'Heredia', '656', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(119, 'villaloncarlosjose', 'villaloncarlosjose123', 'Carlos Jose ', 'Villalon', '659', 'CLORO Y SODA CAUSTICA', 0),
(120, 'gonzalezjosealberto', 'gonzalezjosealberto123', 'Jose Alberto ', 'Gonzalez', '660', 'INGENIERIA Y OBRAS', 0),
(121, 'fonsfriamauricio', 'fonsfriamauricio123', 'Mauricio ', 'Fonsfria', '667', 'LABORATORIO', 0),
(122, 'nosottijoseenrique', 'nosottijoseenrique123', 'Jose Enrique ', 'Nosotti', '670', 'MANTENIMIENTO', 0),
(123, 'machadojuanhector', 'machadojuanhector123', 'Juan Hector ', 'Machado', '673', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(124, 'cornejorodolfo', 'cornejorodolfo123', 'Rodolfo ', 'Cornejo', '679', 'CLORO Y SODA CAUSTICA', 0),
(125, 'cabralpedrodavid', 'cabralpedrodavid123', 'Pedro David ', 'Cabral', '687', 'TALLER ESTÁTICOS', 0),
(126, 'chiaramelorudy', 'chiaramelorudy123', 'Rudy ', 'Chiaramelo', '688', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(127, 'cuellosergiodaniel', 'cuellosergiodaniel123', 'Sergio Daniel ', 'Cuello', '699', 'TDI', 0),
(128, 'funessergiorolando', 'funessergiorolando123', 'Sergio Rolando ', 'Funes', '700', 'TDI', 0),
(129, 'garciajorgedavid', 'garciajorgedavid123', 'Jorge David ', 'Garcia', '701', 'P.A.C.', 0),
(130, 'gonzalezluisarnaldodelc.', 'gonzalezluisarnaldodelc.123', 'Luis Arnaldo Del C. ', 'Gonzalez', '702', 'GASES', 0),
(131, 'tobanellisergiodelvalle', 'tobanellisergiodelvalle123', 'Sergio Del Valle ', 'Tobanelli', '705', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(132, 'meravigliaarielalberto', 'meravigliaarielalberto123', 'Ariel Alberto ', 'Meraviglia', '709', 'CLORO Y SODA CAUSTICA', 0),
(133, 'gottardiraulantonio', 'gottardiraulantonio123', 'Raul Antonio ', 'Gottardi', '711', 'P.A.C.', 0),
(134, 'ciccarellijuanjose', 'ciccarellijuanjose123', 'Juan Jose ', 'Ciccarelli', '716', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(135, 'herediasegundoanibal', 'herediasegundoanibal123', 'Segundo Anibal ', 'Heredia', '721', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(136, 'bimacarlosalberto', 'bimacarlosalberto123', 'Carlos Alberto ', 'Bima', '722', 'TALLER ROTATIVOS', 0),
(137, 'vigourouxeduardoalberto', 'vigourouxeduardoalberto123', 'Eduardo Alberto ', 'Vigouroux', '724', 'CLORO Y SODA CAUSTICA', 0),
(138, 'peironeivanomar', 'peironeivanomar123', 'Ivan Omar ', 'Peirone', '727', 'DNT - MTD', 0),
(139, 'acostamariodavid', 'acostamariodavid123', 'Mario David ', 'Acosta', '729', 'CLORO Y SODA CAUSTICA', 0),
(140, 'quirogasergiofabian', 'quirogasergiofabian123', 'Sergio Fabian ', 'Quiroga', '730', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(141, 'caÑadasjorgemercedes', 'caÑadasjorgemercedes123', 'Jorge Mercedes ', 'CaÑadas', '734', 'SERVICIOS INDUSTRIALES', 0),
(142, 'pavondiegoroberto', 'pavondiegoroberto123', 'Diego Roberto ', 'Pavon', '735', 'CLORO Y SODA CAUSTICA', 0),
(143, 'cuainogabrieldanilo', 'cuainogabrieldanilo123', 'Gabriel Danilo ', 'Cuaino', '752', 'DNT - MTD', 0),
(144, 'ruizgabrieleduardo', 'ruizgabrieleduardo123', 'Gabriel Eduardo ', 'Ruiz', '756', 'TALLER ESTÁTICOS', 0),
(145, 'malufjorgealberto', 'malufjorgealberto123', 'Jorge Alberto ', 'Maluf', '757', 'SERVICIOS INDUSTRIALES', 0),
(146, 'toscomarcelogabriel', 'toscomarcelogabriel123', 'Marcelo Gabriel ', 'Tosco', '761', 'TALLER ROTATIVOS', 0),
(147, 'raimundagustavoalberto', 'raimundagustavoalberto123', 'Gustavo Alberto ', 'Raimunda', '772', 'TDI', 0),
(148, 'maldonadoedgardowalter', 'maldonadoedgardowalter123', 'Edgardo Walter ', 'Maldonado', '776', 'SERVICIOS INDUSTRIALES', 0),
(149, 'michelenarodolfo', 'michelenarodolfo123', 'Rodolfo ', 'Michelena', '778', 'CLORO Y SODA CAUSTICA', 0),
(150, 'tavellamarcelofrancisco', 'tavellamarcelofrancisco123', 'Marcelo Francisco ', 'Tavella', '780', 'GASES', 0),
(151, 'oviedohectorhugo', 'oviedohectorhugo123', 'Hector Hugo ', 'Oviedo', '795', 'DNT - MTD', 0),
(152, 'castropascualnolasco', 'castropascualnolasco123', 'Pascual Nolasco ', 'Castro', '796', 'TDI', 0),
(153, 'delladonnamarioalberto', 'delladonnamarioalberto123', 'Donna Mario Alberto ', 'Della', '797', 'TDI', 0),
(154, 'noguerolsebastian', 'noguerolsebastian123', 'Sebastian ', 'Noguerol', '799', 'P.A.C.', 0),
(155, 'gomezhoraciodaniel', 'gomezhoraciodaniel123', 'Horacio Daniel ', 'Gomez', '800', 'LABORATORIO', 0),
(156, 'oyarzabalvictor', 'oyarzabalvictor123', 'Victor ', 'Oyarzabal', '808', 'DNT - MTD', 0),
(157, 'ceruttiguillermocesar', 'ceruttiguillermocesar123', 'Guillermo Cesar ', 'Cerutti', '810', 'PLANIFICACIÓN', 0),
(158, 'borettoalexander', 'borettoalexander123', 'Alexander ', 'Boretto', '815', 'GASES', 0),
(159, 'butassiclaudioarmando', 'butassiclaudioarmando123', 'Claudio Armando ', 'Butassi', '817', 'TALLER ROTATIVOS', 0),
(160, 'gonzalezcesarjavier', 'gonzalezcesarjavier123', 'Cesar Javier ', 'Gonzalez', '827', 'GASES', 0),
(161, 'oviedodiegoezequiel', 'oviedodiegoezequiel123', 'Diego Ezequiel ', 'Oviedo', '828', 'COMPRAS LOCALES', 0),
(162, 'peraltadanielaugusto', 'peraltadanielaugusto123', 'Daniel Augusto ', 'Peralta', '829', 'CLORO Y SODA CAUSTICA', 0),
(163, 'salgadodanieleduardo', 'salgadodanieleduardo123', 'Daniel Eduardo ', 'Salgado', '833', 'P.A.C.', 0),
(164, 'villalonvictorhugo', 'villalonvictorhugo123', 'Victor Hugo ', 'Villalon', '838', 'DNT - MTD', 0),
(165, 'zamboranserranojoseluis', 'zamboranserranojoseluis123', 'Serrano Jose Luis ', 'Zamboran', '845', 'COMPRAS LOCALES', 0),
(166, 'coriafabriciogerman', 'coriafabriciogerman123', 'Fabricio German ', 'Coria', '854', 'DNT - MTD', 0),
(167, 'delcrefernandoezequiel', 'delcrefernandoezequiel123', 'Fernando Ezequiel ', 'Delcre', '859', 'SERVICIOS INDUSTRIALES', 0),
(168, 'gallardoenzoenrique', 'gallardoenzoenrique123', 'Enzo Enrique ', 'Gallardo', '864', 'P.A.C.', 0),
(169, 'toiagerardodante', 'toiagerardodante123', 'Gerardo Dante ', 'Toia', '874', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(170, 'montenegromarianomartin', 'montenegromarianomartin123', 'Mariano Martin ', 'Montenegro', '875', 'CLORO Y SODA CAUSTICA', 0),
(171, 'gilgomezguillermom.', 'gilgomezguillermom.123', 'Gomez Guillermo M. ', 'Gil', '876', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(172, 'deharojesusdario', 'deharojesusdario123', 'Haro Jesus Dario ', 'De', '878', 'CLORO Y SODA CAUSTICA', 0),
(173, 'garrazasergioalfredo', 'garrazasergioalfredo123', 'Sergio Alfredo ', 'Garraza', '880', 'DNT - MTD', 0),
(174, 'lujanjulioalberto', 'lujanjulioalberto123', 'Julio Alberto ', 'Lujan', '882', 'EXPEDICION', 0),
(175, 'osterahebermauricio', 'osterahebermauricio123', 'Heber Mauricio ', 'Ostera', '888', 'SERVICIOS INDUSTRIALES', 0),
(176, 'aracenacarlosalberto', 'aracenacarlosalberto123', 'Carlos Alberto ', 'Aracena', '890', 'P.A.C.', 0),
(177, 'santalizjulianesteban', 'santalizjulianesteban123', 'Julian Esteban ', 'Santaliz', '892', 'TDI', 0),
(178, 'balmacedadanielramon', 'balmacedadanielramon123', 'Daniel Ramon ', 'Balmaceda', '893', 'TDI', 0),
(179, 'gerbaldomarcelabeatriz', 'gerbaldomarcelabeatriz123', 'Marcela Beatriz ', 'Gerbaldo', '894', 'PROCESOS', 0),
(180, 'floresezequielhugo', 'floresezequielhugo123', 'Ezequiel Hugo ', 'Flores', '895', 'GASES', 0),
(181, 'pistellicristianjavier', 'pistellicristianjavier123', 'Cristian Javier ', 'Pistelli', '898', 'LABORATORIO', 0),
(182, 'ferrucciguillermoleonel', 'ferrucciguillermoleonel123', 'Guillermo Leonel ', 'Ferrucci', '909', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(183, 'prattoemilianoezequiel', 'prattoemilianoezequiel123', 'Emiliano Ezequiel ', 'Pratto', '910', 'DNT - MTD', 0),
(184, 'magalhaesnicolasnorberto', 'magalhaesnicolasnorberto123', 'Nicolas Norberto ', 'Magalhaes', '912', 'TDI', 0),
(185, 'celisfabianoscar', 'celisfabianoscar123', 'Fabian Oscar ', 'Celis', '914', 'P.A.C.', 0),
(186, 'gerezrodrigohugo', 'gerezrodrigohugo123', 'Rodrigo Hugo ', 'Gerez', '915', 'P.A.C.', 0),
(187, 'cocapauloemanuel', 'cocapauloemanuel123', 'Paulo Emanuel ', 'Coca', '916', 'P.A.C.', 0),
(188, 'stambulejuanagustinfabian', 'stambulejuanagustinfabian123', 'Juan Agustin Fabian ', 'Stambule', '920', 'TALLER ESTÁTICOS', 0),
(189, 'quirogajaviernicolas', 'quirogajaviernicolas123', 'Javier Nicolas ', 'Quiroga', '921', 'DNT - MTD', 0),
(190, 'delavedovajavierandres', 'delavedovajavierandres123', 'Javier Andres ', 'Delavedova', '922', 'LABORATORIO', 0),
(191, 'cavalierimarcosdavid', 'cavalierimarcosdavid123', 'Marcos David ', 'Cavalieri', '924', 'EXPEDICION', 0),
(192, 'pinolucasmaximiliano', 'pinolucasmaximiliano123', 'Lucas Maximiliano ', 'Pino', '925', 'CLORO Y SODA CAUSTICA', 0),
(193, 'gabettamartinalejandro', 'gabettamartinalejandro123', 'Martin Alejandro ', 'Gabetta', '926', 'CLORO Y SODA CAUSTICA', 0),
(194, 'illanespomaresjuanjose', 'illanespomaresjuanjose123', 'Pomares Juan Jose ', 'Illanes', '928', 'DNT - MTD', 0),
(195, 'voogtemilianoernesto', 'voogtemilianoernesto123', 'Emiliano Ernesto ', 'Voogt', '933', 'DNT - MTD', 0),
(196, 'martinilucasivan', 'martinilucasivan123', 'Lucas Ivan ', 'Martini', '934', 'TALLER ROTATIVOS', 0),
(197, 'perezsebastian', 'perezsebastian123', 'Sebastian ', 'Perez', '935', 'SERVICIOS INDUSTRIALES', 0),
(198, 'pauluccimarcosluis', 'pauluccimarcosluis123', 'Marcos Luis ', 'Paulucci', '936', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(199, 'bottassogermanluis', 'bottassogermanluis123', 'German Luis ', 'Bottasso', '938', 'ADMINISTRACIÓN DE PERSONAL', 0),
(200, 'verdÚsergiosebastiÁn', 'verdÚsergiosebastiÁn123', 'Sergio SebastiÁn ', 'VerdÚ', '941', 'PLANTA HIDROCARBUROS', 0),
(201, 'cabralrobertopedro', 'cabralrobertopedro123', 'Roberto Pedro ', 'Cabral', '942', 'TALLER ESTÁTICOS', 0),
(202, 'fregapanilucas', 'fregapanilucas123', 'Lucas ', 'Fregapani', '943', 'TALLER ESTÁTICOS', 0),
(203, 'realesraulalberto', 'realesraulalberto123', 'Raul Alberto ', 'Reales', '944', 'TALLER ESTÁTICOS', 0),
(204, 'flotronsebastian', 'flotronsebastian123', 'Sebastian ', 'Flotron', '945', 'MATERIALES Y SERVICIOS', 0),
(205, 'pellegrinojaviereduardo', 'pellegrinojaviereduardo123', 'Javier Eduardo ', 'Pellegrino', '946', 'SERVICIOS INDUSTRIALES', 0),
(206, 'almadamauricioariel', 'almadamauricioariel123', 'Mauricio Ariel ', 'Almada', '948', 'CLORO Y SODA CAUSTICA', 0),
(207, 'morenosergiosebastian', 'morenosergiosebastian123', 'Sergio Sebastian ', 'Moreno', '949', 'DNT - MTD', 0),
(208, 'gimenezfederico', 'gimenezfederico123', 'Federico ', 'Gimenez', '950', 'SERVICIOS INDUSTRIALES', 0),
(209, 'quirogamarcosezequiel', 'quirogamarcosezequiel123', 'Marcos Ezequiel ', 'Quiroga', '951', 'TDI', 0),
(210, 'rodonheredianicolasr.', 'rodonheredianicolasr.123', 'Heredia Nicolas R. ', 'Rodon', '955', 'GERENCIA LOGÍSTICA', 0),
(211, 'tellorodriguezcristianariel', 'tellorodriguezcristianariel123', 'Rodriguez Cristian Ariel ', 'Tello', '958', 'P.A.C.', 0),
(212, 'avilacristianezequiel', 'avilacristianezequiel123', 'Cristian Ezequiel ', 'Avila', '961', 'TDI', 0),
(213, 'echarrylucasalberto', 'echarrylucasalberto123', 'Lucas Alberto ', 'Echarry', '963', 'INGENIERIA Y OBRAS', 0),
(214, 'peironelucasclaudio', 'peironelucasclaudio123', 'Lucas Claudio ', 'Peirone', '965', 'CLORO Y SODA CAUSTICA', 0),
(215, 'dannaedgardonazareno', 'dannaedgardonazareno123', 'Edgardo Nazareno ', 'Danna', '966', 'DNT - MTD', 0),
(216, 'grassimarcelohernan', 'grassimarcelohernan123', 'Marcelo Hernan ', 'Grassi', '967', 'DNT - MTD', 0),
(217, 'romanomoyanomauroivan', 'romanomoyanomauroivan123', 'Moyano Mauro Ivan ', 'Romano', '968', 'DNT - MTD', 0),
(218, 'eiringvacaalexander', 'eiringvacaalexander123', 'Vaca Alexander ', 'Eiring', '969', 'GASES', 0),
(219, 'ravettileonardo', 'ravettileonardo123', 'Leonardo ', 'Ravetti', '970', 'SERVICIOS INDUSTRIALES', 0),
(220, 'alvornozarielalejandro', 'alvornozarielalejandro123', 'Ariel Alejandro ', 'Alvornoz', '971', 'GASES', 0),
(221, 'casalicarlosaugusto', 'casalicarlosaugusto123', 'Carlos Augusto ', 'Casali', '972', 'SERVICIOS INDUSTRIALES', 0),
(222, 'sobrerojuancarlos', 'sobrerojuancarlos123', 'Juan Carlos ', 'Sobrero', '975', 'TDI', 0),
(223, 'avilacesarezequiel', 'avilacesarezequiel123', 'Cesar Ezequiel ', 'Avila', '976', 'TDI', 0),
(224, 'gimenezhector', 'gimenezhector123', 'Hector ', 'Gimenez', '977', 'GESTIÓN MANTENIMIENTO', 0),
(225, 'medinanelsoomar', 'medinanelsoomar123', 'Nelso Omar ', 'Medina', '978', 'GESTIÓN MANTENIMIENTO', 0),
(226, 'ferrarogermanalberto', 'ferrarogermanalberto123', 'German Alberto ', 'Ferraro', '979', 'MATERIALES Y SERVICIOS', 0),
(227, 'michigoymartin', 'michigoymartin123', 'Martin ', 'Michigoy', '981', 'EXPEDICION', 0),
(228, 'ledesmafrancoemanuel', 'ledesmafrancoemanuel123', 'Franco Emanuel ', 'Ledesma', '982', 'EXPEDICION', 0),
(229, 'goÑidiegojavier', 'goÑidiegojavier123', 'Diego Javier ', 'GoÑi', '984', 'COMPRAS LOCALES', 0),
(230, 'ferreyrawalterrene', 'ferreyrawalterrene123', 'Walter Rene ', 'Ferreyra', '985', 'TALLER ROTATIVOS', 0),
(231, 'baigorriadanielalberto', 'baigorriadanielalberto123', 'Daniel Alberto ', 'Baigorria', '986', 'TALLER ROTATIVOS', 0),
(232, 'comellohectordamian', 'comellohectordamian123', 'Hector Damian ', 'Comello', '988', 'TALLER ESTÁTICOS', 0),
(233, 'boffadossijorgefabian', 'boffadossijorgefabian123', 'Jorge Fabian ', 'Boffadossi', '990', 'CLORO Y SODA CAUSTICA', 0),
(234, 'aguirredariosebastian', 'aguirredariosebastian123', 'Dario Sebastian ', 'Aguirre', '992', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(235, 'zanettidariohector', 'zanettidariohector123', 'Dario Hector ', 'Zanetti', '999', 'ADMINISTRACIÓN DE PERSONAL', 0),
(236, 'dellameajavier', 'dellameajavier123', 'Mea Javier ', 'Della', '1000', 'PROCESOS', 0),
(237, 'ledesmaluis', 'ledesmaluis123', 'Luis ', 'Ledesma', '1005', 'P.A.C.', 0),
(238, 'ferreyramarcelojavier', 'ferreyramarcelojavier123', 'Marcelo Javier ', 'Ferreyra', '1007', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(239, 'danterrejulieta', 'danterrejulieta123', 'Julieta ', 'Danterre', '1009', 'OFICINA TÉCNICA / MANTENIMIENTO', 0),
(240, 'ipericomaurodante', 'ipericomaurodante123', 'Mauro Dante ', 'Iperico', '1011', 'CLORO Y SODA CAUSTICA', 0),
(241, 'luraschimarcosleonel', 'luraschimarcosleonel123', 'Marcos Leonel ', 'Luraschi', '1012', 'LABORATORIO', 0),
(242, 'tantuccimarcosgabriel', 'tantuccimarcosgabriel123', 'Marcos Gabriel ', 'Tantucci', '1013', 'MATERIALES Y SERVICIOS', 0),
(243, 'rosalesmatiasemanuel', 'rosalesmatiasemanuel123', 'Matias Emanuel ', 'Rosales', '1014', 'COMPRAS LOCALES', 0),
(244, 'pasquettijorgeagustin', 'pasquettijorgeagustin123', 'Jorge Agustin ', 'Pasquetti', '1016', 'DNT - MTD', 0),
(245, 'rochadiegofernando', 'rochadiegofernando123', 'Diego Fernando ', 'Rocha', '1018', 'OFICINA TÉCNICA / MANTENIMIENTO', 0),
(246, 'armandogonzalo', 'armandogonzalo123', 'Gonzalo ', 'Armando', '1022', 'PROCESOS', 0),
(247, 'torresfernando', 'torresfernando123', 'Fernando ', 'Torres', '1024', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(248, 'ramirezgustavo', 'ramirezgustavo123', 'Gustavo ', 'Ramirez', '1025', 'SERVICIOS INDUSTRIALES', 0),
(249, 'maldonadoruben', 'maldonadoruben123', 'Ruben ', 'Maldonado', '1026', 'SERVICIOS INDUSTRIALES', 0),
(250, 'ballspablo', 'ballspablo123', 'Pablo ', 'Balls', '1028', 'TALLER ROTATIVOS', 0),
(251, 'santagerman', 'santagerman123', 'German ', 'Santa', '1030', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(252, 'cornejodarioariel', 'cornejodarioariel123', 'Dario Ariel ', 'Cornejo', '1031', 'EXPEDICION', 0),
(253, 'pittaromarcos', 'pittaromarcos123', 'Marcos ', 'Pittaro', '1032', 'BALANZA', 0),
(254, 'margheriarobertonicolas', 'margheriarobertonicolas123', 'Roberto Nicolas ', 'Margheria', '1038', 'LABORATORIO', 0),
(255, 'palaciojonathan', 'palaciojonathan123', 'Jonathan ', 'Palacio', '1039', 'P.A.C.', 0),
(256, 'fonsfrialucasdario', 'fonsfrialucasdario123', 'Lucas Dario ', 'Fonsfria', '1040', 'CLORO Y SODA CAUSTICA', 0),
(257, 'guerinigustavolucas', 'guerinigustavolucas123', 'Gustavo Lucas ', 'Guerini', '1044', 'LABORATORIO', 0),
(258, 'phileassergioluis', 'phileassergioluis123', 'Sergio Luis ', 'Phileas', '1047', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(259, 'gomezgomezcarlosalberto', 'gomezgomezcarlosalberto123', 'Gomez Carlos Alberto ', 'Gomez', '1048', 'SERVICIO MÉDICO', 0),
(260, 'casasjuanmarcelo', 'casasjuanmarcelo123', 'Juan Marcelo ', 'Casas', '1050', 'P.A.C.', 0),
(261, 'tabernerocarlos', 'tabernerocarlos123', 'Carlos ', 'Tabernero', '1052', 'DNT - MTD', 0),
(262, 'gonzalezjuanc.', 'gonzalezjuanc.123', 'Juan C. ', 'Gonzalez', '1057', 'LABORATORIO', 0),
(263, 'cepollaroclaudiojuan', 'cepollaroclaudiojuan123', 'Claudio Juan ', 'Cepollaro', '1060', 'CLORO Y SODA CAUSTICA', 0),
(264, 'guillencarla', 'guillencarla123', 'Carla ', 'Guillen', '1061', 'SECRETARÍA DE PLANTA', 0),
(265, 'grinovero', 'grinovero123', ' ', 'Grinovero', '1062', '', 0),
(266, 'annibaligermannicolas', 'annibaligermannicolas123', 'German Nicolas ', 'Annibali', '1063', 'LABORATORIO', 0),
(267, 'gonzalezjorge', 'gonzalezjorge123', 'Jorge ', 'Gonzalez', '1064', 'LABORATORIO', 0),
(268, 'menziomarcelo', 'menziomarcelo123', 'Marcelo ', 'Menzio', '1065', 'BALANZA', 0),
(269, 'raimondodavid', 'raimondodavid123', 'David ', 'Raimondo', '1066', 'LABORATORIO', 0),
(270, 'delogualejandro', 'delogualejandro123', 'Alejandro ', 'Delogu', '1067', 'GESTIÓN MANTENIMIENTO', 0),
(271, 'medinabruno', 'medinabruno123', ' Bruno ', 'Medina', '1068', 'CLORO Y SODA CAUSTICA', 0),
(272, 'caÑadasfacundo', 'caÑadasfacundo123', 'Facundo ', 'CaÑadas', '1069', 'EXPEDICION', 0),
(273, 'ruizjuliocesar', 'ruizjuliocesar123', 'Julio Cesar ', 'Ruiz', '1071', 'TALLER ROTATIVOS', 0),
(274, 'erezamarcelo', 'erezamarcelo123', 'Marcelo ', 'Ereza', '1072', 'PLANIFICACIÓN', 0),
(275, 'jofrejavier', 'jofrejavier123', 'Javier ', 'Jofre', '1074', 'PROCESOS', 0),
(276, 'ravettiezequiel', 'ravettiezequiel123', 'Ezequiel ', 'Ravetti', '1076', 'EXPEDICION', 0),
(277, 'fiorentinoribaudopatricio', 'fiorentinoribaudopatricio123', 'Ribaudo Patricio  ', 'Fiorentino', '1077', 'ADMINISTRACIÓN INDUSTRIAL', 0),
(278, 'carranzadaniel', 'carranzadaniel123', 'Daniel ', 'Carranza', '1079', 'SERVICIOS INDUSTRIALES', 0),
(279, 'benitezluciano', 'benitezluciano123', 'Luciano ', 'Benitez', '1080', 'DNT - MTD', 0),
(280, 'zamoramauro', 'zamoramauro123', 'Mauro ', 'Zamora', '1082', 'GASES', 0),
(281, 'grossomatias', 'grossomatias123', 'Matias ', 'Grosso', '1083', 'TDI', 0),
(282, 'nardiguido', 'nardiguido123', 'Guido ', 'Nardi', '1084', 'MATERIALES Y SERVICIOS', 0),
(283, 'orellanolucianoenrique', 'orellanolucianoenrique123', 'Luciano Enrique ', 'Orellano', '1085', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(284, 'cosergabriel', 'cosergabriel123', 'Gabriel ', 'Coser', '1086', 'EXPEDICION', 0),
(285, 'pavanfernadodaniel', 'pavanfernadodaniel123', 'Fernado Daniel ', 'Pavan', '1089', 'MATERIALES Y SERVICIOS', 0),
(286, 'lelliezequielandresjesus', 'lelliezequielandresjesus123', 'Ezequiel Andres Jesus ', 'Lelli', '1090', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(287, 'martinezleonardogaston', 'martinezleonardogaston123', 'Leonardo Gaston ', 'Martinez', '1091', 'SERVICIOS INDUSTRIALES', 0),
(288, 'piacentinimarianogaston', 'piacentinimarianogaston123', 'Mariano Gaston ', 'Piacentini', '1092', 'GASES', 0),
(289, 'morenomanuel', 'morenomanuel123', 'Manuel ', 'Moreno', '1093', 'CLORO Y SODA CAUSTICA', 0),
(290, 'yaconogustavo', 'yaconogustavo123', 'Gustavo ', 'Yacono', '1094', 'TDI', 0),
(291, 'capandeguimauro', 'capandeguimauro123', 'Mauro ', 'Capandegui', '1095', 'SERVICIOS INDUSTRIALES', 0),
(292, 'stoccoerwinezequiel', 'stoccoerwinezequiel123', 'Erwin Ezequiel ', 'Stocco', '1096', 'TALLER ROTATIVOS', 0),
(293, 'saezernestoruben', 'saezernestoruben123', 'Ernesto Ruben ', 'Saez', '1098', 'LABORATORIO', 0),
(294, 'centomoarielemanuel', 'centomoarielemanuel123', 'Ariel Emanuel ', 'Centomo', '1099', 'LABORATORIO', 0),
(295, 'luceronicolasalejandro', 'luceronicolasalejandro123', 'Nicolas Alejandro ', 'Lucero', '1100', 'LABORATORIO', 0),
(296, 'lunattigerman', 'lunattigerman123', 'German ', 'Lunatti', '1101', 'TALLER ROTATIVOS', 0),
(297, 'coriamarcosdavid', 'coriamarcosdavid123', 'Marcos David ', 'Coria', '1102', 'TALLER ESTÁTICOS', 0),
(298, 'linaresmarisaelena', 'linaresmarisaelena123', 'Marisa Elena ', 'Linares', '1103', 'COMPRAS LOCALES', 0),
(299, 'costabelladavidalejandro', 'costabelladavidalejandro123', 'David Alejandro ', 'Costabella', '1104', 'PROCESOS', 0),
(300, 'gudiÑomarcosdavid', 'gudiÑomarcosdavid123', 'Marcos David ', 'GudiÑo', '1105', 'EXPEDICION', 0),
(301, 'camertonidiegoruben', 'camertonidiegoruben123', 'Diego Ruben ', 'Camertoni', '1106', 'EXPEDICION', 0),
(302, 'schvartzmanguillermo', 'schvartzmanguillermo123', 'Guillermo ', 'Schvartzman', '1108', 'SERVICIO MÉDICO', 0),
(303, 'palaverclaudiogabriel', 'palaverclaudiogabriel123', 'Claudio Gabriel ', 'Palaver', '1109', 'CLORO Y SODA CAUSTICA', 0),
(304, 'pereyramaurogerman', 'pereyramaurogerman123', 'Mauro German ', 'Pereyra', '1110', 'LABORATORIO', 0),
(305, 'blenginodiegodaniel', 'blenginodiegodaniel123', 'Diego Daniel ', 'Blengino', '1111', 'DNT - MTD', 0),
(306, 'bustosdiegomauricio', 'bustosdiegomauricio123', 'Diego Mauricio ', 'Bustos', '1112', 'P.A.C.', 0),
(307, 'villarrealjorgeraul', 'villarrealjorgeraul123', 'Jorge Raul ', 'Villarreal', '1113', 'SEGURIDAD Y MEDIO AMBIENTE', 0),
(308, 'saracchiniricardosilvio', 'saracchiniricardosilvio123', 'Ricardo Silvio ', 'Saracchini', '1114', 'TDI', 0),
(309, 'stagnarihernan', 'stagnarihernan123', 'Hernan ', 'Stagnari', '1115', 'DNT - MTD', 0),
(310, 'prattogabrielalberto', 'prattogabrielalberto123', 'Gabriel Alberto ', 'Pratto', '1118', 'TDI', 0),
(311, 'velezlucasnarciso', 'velezlucasnarciso123', 'Lucas Narciso ', 'Velez', '1119', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(312, 'biasizzosanchezfernando', 'biasizzosanchezfernando123', 'Sanchez Fernando ', 'Biasizzo', '1121', 'GASES', 0),
(313, 'ruffinilucasemilio', 'ruffinilucasemilio123', 'Lucas Emilio ', 'Ruffini', '1124', 'ADMINISTRACIÓN INDUSTRIAL', 0),
(314, 'giarolamarcosandres', 'giarolamarcosandres123', 'Marcos Andres ', 'Giarola', '1125', 'TDI', 0),
(315, 'herediapaserojuanjose', 'herediapaserojuanjose123', 'Pasero Juan Jose ', 'Heredia', '1128', 'TDI', 0),
(316, 'bergnaemanuel', 'bergnaemanuel123', ' Emanuel ', 'Bergna', '1129', 'TDI', 0),
(317, 'fernandezemilioangel', 'fernandezemilioangel123', 'Emilio Angel ', 'Fernandez', '1130', 'PLANIFICACIÓN', 0),
(318, 'magliernaldojeremias', 'magliernaldojeremias123', 'Naldo Jeremias ', 'Maglier', '1131', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0),
(319, 'yanesguillermo', 'yanesguillermo123', 'Guillermo ', 'Yanes', '1132', 'TALLER ESTÁTICOS', 0),
(320, 'gÓmezdiegomartÍn', 'gÓmezdiegomartÍn123', 'Diego MartÍn ', 'GÓmez', '1134', 'TALLER ESTÁTICOS', 0),
(321, 'fernÁndezfedericogastÓn', 'fernÁndezfedericogastÓn123', 'Federico GastÓn ', 'FernÁndez', '1135', 'SERVICIOS INDUSTRIALES', 0),
(322, 'wagnermarceloricardo', 'wagnermarceloricardo123', 'Marcelo Ricardo ', 'Wagner', '1136', 'SERVICIOS INDUSTRIALES', 0),
(323, 'payolabruno', 'payolabruno123', 'Bruno ', 'Payola', '1137', 'LABORATORIO', 0),
(324, 'scassoaxelgabriel', 'scassoaxelgabriel123', 'Axel Gabriel ', 'Scasso', '1138', 'LABORATORIO', 0),
(325, 'larchermarceloluis', 'larchermarceloluis123', 'Marcelo Luis ', 'Larcher', '1143', 'GERENCIA SEGURIDAD Y MEDIO AMBIENTE', 0),
(326, 'mengohernanfernando', 'mengohernanfernando123', 'Hernan Fernando ', 'Mengo', '1144', 'EXPEDICION', 0),
(327, 'canutomartinraul', 'canutomartinraul123', 'Martin Raul ', 'Canuto', '1148', 'LABORATORIO', 0),
(328, 'pronojulian', 'pronojulian123', 'Julian ', 'Prono', '1149', 'LABORATORIO', 0),
(329, 'sanchezarielalejandro', 'sanchezarielalejandro123', 'Ariel Alejandro ', 'Sanchez', '1150', 'DNT - MTD', 0),
(330, 'lopezezequieldorian', 'lopezezequieldorian123', 'Ezequiel Dorian ', 'Lopez', '1151', 'EXPEDICION', 0),
(331, 'maldonadolucassebastian', 'maldonadolucassebastian123', 'Lucas Sebastian ', 'Maldonado', '1153', 'LABORATORIO', 0),
(332, 'mercadomarianonicolas', 'mercadomarianonicolas123', 'Mariano Nicolas ', 'Mercado', '1155', 'TDI', 0),
(333, 'fernandezpabloezequiel', 'fernandezpabloezequiel123', 'Pablo Ezequiel ', 'Fernandez', '1156', 'DNT - MTD', 0),
(334, 'castrocarlosismael', 'castrocarlosismael123', 'Carlos Ismael ', 'Castro', '1157', 'TALLER ESTÁTICOS', 0),
(335, 'pereyragustavoandres', 'pereyragustavoandres123', 'Gustavo Andres ', 'Pereyra', '1158', 'TALLER ESTÁTICOS', 0),
(336, 'hinnikevinalexis', 'hinnikevinalexis123', 'Kevin Alexis', 'Hinni', '1160', 'LABORATORIO', 0),
(337, 'lopezalexisjoaquin', 'lopezalexisjoaquin123', 'Alexis Joaquin', 'Lopez', '1161', 'TDI', 0),
(338, 'giorginijavieroscar', 'giorginijavieroscar123', 'Javier Oscar', 'Giorgini', '1162', 'SERVICIOS INDUSTRIALES', 0),
(339, 'ramosalexisexequiel', 'ramosalexisexequiel123', 'Alexis Exequiel ', 'Ramos', '1163', 'LABORATORIO', 0),
(340, 'felicilucasleonardo', 'felicilucasleonardo123', 'Lucas Leonardo ', 'Felici', '1164', 'EXPEDICION', 0),
(341, 'silvestrosantiagosebastian', 'silvestrosantiagosebastian123', 'Santiago Sebastian', 'Silvestro', '1165', 'CLORO Y SODA CAUSTICA', 0),
(342, 'gomeznestorjonathan', 'gomeznestorjonathan123', 'Nestor Jonathan', 'Gomez', '1166', 'CLORO Y SODA CAUSTICA', 0),
(343, 'irazabalvictorhugo', 'irazabalvictorhugo123', 'Victor Hugo', 'Irazabal', '1167', 'CLORO Y SODA CAUSTICA', 0),
(344, 'brunimartinalejandro', 'brunimartinalejandro123', 'Martin Alejandro ', 'Bruni', '1168', 'DNT - MTD', 0),
(345, 'pajongonzalesjuliomarcelo', 'pajongonzalesjuliomarcelo123', 'Gonzales Julio Marcelo ', 'Pajon', '1169', 'EXPEDICION', 0),
(346, 'dominguezmaurogabriel', 'dominguezmaurogabriel123', 'Mauro Gabriel ', 'Dominguez', '1170', 'EXPEDICION', 0),
(347, 'piacentinimaximilianol.', 'piacentinimaximilianol.123', 'Maximiliano L. ', 'Piacentini', '1171', 'DNT - MTD', 0),
(348, 'ceballoslauroraul', 'ceballoslauroraul123', 'Lauro Raul ', 'Ceballos', '1172', 'GASES', 0),
(349, 'santi2', 'santi123', 'Federico', 'Salas', '9999', 'TRAGA BALA', 1),
(350, 'santi3', 'santi123', 'Marco', 'Ortiz', '9999', 'OTRO MAS', 1),
(351, 'santi4', 'santi123', 'Gaston', 'Appendino', '9999', 'INDEFINIDO', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
