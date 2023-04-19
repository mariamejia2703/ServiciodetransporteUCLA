-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2022 a las 07:52:44
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
-- Base de datos: `finalbd`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_ruta` (IN `id_ruta1` INT)   delete from registro_rutas where id_ruta = id_ruta1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario` (IN `id_usuario1` INT)   delete from usuario where id_usuario = id_usuario1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_vehiculo` (IN `placa_vehiculo1` VARCHAR(20))   delete from vehiculos where placa_vehiculo = placa_vehiculo1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_ruta` (IN `id_ruta` INT, IN `id_vehiculo` VARCHAR(20), IN `cupos` INT, IN `nombre_conductor` VARCHAR(50), IN `telefono_conductor` VARCHAR(10), IN `fecha` DATE, IN `lugar_partida` VARCHAR(50), IN `lugar_destino` VARCHAR(50), IN `hora` TIME, IN `id_conductor` INT)   insert into registro_rutas values (id_ruta, id_vehiculo, cupos, nombre_conductor,
                                   telefono_conductor, fecha, lugar_partida, lugar_destino,
                                   hora, id_conductor)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_usuario` (IN `id_usuario` INT, IN `nombre` VARCHAR(50), IN `apellido1` VARCHAR(50), IN `apellido2` VARCHAR(50), IN `telefono` VARCHAR(10), IN `direccion` VARCHAR(60), IN `barrio` VARCHAR(50), IN `correo` VARCHAR(50), IN `contraseña` VARCHAR(50), IN `id_tipovinculo` INT, IN `id_rol_app` INT)   insert into usuarios values (id_usuario, nombre, apellido1, apellido2, telefono, direccion, barrio, correo, contraseña, id_tipovinculo, id_rol_app)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_vehiculo` (IN `placa_vehiculo` VARCHAR(20), IN `id_tipovehiculo` INT(11), IN `fecha_vencimientosoat` DATE, IN `fecha_vencimientotecno` DATE, IN `capacidad_personas` INT(11), IN `id_conductor` INT(11))   insert into vehiculos values (placa_vehiculo, id_tipovehiculo, fecha_vencimientosoat, fecha_vencimientotecno, capacidad_personas, id_conductor)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_ruta` (IN `id_ruta1` INT, IN `id_vehiculo1` VARCHAR(20), IN `cupos1` INT, IN `nombre_conductor1` VARCHAR(50), IN `telefono_conductor1` VARCHAR(10), IN `fecha1` DATE, IN `lugar_partida1` VARCHAR(50), IN `lugar_destino1` VARCHAR(50), IN `hora1` TIME, IN `id_conductor1` INT)   update registro_rutas set id_vehiculo = id_vehiculo1,
cupos = cupos1, nombre_conductor = nombre_conductor1, telefono_conductor = telefono_conductor1, 
fecha = fecha1, lugar_partida = lugar_partida1, lugar_destino = lugar_destino1, hora = hora1, 
id_conductor = id_conductor1 where id_ruta = id_ruta1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_usuario` (IN `id_usuario1` INT, IN `nombre1` VARCHAR(50), IN `apellido11` VARCHAR(50), IN `apellido21` VARCHAR(50), IN `telefono1` VARCHAR(10), IN `direccion1` VARCHAR(60), IN `barrio1` VARCHAR(50), IN `correo1` VARCHAR(50), IN `contraseña1` VARCHAR(50), IN `id_tipovinculo1` INT, IN `id_rol_app1` INT)   update usuarios set nombre = nombre1, apellido1 = apellido11, 
apellido2 = apellido21, telefono = telefono1, direccion = direccion1, barrio = barrio1, 
correo = correo1, contraseña = contraseña1, id_tipovinculo = id_tipovinculo1, id_rol_app = id_rol_app1 
where id_usuario = id_usuario1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_vehiculo` (IN `placa_vehiculo1` VARCHAR(20), IN `id_tipovehiculo1` INT(11), IN `fecha_vencimientosoat1` DATE, IN `fecha_vencimientotecno1` DATE, IN `capacidad_personas1` INT(11), IN `id_conductor1` INT(11))   update vehiculos set id_tipovehiculo = id_tipovehiculo1, 
fecha_vencimientosoat = fecha_vencimientosoat1, fecha_vencimientotecno = fecha_vencimientotecno1,
capacidad_personas = capacidad_personas1, id_conductor = id_conductor1
WHERE placa_vehiculo = placa_vehiculo1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_rutas`
--

