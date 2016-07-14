-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 14, 2016 at 12:35 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petroquimica`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user`, `pass`) VALUES
('admin', 'oixxio123');

-- --------------------------------------------------------

--
-- Table structure for table `changeLog`
--

CREATE TABLE IF NOT EXISTS `changeLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elemento` varchar(200) COLLATE utf8_bin NOT NULL,
  `valor` varchar(1000) COLLATE utf8_bin NOT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=88 ;

--
-- Dumping data for table `changeLog`
--

INSERT INTO `changeLog` (`id`, `elemento`, `valor`, `modificado`, `usuario`) VALUES
(1, 'pass usuario id = 1', '456', '2016-06-16 16:42:46', 'admin\r\n'),
(2, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0","$$hashKey":"object:1845"}', '2016-06-21 15:08:09', 'Admin'),
(3, 'usuarios', 'Array', '2016-06-21 15:09:31', 'Admin'),
(4, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0"}', '2016-06-21 15:09:58', 'Admin'),
(5, 'cuestionarios', '{"pregunta":"a","respuesta1":"1","respuesta2":"1","respuesta3":"1","respCorrecta":"1","idModulo":"2"}', '2016-06-21 15:12:55', 'Admin'),
(6, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0"}', '2016-06-21 15:23:20', 'Admin'),
(7, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"1"}', '2016-06-21 15:23:29', 'Admin'),
(8, 'cuestionarios', '{"pregunta":"¿Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Claro que si","respuesta2":"Por supuesto","respuesta3":"Si","respCorrecta":"1","idModulo":"2","index":"1"}', '2016-06-21 15:24:38', 'Admin'),
(9, 'cuestionarios', '{"pregunta":"¿Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Claro que si","respuesta2":"Por supuesto","respuesta3":"Si","respCorrecta":"1","idModulo":"1","index":"1"}', '2016-06-21 15:24:51', 'Admin'),
(10, 'preguntas', '{"pregunta":"admin","respuesta1":"2","respuesta2":"2","respuesta3":"2","respCorrecta":"1","idModulo":"2"}', '2016-06-21 15:26:07', 'Admin'),
(11, 'usuarios', '{"user":"santi","pass":"sant","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0"}', '2016-06-21 15:50:29', 'Admin'),
(12, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"1"}', '2016-06-21 15:50:38', 'Admin'),
(13, 'cuestionarios', '{"pregunta":"¿Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Claro que si","respuesta2":"Por supuesto","respuesta3":"Si","respCorrecta":"1","idModulo":"3","index":"1"}', '2016-06-21 15:51:09', 'Admin'),
(14, 'preguntas', '{"pregunta":"facu","respuesta1":"1","respuesta2":"1","respuesta3":"1","respCorrecta":"1","idModulo":"2"}', '2016-06-21 15:51:20', 'Admin'),
(15, 'preguntas', '{"pregunta":"fede","respuesta1":"2","respuesta2":"2","respuesta3":"2","respCorrecta":"1","idModulo":"1"}', '2016-06-21 15:56:58', 'Admin'),
(16, 'preguntas', '{"pregunta":"guille","respuesta1":"3","respuesta2":"3","respuesta3":"3","respCorrecta":"3","idModulo":"4"}', '2016-06-21 15:58:00', 'Admin'),
(17, 'preguntas', '{"pregunta":"sergio","respuesta1":"4","respuesta2":"4","respuesta3":"44","respCorrecta":"2","idModulo":"4"}', '2016-06-21 16:04:24', 'Admin'),
(18, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0"}', '2016-06-21 16:07:29', 'Admin'),
(19, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"1"}', '2016-06-21 16:08:08', 'Admin'),
(20, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"0"}', '2016-06-21 16:08:50', 'Admin'),
(21, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"1","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:22:19', 'Admin'),
(22, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"1","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:56:00', 'Admin'),
(23, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"3","idModulo":"1","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:56:33', 'Admin'),
(24, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"3","idModulo":"5","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:56:53', 'Admin'),
(25, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"5","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:57:06', 'Admin'),
(26, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"4","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:58:31', 'Admin'),
(27, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"4","index":"1","trigger":"VOCINA_A"}', '2016-06-28 20:59:40', 'Admin'),
(28, 'cuestionarios', '{"pregunta":"Antes de realizar cualquier tipo de trabajo usted debe tener:","respuesta1":"Autorizacion del supervisor del sector.","respuesta2":"Autorizacion del jefe de SMA.","respuesta3":"El permiso de trabajo correspondiente.","respCorrecta":"1","idModulo":"1","index":"6","trigger":"NONE"}', '2016-06-28 20:59:56', 'Admin'),
(29, 'cuestionarios', '{"pregunta":"Antes de realizar cualquier tipo de trabajo usted debe tener:","respuesta1":"Autorizacion del supervisor del sector.","respuesta2":"Autorizacion del jefe de SMA.","respuesta3":"El permiso de trabajo correspondiente.","respCorrecta":"2","idModulo":"1","index":"6","trigger":"NONE"}', '2016-06-28 21:00:23', 'Admin'),
(30, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:39:01', 'Admin'),
(31, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:41:12', 'Admin'),
(32, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:43:45', 'Admin'),
(33, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:44:30', 'Admin'),
(34, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:45:56', 'Admin'),
(35, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:46:30', 'Admin'),
(36, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:49:33', 'Admin'),
(37, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:53:57', 'Admin'),
(38, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:55:37', 'Admin'),
(39, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:58:21', 'Admin'),
(40, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:58:43', 'Admin'),
(41, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 13:59:52', 'Admin'),
(42, 'cuestionarios', '{"pregunta":"Identifique el siguiente símbolo","respuesta1":"Zona habilitada para fumar","respuesta2":"Zona de riesgo","respuesta3":"Punto de encuentro","respCorrecta":"1","idModulo":"1","index":"2","trigger":"SIMBOLO"}', '2016-06-29 14:00:23', 'Admin'),
(43, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:00:52', 'Admin'),
(44, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:01:30', 'Admin'),
(45, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:01:55', 'Admin'),
(46, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:02:43', 'Admin'),
(47, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:03:17', 'Admin'),
(48, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:03:48', 'Admin'),
(49, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:08:40', 'Admin'),
(50, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:09:34', 'Admin'),
(51, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:10:08', 'Admin'),
(52, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:11:57', 'Admin'),
(53, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:12:14', 'Admin'),
(54, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:13:09', 'Admin'),
(55, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:13:47', 'Admin'),
(56, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:15:12', 'Admin'),
(57, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:16:40', 'Admin'),
(58, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:16:56', 'Admin'),
(59, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:18:00', 'Admin'),
(60, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:19:07', 'Admin'),
(61, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:25:20', 'Admin'),
(62, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:28:18', 'Admin'),
(63, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:28:57', 'Admin'),
(64, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:35:45', 'Admin'),
(65, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:36:12', 'Admin'),
(66, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"1","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:37:39', 'Admin'),
(67, 'cuestionarios', '{"pregunta":"Al escuchar la siguiente sirena, ¿Cómo debe proceder?","respuesta1":"Avisar al responsable del sector más cercano","respuesta2":"Evacuar la planta","respuesta3":"Permanecer en su puesto de trabajo/ir a los puntos de reunión","respCorrecta":"2","idModulo":"3","index":"1","trigger":"VOCINA_A"}', '2016-06-29 14:42:54', 'Admin'),
(68, 'usuarios', '{"user":"santi","pass":"santi123","name":"Santiago","lastname":"Roca","legajo":"9999","puesto":"GERENCIA OPERACIONES","moduloA":"1"}', '2016-07-01 13:46:50', 'Admin'),
(69, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>x","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:09:59', 'Admin'),
(70, 'signals', '{"index":"2","descripcion":"general","text":"<b>IMPORTANTE</b>\\\\n\\\\nTodo personal que ingresa, transita y/o desarrolla tareas en la unidad fabril debe respetar, cumplir y hacer cumplir con todas las <b>normas de seguridad.</b>","x":"-26","y":"22","z":"-78","rotY":"88","icon":"Quad","video":"","vidtmb":"2-NormasDeSeguridad","audio":""}', '2016-07-01 17:23:06', 'Admin'),
(71, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:23:19', 'Admin'),
(72, 'signals', '{"index":"4","descripcion":"general","text":"<b>ANTES DE INGRESAR</b>\\\\n\\\\n- Debe solicitar \\\\\\"autorización\\\\\\" o permiso en la sala de control correspondiente\\\\n- Debe utilizar los <b>elementos básicos de protección personal</b>\\\\n- Debe portar los <b>Elementos de Protección Personal (EPP)</b>4","x":"-54","y":"22","z":"31","rotY":"179","icon":"Quad","video":"","vidtmb":"5-AntesDeIngresar","audio":""}', '2016-07-01 17:24:28', 'Admin'),
(73, 'signals', '{"index":"4","descripcion":"general","text":"<b>ANTES DE INGRESAR</b>\\\\n\\\\n- Debe solicitar \\\\\\"autorización\\\\\\" o permiso en la sala de control correspondiente\\\\n- Debe utilizar los <b>elementos básicos de protección personal</b>\\\\n- Debe portar los <b>Elementos de Protección Personal (EPP)</b>","x":"-54","y":"22","z":"31","rotY":"179","icon":"Quad","video":"","vidtmb":"5-AntesDeIngresar","audio":""}', '2016-07-01 17:24:57', 'Admin'),
(74, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>4","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:42:58', 'Admin'),
(75, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:48:04', 'Admin'),
(76, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:51:09', 'Admin'),
(77, 'signals', '{"index":"2","descripcion":"general","text":"<b>IMPORTANTE</b>\\\\n\\\\nTodo personal que ingresa, transita y/o desarrolla tareas en la unidad fabril debe respetar, cumplir y hacer cumplir con todas las <b>normas de seguridad.</b>","x":"-26","y":"22","z":"-78","rotY":"88","icon":"Quad","video":"","vidtmb":"2-NormasDeSeguridad","audio":""}', '2016-07-01 17:51:24', 'Admin'),
(78, 'signals', '{"index":"14","descripcion":"general4","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>4","x":"-14","y":"224","z":"-774","rotY":"914","icon":"Quad","video":"bienvenida.mp4_x2644","vidtmb":"1-Bienvenidos4","audio":"Bienvenido4"}', '2016-07-01 17:56:10', 'Admin'),
(79, 'signals', '{"index":"1","descripcion":"general","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>","x":"-1","y":"22","z":"-77","rotY":"91","icon":"Quad","video":"bienvenida.mp4_x264","vidtmb":"1-Bienvenidos","audio":"Bienvenido"}', '2016-07-01 17:56:31', 'Admin'),
(80, 'signals', '{"index":"14","descripcion":"general4","text":"<b>BIENVENIDOS</b>\\\\n\\\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>4","x":"-14","y":"224","z":"-774","rotY":"914","icon":"Quad","video":"bienvenida.mp4_x2644","vidtmb":"1-Bienvenidos4","audio":"Bienvenido4"}', '2016-07-04 14:21:52', 'Admin'),
(81, 'usuarios', '{"pass":"Mugnaini"}', '2016-07-04 17:02:41', 'Admin'),
(82, 'usuarios', '{"pass":"Mugnaini"}', '2016-07-04 17:05:17', 'Admin'),
(83, 'usuarios', '{"pass":"Mugnaini"}', '2016-07-04 17:06:06', 'Admin'),
(84, 'preguntas', '{"pregunta":"1342432","respuesta1":"1","respuesta2":"2","respuesta3":"3","respCorrecta":"1","idModulo":"1"}', '2016-07-04 17:06:53', 'Admin'),
(85, 'usuarios', '{"pass":"Mugnaini"}', '2016-07-04 17:08:03', 'Admin'),
(86, 'usuarios', '{"pass":"Mugnaini"}', '2016-07-04 17:08:09', 'Admin'),
(87, 'usuarios', '{"user":"guille","name":"Guillermo","lastname":"Mugnaini","pass":"guille1234","DNI":"34317742","legajo":"53571","fechaNac":"1989-04-22T03:00:00.000Z","grupoSang":"0+","estudiosFinales":"Secundario","empresa":"OIXXIO","email":"mugnainiguillermo@gmail.com","puesto":"TECH LEADER"}', '2016-07-04 17:11:01', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cuestionario`
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
-- Dumping data for table `cuestionario`
--

INSERT INTO `cuestionario` (`idUsuario`, `pregunta1`, `pregunta2`, `pregunta3`, `pregunta4`, `pregunta5`, `pregunta6`, `pregunta7`, `pregunta8`, `pregunta9`, `pregunta10`, `idModulo`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
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
-- Dumping data for table `modulo`
--

INSERT INTO `modulo` (`id`, `descripcion`, `alta`, `baja`, `modificacion`) VALUES
(1, 'Contratistas e ingreso a personal nuevo', '2014-04-25 15:55:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(1000) COLLATE utf8_bin NOT NULL,
  `respuesta1` varchar(200) COLLATE utf8_bin NOT NULL,
  `respuesta2` varchar(200) COLLATE utf8_bin NOT NULL,
  `respuesta3` varchar(200) COLLATE utf8_bin NOT NULL,
  `respCorrecta` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `trigger` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta1`, `respuesta2`, `respuesta3`, `respCorrecta`, `idModulo`, `index`, `trigger`) VALUES
(0, 'Al escuchar la siguiente sirena, ¿Cómo debe proceder?', 'Avisar al responsable del sector más cercano', 'Evacuar la planta', 'Permanecer en su puesto de trabajo/ir a los puntos de reunión', 2, 3, 1, 'VOCINA_A'),
(1, 'Identifique el siguiente símbolo', 'Zona habilitada para fumar', 'Zona de riesgo', 'Punto de encuentro', 1, 1, 2, 'SIMBOLO'),
(2, 'Si usted se encuentra en una situación de escape de gas con viento en direccion NORTE, ¿Usted debe huir hacia?', 'A - NORTE', 'B - SUR', 'C - OESTE', 2, 1, 3, 'SITUACION'),
(3, 'En el caso de desempeñarse como operario, ¿cuáles son los elementos de seguridad que debe tener?', 'Mascara buco-nasal, calzado de seguridad, anteojos de seguridad, casco, ropa apropiada.', 'Mascara buco-nasal, calzado de seguridad, anteojos de seguridad, casco, ropa apropiada.', 'Mascara buco-nasal, ropa apropiada, calzado de seguridad, anteojos de seguridad, guantes, casco.', 2, 1, 4, 'NONE'),
(4, 'En caso de emergencia usted debe:', 'Llamar al número *333 desde cualquier teléfono interno.', 'Avisar al supervisor del sector, quien se encargara de llamar al *444.', '"Avisar al supervisor del sector, quien se encargara de llamar al *333.', 2, 1, 5, 'NONE'),
(5, '¿Antes de realizar cualquier tipo de trabajo usted debe tener:', 'Autorizacion del supervisor del sector.', 'Autorizacion del jefe de SMA.', 'El permiso de trabajo correspondiente.', 2, 1, 6, 'NONE'),
(6, 'Identifique la sirena', 'Emergencia.', 'Fin de emergencia.', 'Evacuación.', 1, 1, 7, 'VOCINA_B'),
(7, '¿En cual de los siguientes tipos de alerta no se utilizan sirenas como sistema de aviso?', 'Alerta rojo.', 'Alerta verde.', 'Alerta amarillo.', 1, 1, 8, 'NONE'),
(8, 'Puede utilizar el teléfono celular en la planta?', 'Si.', 'No.', 'Solo personal autorizado.', 2, 1, 9, 'NONE'),
(9, '¿Cuál de estas es la forma correcta de colocarse la máscara buco-nasal?', 'Primero colocar las correas y luego el respirador.', 'Primero colocar el respirador y luego las correas.', 'Las 2 opciones anteriores son correctas.', 0, 1, 10, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=42 ;

--
-- Dumping data for table `respuestas`
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
(9, 1, 1, 9, 2, '2014-04-25 16:14:46'),
(10, 1, 1, 10, 0, '2014-04-25 16:14:53'),
(11, 2, 1, 1, 1, '2014-04-25 16:14:28'),
(12, 2, 1, 2, 2, '2014-04-25 16:14:28'),
(13, 2, 1, 3, 0, '2014-04-25 16:14:28'),
(14, 2, 1, 4, 1, '2014-04-25 16:14:38'),
(15, 2, 1, 5, 2, '2014-04-25 16:14:38'),
(16, 2, 1, 6, 0, '2014-04-25 16:14:38'),
(17, 2, 1, 7, 1, '2014-04-25 16:14:46'),
(18, 2, 1, 8, 2, '2014-04-25 16:14:46'),
(19, 2, 1, 9, 0, '2014-04-25 16:14:46'),
(20, 2, 1, 10, 1, '2014-04-25 16:14:53'),
(21, 3, 1, 1, 1, '2016-07-01 12:42:03'),
(22, 3, 1, 2, 2, '2016-07-01 12:43:31'),
(23, 3, 1, 3, 2, '2016-07-01 12:43:42'),
(24, 3, 1, 4, 2, '2016-07-01 12:44:40'),
(25, 3, 1, 5, 2, '2016-07-01 12:44:40'),
(26, 3, 1, 6, 2, '2016-07-01 12:44:40'),
(27, 3, 1, 7, 1, '2016-07-01 12:44:40'),
(28, 3, 1, 8, 1, '2016-07-01 12:44:40'),
(29, 3, 1, 9, 2, '2016-07-01 12:44:40'),
(30, 3, 1, 10, 0, '2016-07-01 12:44:40'),
(32, 4, 1, 1, 1, '2016-07-01 12:46:48'),
(33, 4, 1, 2, 1, '2016-07-01 12:46:48'),
(34, 4, 1, 3, 1, '2016-07-01 12:46:48'),
(35, 4, 1, 4, 1, '2016-07-01 12:46:48'),
(36, 4, 1, 5, 1, '2016-07-01 12:46:48'),
(37, 4, 1, 6, 1, '2016-07-01 12:46:48'),
(38, 4, 1, 7, 1, '2016-07-01 12:46:48'),
(39, 4, 1, 8, 1, '2016-07-01 12:46:48'),
(40, 4, 1, 9, 1, '2016-07-01 12:46:48'),
(41, 4, 1, 10, 1, '2016-07-01 12:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `signals`
--

CREATE TABLE IF NOT EXISTS `signals` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `index` int(3) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `text` varchar(1000) COLLATE utf8_bin NOT NULL,
  `x` int(10) NOT NULL,
  `y` int(10) NOT NULL,
  `z` int(10) NOT NULL,
  `rotY` int(10) NOT NULL,
  `icon` varchar(50) COLLATE utf8_bin NOT NULL,
  `video` varchar(100) COLLATE utf8_bin NOT NULL,
  `vidtmb` varchar(100) COLLATE utf8_bin NOT NULL,
  `audio` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=19 ;

--
-- Dumping data for table `signals`
--

INSERT INTO `signals` (`id`, `index`, `descripcion`, `text`, `x`, `y`, `z`, `rotY`, `icon`, `video`, `vidtmb`, `audio`) VALUES
(1, 14, 'general4', '<b>BIENVENIDOS</b>\\n\\nEsta <b>CAPACITACIÓN</b> de inducción a la <b>SEGURIDAD Y MEDIO AMBIENTE</b> está dirigida para el personal que realizará tareas en nuestra Planta Industria previendo los <b>RIESGOS LABORALES</b> y los <b>IMPACTOS AMBIENTALES</b>4', -14, 224, -774, 914, 'Quad', 'bienvenida.mp4_x2644', '1-Bienvenidos4', 'Bienvenido4'),
(2, 2, 'general', '<b>IMPORTANTE</b>\\n\\nTodo personal que ingresa, transita y/o desarrolla tareas en la unidad fabril debe respetar, cumplir y hacer cumplir con todas las <b>normas de seguridad.</b>', -26, 22, -78, 88, 'Quad', '', '2-NormasDeSeguridad', ''),
(3, 15, 'general', '<b>RECOMENDACIONES PRÁCTICAS PARA UN TRABAJO SEGURO</b>\\n\\nLas presentes recomendaciones expresan las medidas de precaución que deben adoptarse durante su tránsito, permanencia y trabajos a desarrollar en planta industrial.\\nSu conocimiento y adopción por parte de la supervisión y los operadores reduce los riesgos durante la ejecución de las tareas.', 8, 22, 48, 91, 'Quad', '', '3-RecomendacionesTrabajoSeguro', ''),
(4, 3, 'general', '<b>ELEMENTOS DE PROTECCIÓN</b>\\n\\nAl ingresar a la unidad fabril, usted deberá contar con los siguientes <b>elementos básicos de protección personal</b> de uso obligatorio.\\n- Casco\\n- Anteojos de seguridad\\n- Calzado de seguridad\\nDebe contar también con el siguiente <b>Elemento de Protección Personal (EEP)</b></br>- Máscara buconasal con filtro de carbón activado para vapores orgánicos y gases ácidos.', -43, 22, -72, 91, 'Quad', '', '4-EEP', ''),
(5, 4, 'general', '<b>ANTES DE INGRESAR</b>\\n\\n- Debe solicitar \\"autorización\\" o permiso en la sala de control correspondiente\\n- Debe utilizar los <b>elementos básicos de protección personal</b>\\n- Debe portar los <b>Elementos de Protección Personal (EPP)</b>4', -54, 22, 31, 179, 'Quad', '', '5-AntesDeIngresar', ''),
(6, 12, 'general', '<b>PERMISO DE TRABAJO</b>\\n\\nTodo trabajo que se efectue en la zona industrial debe realizarse munido del correspondiente <b>Permiso de Trabajo</b>.\\nEl permiso de trabajo aplica para los siguientes:\\nfrio, caliente, altura, hot—up, eléctrico, excavaciones, espacio confinado, ATS, instructivo, procedimiento, ingreso a tanques o recipientes', -16, 22, 135, 269, 'Quad', '', '6-PermisoDeTrabajo', ''),
(7, 9, 'general', '<b>EMERGENCIA</b>\\n\\nSi usted detecta una emergencia, <b>avise al panelista o al supervisor del sector.</b> El sector es el encargado de activar el <b>sistema de aviso de alerta mediante el N° *333\\n— Fuga de gas 0 vapores téxicos\\n- Derrame de producto\\n- Principio de incendio y/o explosién\\n- Persona accidentada\\n- Persona con problemas de salud</b>', -26, 22, 66, 92, 'Quad', '', '7-Emergencia', ''),
(8, 11, 'general', '<b>NUESTRA EMPRESA CUENTA CON SISTEMAS DE AVISO DE ALERTA ANTE EMERGENCIAS\\n\\n<b>Alerta Verde</b> > sin toque de sirena\\n<b>Alerta Amarillo</b> > con toque de sirena\\n<b>Alerta Rojo = Evacuacién</b> > con toque de sirena', -34, 22, 127, 91, 'Quad', '', '8-SistemaDeEmergencia', ''),
(9, 16, 'general', '<b>SISTEMA DE ALERTAS</b><br/\\nPRIII S.A. cuenta con diferentes sistemas de alerta\\n<b>- Balizas Iuminosas\\n- Parlantes internos\\n- Sirenas</b>\\nLos sistemas de alerta son <b>probados todos los dias Iunes a las 11:00am</b>, salvo que se indique lo contrario', 14, 22, 12, 270, 'Quad', '', '9-SistemaDeAlertas', ''),
(10, 13, 'general', '<b>PROTECCION BAJO CUBIERTA</b>\\n\\nAl informarse por los diferentes sistemas de alerta, debera permanecer en su puesto de trabajo o dirigirse al edificio mas cercano (punto de reunion) segun lo indicado en plane, a fin de lograr <b>proteccién bajo cubierta</b>', 68, 22, 135, 269, 'Quad', '', '10-ProteccionBajoCubierta', ''),
(11, 5, 'general', '<b>CIRCULACION DE VEHlCULOS</b>\\n\\nLos sr transportistas o conductores de vehiculos deberan estacionarse sobre su derecha, no sobre sendas peatonales, no interfiriendo ningun ingreso/egreso, calle ni cruce.', -54, 22, 48, 122, 'Quad', '', '11-CirculacionVehiculos', ''),
(12, 14, 'general', '<b>DURANTE UNA EMERGENCIA, usted debe:</b>\\n\\n<b>- Mantener siempre la calma</b>\\n<b>- NO correr.</b> Caminar con paso acelerado\\n<b>- NO usar lineas telefénicas</b>\\n<b>- Obedecer Ias instrucciones</b> del Lider de la evacuacién del ediﬁcio', 95, 22, 54, 183, 'Quad', 'durante_emergencia_x264', '12-DuranteEmergencia', ''),
(13, 10, 'general', '<b>FUGA DE GAS</b>\\n\\nAnte una fuga de gas:\\n<b>- Observe Ia direccion del viento\\n- Aléjese en direccién perpendicular al viento\\n- Asegurese de portar y utilizar los elementos de proteccién personal (EPP) como la mascara buconasal con filtro de carbén activado para vapores organicos y gases acidos</b>', -38, 22, 81, 180, 'Quad', 'Escape_de_gas_2_x264', '13-FugaDeGas', '00---Fuga_d_gas_x264 audio'),
(14, 7, 'general', '<b>COLOCACION DE MASCARA BUCONASAL</b>\\n\\nSiga las instrucciones detalladas para la correcta colocacién de la mascara buconasal y utilicela siempre que sea indicado.\\nRecuerde portar la mascara en todo momento mientras trabaja en exposicién a gases o vapores téxicos.', -67, 22, 98, 0, 'Quad', '46---colocacion-mascara-buconasal-2_1_x264', '16-EnCasoAccidente', 'Colocacion_mascara_buconasal_AUDIO'),
(15, 18, 'general', '<b>iGRACIAS!\\n\\nGracias a su colaboracién es posible resguardar la seguridad e integridad de todos y cuidar nuestro medio ambiente.<b/>', -23, 22, -37, 273, 'Quad', '', '15-Gracias', ''),
(16, 8, 'general', '<b>PROCEDIMIENTO EN CASO DE ACCIDENTE<b/>\\n\\nRecuerde siempre:\\n<b>— Mantener siempre la calma<b/>\\n<b>— NO correr.<b/> Caminar con paso acelerado\\n<b>— NO usar lineas telefénicas<b/>\\n<b>— Obedecer Ias instrucciones<b/> del Lider de la evacuacién del edificio', -51, 22, 108, 105, 'Quad', 'En caso de accidente', '16-EnCasoAccidente', ''),
(17, 17, 'general', '<b>SE ENCUENTRA PROHIBIDO\\n\\n- Trabajar sin permiso de trabajo\\n- Utilizar teléfonos celulares no autorizados\\n- Usar maquinas fotograficas no autorizadas, MP3s o equipos de musica\\n- Ingresar con bebidas alcohélicas</b>', -10, 22, 4, 180, 'Quad', '', '17-Prohibido', ''),
(18, 6, 'general', '<b>INCUMPLIMIENTO DE NORMAS\\n\\nEl incumplimiento de las normas y disposiciones pone en riesgo la seguridad de todos.</b>', -69, 22, 82, 0, 'Quad', '', '18-Incumplimiento', '');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `DNI` int(11) NOT NULL,
  `legajo` varchar(255) NOT NULL,
  `fechaNac` date NOT NULL,
  `grupoSang` varchar(255) NOT NULL,
  `estudiosFinales` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `examenRealizado` int(11) NOT NULL,
  `moduloA` int(11) NOT NULL,
  `fechaExamen` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=349 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `name`, `lastname`, `DNI`, `legajo`, `fechaNac`, `grupoSang`, `estudiosFinales`, `empresa`, `email`, `puesto`, `examenRealizado`, `moduloA`, `fechaExamen`) VALUES
(1, 'santi', 'santi123', 'Santiago', 'Roca', 32654987, '54', '2016-07-05', '0+', 'Universitario', 'PRIII', '123@PRIII.com', 'GERENCIA OPERACIONES', 1, 1, 1467601200),
(2, 'reyrobertoelias', 'reyrobertoelias123', 'Roberto Elias ', 'Rey', 32654987, '31', '2016-07-04', '0-', 'Universitario', 'PRIII', '123@PRIII.com', 'MANTENIMIENTO', 0, 0, 1404183600),
(3, 'paulucciluisalberto', 'paulucciluisalberto123', 'Luis Alberto ', 'Paulucci', 32654987, '75', '2016-07-06', 'AB+', 'Universitario', 'FIAT', '123@PRIII.com', 'GERENCIA OPERACIONES', 1, 1, 1467601200),
(4, 'tobanellijuanjose', 'tobanellijuanjose123', 'Juan Jose ', 'Tobanelli', 32654987, '97', '2016-07-02', 'AB-', 'Universitario', 'FIAT', '123@PRIII.com', 'PROCESOS', 1, 1, 1406862000),
(5, 'perezjosejulio', 'perezjosejulio123', 'Jose Julio ', 'Perez', 0, '109', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(6, 'capodiegojavier', 'capodiegojavier123', 'Diego Javier ', 'Capo', 0, '111', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(7, 'delucaosvaldo', 'delucaosvaldo123', 'Luca Osvaldo ', 'De', 0, '129', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(8, 'guercicesaragustin', 'guercicesaragustin123', 'Cesar Agustin ', 'Guerci', 0, '150', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(9, 'sanchezhugoarmando', 'sanchezhugoarmando123', 'Hugo Armando ', 'Sanchez', 0, '164', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(10, 'ceballoarmandomaximo', 'ceballoarmandomaximo123', 'Armando Maximo ', 'Ceballo', 0, '182', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(11, 'gerezhectorhugo', 'gerezhectorhugo123', 'Hector Hugo ', 'Gerez', 0, '195', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(12, 'carozzoraulcarlos', 'carozzoraulcarlos123', 'Raul Carlos ', 'Carozzo', 0, '200', '0000-00-00', '', '', '', '', 'INGENIERIA Y OBRAS', 0, 0, 0),
(13, 'aracenaalbertodario', 'aracenaalbertodario123', 'Alberto Dario ', 'Aracena', 0, '204', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(14, 'romanoarmandoricardo', 'romanoarmandoricardo123', 'Armando Ricardo ', 'Romano', 0, '223', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(15, 'rioshectordaniel', 'rioshectordaniel123', 'Hector Daniel ', 'Rios', 0, '225', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(16, 'bertolinodariojuan', 'bertolinodariojuan123', 'Dario Juan ', 'Bertolino', 0, '236', '0000-00-00', '', '', '', '', 'DNT - MTD / TDI', 0, 0, 0),
(17, 'ballsrubenjorge', 'ballsrubenjorge123', 'Ruben Jorge ', 'Balls', 0, '249', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(18, 'galarzaraultomas', 'galarzaraultomas123', 'Raul Tomas ', 'Galarza', 0, '258', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(19, 'violahoracioangel', 'violahoracioangel123', 'Horacio Angel ', 'Viola', 0, '261', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(20, 'chiodinhugoabel', 'chiodinhugoabel123', 'Hugo Abel ', 'Chiodin', 0, '273', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(21, 'benitezpedrogenaro', 'benitezpedrogenaro123', 'Pedro Genaro ', 'Benitez', 0, '275', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(22, 'pellegrinomarioaldo', 'pellegrinomarioaldo123', 'Mario Aldo ', 'Pellegrino', 0, '276', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(23, 'ramellojoseenrique', 'ramellojoseenrique123', 'Jose Enrique ', 'Ramello', 0, '279', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(24, 'pardoricardoamadeo', 'pardoricardoamadeo123', 'Ricardo Amadeo ', 'Pardo', 0, '282', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(25, 'quirogarobertoangel', 'quirogarobertoangel123', 'Roberto Angel ', 'Quiroga', 0, '284', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(26, 'cesarettimiguelangel', 'cesarettimiguelangel123', 'Miguel Angel ', 'Cesaretti', 0, '286', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(27, 'cecenarrofranciscorodolfo', 'cecenarrofranciscorodolfo123', 'Francisco Rodolfo ', 'Cecenarro', 0, '296', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(28, 'cattaneohectorcleri', 'cattaneohectorcleri123', 'Hector Cleri ', 'Cattaneo', 0, '301', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(29, 'reinosojorgeesteban', 'reinosojorgeesteban123', 'Jorge Esteban ', 'Reinoso', 0, '303', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(30, 'quirogaraulalfonso', 'quirogaraulalfonso123', 'Raul Alfonso ', 'Quiroga', 0, '312', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(31, 'attwoodadrianruben', 'attwoodadrianruben123', 'Adrian Ruben ', 'Attwood', 0, '321', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(32, 'arevalojosealberto', 'arevalojosealberto123', 'Jose Alberto ', 'Arevalo', 0, '328', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(33, 'lastrahugoomar', 'lastrahugoomar123', 'Hugo Omar ', 'Lastra', 0, '330', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(34, 'debattistijuanjose', 'debattistijuanjose123', 'Battisti Juan Jose ', 'De', 0, '333', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(35, 'voogternestooscar', 'voogternestooscar123', 'Ernesto Oscar ', 'Voogt', 0, '339', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(36, 'sainzdanielosvaldo', 'sainzdanielosvaldo123', 'Daniel Osvaldo ', 'Sainz', 0, '349', '0000-00-00', '', '', '', '', 'MANTENIMIENTO', 0, 0, 0),
(37, 'pruvostsergiogabriel', 'pruvostsergiogabriel123', 'Sergio Gabriel ', 'Pruvost', 0, '352', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(38, 'pinoarmandopablo', 'pinoarmandopablo123', 'Armando Pablo ', 'Pino', 0, '358', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(39, 'rodriguezpedroelio', 'rodriguezpedroelio123', 'Pedro Elio ', 'Rodriguez', 0, '359', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(40, 'sueldoomarangel', 'sueldoomarangel123', 'Omar Angel ', 'Sueldo', 0, '360', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(41, 'filippaclaudioalberto', 'filippaclaudioalberto123', 'Claudio Alberto ', 'Filippa', 0, '363', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(42, 'amanjuanrafael', 'amanjuanrafael123', 'Juan Rafael ', 'Aman', 0, '366', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(43, 'cavalierijorgeomar', 'cavalierijorgeomar123', 'Jorge Omar ', 'Cavalieri', 0, '367', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA / P.A.C.', 0, 0, 0),
(44, 'sanchezjuliocesar', 'sanchezjuliocesar123', 'Julio Cesar ', 'Sanchez', 0, '370', '0000-00-00', '', '', '', '', 'GESTIÓN MANTENIMIENTO', 0, 0, 0),
(45, 'nietosergiohumberto', 'nietosergiohumberto123', 'Sergio Humberto ', 'Nieto', 0, '372', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(46, 'goÑivictorraul', 'goÑivictorraul123', 'Victor Raul ', 'GoÑi', 0, '378', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(47, 'sacchiluisalberto', 'sacchiluisalberto123', 'Luis Alberto ', 'Sacchi', 0, '382', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(48, 'magalhaesnorbertofrancisco', 'magalhaesnorbertofrancisco123', 'Norberto Francisco ', 'Magalhaes', 0, '386', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN INDUSTRIAL', 0, 0, 0),
(49, 'prunierbernardojose', 'prunierbernardojose123', 'Bernardo Jose ', 'Prunier', 0, '388', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(50, 'baldonienriquealberto', 'baldonienriquealberto123', 'Enrique Alberto ', 'Baldoni', 0, '389', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(51, 'sequeirajuandomingo', 'sequeirajuandomingo123', 'Juan Domingo ', 'Sequeira', 0, '392', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(52, 'albangricardoenrique', 'albangricardoenrique123', 'Ricardo Enrique ', 'Albang', 0, '396', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(53, 'dannawalterjesus', 'dannawalterjesus123', 'Walter Jesus ', 'Danna', 0, '397', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(54, 'grossoatiliovicente', 'grossoatiliovicente123', 'Atilio Vicente ', 'Grosso', 0, '399', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(55, 'giljoseluis', 'giljoseluis123', 'Jose Luis ', 'Gil', 0, '406', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(56, 'demariarodolfojose', 'demariarodolfojose123', 'Rodolfo Jose ', 'Demaria', 0, '413', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN INDUSTRIAL', 0, 0, 0),
(57, 'baudinomarcelodaniel', 'baudinomarcelodaniel123', 'Marcelo Daniel ', 'Baudino', 0, '423', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(58, 'ramondasergioalejandro', 'ramondasergioalejandro123', 'Sergio Alejandro ', 'Ramonda', 0, '425', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(59, 'cacciolajuancarlos', 'cacciolajuancarlos123', 'Juan Carlos ', 'Cacciola', 0, '428', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(60, 'barrionuevoeduardogabriel', 'barrionuevoeduardogabriel123', 'Eduardo Gabriel ', 'Barrionuevo', 0, '435', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(61, 'santoedgardorubÉn', 'santoedgardorubÉn123', 'Edgardo RubÉn ', 'Santo', 0, '437', '0000-00-00', '', '', '', '', 'SISTEMAS PLANTA INDUSTRIAL', 0, 0, 0),
(62, 'vitamario', 'vitamario123', 'Mario ', 'Vita', 0, '441', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(63, 'martinezrodolforaul', 'martinezrodolforaul123', 'Rodolfo Raul ', 'Martinez', 0, '443', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(64, 'ferrerguillermoedgardo', 'ferrerguillermoedgardo123', 'Guillermo Edgardo ', 'Ferrer', 0, '446', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(65, 'nasimberajuancarlos', 'nasimberajuancarlos123', 'Juan Carlos ', 'Nasimbera', 0, '450', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(66, 'dusserreadolfopablo', 'dusserreadolfopablo123', 'Adolfo Pablo ', 'Dusserre', 0, '452', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(67, 'cataldosergiooscar', 'cataldosergiooscar123', 'Sergio Oscar ', 'Cataldo', 0, '454', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(68, 'garciamarcelofabiÁn', 'garciamarcelofabiÁn123', 'Marcelo FabiÁn ', 'Garcia', 0, '455', '0000-00-00', '', '', '', '', 'GERENCIA RECURSOS HUMANOS', 0, 0, 0),
(69, 'lopezjorgeluis', 'lopezjorgeluis123', 'Jorge Luis ', 'Lopez', 0, '456', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(70, 'rivarolafabianalberto', 'rivarolafabianalberto123', 'Fabian Alberto ', 'Rivarola', 0, '459', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(71, 'funesjuancarlos', 'funesjuancarlos123', 'Juan Carlos ', 'Funes', 0, '461', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(72, 'ceruttigustavoluis', 'ceruttigustavoluis123', 'Gustavo Luis ', 'Cerutti', 0, '463', '0000-00-00', '', '', '', '', 'INGENIERIA Y OBRAS', 0, 0, 0),
(73, 'riccarodolfoalberto', 'riccarodolfoalberto123', 'Rodolfo Alberto ', 'Ricca', 0, '466', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(74, 'ledesmahectoreduardo', 'ledesmahectoreduardo123', 'Hector Eduardo ', 'Ledesma', 0, '467', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(75, 'lafuentejuanramon', 'lafuentejuanramon123', 'Juan Ramon ', 'Lafuente', 0, '469', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(76, 'moronisergioantonio', 'moronisergioantonio123', 'Sergio Antonio ', 'Moroni', 0, '470', '0000-00-00', '', '', '', '', 'PLANIFICACIÓN', 0, 0, 0),
(77, 'sosaluisalberto', 'sosaluisalberto123', 'Luis Alberto ', 'Sosa', 0, '474', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(78, 'maffinihectorheber', 'maffinihectorheber123', 'Hector Heber ', 'Maffini', 0, '483', '0000-00-00', '', '', '', '', 'INGENIERIA Y OBRAS', 0, 0, 0),
(79, 'sobranoclaudioalejandro', 'sobranoclaudioalejandro123', 'Claudio Alejandro ', 'Sobrano', 0, '485', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(80, 'saltojuancarlos', 'saltojuancarlos123', 'Juan Carlos ', 'Salto', 0, '498', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(81, 'dellaliberahugolinor', 'dellaliberahugolinor123', 'Hugo Lino R ', 'Dellalibera', 0, '512', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(82, 'alignanifabianhermes', 'alignanifabianhermes123', 'Fabian Hermes ', 'Alignani', 0, '515', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(83, 'quirogaedgardalberto', 'quirogaedgardalberto123', 'Edgard Alberto ', 'Quiroga', 0, '520', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(84, 'torrescatalinofaustino', 'torrescatalinofaustino123', 'Catalino Faustino ', 'Torres', 0, '522', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(85, 'barberisgerardoadalberto', 'barberisgerardoadalberto123', 'Gerardo Adalberto ', 'Barberis', 0, '524', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(86, 'barberoomarelio', 'barberoomarelio123', 'Omar Elio ', 'Barbero', 0, '525', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(87, 'michigoywalteromar', 'michigoywalteromar123', 'Walter Omar ', 'Michigoy', 0, '527', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(88, 'bergesiojuancarlos', 'bergesiojuancarlos123', 'Juan Carlos ', 'Bergesio', 0, '533', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(89, 'vargasramoncarlos', 'vargasramoncarlos123', 'Ramon Carlos ', 'Vargas', 0, '538', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(90, 'velezjoseluis', 'velezjoseluis123', 'Jose Luis ', 'Velez', 0, '542', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(91, 'bergaminfernandoraul', 'bergaminfernandoraul123', 'Fernando Raul ', 'Bergamin', 0, '549', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(92, 'castaÑoagustingerman', 'castaÑoagustingerman123', 'Agustin German ', 'CastaÑo', 0, '550', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(93, 'aseniejorgeluis', 'aseniejorgeluis123', 'Jorge Luis ', 'Asenie', 0, '552', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(94, 'fornespablo', 'fornespablo123', 'Pablo ', 'Fornes', 0, '554', '0000-00-00', '', '', '', '', 'GESTIÓN MANTENIMIENTO', 0, 0, 0),
(95, 'carezzanojorgeomar', 'carezzanojorgeomar123', 'Jorge Omar ', 'Carezzano', 0, '555', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(96, 'baezdanielalberto', 'baezdanielalberto123', 'Daniel Alberto ', 'Baez', 0, '557', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(97, 'peirassocarlosalberto', 'peirassocarlosalberto123', 'Carlos Alberto ', 'Peirasso', 0, '567', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(98, 'menacesareugenio', 'menacesareugenio123', 'Cesar Eugenio ', 'Mena', 0, '569', '0000-00-00', '', '', '', '', 'LOGÍSTICA', 0, 0, 0),
(99, 'funesmarcelooscar', 'funesmarcelooscar123', 'Marcelo Oscar ', 'Funes', 0, '571', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(100, 'mansillaluisalverto', 'mansillaluisalverto123', 'Luis Alverto ', 'Mansilla', 0, '578', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(101, 'gonellapabloantonio', 'gonellapabloantonio123', 'Pablo Antonio ', 'Gonella', 0, '580', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(102, 'boffadossigustavoariel', 'boffadossigustavoariel123', 'Gustavo Ariel ', 'Boffadossi', 0, '585', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(103, 'diazjuanantonio', 'diazjuanantonio123', 'Juan Antonio ', 'Diaz', 0, '587', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(104, 'ferreyrajorgeosvaldo', 'ferreyrajorgeosvaldo123', 'Jorge Osvaldo ', 'Ferreyra', 0, '589', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(105, 'carranzaguillermodavid', 'carranzaguillermodavid123', 'Guillermo David ', 'Carranza', 0, '591', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(106, 'ciuccinolbertomiguel', 'ciuccinolbertomiguel123', 'Nolberto Miguel ', 'Ciucci', 0, '592', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(107, 'rinconezrodolfogabriel', 'rinconezrodolfogabriel123', 'Rodolfo Gabriel ', 'Rinconez', 0, '594', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(108, 'ficinienriqueadrian', 'ficinienriqueadrian123', 'Enrique Adrian ', 'Ficini', 0, '595', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(109, 'smolarzeduardojulian', 'smolarzeduardojulian123', 'Eduardo Julian ', 'Smolarz', 0, '608', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(110, 'casimironicasiojusto', 'casimironicasiojusto123', 'Nicasio Justo ', 'Casimiro', 0, '611', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(111, 'santiagojuanalfredo', 'santiagojuanalfredo123', 'Juan Alfredo ', 'Santiago', 0, '613', '0000-00-00', '', '', '', '', 'GERENCIA TÉCNICA', 0, 0, 0),
(112, 'leivajosealberto', 'leivajosealberto123', 'Jose Alberto ', 'Leiva', 0, '615', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(113, 'cracconestorhugo', 'cracconestorhugo123', 'Nestor Hugo ', 'Cracco', 0, '622', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(114, 'torresclaudiogabriel', 'torresclaudiogabriel123', 'Claudio Gabriel ', 'Torres', 0, '634', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(115, 'monzonfabianroberto', 'monzonfabianroberto123', 'Fabian Roberto ', 'Monzon', 0, '645', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(116, 'sobrerosergioalejandro', 'sobrerosergioalejandro123', 'Sergio Alejandro ', 'Sobrero', 0, '653', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(117, 'panicuccijuancarlos', 'panicuccijuancarlos123', 'Juan Carlos ', 'Panicucci', 0, '655', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(118, 'herediaedgardoarmando', 'herediaedgardoarmando123', 'Edgardo Armando ', 'Heredia', 0, '656', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(119, 'villaloncarlosjose', 'villaloncarlosjose123', 'Carlos Jose ', 'Villalon', 0, '659', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(120, 'gonzalezjosealberto', 'gonzalezjosealberto123', 'Jose Alberto ', 'Gonzalez', 0, '660', '0000-00-00', '', '', '', '', 'INGENIERIA Y OBRAS', 0, 0, 0),
(121, 'fonsfriamauricio', 'fonsfriamauricio123', 'Mauricio ', 'Fonsfria', 0, '667', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(122, 'nosottijoseenrique', 'nosottijoseenrique123', 'Jose Enrique ', 'Nosotti', 0, '670', '0000-00-00', '', '', '', '', 'MANTENIMIENTO', 0, 0, 0),
(123, 'machadojuanhector', 'machadojuanhector123', 'Juan Hector ', 'Machado', 0, '673', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(124, 'cornejorodolfo', 'cornejorodolfo123', 'Rodolfo ', 'Cornejo', 0, '679', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(125, 'cabralpedrodavid', 'cabralpedrodavid123', 'Pedro David ', 'Cabral', 0, '687', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(126, 'chiaramelorudy', 'chiaramelorudy123', 'Rudy ', 'Chiaramelo', 0, '688', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(127, 'cuellosergiodaniel', 'cuellosergiodaniel123', 'Sergio Daniel ', 'Cuello', 0, '699', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(128, 'funessergiorolando', 'funessergiorolando123', 'Sergio Rolando ', 'Funes', 0, '700', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(129, 'garciajorgedavid', 'garciajorgedavid123', 'Jorge David ', 'Garcia', 0, '701', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(130, 'gonzalezluisarnaldodelc.', 'gonzalezluisarnaldodelc.123', 'Luis Arnaldo Del C. ', 'Gonzalez', 0, '702', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(131, 'tobanellisergiodelvalle', 'tobanellisergiodelvalle123', 'Sergio Del Valle ', 'Tobanelli', 0, '705', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(132, 'meravigliaarielalberto', 'meravigliaarielalberto123', 'Ariel Alberto ', 'Meraviglia', 0, '709', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(133, 'gottardiraulantonio', 'gottardiraulantonio123', 'Raul Antonio ', 'Gottardi', 0, '711', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(134, 'ciccarellijuanjose', 'ciccarellijuanjose123', 'Juan Jose ', 'Ciccarelli', 0, '716', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(135, 'herediasegundoanibal', 'herediasegundoanibal123', 'Segundo Anibal ', 'Heredia', 0, '721', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(136, 'bimacarlosalberto', 'bimacarlosalberto123', 'Carlos Alberto ', 'Bima', 0, '722', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(137, 'vigourouxeduardoalberto', 'vigourouxeduardoalberto123', 'Eduardo Alberto ', 'Vigouroux', 0, '724', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(138, 'peironeivanomar', 'peironeivanomar123', 'Ivan Omar ', 'Peirone', 0, '727', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(139, 'acostamariodavid', 'acostamariodavid123', 'Mario David ', 'Acosta', 0, '729', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(140, 'quirogasergiofabian', 'quirogasergiofabian123', 'Sergio Fabian ', 'Quiroga', 0, '730', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(141, 'caÑadasjorgemercedes', 'caÑadasjorgemercedes123', 'Jorge Mercedes ', 'CaÑadas', 0, '734', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(142, 'pavondiegoroberto', 'pavondiegoroberto123', 'Diego Roberto ', 'Pavon', 0, '735', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(143, 'cuainogabrieldanilo', 'cuainogabrieldanilo123', 'Gabriel Danilo ', 'Cuaino', 0, '752', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(144, 'ruizgabrieleduardo', 'ruizgabrieleduardo123', 'Gabriel Eduardo ', 'Ruiz', 0, '756', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(145, 'malufjorgealberto', 'malufjorgealberto123', 'Jorge Alberto ', 'Maluf', 0, '757', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(146, 'toscomarcelogabriel', 'toscomarcelogabriel123', 'Marcelo Gabriel ', 'Tosco', 0, '761', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(147, 'raimundagustavoalberto', 'raimundagustavoalberto123', 'Gustavo Alberto ', 'Raimunda', 0, '772', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(148, 'maldonadoedgardowalter', 'maldonadoedgardowalter123', 'Edgardo Walter ', 'Maldonado', 0, '776', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(149, 'michelenarodolfo', 'michelenarodolfo123', 'Rodolfo ', 'Michelena', 0, '778', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(150, 'tavellamarcelofrancisco', 'tavellamarcelofrancisco123', 'Marcelo Francisco ', 'Tavella', 0, '780', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(151, 'oviedohectorhugo', 'oviedohectorhugo123', 'Hector Hugo ', 'Oviedo', 0, '795', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(152, 'castropascualnolasco', 'castropascualnolasco123', 'Pascual Nolasco ', 'Castro', 0, '796', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(153, 'delladonnamarioalberto', 'delladonnamarioalberto123', 'Donna Mario Alberto ', 'Della', 0, '797', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(154, 'noguerolsebastian', 'noguerolsebastian123', 'Sebastian ', 'Noguerol', 0, '799', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(155, 'gomezhoraciodaniel', 'gomezhoraciodaniel123', 'Horacio Daniel ', 'Gomez', 0, '800', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(156, 'oyarzabalvictor', 'oyarzabalvictor123', 'Victor ', 'Oyarzabal', 0, '808', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(157, 'ceruttiguillermocesar', 'ceruttiguillermocesar123', 'Guillermo Cesar ', 'Cerutti', 0, '810', '0000-00-00', '', '', '', '', 'PLANIFICACIÓN', 0, 0, 0),
(158, 'borettoalexander', 'borettoalexander123', 'Alexander ', 'Boretto', 0, '815', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(159, 'butassiclaudioarmando', 'butassiclaudioarmando123', 'Claudio Armando ', 'Butassi', 0, '817', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(160, 'gonzalezcesarjavier', 'gonzalezcesarjavier123', 'Cesar Javier ', 'Gonzalez', 0, '827', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(161, 'oviedodiegoezequiel', 'oviedodiegoezequiel123', 'Diego Ezequiel ', 'Oviedo', 0, '828', '0000-00-00', '', '', '', '', 'COMPRAS LOCALES', 0, 0, 0),
(162, 'peraltadanielaugusto', 'peraltadanielaugusto123', 'Daniel Augusto ', 'Peralta', 0, '829', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(163, 'salgadodanieleduardo', 'salgadodanieleduardo123', 'Daniel Eduardo ', 'Salgado', 0, '833', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(164, 'villalonvictorhugo', 'villalonvictorhugo123', 'Victor Hugo ', 'Villalon', 0, '838', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(165, 'zamboranserranojoseluis', 'zamboranserranojoseluis123', 'Serrano Jose Luis ', 'Zamboran', 0, '845', '0000-00-00', '', '', '', '', 'COMPRAS LOCALES', 0, 0, 0),
(166, 'coriafabriciogerman', 'coriafabriciogerman123', 'Fabricio German ', 'Coria', 0, '854', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(167, 'delcrefernandoezequiel', 'delcrefernandoezequiel123', 'Fernando Ezequiel ', 'Delcre', 0, '859', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(168, 'gallardoenzoenrique', 'gallardoenzoenrique123', 'Enzo Enrique ', 'Gallardo', 0, '864', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(169, 'toiagerardodante', 'toiagerardodante123', 'Gerardo Dante ', 'Toia', 0, '874', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(170, 'montenegromarianomartin', 'montenegromarianomartin123', 'Mariano Martin ', 'Montenegro', 0, '875', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(171, 'gilgomezguillermom.', 'gilgomezguillermom.123', 'Gomez Guillermo M. ', 'Gil', 0, '876', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(172, 'deharojesusdario', 'deharojesusdario123', 'Haro Jesus Dario ', 'De', 0, '878', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(173, 'garrazasergioalfredo', 'garrazasergioalfredo123', 'Sergio Alfredo ', 'Garraza', 0, '880', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(174, 'lujanjulioalberto', 'lujanjulioalberto123', 'Julio Alberto ', 'Lujan', 0, '882', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(175, 'osterahebermauricio', 'osterahebermauricio123', 'Heber Mauricio ', 'Ostera', 0, '888', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(176, 'aracenacarlosalberto', 'aracenacarlosalberto123', 'Carlos Alberto ', 'Aracena', 0, '890', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(177, 'santalizjulianesteban', 'santalizjulianesteban123', 'Julian Esteban ', 'Santaliz', 0, '892', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(178, 'balmacedadanielramon', 'balmacedadanielramon123', 'Daniel Ramon ', 'Balmaceda', 0, '893', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(179, 'gerbaldomarcelabeatriz', 'gerbaldomarcelabeatriz123', 'Marcela Beatriz ', 'Gerbaldo', 0, '894', '0000-00-00', '', '', '', '', 'PROCESOS', 0, 0, 0),
(180, 'floresezequielhugo', 'floresezequielhugo123', 'Ezequiel Hugo ', 'Flores', 0, '895', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(181, 'pistellicristianjavier', 'pistellicristianjavier123', 'Cristian Javier ', 'Pistelli', 0, '898', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(182, 'ferrucciguillermoleonel', 'ferrucciguillermoleonel123', 'Guillermo Leonel ', 'Ferrucci', 0, '909', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(183, 'prattoemilianoezequiel', 'prattoemilianoezequiel123', 'Emiliano Ezequiel ', 'Pratto', 0, '910', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(184, 'magalhaesnicolasnorberto', 'magalhaesnicolasnorberto123', 'Nicolas Norberto ', 'Magalhaes', 0, '912', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(185, 'celisfabianoscar', 'celisfabianoscar123', 'Fabian Oscar ', 'Celis', 0, '914', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(186, 'gerezrodrigohugo', 'gerezrodrigohugo123', 'Rodrigo Hugo ', 'Gerez', 0, '915', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(187, 'cocapauloemanuel', 'cocapauloemanuel123', 'Paulo Emanuel ', 'Coca', 0, '916', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(188, 'stambulejuanagustinfabian', 'stambulejuanagustinfabian123', 'Juan Agustin Fabian ', 'Stambule', 0, '920', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(189, 'quirogajaviernicolas', 'quirogajaviernicolas123', 'Javier Nicolas ', 'Quiroga', 0, '921', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(190, 'delavedovajavierandres', 'delavedovajavierandres123', 'Javier Andres ', 'Delavedova', 0, '922', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(191, 'cavalierimarcosdavid', 'cavalierimarcosdavid123', 'Marcos David ', 'Cavalieri', 0, '924', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(192, 'pinolucasmaximiliano', 'pinolucasmaximiliano123', 'Lucas Maximiliano ', 'Pino', 0, '925', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(193, 'gabettamartinalejandro', 'gabettamartinalejandro123', 'Martin Alejandro ', 'Gabetta', 0, '926', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(194, 'illanespomaresjuanjose', 'illanespomaresjuanjose123', 'Pomares Juan Jose ', 'Illanes', 0, '928', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(195, 'voogtemilianoernesto', 'voogtemilianoernesto123', 'Emiliano Ernesto ', 'Voogt', 0, '933', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(196, 'martinilucasivan', 'martinilucasivan123', 'Lucas Ivan ', 'Martini', 0, '934', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(197, 'perezsebastian', 'perezsebastian123', 'Sebastian ', 'Perez', 0, '935', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(198, 'pauluccimarcosluis', 'pauluccimarcosluis123', 'Marcos Luis ', 'Paulucci', 0, '936', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(199, 'bottassogermanluis', 'bottassogermanluis123', 'German Luis ', 'Bottasso', 0, '938', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN DE PERSONAL', 0, 0, 0),
(200, 'verdÚsergiosebastiÁn', 'verdÚsergiosebastiÁn123', 'Sergio SebastiÁn ', 'VerdÚ', 0, '941', '0000-00-00', '', '', '', '', 'PLANTA HIDROCARBUROS', 0, 0, 0),
(201, 'cabralrobertopedro', 'cabralrobertopedro123', 'Roberto Pedro ', 'Cabral', 0, '942', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(202, 'fregapanilucas', 'fregapanilucas123', 'Lucas ', 'Fregapani', 0, '943', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(203, 'realesraulalberto', 'realesraulalberto123', 'Raul Alberto ', 'Reales', 0, '944', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(204, 'flotronsebastian', 'flotronsebastian123', 'Sebastian ', 'Flotron', 0, '945', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(205, 'pellegrinojaviereduardo', 'pellegrinojaviereduardo123', 'Javier Eduardo ', 'Pellegrino', 0, '946', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(206, 'almadamauricioariel', 'almadamauricioariel123', 'Mauricio Ariel ', 'Almada', 0, '948', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(207, 'morenosergiosebastian', 'morenosergiosebastian123', 'Sergio Sebastian ', 'Moreno', 0, '949', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(208, 'gimenezfederico', 'gimenezfederico123', 'Federico ', 'Gimenez', 0, '950', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(209, 'quirogamarcosezequiel', 'quirogamarcosezequiel123', 'Marcos Ezequiel ', 'Quiroga', 0, '951', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(210, 'rodonheredianicolasr.', 'rodonheredianicolasr.123', 'Heredia Nicolas R. ', 'Rodon', 0, '955', '0000-00-00', '', '', '', '', 'GERENCIA LOGÍSTICA', 0, 0, 0),
(211, 'tellorodriguezcristianariel', 'tellorodriguezcristianariel123', 'Rodriguez Cristian Ariel ', 'Tello', 0, '958', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(212, 'avilacristianezequiel', 'avilacristianezequiel123', 'Cristian Ezequiel ', 'Avila', 0, '961', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(213, 'echarrylucasalberto', 'echarrylucasalberto123', 'Lucas Alberto ', 'Echarry', 0, '963', '0000-00-00', '', '', '', '', 'INGENIERIA Y OBRAS', 0, 0, 0),
(214, 'peironelucasclaudio', 'peironelucasclaudio123', 'Lucas Claudio ', 'Peirone', 0, '965', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(215, 'dannaedgardonazareno', 'dannaedgardonazareno123', 'Edgardo Nazareno ', 'Danna', 0, '966', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(216, 'grassimarcelohernan', 'grassimarcelohernan123', 'Marcelo Hernan ', 'Grassi', 0, '967', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(217, 'romanomoyanomauroivan', 'romanomoyanomauroivan123', 'Moyano Mauro Ivan ', 'Romano', 0, '968', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(218, 'eiringvacaalexander', 'eiringvacaalexander123', 'Vaca Alexander ', 'Eiring', 0, '969', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(219, 'ravettileonardo', 'ravettileonardo123', 'Leonardo ', 'Ravetti', 0, '970', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(220, 'alvornozarielalejandro', 'alvornozarielalejandro123', 'Ariel Alejandro ', 'Alvornoz', 0, '971', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(221, 'casalicarlosaugusto', 'casalicarlosaugusto123', 'Carlos Augusto ', 'Casali', 0, '972', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(222, 'sobrerojuancarlos', 'sobrerojuancarlos123', 'Juan Carlos ', 'Sobrero', 0, '975', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(223, 'avilacesarezequiel', 'avilacesarezequiel123', 'Cesar Ezequiel ', 'Avila', 0, '976', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(224, 'gimenezhector', 'gimenezhector123', 'Hector ', 'Gimenez', 0, '977', '0000-00-00', '', '', '', '', 'GESTIÓN MANTENIMIENTO', 0, 0, 0),
(225, 'medinanelsoomar', 'medinanelsoomar123', 'Nelso Omar ', 'Medina', 0, '978', '0000-00-00', '', '', '', '', 'GESTIÓN MANTENIMIENTO', 0, 0, 0),
(226, 'ferrarogermanalberto', 'ferrarogermanalberto123', 'German Alberto ', 'Ferraro', 0, '979', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(227, 'michigoymartin', 'michigoymartin123', 'Martin ', 'Michigoy', 0, '981', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(228, 'ledesmafrancoemanuel', 'ledesmafrancoemanuel123', 'Franco Emanuel ', 'Ledesma', 0, '982', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(229, 'goÑidiegojavier', 'goÑidiegojavier123', 'Diego Javier ', 'GoÑi', 0, '984', '0000-00-00', '', '', '', '', 'COMPRAS LOCALES', 0, 0, 0),
(230, 'ferreyrawalterrene', 'ferreyrawalterrene123', 'Walter Rene ', 'Ferreyra', 0, '985', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(231, 'baigorriadanielalberto', 'baigorriadanielalberto123', 'Daniel Alberto ', 'Baigorria', 0, '986', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(232, 'comellohectordamian', 'comellohectordamian123', 'Hector Damian ', 'Comello', 0, '988', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(233, 'boffadossijorgefabian', 'boffadossijorgefabian123', 'Jorge Fabian ', 'Boffadossi', 0, '990', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(234, 'aguirredariosebastian', 'aguirredariosebastian123', 'Dario Sebastian ', 'Aguirre', 0, '992', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(235, 'zanettidariohector', 'zanettidariohector123', 'Dario Hector ', 'Zanetti', 0, '999', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN DE PERSONAL', 0, 0, 0),
(236, 'dellameajavier', 'dellameajavier123', 'Mea Javier ', 'Della', 0, '1000', '0000-00-00', '', '', '', '', 'PROCESOS', 0, 0, 0),
(237, 'ledesmaluis', 'ledesmaluis123', 'Luis ', 'Ledesma', 0, '1005', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(238, 'ferreyramarcelojavier', 'ferreyramarcelojavier123', 'Marcelo Javier ', 'Ferreyra', 0, '1007', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(239, 'danterrejulieta', 'danterrejulieta123', 'Julieta ', 'Danterre', 0, '1009', '0000-00-00', '', '', '', '', 'OFICINA TÉCNICA / MANTENIMIENTO', 0, 0, 0),
(240, 'ipericomaurodante', 'ipericomaurodante123', 'Mauro Dante ', 'Iperico', 0, '1011', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(241, 'luraschimarcosleonel', 'luraschimarcosleonel123', 'Marcos Leonel ', 'Luraschi', 0, '1012', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(242, 'tantuccimarcosgabriel', 'tantuccimarcosgabriel123', 'Marcos Gabriel ', 'Tantucci', 0, '1013', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(243, 'rosalesmatiasemanuel', 'rosalesmatiasemanuel123', 'Matias Emanuel ', 'Rosales', 0, '1014', '0000-00-00', '', '', '', '', 'COMPRAS LOCALES', 0, 0, 0),
(244, 'pasquettijorgeagustin', 'pasquettijorgeagustin123', 'Jorge Agustin ', 'Pasquetti', 0, '1016', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(245, 'rochadiegofernando', 'rochadiegofernando123', 'Diego Fernando ', 'Rocha', 0, '1018', '0000-00-00', '', '', '', '', 'OFICINA TÉCNICA / MANTENIMIENTO', 0, 0, 0),
(246, 'armandogonzalo', 'armandogonzalo123', 'Gonzalo ', 'Armando', 0, '1022', '0000-00-00', '', '', '', '', 'PROCESOS', 0, 0, 0),
(247, 'torresfernando', 'torresfernando123', 'Fernando ', 'Torres', 0, '1024', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(248, 'ramirezgustavo', 'ramirezgustavo123', 'Gustavo ', 'Ramirez', 0, '1025', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(249, 'maldonadoruben', 'maldonadoruben123', 'Ruben ', 'Maldonado', 0, '1026', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(250, 'ballspablo', 'ballspablo123', 'Pablo ', 'Balls', 0, '1028', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(251, 'santagerman', 'santagerman123', 'German ', 'Santa', 0, '1030', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(252, 'cornejodarioariel', 'cornejodarioariel123', 'Dario Ariel ', 'Cornejo', 0, '1031', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(253, 'pittaromarcos', 'pittaromarcos123', 'Marcos ', 'Pittaro', 0, '1032', '0000-00-00', '', '', '', '', 'BALANZA', 0, 0, 0),
(254, 'margheriarobertonicolas', 'margheriarobertonicolas123', 'Roberto Nicolas ', 'Margheria', 0, '1038', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(255, 'palaciojonathan', 'palaciojonathan123', 'Jonathan ', 'Palacio', 0, '1039', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(256, 'fonsfrialucasdario', 'fonsfrialucasdario123', 'Lucas Dario ', 'Fonsfria', 0, '1040', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(257, 'guerinigustavolucas', 'guerinigustavolucas123', 'Gustavo Lucas ', 'Guerini', 0, '1044', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(258, 'phileassergioluis', 'phileassergioluis123', 'Sergio Luis ', 'Phileas', 0, '1047', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(259, 'gomezgomezcarlosalberto', 'gomezgomezcarlosalberto123', 'Gomez Carlos Alberto ', 'Gomez', 0, '1048', '0000-00-00', '', '', '', '', 'SERVICIO MÉDICO', 0, 0, 0),
(260, 'casasjuanmarcelo', 'casasjuanmarcelo123', 'Juan Marcelo ', 'Casas', 0, '1050', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(261, 'tabernerocarlos', 'tabernerocarlos123', 'Carlos ', 'Tabernero', 0, '1052', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(262, 'gonzalezjuanc.', 'gonzalezjuanc.123', 'Juan C. ', 'Gonzalez', 0, '1057', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(263, 'cepollaroclaudiojuan', 'cepollaroclaudiojuan123', 'Claudio Juan ', 'Cepollaro', 0, '1060', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(264, 'guillencarla', 'guillencarla123', 'Carla ', 'Guillen', 0, '1061', '0000-00-00', '', '', '', '', 'SECRETARÍA DE PLANTA', 0, 0, 0),
(265, 'grinovero', 'grinovero123', ' ', 'Grinovero', 0, '1062', '0000-00-00', '', '', '', '', '', 0, 0, 0),
(266, 'annibaligermannicolas', 'annibaligermannicolas123', 'German Nicolas ', 'Annibali', 0, '1063', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(267, 'gonzalezjorge', 'gonzalezjorge123', 'Jorge ', 'Gonzalez', 0, '1064', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(268, 'menziomarcelo', 'menziomarcelo123', 'Marcelo ', 'Menzio', 0, '1065', '0000-00-00', '', '', '', '', 'BALANZA', 0, 0, 0),
(269, 'raimondodavid', 'raimondodavid123', 'David ', 'Raimondo', 0, '1066', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(270, 'delogualejandro', 'delogualejandro123', 'Alejandro ', 'Delogu', 0, '1067', '0000-00-00', '', '', '', '', 'GESTIÓN MANTENIMIENTO', 0, 0, 0),
(271, 'medinabruno', 'medinabruno123', ' Bruno ', 'Medina', 0, '1068', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(272, 'caÑadasfacundo', 'caÑadasfacundo123', 'Facundo ', 'CaÑadas', 0, '1069', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(273, 'ruizjuliocesar', 'ruizjuliocesar123', 'Julio Cesar ', 'Ruiz', 0, '1071', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(274, 'erezamarcelo', 'erezamarcelo123', 'Marcelo ', 'Ereza', 0, '1072', '0000-00-00', '', '', '', '', 'PLANIFICACIÓN', 0, 0, 0),
(275, 'jofrejavier', 'jofrejavier123', 'Javier ', 'Jofre', 0, '1074', '0000-00-00', '', '', '', '', 'PROCESOS', 0, 0, 0),
(276, 'ravettiezequiel', 'ravettiezequiel123', 'Ezequiel ', 'Ravetti', 0, '1076', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(277, 'fiorentinoribaudopatricio', 'fiorentinoribaudopatricio123', 'Ribaudo Patricio  ', 'Fiorentino', 0, '1077', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN INDUSTRIAL', 0, 0, 0),
(278, 'carranzadaniel', 'carranzadaniel123', 'Daniel ', 'Carranza', 0, '1079', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(279, 'benitezluciano', 'benitezluciano123', 'Luciano ', 'Benitez', 0, '1080', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(280, 'zamoramauro', 'zamoramauro123', 'Mauro ', 'Zamora', 0, '1082', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(281, 'grossomatias', 'grossomatias123', 'Matias ', 'Grosso', 0, '1083', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(282, 'nardiguido', 'nardiguido123', 'Guido ', 'Nardi', 0, '1084', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(283, 'orellanolucianoenrique', 'orellanolucianoenrique123', 'Luciano Enrique ', 'Orellano', 0, '1085', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(284, 'cosergabriel', 'cosergabriel123', 'Gabriel ', 'Coser', 0, '1086', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(285, 'pavanfernadodaniel', 'pavanfernadodaniel123', 'Fernado Daniel ', 'Pavan', 0, '1089', '0000-00-00', '', '', '', '', 'MATERIALES Y SERVICIOS', 0, 0, 0),
(286, 'lelliezequielandresjesus', 'lelliezequielandresjesus123', 'Ezequiel Andres Jesus ', 'Lelli', 0, '1090', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(287, 'martinezleonardogaston', 'martinezleonardogaston123', 'Leonardo Gaston ', 'Martinez', 0, '1091', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(288, 'piacentinimarianogaston', 'piacentinimarianogaston123', 'Mariano Gaston ', 'Piacentini', 0, '1092', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(289, 'morenomanuel', 'morenomanuel123', 'Manuel ', 'Moreno', 0, '1093', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(290, 'yaconogustavo', 'yaconogustavo123', 'Gustavo ', 'Yacono', 0, '1094', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(291, 'capandeguimauro', 'capandeguimauro123', 'Mauro ', 'Capandegui', 0, '1095', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(292, 'stoccoerwinezequiel', 'stoccoerwinezequiel123', 'Erwin Ezequiel ', 'Stocco', 0, '1096', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(293, 'saezernestoruben', 'saezernestoruben123', 'Ernesto Ruben ', 'Saez', 0, '1098', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(294, 'centomoarielemanuel', 'centomoarielemanuel123', 'Ariel Emanuel ', 'Centomo', 0, '1099', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(295, 'luceronicolasalejandro', 'luceronicolasalejandro123', 'Nicolas Alejandro ', 'Lucero', 0, '1100', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(296, 'lunattigerman', 'lunattigerman123', 'German ', 'Lunatti', 0, '1101', '0000-00-00', '', '', '', '', 'TALLER ROTATIVOS', 0, 0, 0),
(297, 'coriamarcosdavid', 'coriamarcosdavid123', 'Marcos David ', 'Coria', 0, '1102', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(298, 'linaresmarisaelena', 'linaresmarisaelena123', 'Marisa Elena ', 'Linares', 0, '1103', '0000-00-00', '', '', '', '', 'COMPRAS LOCALES', 0, 0, 0),
(299, 'costabelladavidalejandro', 'costabelladavidalejandro123', 'David Alejandro ', 'Costabella', 0, '1104', '0000-00-00', '', '', '', '', 'PROCESOS', 0, 0, 0),
(300, 'gudiÑomarcosdavid', 'gudiÑomarcosdavid123', 'Marcos David ', 'GudiÑo', 0, '1105', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(301, 'camertonidiegoruben', 'camertonidiegoruben123', 'Diego Ruben ', 'Camertoni', 0, '1106', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(302, 'schvartzmanguillermo', 'schvartzmanguillermo123', 'Guillermo ', 'Schvartzman', 0, '1108', '0000-00-00', '', '', '', '', 'SERVICIO MÉDICO', 0, 0, 0),
(303, 'palaverclaudiogabriel', 'palaverclaudiogabriel123', 'Claudio Gabriel ', 'Palaver', 0, '1109', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(304, 'pereyramaurogerman', 'pereyramaurogerman123', 'Mauro German ', 'Pereyra', 0, '1110', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(305, 'blenginodiegodaniel', 'blenginodiegodaniel123', 'Diego Daniel ', 'Blengino', 0, '1111', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(306, 'bustosdiegomauricio', 'bustosdiegomauricio123', 'Diego Mauricio ', 'Bustos', 0, '1112', '0000-00-00', '', '', '', '', 'P.A.C.', 0, 0, 0),
(307, 'villarrealjorgeraul', 'villarrealjorgeraul123', 'Jorge Raul ', 'Villarreal', 0, '1113', '0000-00-00', '', '', '', '', 'SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(308, 'saracchiniricardosilvio', 'saracchiniricardosilvio123', 'Ricardo Silvio ', 'Saracchini', 0, '1114', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(309, 'stagnarihernan', 'stagnarihernan123', 'Hernan ', 'Stagnari', 0, '1115', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(310, 'prattogabrielalberto', 'prattogabrielalberto123', 'Gabriel Alberto ', 'Pratto', 0, '1118', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(311, 'velezlucasnarciso', 'velezlucasnarciso123', 'Lucas Narciso ', 'Velez', 0, '1119', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(312, 'biasizzosanchezfernando', 'biasizzosanchezfernando123', 'Sanchez Fernando ', 'Biasizzo', 0, '1121', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0),
(313, 'ruffinilucasemilio', 'ruffinilucasemilio123', 'Lucas Emilio ', 'Ruffini', 0, '1124', '0000-00-00', '', '', '', '', 'ADMINISTRACIÓN INDUSTRIAL', 0, 0, 0),
(314, 'giarolamarcosandres', 'giarolamarcosandres123', 'Marcos Andres ', 'Giarola', 0, '1125', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(315, 'herediapaserojuanjose', 'herediapaserojuanjose123', 'Pasero Juan Jose ', 'Heredia', 0, '1128', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(316, 'bergnaemanuel', 'bergnaemanuel123', ' Emanuel ', 'Bergna', 0, '1129', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(317, 'fernandezemilioangel', 'fernandezemilioangel123', 'Emilio Angel ', 'Fernandez', 0, '1130', '0000-00-00', '', '', '', '', 'PLANIFICACIÓN', 0, 0, 0),
(318, 'magliernaldojeremias', 'magliernaldojeremias123', 'Naldo Jeremias ', 'Maglier', 0, '1131', '0000-00-00', '', '', '', '', 'SISTEMAS ELÉCTRICOS E INSTRUMENTOS', 0, 0, 0),
(319, 'yanesguillermo', 'yanesguillermo123', 'Guillermo ', 'Yanes', 0, '1132', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(320, 'gÓmezdiegomartÍn', 'gÓmezdiegomartÍn123', 'Diego MartÍn ', 'GÓmez', 0, '1134', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(321, 'fernÁndezfedericogastÓn', 'fernÁndezfedericogastÓn123', 'Federico GastÓn ', 'FernÁndez', 0, '1135', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(322, 'wagnermarceloricardo', 'wagnermarceloricardo123', 'Marcelo Ricardo ', 'Wagner', 0, '1136', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(323, 'payolabruno', 'payolabruno123', 'Bruno ', 'Payola', 0, '1137', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(324, 'scassoaxelgabriel', 'scassoaxelgabriel123', 'Axel Gabriel ', 'Scasso', 0, '1138', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(325, 'larchermarceloluis', 'larchermarceloluis123', 'Marcelo Luis ', 'Larcher', 0, '1143', '0000-00-00', '', '', '', '', 'GERENCIA SEGURIDAD Y MEDIO AMBIENTE', 0, 0, 0),
(326, 'mengohernanfernando', 'mengohernanfernando123', 'Hernan Fernando ', 'Mengo', 0, '1144', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(327, 'canutomartinraul', 'canutomartinraul123', 'Martin Raul ', 'Canuto', 0, '1148', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(328, 'pronojulian', 'pronojulian123', 'Julian ', 'Prono', 0, '1149', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(329, 'sanchezarielalejandro', 'sanchezarielalejandro123', 'Ariel Alejandro ', 'Sanchez', 0, '1150', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(330, 'lopezezequieldorian', 'lopezezequieldorian123', 'Ezequiel Dorian ', 'Lopez', 0, '1151', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(331, 'maldonadolucassebastian', 'maldonadolucassebastian123', 'Lucas Sebastian ', 'Maldonado', 0, '1153', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(332, 'mercadomarianonicolas', 'mercadomarianonicolas123', 'Mariano Nicolas ', 'Mercado', 0, '1155', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(333, 'fernandezpabloezequiel', 'fernandezpabloezequiel123', 'Pablo Ezequiel ', 'Fernandez', 0, '1156', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0);
INSERT INTO `usuarios` (`id`, `user`, `pass`, `name`, `lastname`, `DNI`, `legajo`, `fechaNac`, `grupoSang`, `estudiosFinales`, `empresa`, `email`, `puesto`, `examenRealizado`, `moduloA`, `fechaExamen`) VALUES
(334, 'castrocarlosismael', 'castrocarlosismael123', 'Carlos Ismael ', 'Castro', 0, '1157', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(335, 'pereyragustavoandres', 'pereyragustavoandres123', 'Gustavo Andres ', 'Pereyra', 0, '1158', '0000-00-00', '', '', '', '', 'TALLER ESTÁTICOS', 0, 0, 0),
(336, 'hinnikevinalexis', 'hinnikevinalexis123', 'Kevin Alexis', 'Hinni', 0, '1160', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(337, 'lopezalexisjoaquin', 'lopezalexisjoaquin123', 'Alexis Joaquin', 'Lopez', 0, '1161', '0000-00-00', '', '', '', '', 'TDI', 0, 0, 0),
(338, 'giorginijavieroscar', 'giorginijavieroscar123', 'Javier Oscar', 'Giorgini', 0, '1162', '0000-00-00', '', '', '', '', 'SERVICIOS INDUSTRIALES', 0, 0, 0),
(339, 'ramosalexisexequiel', 'ramosalexisexequiel123', 'Alexis Exequiel ', 'Ramos', 0, '1163', '0000-00-00', '', '', '', '', 'LABORATORIO', 0, 0, 0),
(340, 'felicilucasleonardo', 'felicilucasleonardo123', 'Lucas Leonardo ', 'Felici', 0, '1164', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(341, 'silvestrosantiagosebastian', 'silvestrosantiagosebastian123', 'Santiago Sebastian', 'Silvestro', 0, '1165', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(342, 'gomeznestorjonathan', 'gomeznestorjonathan123', 'Nestor Jonathan', 'Gomez', 0, '1166', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(343, 'irazabalvictorhugo', 'irazabalvictorhugo123', 'Victor Hugo', 'Irazabal', 0, '1167', '0000-00-00', '', '', '', '', 'CLORO Y SODA CAUSTICA', 0, 0, 0),
(344, 'brunimartinalejandro', 'brunimartinalejandro123', 'Martin Alejandro ', 'Bruni', 0, '1168', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(345, 'pajongonzalesjuliomarcelo', 'pajongonzalesjuliomarcelo123', 'Gonzales Julio Marcelo ', 'Pajon', 0, '1169', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(346, 'dominguezmaurogabriel', 'dominguezmaurogabriel123', 'Mauro Gabriel ', 'Dominguez', 0, '1170', '0000-00-00', '', '', '', '', 'EXPEDICION', 0, 0, 0),
(347, 'piacentinimaximilianol.', 'piacentinimaximilianol.123', 'Maximiliano L. ', 'Piacentini', 0, '1171', '0000-00-00', '', '', '', '', 'DNT - MTD', 0, 0, 0),
(348, 'ceballoslauroraul', 'ceballoslauroraul123', 'Lauro Raul ', 'Ceballos', 0, '1172', '0000-00-00', '', '', '', '', 'GASES', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
