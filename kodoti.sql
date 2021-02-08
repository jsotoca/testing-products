-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2021 a las 03:01:18
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kodoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `creater_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `creater_id`, `created_at`, `updated_at`) VALUES
(1, 2, '6500.00', 1, '2019-08-30 06:58:41', '2019-08-30 06:58:43'),
(44, 1, '5021.00', 2, '2019-09-17 07:04:47', '2019-09-17 07:04:47'),
(45, 1, '10000.00', 3, '2021-01-17 12:28:25', '2021-01-17 12:28:25'),
(46, 1, '10000.00', 3, '2021-01-17 12:29:26', '2021-01-17 12:29:26'),
(47, 1, '10000.00', 3, '2021-01-17 12:35:51', '2021-01-17 12:35:51'),
(48, 1, '10000.00', 3, '2021-01-17 12:36:16', '2021-01-17 12:36:16'),
(49, 1, '5031.52', 3, '2021-01-18 03:23:01', '2021-01-18 03:23:01'),
(50, 1, '5031.52', 3, '2021-01-18 03:27:57', '2021-01-18 03:27:57'),
(51, 1, '5031.52', 3, '2021-01-18 03:28:48', '2021-01-18 03:28:48'),
(52, 1, '5031.52', 3, '2021-01-18 03:37:05', '2021-01-18 03:37:05'),
(53, 1, '803.69', 3, '2021-01-23 04:34:12', '0000-00-00 00:00:00'),
(54, 1, '803.69', 3, '2021-01-23 17:46:17', '0000-00-00 00:00:00'),
(58, 1, '803.69', 3, '2021-01-23 18:11:49', '0000-00-00 00:00:00'),
(59, 1, '803.69', 3, '2021-01-23 18:13:00', '0000-00-00 00:00:00'),
(60, 1, '803.69', 3, '2021-01-23 18:15:44', '0000-00-00 00:00:00'),
(61, 1, '803.69', 3, '2021-01-23 18:16:43', '0000-00-00 00:00:00'),
(62, 1, '803.69', 3, '2021-01-23 18:18:24', '0000-00-00 00:00:00'),
(63, 1, '803.69', 3, '2021-01-23 18:19:12', '0000-00-00 00:00:00'),
(64, 1, '803.69', 3, '2021-01-23 18:20:34', '0000-00-00 00:00:00'),
(65, 1, '803.69', 3, '2021-01-23 18:23:01', '0000-00-00 00:00:00'),
(66, 1, '803.69', 3, '2021-01-23 18:23:20', '0000-00-00 00:00:00'),
(67, 1, '803.69', 3, '2021-01-23 18:23:58', '0000-00-00 00:00:00'),
(68, 1, '803.69', 3, '2021-01-23 18:25:09', '0000-00-00 00:00:00'),
(69, 1, '803.69', 3, '2021-01-23 18:25:49', '0000-00-00 00:00:00'),
(70, 1, '803.69', 3, '2021-01-23 18:26:19', '0000-00-00 00:00:00'),
(74, 1, '803.69', 3, '2021-01-23 18:28:48', '0000-00-00 00:00:00'),
(77, 1, '803.69', 3, '2021-01-23 18:30:43', '0000-00-00 00:00:00'),
(78, 1, '803.69', 3, '2021-01-23 18:33:43', '0000-00-00 00:00:00'),
(80, 1, '803.69', 3, '2021-01-23 18:35:25', '0000-00-00 00:00:00'),
(81, 1, '803.69', 3, '2021-01-23 18:36:13', '0000-00-00 00:00:00'),
(83, 1, '803.69', 3, '2021-01-24 02:51:08', '0000-00-00 00:00:00'),
(84, 1, '803.00', 3, '2021-01-24 03:35:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2500.00', '5000.00', '2019-08-30 07:00:42', '2019-08-30 07:00:42'),
(45, 44, 1, 2, '2500.00', '5000.00', '2019-09-17 07:04:47', '2019-09-17 07:04:47'),
(46, 44, 4, 3, '7.00', '21.00', '2019-09-17 07:04:47', '2019-09-17 07:04:47'),
(47, 48, 1, 2, '1000.00', '2000.00', '2021-01-17 12:36:16', '2021-01-17 12:36:16'),
(48, 48, 2, 4, '2000.00', '8000.00', '2021-01-17 12:36:16', '2021-01-17 12:36:16'),
(49, 51, 1, 2, '1200.00', '2400.00', '2021-01-18 03:28:48', '2021-01-18 03:28:48'),
(50, 51, 2, 4, '657.88', '2631.52', '2021-01-18 03:28:48', '2021-01-18 03:28:48'),
(51, 64, 1, 2, '234.55', '469.10', '2021-01-23 18:20:34', '0000-00-00 00:00:00'),
(52, 64, 2, 3, '111.53', '334.59', '2021-01-23 18:20:34', '0000-00-00 00:00:00'),
(53, 65, 1, 2, '234.55', '469.10', '2021-01-23 18:23:01', '0000-00-00 00:00:00'),
(54, 65, 2, 3, '111.53', '334.59', '2021-01-23 18:23:01', '0000-00-00 00:00:00'),
(55, 67, 1, 2, '234.55', '469.10', '2021-01-23 18:23:58', '0000-00-00 00:00:00'),
(56, 67, 2, 3, '111.53', '334.59', '2021-01-23 18:23:58', '0000-00-00 00:00:00'),
(57, 68, 1, 2, '234.55', '469.10', '2021-01-23 18:25:09', '0000-00-00 00:00:00'),
(58, 68, 2, 3, '111.53', '334.59', '2021-01-23 18:25:09', '0000-00-00 00:00:00'),
(59, 74, 1, 2, '234.55', '469.10', '2021-01-23 18:28:48', '0000-00-00 00:00:00'),
(60, 74, 2, 3, '111.53', '334.59', '2021-01-23 18:28:48', '0000-00-00 00:00:00'),
(61, 77, 1, 2, '234.55', '469.10', '2021-01-23 18:30:43', '0000-00-00 00:00:00'),
(62, 77, 2, 3, '111.53', '334.59', '2021-01-23 18:30:43', '0000-00-00 00:00:00'),
(63, 78, 1, 2, '234.55', '469.10', '2021-01-23 18:33:43', '0000-00-00 00:00:00'),
(64, 78, 2, 3, '111.53', '334.59', '2021-01-23 18:33:43', '0000-00-00 00:00:00'),
(65, 80, 1, 2, '234.55', '469.10', '2021-01-23 18:35:25', '0000-00-00 00:00:00'),
(66, 80, 2, 3, '111.53', '334.59', '2021-01-23 18:35:25', '0000-00-00 00:00:00'),
(67, 81, 1, 2, '234.55', '469.10', '2021-01-23 18:36:13', '0000-00-00 00:00:00'),
(68, 81, 2, 3, '111.53', '334.59', '2021-01-23 18:36:13', '0000-00-00 00:00:00'),
(69, 83, 1, 2, '234.55', '469.10', '2021-01-24 02:51:08', '0000-00-00 00:00:00'),
(70, 83, 2, 3, '111.53', '334.59', '2021-01-24 02:51:08', '0000-00-00 00:00:00'),
(71, 84, 1, 2, '234.55', '469.00', '2021-01-24 03:35:50', '0000-00-00 00:00:00'),
(72, 84, 2, 3, '111.53', '334.00', '2021-01-24 03:35:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Guitarra eléctrica Fender', '2500.00', '2019-08-30 06:58:41', '2019-08-30 06:58:41'),
(2, 'Amplificador Laney', '1500.00', '2019-08-30 06:58:41', '2019-08-30 06:58:41'),
(3, 'Pedal Tube Screamer', '250.00', '2019-08-30 06:58:41', '2019-08-30 06:58:41'),
(4, 'Cuerdas Addario XL', '7.00', '2019-08-30 06:58:41', '2019-08-30 06:58:41'),
(5, 'Funda para guitarra x', '16.00', '2019-08-30 06:58:41', '2019-09-17 05:29:52'),
(6, 'Case para guitarra eléctrica', '100.00', '2019-08-30 06:58:41', '2019-08-30 06:58:41'),
(8, 'black clover', '2300.00', '2021-01-23 02:41:24', '2021-01-23 02:41:24'),
(9, 'one piece', '1000.00', '2021-01-24 20:54:12', '2021-01-24 20:54:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Eduardo', 'Rodríguez', 'erodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 20:57:30', '2019-08-29 20:57:30'),
(2, 'Sandro', 'Rodriguez', 'srodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(3, 'Carla', 'Rodriguez', 'crodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(4, 'Maria', 'Rodriguez', 'mrodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(5, 'Jose', 'Rodriguez', 'jrodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(6, 'Raul', 'Rodriguez', 'rrodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(7, 'Alonso', 'Rodriguez', 'arodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(8, 'Miguel', 'Rodriguez', 'mrodriguez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(9, 'Alan', 'Garcia', 'agarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(10, 'Jose', 'Garcia', 'jgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(11, 'Karen', 'Garcia', 'kgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(12, 'Laura', 'Garcia', 'lgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(13, 'Susana', 'Garcia', 'sgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(14, 'Fabiola', 'Garcia', 'fgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(15, 'Pamela', 'Garcia', 'pgarcia', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-29 05:00:00', '2019-08-29 05:00:00'),
(16, 'Lucia', 'Fernandez', 'lfernandez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-30 02:51:06', '2019-08-30 02:51:06'),
(18, 'Alejandro', 'Perez', 'aperez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-30 06:48:22', '2019-08-30 06:48:22'),
(20, 'Juan', 'Perez', 'jperez', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-30 07:50:31', '2019-08-30 07:50:31'),
(37, 'Rocío', 'Tsumi', 'rtsumi', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-08-30 10:06:07', '2019-08-30 10:06:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_users_2` (`creater_id`);

--
-- Indices de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order_detail_orders` (`order_id`),
  ADD KEY `FK_order_detail_products` (`product_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_orders_users_2` FOREIGN KEY (`creater_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_order_detail_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_order_detail_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
