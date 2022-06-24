-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2020 a las 17:40:35
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventas`
--

CREATE TABLE `tbldetalleventas` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,0) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbldetalleventas`
--

INSERT INTO `tbldetalleventas` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(4, 12, 1, '300', 1, 0),
(5, 12, 2, '429', 1, 0),
(6, 12, 3, '1005', 1, 0),
(7, 13, 1, '300', 1, 0),
(8, 13, 2, '429', 1, 0),
(9, 13, 3, '1005', 1, 0),
(10, 14, 1, '300', 1, 0),
(11, 15, 1, '300', 1, 0),
(12, 16, 1, '300', 1, 0),
(13, 17, 1, '300', 1, 0),
(14, 18, 1, '300', 1, 0),
(15, 19, 1, '300', 1, 0),
(16, 20, 1, '300', 1, 0),
(17, 21, 1, '300', 1, 0),
(18, 22, 1, '300', 1, 0),
(19, 23, 1, '300', 1, 0),
(20, 24, 1, '300', 1, 0),
(21, 25, 1, '300', 1, 0),
(22, 26, 1, '300', 1, 0),
(23, 26, 2, '429', 1, 0),
(24, 27, 1, '300', 1, 0),
(25, 28, 1, '300', 1, 0),
(26, 29, 1, '300', 1, 0),
(27, 30, 1, '300', 1, 0),
(28, 31, 1, '300', 1, 0),
(29, 32, 3, '1005', 1, 0),
(30, 33, 3, '1005', 1, 0),
(31, 34, 3, '1005', 1, 0),
(32, 35, 3, '1005', 1, 0),
(33, 36, 3, '1005', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Precio` decimal(20,0) NOT NULL,
  `Descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Learn PHP 7', '300', 'Este nuevo libro sobre PHP 7 introduce la escritura de código sólido, seguro y orientado a objetos en el nuevo PHP 7: creará una aplicación completa de tres niveles utilizando un proceso natural de construcción y prueba de módulos dentro de cada nivel. Este enfoque práctico le enseña sobre el desarrollo de aplicaciones e introduce características de PHP cuando realmente se necesitan en lugar de proporcionarle teoría abstracta y ejemplos artificiales.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(2, 'Professional ASP.NET MVC 5 ', '429', 'MVC 5 es la actualización más reciente de la popular tecnología de Microsoft que le permite crear sitios web dinámicos basados ??en datos. Al igual que las versiones anteriores, esta guía le muestra técnicas paso a paso sobre el uso de MVC para la mejor ventaja, con muchos tutoriales prácticos para ilustrar los conceptos. Cubre controladores, vistas y modelos; formularios y ayudantes HTML; anotación y validación de datos; membresía, autorización y seguridad.', 'https://images-na.ssl-images-amazon.com/images/I/51u-ERS1W8L._SX396_BO1,204,203,200_.jpg'),
(3, 'Learning Vue.js 2', '1005', '* Aprenda cómo propagar los cambios DOM en el sitio web sin escribir un extenso código de devolución de llamada jQuery.\r\n* Aprenda a lograr reactividad y componga fácilmente las vistas con Vue.js y comprenda lo que hace detrás de escena.\r\n* Explore las características principales de Vue.js con pequeños ejemplos, aprenda a crear contenido dinámico en aplicaciones web preexistentes y cree aplicaciones Vue.js desde cero.', 'img/VUE.JS_2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `PaypalDatos` text COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `Total` decimal(60,0) NOT NULL,
  `status` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, 'v0k66ssebq6i216i8mb142ltk4', '', '2020-01-17 14:20:41', 'jairolaguna@gmail.com', '729', 'pendiente'),
(2, 'o6c5c8qc2720rk8cjjkjgiuer1', '', '2020-01-17 14:21:06', 'reykonaylton@gmail.com', '300', 'pendiente'),
(12, 'o600ig8gs5j9b76kbcltv6f7k5', '', '2020-01-17 14:50:02', 'jairolaguna@hotmail.com', '1734', 'pendiente'),
(13, 'o600ig8gs5j9b76kbcltv6f7k5', '', '2020-01-17 14:56:37', 'jairolaguna@hotmail.com', '1734', 'pendiente'),
(14, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 14:57:27', 'reykonaylton@gmail.com', '300', 'pendiente'),
(15, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:01:15', 'reykonaylton@gmail.com', '300', 'pendiente'),
(16, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:03:14', 'reykonaylton@gmail.com', '300', 'pendiente'),
(17, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:03:24', 'reykonaylton@gmail.com', '300', 'pendiente'),
(18, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:22:06', 'reykonaylton@gmail.com', '300', 'pendiente'),
(19, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:23:03', 'reykonaylton@gmail.com', '300', 'pendiente'),
(20, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:23:42', 'jairolaguna@hotmail.com', '300', 'pendiente'),
(21, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 15:27:48', 'jairolaguna@hotmail.com', '300', 'pendiente'),
(22, 'p4huks1vb2fe6blvh06upbm0p1', '', '2020-01-17 16:25:27', 'reykonaylton@gmail.com', '300', 'pendiente'),
(23, '07rcuo9hci6del4561fhf9ncu3', '', '2020-01-17 16:40:35', 'reykonaylton@gmail.com', '300', 'pendiente'),
(24, '07rcuo9hci6del4561fhf9ncu3', '', '2020-01-17 16:41:39', 'reykonaylton@gmail.com', '300', 'pendiente'),
(25, '07rcuo9hci6del4561fhf9ncu3', '', '2020-01-17 16:52:11', 'reykonaylton@gmail.com', '300', 'pendiente'),
(26, '07rcuo9hci6del4561fhf9ncu3', '', '2020-01-17 16:52:33', 'jairolaguna@gmail.com', '729', 'pendiente'),
(27, '7tt4kc35a9rl72shp0u9meq2c0', '', '2020-01-17 17:00:16', 'jairolaguna@hotmail.com', '300', 'pendiente'),
(28, '7tt4kc35a9rl72shp0u9meq2c0', '', '2020-01-17 17:02:12', 'jairolaguna@hotmail.com', '300', 'pendiente'),
(29, 'ruo1qv6ah4ci95t3rdbdj7l6e7', '', '2020-01-17 17:02:56', 'jairolaguna@gmail.com', '300', 'pendiente'),
(30, 'ruo1qv6ah4ci95t3rdbdj7l6e7', '', '2020-01-17 17:05:12', 'jairolaguna@gmail.com', '300', 'pendiente'),
(31, 'ruo1qv6ah4ci95t3rdbdj7l6e7', '', '2020-01-17 17:05:29', 'jairolaguna@gmail.com', '300', 'pendiente'),
(32, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:09:07', 'jairolaguna@gmail.com', '1005', 'pendiente'),
(33, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:10:47', 'jairolaguna@gmail.com', '1005', 'pendiente'),
(34, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:12:25', 'jairolaguna@gmail.com', '1005', 'pendiente'),
(35, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:12:31', 'jairolaguna@gmail.com', '1005', 'pendiente'),
(36, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:13:09', 'jairolaguna@gmail.com', '1005', 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventas`
--
ALTER TABLE `tbldetalleventas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventas`
--
ALTER TABLE `tbldetalleventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventas`
--
ALTER TABLE `tbldetalleventas`
  ADD CONSTRAINT `tbldetalleventas_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventas_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
