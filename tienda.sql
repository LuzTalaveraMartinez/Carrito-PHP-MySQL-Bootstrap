-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2020 a las 14:53:10
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
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;
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
(33, 36, 3, '1005', 1, 0),
(34, 37, 3, '1005', 1, 0),
(35, 38, 1, '300', 1, 0),
(36, 38, 3, '1005', 1, 0),
(37, 39, 1, '300', 1, 0),
(38, 39, 3, '1005', 1, 0),
(39, 40, 3, '1005', 1, 0),
(40, 41, 1, '300', 1, 0),
(41, 42, 2, '429', 1, 0),
(42, 43, 1, '300', 1, 0),
(43, 43, 2, '429', 1, 0),
(44, 43, 3, '1005', 1, 0),
(45, 44, 1, '300', 1, 0),
(46, 44, 2, '429', 1, 0),
(47, 44, 3, '1005', 1, 0),
(48, 45, 1, '300', 1, 0),
(49, 45, 2, '429', 1, 0),
(50, 45, 3, '1005', 1, 0),
(51, 46, 1, '300', 1, 0),
(52, 46, 2, '429', 1, 0),
(53, 46, 3, '1005', 1, 0),
(54, 47, 1, '300', 1, 0),
(55, 47, 2, '429', 1, 0),
(56, 47, 3, '1005', 1, 0),
(57, 48, 1, '300', 1, 0),
(58, 48, 2, '429', 1, 0),
(59, 48, 3, '1005', 1, 0),
(60, 49, 1, '300', 1, 0),
(61, 49, 2, '429', 1, 0),
(62, 49, 3, '1005', 1, 0),
(63, 50, 1, '300', 1, 1),
(64, 51, 1, '300', 1, 1),
(65, 51, 2, '429', 1, 1),
(66, 51, 3, '1005', 1, 0),
(67, 52, 1, '300', 1, 0),
(68, 52, 2, '429', 1, 0),
(69, 52, 3, '1005', 1, 0),
(70, 53, 1, '300', 1, 1),
(71, 54, 1, '300', 1, 0),
(72, 55, 1, '300', 1, 1),
(73, 56, 1, '300', 1, 1),
(74, 57, 1, '300', 1, 1),
(75, 58, 1, '300', 1, 1);

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
(36, 'pfu3ih97i109808d6c8de1tap3', '', '2020-01-17 17:13:09', 'jairolaguna@gmail.com', '1005', 'pendiente'),
(37, 'dkc49fek1deeddkmnn84s0p375', '', '2020-01-20 08:10:24', 'reykonaylton@gmail.com', '1005', 'pendiente'),
(38, 'hq3dnka3sbiiffenen9hp589i4', '', '2020-01-20 09:13:06', 'jairolaguna@hotmail.com', '1305', 'pendiente'),
(39, 'hq3dnka3sbiiffenen9hp589i4', '', '2020-01-20 09:27:55', 'jairolaguna@hotmail.com', '1305', 'pendiente'),
(40, '5c49dtl7ds10g68t7r88fen771', '', '2020-01-20 09:37:44', 'reykonaylton@gmail.com', '1005', 'pendiente'),
(41, '1nei534k3o8sugcp6iu8oi50o4', '{"id":"PAYID-LYS5DNY8FA41094JH725041W","intent":"sale","state":"approved","cart":"44D74145S39732026","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"1nei534k3o8sugcp6iu8oi50o4#KnnHG3+2JsXYjPO0taTGQA==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"4HE35368MY924661N","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYS5DNY8FA41094JH725041W","create_time":"2020-01-20T16:14:01Z","update_time":"2020-01-20T16:14:01Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/4HE35368MY924661N","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/4HE35368MY924661N/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS5DNY8FA41094JH725041W","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T16:13:43Z","update_time":"2020-01-20T16:14:01Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS5DNY8FA41094JH725041W","rel":"self","method":"GET"}]}', '2020-01-20 10:13:41', 'reykonaylton@gmail.com', '300', 'completo'),
(42, 'oc03kudvsulds6eviua89sngl6', '{"id":"PAYID-LYS5YEA9RA26666K73756503","intent":"sale","state":"approved","cart":"9RT27737D0513303W","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"429.00","currency":"USD","details":{"subtotal":"429.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"oc03kudvsulds6eviua89sngl6#7HAvVa2a8i8FWFCEvPUoNQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"7LF6054095766670K","state":"completed","amount":{"total":"429.00","currency":"USD","details":{"subtotal":"429.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"12.74","currency":"USD"},"parent_payment":"PAYID-LYS5YEA9RA26666K73756503","create_time":"2020-01-20T16:58:38Z","update_time":"2020-01-20T16:58:38Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/7LF6054095766670K","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/7LF6054095766670K/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS5YEA9RA26666K73756503","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T16:57:52Z","update_time":"2020-01-20T16:58:38Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS5YEA9RA26666K73756503","rel":"self","method":"GET"}]}', '2020-01-20 10:57:45', 'jairolaguna@hotmail.com', '429', 'completo'),
(43, 'j8bbf2mja7odlmpnr8iddd4l63', '{"id":"PAYID-LYS52FA9RR43359WT127911P","intent":"sale","state":"approved","cart":"4MB55224H8958290S","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"j8bbf2mja7odlmpnr8iddd4l63#2Ziba4sVa5l7H8Ucq8beFA==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"35W14185KT929144F","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS52FA9RR43359WT127911P","create_time":"2020-01-20T17:03:00Z","update_time":"2020-01-20T17:03:00Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/35W14185KT929144F","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/35W14185KT929144F/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS52FA9RR43359WT127911P","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T17:02:12Z","update_time":"2020-01-20T17:03:00Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS52FA9RR43359WT127911P","rel":"self","method":"GET"}]}', '2020-01-20 11:02:11', 'reykonaylton@gmail.com', '1734', 'completo'),
(44, 'to7m8d7g61b90oa464al18fhv3', '{"id":"PAYID-LYS6AEQ12R166657E112102J","intent":"sale","state":"approved","cart":"0SB4450454332303B","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"to7m8d7g61b90oa464al18fhv3#B3vCTV20qJZ6N1FumNgf8g==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"5M422821PE5031423","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS6AEQ12R166657E112102J","create_time":"2020-01-20T17:15:56Z","update_time":"2020-01-20T17:15:56Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/5M422821PE5031423","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/5M422821PE5031423/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6AEQ12R166657E112102J","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T17:14:58Z","update_time":"2020-01-20T17:15:56Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6AEQ12R166657E112102J","rel":"self","method":"GET"}]}', '2020-01-20 11:14:42', 'jairolaguna@gmail.com', '1734', 'completo'),
(45, 'to7m8d7g61b90oa464al18fhv3', '{"id":"PAYID-LYS6F6I1J048583VN985823A","intent":"sale","state":"approved","cart":"4L939560E5915512L","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"to7m8d7g61b90oa464al18fhv3#RavLa1Ku4R4Y5xUdKHLscQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"1WL91226CX3310312","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS6F6I1J048583VN985823A","create_time":"2020-01-20T17:27:33Z","update_time":"2020-01-20T17:27:33Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1WL91226CX3310312","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1WL91226CX3310312/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6F6I1J048583VN985823A","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T17:27:21Z","update_time":"2020-01-20T17:27:33Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6F6I1J048583VN985823A","rel":"self","method":"GET"}]}', '2020-01-20 11:27:11', 'jairolaguna@gmail.com', '1734', 'completo'),
(46, 'to7m8d7g61b90oa464al18fhv3', '{"id":"PAYID-LYS6STA0T842887J8793391H","intent":"sale","state":"approved","cart":"7NP99861400693216","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"to7m8d7g61b90oa464al18fhv3#53yeCb0mezUAZEr21mMmvQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"33M99917LA022934J","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS6STA0T842887J8793391H","create_time":"2020-01-20T17:54:57Z","update_time":"2020-01-20T17:54:57Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/33M99917LA022934J","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/33M99917LA022934J/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6STA0T842887J8793391H","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T17:54:20Z","update_time":"2020-01-20T17:54:57Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6STA0T842887J8793391H","rel":"self","method":"GET"}]}', '2020-01-20 11:54:18', 'jairolaguna@gmail.com', '1734', 'completo'),
(47, 'to7m8d7g61b90oa464al18fhv3', '{"id":"PAYID-LYS6UYA6RL61132PL6221051","intent":"sale","state":"approved","cart":"0CP81353WU831101A","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"to7m8d7g61b90oa464al18fhv3#xsqFvSLAgdj20ugmSczgqA==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"7F8273706R363370E","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS6UYA6RL61132PL6221051","create_time":"2020-01-20T17:59:09Z","update_time":"2020-01-20T17:59:09Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/7F8273706R363370E","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/7F8273706R363370E/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6UYA6RL61132PL6221051","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T17:58:56Z","update_time":"2020-01-20T17:59:09Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS6UYA6RL61132PL6221051","rel":"self","method":"GET"}]}', '2020-01-20 11:58:55', 'jairolaguna@gmail.com', '1734', 'completo'),
(48, 'to7m8d7g61b90oa464al18fhv3', '{"id":"PAYID-LYS64GQ1LK21915PK100353K","intent":"sale","state":"approved","cart":"0TN29178YU696532C","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"to7m8d7g61b90oa464al18fhv3#+cocS5qOsn7m5MSWz0hSoQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"2JC00534T0036832X","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYS64GQ1LK21915PK100353K","create_time":"2020-01-20T18:15:06Z","update_time":"2020-01-20T18:15:06Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/2JC00534T0036832X","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/2JC00534T0036832X/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS64GQ1LK21915PK100353K","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T18:14:50Z","update_time":"2020-01-20T18:15:06Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS64GQ1LK21915PK100353K","rel":"self","method":"GET"}]}', '2020-01-20 12:14:46', 'jairolaguna@gmail.com', '1734', 'completo'),
(49, 'to7m8d7g61b90oa464al18fhv3', '', '2020-01-20 12:21:21', 'jairolaguna@gmail.com', '1734', 'pendiente'),
(50, 'la06dindfrrffl6rl8d81aidf7', '{"id":"PAYID-LYS7CXQ53057344SB939501G","intent":"sale","state":"approved","cart":"7CR35497AM155943S","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"la06dindfrrffl6rl8d81aidf7#PmOlwfhLnFzLYILTRJS6uQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"1HT38673W03496022","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYS7CXQ53057344SB939501G","create_time":"2020-01-20T18:29:03Z","update_time":"2020-01-20T18:29:03Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1HT38673W03496022","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1HT38673W03496022/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS7CXQ53057344SB939501G","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T18:28:46Z","update_time":"2020-01-20T18:29:03Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYS7CXQ53057344SB939501G","rel":"self","method":"GET"}]}', '2020-01-20 12:28:42', 'jairolaguna@gmail.com', '300', 'completo'),
(51, 'la06dindfrrffl6rl8d81aidf7', '{"id":"PAYID-LYTBO4I1GT01032L4653953F","intent":"sale","state":"approved","cart":"9EG54411S5175654C","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"la06dindfrrffl6rl8d81aidf7#Erg9JAxASgqdZZA30KQMEw==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"3698363368610920K","state":"completed","amount":{"total":"1734.00","currency":"USD","details":{"subtotal":"1734.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"50.59","currency":"USD"},"parent_payment":"PAYID-LYTBO4I1GT01032L4653953F","create_time":"2020-01-20T21:11:48Z","update_time":"2020-01-20T21:11:48Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/3698363368610920K","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/3698363368610920K/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTBO4I1GT01032L4653953F","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T21:11:13Z","update_time":"2020-01-20T21:11:48Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTBO4I1GT01032L4653953F","rel":"self","method":"GET"}]}', '2020-01-20 15:11:06', 'jairolaguna@gmail.com', '1734', 'completo'),
(52, 'la06dindfrrffl6rl8d81aidf7', '', '2020-01-20 15:31:46', 'jairolaguna@gmail.com', '1734', 'pendiente'),
(53, '7kdlenq1k41poqompds29u9oc4', '{"id":"PAYID-LYTCP5A9SH02634LB893574L","intent":"sale","state":"approved","cart":"1K5361456V796972S","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"7kdlenq1k41poqompds29u9oc4#LSbbLAgtZtmwO7BlouV8Qw==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"4R015456MB4959940","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTCP5A9SH02634LB893574L","create_time":"2020-01-20T22:22:00Z","update_time":"2020-01-20T22:22:00Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/4R015456MB4959940","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/4R015456MB4959940/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTCP5A9SH02634LB893574L","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-20T22:21:40Z","update_time":"2020-01-20T22:22:00Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTCP5A9SH02634LB893574L","rel":"self","method":"GET"}]}', '2020-01-20 16:21:37', 'jairolaguna@gmail.com', '300', 'completo'),
(54, 'vd3e1midb4gs65ephji06k6ji1', '{"id":"PAYID-LYTSSEI9TV05685XW642883C","intent":"sale","state":"approved","cart":"88Y453701M4862033","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"vd3e1midb4gs65ephji06k6ji1#EPQkgOVDzl6hhzhSazIPEg==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"80123367HX3768410","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTSSEI9TV05685XW642883C","create_time":"2020-01-21T16:38:59Z","update_time":"2020-01-21T16:38:59Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/80123367HX3768410","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/80123367HX3768410/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTSSEI9TV05685XW642883C","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-21T16:38:41Z","update_time":"2020-01-21T16:38:59Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTSSEI9TV05685XW642883C","rel":"self","method":"GET"}]}', '2020-01-21 10:38:35', 'jairolaguna@gmail.com', '300', 'completo'),
(55, 'vd3e1midb4gs65ephji06k6ji1', '{"id":"PAYID-LYTSVFQ1A36275186936615Y","intent":"sale","state":"approved","cart":"1LY75379TY488493N","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"vd3e1midb4gs65ephji06k6ji1#OGZgsDDgRbHamqKFWNCdqg==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"3TD82225EH161472E","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTSVFQ1A36275186936615Y","create_time":"2020-01-21T16:45:20Z","update_time":"2020-01-21T16:45:20Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/3TD82225EH161472E","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/3TD82225EH161472E/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTSVFQ1A36275186936615Y","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-21T16:45:10Z","update_time":"2020-01-21T16:45:20Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTSVFQ1A36275186936615Y","rel":"self","method":"GET"}]}', '2020-01-21 10:45:06', 'jairolaguna@gmail.com', '300', 'completo'),
(56, 'j1vebiftkrpm7nbp6up1uq17q2', '{"id":"PAYID-LYTS3XY9LV30492W44903323","intent":"sale","state":"approved","cart":"7AM59340HL233935U","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"j1vebiftkrpm7nbp6up1uq17q2#XhGQP0mp/MehBSCLhK5OfQ==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"1CT38225M55660832","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTS3XY9LV30492W44903323","create_time":"2020-01-21T16:59:38Z","update_time":"2020-01-21T16:59:38Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1CT38225M55660832","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/1CT38225M55660832/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTS3XY9LV30492W44903323","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-21T16:59:11Z","update_time":"2020-01-21T16:59:38Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTS3XY9LV30492W44903323","rel":"self","method":"GET"}]}', '2020-01-21 10:57:27', 'jairolaguna@gmail.com', '300', 'completo'),
(57, 'j1vebiftkrpm7nbp6up1uq17q2', '{"id":"PAYID-LYTS4XI74T26409UV372315K","intent":"sale","state":"approved","cart":"2KP89801BD758703K","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"j1vebiftkrpm7nbp6up1uq17q2#1N1f3CA2ZDclsHzd2ROwxw==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"2EV98818FY615793K","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTS4XI74T26409UV372315K","create_time":"2020-01-21T17:01:27Z","update_time":"2020-01-21T17:01:27Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/2EV98818FY615793K","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/2EV98818FY615793K/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTS4XI74T26409UV372315K","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-21T17:01:17Z","update_time":"2020-01-21T17:01:27Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTS4XI74T26409UV372315K","rel":"self","method":"GET"}]}', '2020-01-21 11:01:15', 'kaffetonica@gmail.com', '300', 'completo'),
(58, 'j1vebiftkrpm7nbp6up1uq17q2', '{"id":"PAYID-LYTTEEI2FK96648BJ3705810","intent":"sale","state":"approved","cart":"7CH42386V1362824E","payer":{"payment_method":"paypal","status":"VERIFIED","payer_info":{"email":"jairolaguna@personal.example.com","first_name":"Jairo","last_name":"Laguna","payer_id":"C4KM3S8EFA67J","shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"},"phone":"4086139911","country_code":"US"}},"transactions":[{"amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payee":{"merchant_id":"NXHNLNNKJQ35G","email":"masterjino@business.example.com"},"description":"Compra de Productos a Master Jino: $","custom":"j1vebiftkrpm7nbp6up1uq17q2#9/oPPEnKLQpIxltcMRBe6w==","item_list":{"shipping_address":{"recipient_name":"Jairo Laguna","line1":"1 Main St","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"42229056YE247225A","state":"completed","amount":{"total":"300.00","currency":"USD","details":{"subtotal":"300.00","shipping":"0.00","insurance":"0.00","handling_fee":"0.00","shipping_discount":"0.00"}},"payment_mode":"INSTANT_TRANSFER","protection_eligibility":"ELIGIBLE","protection_eligibility_type":"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE","transaction_fee":{"value":"9.00","currency":"USD"},"parent_payment":"PAYID-LYTTEEI2FK96648BJ3705810","create_time":"2020-01-21T17:17:24Z","update_time":"2020-01-21T17:17:24Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/sale/42229056YE247225A","rel":"self","method":"GET"},{"href":"https://api.sandbox.paypal.com/v1/payments/sale/42229056YE247225A/refund","rel":"refund","method":"POST"},{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTTEEI2FK96648BJ3705810","rel":"parent_payment","method":"GET"}]}}]}],"create_time":"2020-01-21T17:17:05Z","update_time":"2020-01-21T17:17:24Z","links":[{"href":"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-LYTTEEI2FK96648BJ3705810","rel":"self","method":"GET"}]}', '2020-01-21 11:17:02', 'naturalifejinotega@gmail.com', '300', 'completo');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
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