CREATE TABLE `registro_rutas` (
  `id_ruta` int(11) NOT NULL,
  `id_vehiculo` varchar(20) DEFAULT NULL,
  `cupos` int(11) DEFAULT NULL,
  `nombre_conductor` varchar(50) DEFAULT NULL,
  `telefono_conductor` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar_partida` varchar(50) DEFAULT NULL,
  `lugar_destino` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_rutas`
--

INSERT INTO `registro_rutas` (`id_ruta`, `id_vehiculo`, `cupos`, `nombre_conductor`, `telefono_conductor`, `fecha`, `lugar_partida`, `lugar_destino`, `hora`, `id_conductor`) VALUES
(1, 'YZN75D', 1, 'Maria Isabel Bohórquez', '3235008608', '2022-10-21', 'Campo Amor', 'Universidad Católica Luis Amigó', '05:30:00', NULL),
(3, 'AKY57G', 1, 'Maria Isabel Bohorquez', '3235008608', '2022-11-04', 'Universidad Católica Luis Amigó', 'Campo Amor', '21:00:00', NULL),
(5, 'ATR234', 4, 'Diego Alejandro Zuluaga Yepes', '3002345678', '2022-11-08', 'Prado Centro', 'Universidad Católica Luis Amigó', '07:45:00', 2349876);

--
-- Disparadores `registro_rutas`
--
DELIMITER $$
CREATE TRIGGER `insercion_rutas` AFTER INSERT ON `registro_rutas` FOR EACH ROW insert into respaldo_rutas (id_ruta, id_vehiculo, cupos, nombre_conductor, telefono_conductor, fecha, lugar_partida, lugar_destino, hora) values (new.id_ruta, new.id_vehiculo, new.cupos, new.nombre_conductor, new.telefono_conductor, new.fecha, new.lugar_partida, new.lugar_destino, new.hora)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modificacion_ruta` BEFORE UPDATE ON `registro_rutas` FOR EACH ROW insert into auditoria.update_rutas (id_ruta, id_vehiculo, cupos, nombre_conductor, telefono_conductor, fecha, lugar_partida, lugar_destino, hora, fecha_update) values (old.id_ruta, old.id_vehiculo, old.cupos, old.nombre_conductor, old.telefono_conductor, old.fecha, old.lugar_partida, old.lugar_destino, old.hora, now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respaldo_rutas`
--

CREATE TABLE `respaldo_rutas` (
  `id_ruta` int(11) DEFAULT NULL,
  `id_vehiculo` varchar(20) DEFAULT NULL,
  `cupos` int(11) DEFAULT NULL,
  `nombre_conductor` varchar(50) DEFAULT NULL,
  `telefono_conductor` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar_partida` varchar(50) DEFAULT NULL,
  `lugar_destino` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respaldo_rutas`
--

INSERT INTO `respaldo_rutas` (`id_ruta`, `id_vehiculo`, `cupos`, `nombre_conductor`, `telefono_conductor`, `fecha`, `lugar_partida`, `lugar_destino`, `hora`) VALUES
(5, 'ATR234', 3, 'Diego Zuluaga', '3002345678', '2022-11-08', 'Prado Centro', 'Universidad Católica Luis Amigó', '07:45:00'),
(6, 'ATR234', 3, 'Diego Zuluaga', '3002345678', '2022-11-08', 'Prado Centro', 'Universidad Católica Luis Amigó', '07:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respaldo_usuarios`
--

CREATE TABLE `respaldo_usuarios` (
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `id_tipovinculo` int(11) DEFAULT NULL,
  `id_rol_app` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respaldo_usuarios`
--

INSERT INTO `respaldo_usuarios` (`id_usuario`, `nombre`, `apellido1`, `apellido2`, `telefono`, `direccion`, `barrio`, `correo`, `contraseña`, `id_tipovinculo`, `id_rol_app`) VALUES
(1035869220, 'Maria', 'Lopez', 'Muñoz', '3009876543', 'KR 55 # 53 - 29', 'Bello', 'maria@amigo.edu.co', '123456', 2, 2),
(10101010, 'Luisa', 'Ramirez', 'Montero', '3001010202', 'Calle 50', 'Caldas', 'luisa.ramirezmo@amigo.edu.co', '12345', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respaldo_vehiculo`
--

CREATE TABLE `respaldo_vehiculo` (
  `placa_vehiculo` varchar(20) DEFAULT NULL,
  `id_tipovehiculo` varchar(20) DEFAULT NULL,
  `fecha_vencimientosoat` date DEFAULT NULL,
  `fecha_vencimientotecno` date DEFAULT NULL,
  `capacidad_personas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respaldo_vehiculo`
--

INSERT INTO `respaldo_vehiculo` (`placa_vehiculo`, `id_tipovehiculo`, `fecha_vencimientosoat`, `fecha_vencimientotecno`, `capacidad_personas`) VALUES
('AAA129', '2', '2023-02-26', '2023-02-25', 4),
('RIE388', '2', '2023-03-31', '2023-03-30', 4),
('AAA345', '2', '2023-04-10', '2023-04-11', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_app`
--

CREATE TABLE `rol_app` (
  `id_rol_app` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_app`
--

INSERT INTO `rol_app` (`id_rol_app`, `descripcion`) VALUES
(1, 'Conductor'),
(2, 'Pasajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_vehiculo`
--

CREATE TABLE `tipo_de_vehiculo` (
  `id_tipovehiculo` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_de_vehiculo`
--

INSERT INTO `tipo_de_vehiculo` (`id_tipovehiculo`, `descripcion`) VALUES
(1, 'Moto'),
(2, 'Carro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vinculo`
--

CREATE TABLE `tipo_vinculo` (
  `id_tipovinculo` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_vinculo`
--

INSERT INTO `tipo_vinculo` (`id_tipovinculo`, `descripcion`) VALUES
(1, 'Estudiante'),
(2, 'Docente'),
(3, 'Egresado'),
(4, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
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
  `id_rol_app` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido1`, `apellido2`, `telefono`, `direccion`, `barrio`, `correo`, `contraseña`, `id_tipovinculo`, `id_rol_app`) VALUES
(2349876, 'Diego', 'Zuluaga', 'Yepes', '300 416540', 'KR 55 # 50 - 21', 'Prado centro', 'diego.zuluagaye@amigo.edu.co', 'ron', 3, 1),
(10101010, 'Luisa', 'Ramirez', 'Montero', '3001010202', 'Calle 50', 'Caldas', 'luisa.ramirezmo@amigo.edu.co', '12345', 1, 1),
(23456789, 'Diego', 'Zuluaga', 'Yepes', '300 416540', 'KR 50 # 53 - 23', 'Prado Centro', 'diego.zuluagaye@amigo.edu.co', 'ron', 3, 1),
(123456789, 'Maria', 'Bohorquez', 'Mejia', '1234567891', 'Calle 10', 'Campo amor', 'maria.bohorquez@amigo.edu.co', 'aquiles', 1, 1),
(1000661503, 'Saray', 'Mejia', 'Medina', '300 416540', 'KR 55 A # 53 - 23', 'Copacabana', 'saray.mejiame@amigo.edu.co', 'smm123', 1, 2),
(1035869220, 'Maria', 'Lopez', 'Muñoz', '3009876543', 'KR 55 # 53 - 29', 'Bello', 'maria@amigo.edu.co', '123456', 2, 2);

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `insercion_usuarios` AFTER INSERT ON `usuarios` FOR EACH ROW insert into respaldo_usuarios(id_usuario, nombre, apellido1, apellido2, telefono, direccion, barrio, correo, contraseña, id_tipovinculo, id_rol_app)
values (new.id_usuario, new.nombre, new.apellido1, new.apellido2, new.telefono, new.direccion, new.barrio, new.correo, new.contraseña, new.id_tipovinculo, new.id_rol_app)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modificacion_usuario` BEFORE UPDATE ON `usuarios` FOR EACH ROW insert into auditoria.update_usarios(id_usuario, nombre, apellido1, apellido2, telefono, direccion, barrio, correo, contraseña, id_tipovinculo, fecha_update) values (old.id_usuario, old.nombre, old.apellido1, old.apellido2, old.telefono, old.direccion, old.barrio, old.correo, old.contraseña, old.id_tipovinculo, now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `placa_vehiculo` varchar(20) NOT NULL,
  `id_tipovehiculo` int(11) DEFAULT NULL,
  `fecha_vencimientosoat` date DEFAULT NULL,
  `fecha_vencimientotecno` date DEFAULT NULL,
  `capacidad_personas` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`placa_vehiculo`, `id_tipovehiculo`, `fecha_vencimientosoat`, `fecha_vencimientotecno`, `capacidad_personas`, `id_conductor`) VALUES
('AAA345', 2, '2023-04-10', '2023-04-11', 3, 123456789),
('AKY57G', 1, '2022-12-16', '2022-12-16', 1, NULL),
('ATR234', 2, '2023-03-30', '2023-03-30', 4, 2349876),
('DPA57D', 1, '2022-11-17', '2022-11-18', 2, 123456789),
('RIE388', 2, '2023-03-31', '2023-03-30', 4, 123456789),
('YZN75D', 1, '2022-11-17', '2022-11-18', 1, NULL);

--
-- Disparadores `vehiculos`
--
DELIMITER $$
CREATE TRIGGER `insercion_vehiculos` AFTER INSERT ON `vehiculos` FOR EACH ROW insert into respaldo_vehiculo(placa_vehiculo, id_tipovehiculo, fecha_vencimientosoat, fecha_vencimientotecno, capacidad_personas) values (new.placa_vehiculo, new.id_tipovehiculo, new.fecha_vencimientosoat, new.fecha_vencimientotecno, new.capacidad_personas)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modificacion_vehiculo` BEFORE UPDATE ON `vehiculos` FOR EACH ROW insert into auditoria.update_vehiculo (placa_vehiculo, id_tipovehiculo, fecha_vencimientosoat, fecha_vencimientotecno, capacidad_personas, fecha_update) values (old.placa_vehiculo, old.id_tipovehiculo, old.fecha_vencimientosoat, old.fecha_vencimientotecno, old.capacidad_personas,now())
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro_rutas`
--
ALTER TABLE `registro_rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `rol_app`
--
ALTER TABLE `rol_app`
  ADD PRIMARY KEY (`id_rol_app`);

--
-- Indices de la tabla `tipo_de_vehiculo`
--
ALTER TABLE `tipo_de_vehiculo`
  ADD PRIMARY KEY (`id_tipovehiculo`);

--
-- Indices de la tabla `tipo_vinculo`
--
ALTER TABLE `tipo_vinculo`
  ADD PRIMARY KEY (`id_tipovinculo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipovinculo` (`id_tipovinculo`),
  ADD KEY `id_rol_app` (`id_rol_app`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`placa_vehiculo`),
  ADD KEY `id_tipovehiculo` (`id_tipovehiculo`),
  ADD KEY `id_conductor` (`id_conductor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro_rutas`
--
ALTER TABLE `registro_rutas`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rol_app`
--
ALTER TABLE `rol_app`
  MODIFY `id_rol_app` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_vinculo`
--
ALTER TABLE `tipo_vinculo`
  MODIFY `id_tipovinculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro_rutas`
--
ALTER TABLE `registro_rutas`
  ADD CONSTRAINT `registro_rutas_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`placa_vehiculo`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipovinculo`) REFERENCES `tipo_vinculo` (`id_tipovinculo`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol_app`) REFERENCES `rol_app` (`id_rol_app`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipo_de_vehiculo` (`id_tipovehiculo`),
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`id_conductor`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `vehiculos_ibfk_3` FOREIGN KEY (`id_conductor`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
