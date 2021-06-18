-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: fdb25.awardspace.net
-- Tiempo de generación: 30-05-2020 a las 18:52:24
-- Versión del servidor: 5.7.20-log
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `3451845_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CARDS`
--

CREATE TABLE `CARDS` (
  `idCard` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `cardNumber` varchar(16) DEFAULT NULL,
  `cardExp` varchar(5) DEFAULT NULL,
  `cardCVV` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CART`
--

CREATE TABLE `CART` (
  `idUser` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRODUCTS`
--

CREATE TABLE `PRODUCTS` (
  `idProduct` int(11) NOT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productImageURL` varchar(200) DEFAULT NULL,
  `productStock` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PRODUCTS`
--

INSERT INTO `PRODUCTS` (`idProduct`, `productDescription`, `productPrice`, `productImageURL`, `productStock`) VALUES
(1, 'Omnimon Alter-S (Secret Rare)',62.09, 'https://product-images.tcgplayer.com/fit-in/400x558/232814.jpg', 2),
(2, 'Beelzemon (Alternate Art)',67.92, 'https://product-images.tcgplayer.com/fit-in/400x558/229926.jpg', 50),
(3, 'AncientGreymon (Alternate Art)',38.26, 'https://product-images.tcgplayer.com/fit-in/400x558/238255.jpg', 30),
(4, 'AncientGarurumon (Alternate Art)',39.77, 'https://product-images.tcgplayer.com/fit-in/400x558/238257.jpg', 40),
(5, 'BlackWarGreymon (Alternate Art)',25.00, 'https://product-images.tcgplayer.com/fit-in/400x558/232826.jpg', 200),
(6, 'UlforceVeedramon (Alternate Art)',18.98, 'https://product-images.tcgplayer.com/fit-in/400x558/232824.jpg', 5),
(7, 'Rosemon (Alternate Art)',12.99, 'https://product-images.tcgplayer.com/fit-in/400x558/229928.jpg', 15),
(8, 'RagnaLoardmon',7.95, 'https://product-images.tcgplayer.com/fit-in/400x558/232304.jpg', 12),
(9, 'Imperialdramon Dragon Mode', 7.70, 'https://product-images.tcgplayer.com/fit-in/400x558/232805.jpg', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USERS`
--

CREATE TABLE `USERS` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userEmail` varchar(60) DEFAULT NULL,
  `userPassword` varchar(50) DEFAULT NULL,
  `userProfilePicture` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `USERS`
--

INSERT INTO `USERS` (`idUser`, `userName`, `userEmail`, `userPassword`, `userProfilePicture`) VALUES
(12, 'Gerardo Salomon Rodriguez Campos', 'doctorparadoja@gmail.com', 'HuTao0306',
 'https://scontent.ftrc3-1.fna.fbcdn.net/v/t1.6435-9/125761455_4000308616663741_5831508755128636745_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEBsw8wjIIiXdwA2NJMGj3Z_AnPG36VjHj8Cc8bfpWMePO-hM3ao70UWATR3HFL-Gz28xXIR0mHKqv-aUv4YlpL&_nc_ohc=_4vrA6tT91UAX8dvHtT&_nc_ht=scontent.ftrc3-1.fna&oh=30cb792be301951a800693a0a27f6747&oe=60D1C819'),
(15, 'root ', 'root@gmail.com', 'pass123', 'https://rootear.com/files/2014/01/Root-Android-640x480.jpg?width=1200&enable=upscale'),
(13, 'Maria Guadalupe Reza Casas', 'Maria@gmail.com', 'Weyno123',
 'https://i.pinimg.com/564x/b4/7f/b7/b47fb70ca3cfa901eb27cb09d006db3c.jpg'),
(14, 'dagh0022@gmail.com GonzÃ¡lez HernÃ¡ndez ', 'dagh0022@gmail.com', 'megusta', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CARDS`
--
ALTER TABLE `CARDS`
  ADD PRIMARY KEY (`idCard`);

--
-- Indices de la tabla `CART`
--
ALTER TABLE `CART`
  ADD KEY `fk_idProducts` (`idProduct`),
  ADD KEY `fk_idUser` (`idUser`);

--
-- Indices de la tabla `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`idProduct`);

--
-- Indices de la tabla `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CARDS`
--
ALTER TABLE `CARDS`
  MODIFY `idCard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `USERS`
--
ALTER TABLE `USERS`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
