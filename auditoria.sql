-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2022 a las 07:52:56
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `auditoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `update_rutas`
--

CREATE TABLE `update_rutas` (
  `id_ruta` int(11) DEFAULT NULL,
  `id_vehiculo` varchar(20) DEFAULT NULL,
  `cupos` int(11) DEFAULT NULL,
  `nombre_conductor` varchar(50) DEFAULT NULL,
  `telefono_conductor` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar_partida` varchar(50) DEFAULT NULL,
  `lugar_destino` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `update_rutas`
--

INSERT INTO `update_rutas` (`id_ruta`, `id_vehiculo`, `cupos`, `nombre_conductor`, `telefono_conductor`, `fecha`, `lugar_partida`, `lugar_destino`, `hora`, `fecha_update`) VALUES
(5, 'ATR234', 3, 'Diego Zuluaga', '3002345678', '2022-11-08', 'Prado Centro', 'Universidad Católica Luis Amigó', '07:45:00', '2022-11-04 00:16:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `update_usarios`
--

CREATE TABLE `update_usarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `id_tipovinculo` int(11) DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `update_usarios`
--

INSERT INTO `update_usarios` (`id_usuario`, `nombre`, `apellido1`, `apellido2`, `telefono`, `direccion`, `barrio`, `correo`, `contraseña`, `id_tipovinculo`, `fecha_update`) VALUES
(123456789, 'Maria', 'Bohorquez', 'Mejia', '1234567891', 'Calle 10', 'Campo amor', 'maria.bohorquezme@amigo.edu.co', 'aquiles', 1, '2022-11-04 00:09:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `update_vehiculo`
--

CREATE TABLE `update_vehiculo` (
  `placa_vehiculo` varchar(20) NOT NULL,
  `id_tipovehiculo` varchar(20) NOT NULL,
  `fecha_vencimientosoat` date NOT NULL,
  `fecha_vencimientotecno` date NOT NULL,
  `capacidad_personas` int(11) NOT NULL,
  `fecha_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `update_vehiculo`
--

INSERT INTO `update_vehiculo` (`placa_vehiculo`, `id_tipovehiculo`, `fecha_vencimientosoat`, `fecha_vencimientotecno`, `capacidad_personas`, `fecha_update`) VALUES
('ATR234', '2', '2022-12-16', '2022-12-23', 3, '2022-11-03 23:55:10'),
('AAA129', '2', '2023-02-26', '2023-02-25', 4, '2022-11-04 01:17:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `update_usarios`
--
ALTER TABLE `update_usarios`
  ADD PRIMARY KEY (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
