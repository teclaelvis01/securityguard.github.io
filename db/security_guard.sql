-- phpMyAdmin SQL Dump
-- version 4.5.0-dev
-- http://www.phpmyadmin.net
--
-- Servidor: 192.168.30.23
-- Tiempo de generación: 28-05-2015 a las 23:21:14
-- Versión del servidor: 5.5.40-0+wheezy1
-- Versión de PHP: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `security_guard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alert`
--

CREATE TABLE IF NOT EXISTS `alert` (
  `id_alert` int(11) NOT NULL,
  `id_message` int(11) NOT NULL,
  `id_typealert` int(11) NOT NULL,
  `id_station` int(11) NOT NULL,
  `reportdate_alert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_area` varchar(45) NOT NULL,
  `telf_area` varchar(20) NOT NULL,
  `createdate_area` datetime NOT NULL,
  `lastupdate_area` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centinela`
--

CREATE TABLE IF NOT EXISTS `centinela` (
  `id_centinela` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `code`
--

CREATE TABLE IF NOT EXISTS `code` (
  `id_code` int(11) NOT NULL,
  `id_station` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `password_code` varchar(32) NOT NULL,
  `createdate_code` datetime NOT NULL,
  `duration_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creator`
--

CREATE TABLE IF NOT EXISTS `creator` (
  `id_creator` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id_group` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `name_group` varchar(45) NOT NULL,
  `createdate_group` datetime NOT NULL,
  `lastupdate_group` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int(11) NOT NULL,
  `id_alert` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `descrip_message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id_person` int(11) NOT NULL COMMENT 'unique identifier of the person',
  `name_person` varchar(45) NOT NULL,
  `identify_card_person` varchar(15) NOT NULL,
  `adress_person` varchar(60) DEFAULT NULL,
  `telf_person` varchar(20) NOT NULL,
  `email_person` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad asociada a las características de una persona';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id_schedule` int(11) NOT NULL,
  `descrip_schedule` varchar(45) NOT NULL,
  `lastupdate_schedule` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `send`
--

CREATE TABLE IF NOT EXISTS `send` (
  `id_send` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_message` int(11) NOT NULL,
  `createdate_send` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `id_station` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `macaddress_station` varchar(45) NOT NULL,
  `serial_station` varchar(45) NOT NULL,
  `model_station` varchar(45) NOT NULL,
  `brand_station` varchar(45) NOT NULL,
  `name_station` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_alert`
--

CREATE TABLE IF NOT EXISTS `type_alert` (
  `id_typealert` int(11) NOT NULL,
  `description_typealert` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_user`
--

CREATE TABLE IF NOT EXISTS `type_user` (
  `id_type_user` int(11) NOT NULL,
  `name_type_user` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `id_type_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_creator` int(11) DEFAULT NULL,
  `username_user` varchar(45) NOT NULL,
  `createddate_user` datetime NOT NULL,
  `lastupdate_user` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `id_zone` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `name_zone` int(11) NOT NULL,
  `createdate_zone` datetime NOT NULL,
  `lastupdate_zone` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id_alert`),
  ADD KEY `id_message` (`id_message`),
  ADD KEY `id_typealert` (`id_typealert`),
  ADD KEY `id_station` (`id_station`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`),
  ADD UNIQUE KEY `name_area` (`name_area`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `centinela`
--
ALTER TABLE `centinela`
  ADD PRIMARY KEY (`id_centinela`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `id_station` (`id_station`),
  ADD KEY `id_group` (`id_group`);

--
-- Indices de la tabla `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`id_creator`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id_group`),
  ADD UNIQUE KEY `name_group` (`name_group`),
  ADD KEY `id_zone` (`id_zone`),
  ADD KEY `id_schedule` (`id_schedule`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_alert` (`id_alert`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id_schedule`);

--
-- Indices de la tabla `send`
--
ALTER TABLE `send`
  ADD PRIMARY KEY (`id_send`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_message` (`id_message`);

--
-- Indices de la tabla `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id_station`),
  ADD UNIQUE KEY `macaddress_station` (`macaddress_station`),
  ADD UNIQUE KEY `serial_station` (`serial_station`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Indices de la tabla `type_alert`
--
ALTER TABLE `type_alert`
  ADD PRIMARY KEY (`id_typealert`),
  ADD UNIQUE KEY `description_typealert` (`description_typealert`);

--
-- Indices de la tabla `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id_type_user`),
  ADD UNIQUE KEY `name_type_user` (`name_type_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username_user` (`username_user`),
  ADD KEY `id_person` (`id_person`),
  ADD KEY `id_type_user` (`id_type_user`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `id_creator` (`id_creator`);

--
-- Indices de la tabla `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id_zone`),
  ADD KEY `id_area` (`id_area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alert`
--
ALTER TABLE `alert`
  MODIFY `id_alert` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `centinela`
--
ALTER TABLE `centinela`
  MODIFY `id_centinela` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `creator`
--
ALTER TABLE `creator`
  MODIFY `id_creator` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique identifier of the person';
--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `send`
--
ALTER TABLE `send`
  MODIFY `id_send` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `station`
--
ALTER TABLE `station`
  MODIFY `id_station` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `type_alert`
--
ALTER TABLE `type_alert`
  MODIFY `id_typealert` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `type_user`
--
ALTER TABLE `type_user`
  MODIFY `id_type_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zone`
--
ALTER TABLE `zone`
  MODIFY `id_zone` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
