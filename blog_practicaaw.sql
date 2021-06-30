-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2021 a las 16:04:35
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_practicaaw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `extracto` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `texto` text DEFAULT NULL,
  `thumb` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `extracto`, `fecha`, `texto`, `thumb`) VALUES
(1, 'Titulo del Primer Post', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad, tempora? Eligendi delectus odit quibusdam voluptatum.', '2021-06-30 13:59:57', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab vel, atque quaerat illo nostrum facere deserunt ipsum laudantium quae eaque mollitia iusto vero? Doloribus pariatur sit, dolore quidem placeat mollitia inventore repellendus exercitationem perferendis, minima, similique temporibus dicta voluptatibus tempora?', '1.jpg'),
(2, 'Titulo del Segundo Post', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad, tempora? Eligendi delectus odit quibusdam voluptatum.', '2021-06-30 14:01:37', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab vel, atque quaerat illo nostrum facere deserunt ipsum laudantium quae eaque mollitia iusto vero? Doloribus pariatur sit, dolore quidem placeat mollitia inventore repellendus exercitationem perferendis, minima, similique temporibus dicta voluptatibus tempora?', '2.jpg'),
(3, 'Titulo del Tercer Post', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad, tempora? Eligendi delectus odit quibusdam voluptatum.', '2021-06-30 14:01:38', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab vel, atque quaerat illo nostrum facere deserunt ipsum laudantium quae eaque mollitia iusto vero? Doloribus pariatur sit, dolore quidem placeat mollitia inventore repellendus exercitationem perferendis, minima, similique temporibus dicta voluptatibus tempora?', '3.jpg'),
(4, 'Titulo del Cuarto Articulo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ad, tempora? Eligendi delectus odit quibusdam voluptatum.', '2021-06-30 14:01:38', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab vel, atque quaerat illo nostrum facere deserunt ipsum laudantium quae eaque mollitia iusto vero? Doloribus pariatur sit, dolore quidem placeat mollitia inventore repellendus exercitationem perferendis, minima, similique temporibus dicta voluptatibus tempora?', '4.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
