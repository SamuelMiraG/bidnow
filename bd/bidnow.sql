-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2025 a las 21:37:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bidnow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_inicial` decimal(10,2) NOT NULL,
  `precio_actual` decimal(10,2) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `usuario_id` int(10) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `nombre`, `descripcion`, `precio_inicial`, `precio_actual`, `fecha_inicio`, `fecha_fin`, `usuario_id`, `estado`) VALUES
(1, 'escultura', 'linda escultura', 50000.00, 65.00, '2025-06-26 20:20:49', '2025-06-26 20:20:49', 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `tipo_usuario` varchar(255) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `email`, `password`, `telefono`, `tipo_usuario`, `fecha_registro`) VALUES
(1, 'sara', 'sar@gmail.com', '123', '70000', 'estandar', '2017-06-25'),
(2, 'cam', 'cmm@g.com', '45', '89999', 'estandar', '0000-00-00'),
(3, 'cam', 'cmm@g.com', '45', '89999', 'estandar', '2017-06-25'),
(4, 'cam', 'cmm@g.com', '45', '89999', 'estandar', '2025-06-17'),
(5, 'sara', 'sar@gmail.com', '444', '70000', 'estandar', '2025-06-17'),
(6, 'sara', 'sar@gmail.com', '1111', '65000', 'estandar', '2025-06-19'),
(7, '???', '3232@k.com', '333', '33333', 'estandar', '2025-06-19'),
(8, 'tt', 'yyyy@1.com', 'gggg', '54345', 'estandar', '2025-06-20'),
(9, 'mt', 'mt09@g.com', '$2y$10$XhR94GQd2mWlgwIXR8Ez.ObWwsCUqp6lTEe8zg411pw3eLbn3MZCy', '223232', 'estandar', '2025-06-20'),
(10, 'gg', 'gg4@6.com', '$2y$10$oTi5Q0L7UcHvzNNroZW.lOHEh8Wko.Gq8oZuNXUrIhcmjDf1/3tQu', '66666', 'estandar', '2025-06-20'),
(11, 'ttt', 't@t.com', '$2y$10$8QHaJXobuN4mAziYOPN/xOeD/rb4pkfdZs2bI8qzSLsXnL1sv0W6S', 'lllll', 'estandar', '2025-06-20'),
(12, 'hola', 'hola@g.co', '$2y$10$BG.t73zDiks2MZE5NhuQVe8cCcZFVJsCPKKKc3D.uYHJvnOvcd8Ku', '9999', 'estandar', '2025-06-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
