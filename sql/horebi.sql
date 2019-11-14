-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2019 a las 15:52:12
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Base de datos: `horebi`

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `afiliados` (1)

CREATE TABLE `afiliados` (
  `ID_Afiliado` int(11) NOT NULL,
  `ID_Categoria` int(11) NOT NULL,
  `nombre_Afi` varchar(25) COLLATE utf8_bin NOT NULL,
  `apellido_Afi` varchar(25) COLLATE utf8_bin NOT NULL,
  `cedula_Afi` varchar(15) COLLATE utf8_bin NOT NULL,
  `telefono_Afi` varchar(20) COLLATE utf8_bin NOT NULL,
  `correo_Afi` varchar(30) COLLATE utf8_bin NOT NULL,
  `profesion_Afi` varchar(40) COLLATE utf8_bin NOT NULL,
  `profesion_Afi_2` varchar(40) COLLATE utf8_bin NOT NULL,
  `descripcion_Producto` varchar(100) COLLATE utf8_bin NOT NULL,
  `afiliacion_Afi` varchar(10) COLLATE utf8_bin NOT NULL,
  `pais_Afi` varchar(15) COLLATE utf8_bin NOT NULL,
  `region_Afi` varchar(30) COLLATE utf8_bin NOT NULL,
  `subRegion_Afi` varchar(30) COLLATE utf8_bin NOT NULL,
  `fotografia` varchar(200) COLLATE utf8_bin NOT NULL,
  `direccion_Afi` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `mostrar` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `afiliados`

INSERT INTO `afiliados` (`ID_Afiliado`, `ID_Categoria`, `nombre_Afi`, `apellido_Afi`, `cedula_Afi`, `telefono_Afi`, `correo_Afi`, `profesion_Afi`, `profesion_Afi_2`, `descripcion_Producto`, `afiliacion_Afi`, `pais_Afi`, `region_Afi`, `subRegion_Afi`, `fotografia`, `direccion_Afi`, `fecha_registro`, `mostrar`) VALUES
(23, 1, 'Pablo A.', 'Cabeza P.', '12728036', '0254-231.57.32', 'pcabeza7@gmail.com', 'Programador de Desarrollos Web', 'T.S.U. Mecánica Térmica', '', 'Ini', 'Colombia', 'Norte de Santander', 'Pamplona', '2.jpg', '', '2019-04-04 00:00:00', 1),
(26, 15, 'Angel', 'Varela', '23423', '2342-342.34.23', 'angel@gmail.com', 'tatuador', 'no especificó', 'Tatuajes corporales, para embellecer tu cuerpo.', 'mensual', 'Ecuador', 'Guayas', 'Guayaquil', '20.jpg', 'Calle Quito cruce con avenida Guayaquil, frente al BCE', '2019-04-07 00:00:00', 1),
(31, 2, 'Elimelet', 'Borcaza', '8768768767', '8768-787.68.76', 'elimelet@gmail.com', 'Productos Alimenticion Preparados', 'no especificó', 'Venta de Yogur de variados sabores. Yogurt liquido', 'mensual', 'Colombia', 'Norte de Santander', 'Pamplona', '1442446657055.jpg', 'Barrio Simon Bolivar', '2019-04-08 00:00:00', 1);

-- Indices de la tabla `afiliados`

ALTER TABLE `afiliados`
  ADD PRIMARY KEY (`ID_Afiliado`),
  ADD UNIQUE KEY `correo_Afi` (`correo_Afi`);

-- AUTO_INCREMENT de la tabla `afiliados`

ALTER TABLE `afiliados`
  MODIFY `ID_Afiliado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `afiliado_comercial` (2)

CREATE TABLE `afiliado_comercial` (
  `ID_AfiliadoCom` int(11) NOT NULL,
  `ID_Categoria` varchar(5) COLLATE utf8_bin NOT NULL,
  `Nombre_Comercio` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion_Comercio` varchar(150) COLLATE utf8_bin NOT NULL,
  `RIF` varchar(15) COLLATE utf8_bin NOT NULL,
  `Telefono_Comercio` varchar(20) COLLATE utf8_bin NOT NULL,
  `Correo_Electronico_Comercio` varchar(100) COLLATE utf8_bin NOT NULL,
  `Plan_Afiliacion_Comercio` varchar(20) COLLATE utf8_bin NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(20) COLLATE utf8_bin NOT NULL,
  `Cedula` varchar(20) COLLATE utf8_bin NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_bin NOT NULL,
  `Correo_Electronico` varchar(30) COLLATE utf8_bin NOT NULL,
  `Cargo` varchar(30) COLLATE utf8_bin NOT NULL,
  `Pais_Comercio` varchar(30) COLLATE utf8_bin NOT NULL,
  `Region_Comercio` varchar(30) COLLATE utf8_bin NOT NULL,
  `SubRegion_Comercio` varchar(30) COLLATE utf8_bin NOT NULL,
  `logo_comercio` varchar(200) COLLATE utf8_bin NOT NULL,
  `direccion_Comercio` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_Afiliacion` date NOT NULL,
  `mostrar` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `afiliado_comercial`

INSERT INTO `afiliado_comercial` (`ID_AfiliadoCom`, `ID_Categoria`, `Nombre_Comercio`, `descripcion_Comercio`, `RIF`, `Telefono_Comercio`, `Correo_Electronico_Comercio`, `Plan_Afiliacion_Comercio`, `Nombre`, `Apellido`, `Cedula`, `Telefono`, `Correo_Electronico`, `Cargo`, `Pais_Comercio`, `Region_Comercio`, `SubRegion_Comercio`, `logo_comercio`, `direccion_Comercio`, `fecha_Afiliacion`, `mostrar`) VALUES
(15, 'Panad', 'Belen La Casa del Pan', '', '121212', '232323', 'belen@gmail.com', 'Bas', 'Richard', 'Gutierrez', '232323', '123121', 'richard@gmail.com', 'Gerente general', 'Ecuador', 'Sucumbíos', 'Lago Agrio', '', '', '0000-00-00', 0),
(44, '16', 'SewCad', 'Corte de diseños y apliques decorativos. ', '1212342311', '2323423423', 'sewcad@gmail.com', 'Bas', 'Silvia ', 'Noriega', '12312312312', '213123123123', 'veronica@gmail.com', 'Gerente general', 'Colombia', 'Norte de Santander', 'Pamplona', 'sewcad.jpg', 'Calle 4 con carrera 4', '2019-03-26', 1);

-- Indices de la tabla `afiliado_comercial`

ALTER TABLE `afiliado_comercial`
  ADD PRIMARY KEY (`ID_AfiliadoCom`),
  ADD UNIQUE KEY `Correo_Electronico_Comercio` (`Correo_Electronico_Comercio`),
  ADD UNIQUE KEY `Correo_Electronico` (`Correo_Electronico`);

-- AUTO_INCREMENT de la tabla `afiliado_comercial`

ALTER TABLE `afiliado_comercial`
  MODIFY `ID_AfiliadoCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `categoria` (3)

CREATE TABLE `categoria` (
  `ID_Categoria` int(11) NOT NULL,
  `codigoCIUO` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombre_categoria` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `categoria`

INSERT INTO `categoria` (`ID_Categoria`, `codigoCIUO`, `nombre_categoria`) VALUES
(1, '2130', 'Ingeniero sistemas'),
(2, '0', 'Comerciante'),
(3, '0', 'Medico'),
(4, '0', 'Tienda'),
(5, '0', 'Dama compañia'),
(6, '0', 'Confección textil'),
(7, '0', 'Profesor'),
(8, '0', 'Administrador'),
(9, '0', 'Maestro Pastelero'),
(10, '0', 'Maestro Panadero'),
(11, '0', 'Maestro'),
(12, '0', 'Musico'),
(13, '0', 'Contador Publico'),
(14, '0', 'Maestro Albañilería'),
(15, '0', 'Tatuador'),
(16, '0', 'Artes graficas'),
(17, '0', 'Panaderia'),
(18, '2111', 'Físicos'),
(19, '2111', 'Astrónomos'),
(20, '2112', 'Meteorólogos'),
(21, '2114', 'Geólogos  '),
(22, '2114', 'Geofísico'),
(23, '2141', 'Ingenieros industrial'),
(24, '2141', 'Ingeniero de producción'),
(25, '2130', 'Ingeniero anális y diseño sistemas'),
(26, '2130', 'Ingeniero computo'),
(27, '2130', 'Ingeniero desarrollo de softwa'),
(28, '2141', 'Arquitecto paisajista'),
(29, '2130', 'Ingeniero informatica'),
(30, '2141', 'Arquitecto urbanista'),
(31, '2130', 'Ingeniero computacion'),
(32, '2130', 'Ingeniero desarrollo software'),
(33, '2141', 'Arquitecto'),
(34, '2141', 'Urbanista'),
(35, '2142', 'Ingeniero Ambiental'),
(36, '2142', 'Ingeniero civil'),
(37, '2142', 'Ingeniero construcción'),
(38, '2142', 'Ingeniero sanitario'),
(39, '2142', 'Ingeniero transporte'),
(40, '2143', 'Ingeniero eléctrico'),
(41, '2143', 'Ingeniero electrónico'),
(42, '2143', 'Ingeniero mantenimiento'),
(43, '2143', 'Ingeniero robotica'),
(44, '2143', 'Ingeniero sonido'),
(45, '2143', 'Ingeniero telecomunicaciones'),
(46, '2144', 'Arquitecto construcciones navales'),
(47, '2144', 'Ingeniero diseño mecánico'),
(48, '2144', 'Ingeniero mantenimiento mecácino'),
(49, '2144', 'Ingeniero mecánico'),
(50, '2144', 'Ingeniero naval'),
(51, '2145', 'Ingeniero control de calidad'),
(52, '2145', 'Ingeniero seguridad industrial'),
(53, '2146', 'Ingeniero alimentos'),
(54, '2146', 'Ingeniero bioquimico'),
(55, '2146', 'Ingeniero quimico'),
(56, '2146', 'Ingeniero petroquimico'),
(57, '2147', 'Ingeniero materiales'),
(58, '2147', 'Ingeniero metalurgico'),
(59, '2147', 'Ingeniero minas'),
(60, '2147', 'Ingeniero petrolero'),
(61, '2149', 'Diseñador gráfico'),
(62, '2149', 'Diseñador industrial'),
(63, '2149', 'Ingeniero mecatrónica'),
(64, '2149', 'Ingeniero agroindustrial'),
(65, '2211', 'Bacteriólogo'),
(66, '2211', 'Biólogo'),
(67, '2211', 'Biólogo marino'),
(68, '2211', 'Biofísico'),
(69, '2211', 'Botánico'),
(70, '2211', 'Ecólogo'),
(71, '2211', 'Genetista'),
(72, '2211', 'Inmunólogo'),
(73, '2211', 'Microbiólogo'),
(74, '2211', 'Parasitólogo');

-- Indices de la tabla `categoria`

ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

-- AUTO_INCREMENT de la tabla `categoria`

ALTER TABLE `categoria`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `citas` (4)

CREATE TABLE `citas` (
  `ID_Cita` int(11) NOT NULL,
  `ID_Afiliado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `turno` varchar(9) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cedula_Identidad` varchar(9) COLLATE utf8_bin NOT NULL,
  `edad` varchar(2) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(14) COLLATE utf8_bin NOT NULL,
  `fecha_solicitud` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- Indices de la tabla `citas`

ALTER TABLE `citas`
  ADD PRIMARY KEY (`ID_Cita`);

-- AUTO_INCREMENT de la tabla `citas`

ALTER TABLE `citas`
  MODIFY `ID_Cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `galeria` (5)

CREATE TABLE `galeria` (
  `ID_Galeria` int(11) NOT NULL,
  `ID_Afiliado` int(11) NOT NULL,
  `galeria_1` varchar(200) COLLATE utf8_bin NOT NULL,
  `espacio` varchar(20) COLLATE utf8_bin NOT NULL,
  `tipoArchivo` varchar(10) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin NOT NULL,
  `precio_Mayor` varchar(10) COLLATE utf8_bin NOT NULL,
  `precio_Menor` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `galeria`

INSERT INTO `galeria` (`ID_Galeria`, `ID_Afiliado`, `galeria_1`, `espacio`, `tipoArchivo`, `descripcion`, `precio_Mayor`, `precio_Menor`) VALUES
(1, 32, '', '', '', '', '', ''),
(5, 44, '2.jpg', '201478', 'image/jpeg', 'ww', 'ww', 'ww'),
(6, 44, '1.jpg', '96688', 'image/jpeg', 'a', 'aa', 'aa'),
(7, 44, '1.jpg', '96688', 'image/jpeg', 'mm', 'mm', 'mm'),
(8, 44, '1.jpg', '96688', 'image/jpeg', 'ñññ', 'ñññññ', 'ññññññ'),
(9, 33, '', '', '', '', '', ''),
(14, 26, '1.jpg', '96688', 'image/jpeg', 'Camioneta ', '872828 cio', ''),
(15, 26, '1.jpg', '96688', 'image/jpeg', 'De nuevo la camioneta', '2323 cop', '');

-- Indices de la tabla `galeria`

ALTER TABLE `galeria`
  ADD PRIMARY KEY (`ID_Galeria`);

-- AUTO_INCREMENT de la tabla `galeria`

ALTER TABLE `galeria`
  MODIFY `ID_Galeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `horarios` (6)

CREATE TABLE `horarios` (
  `ID_Horario` int(11) NOT NULL,
  `ID_Afiliado` int(10) NOT NULL,
  `inicio_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `culmina_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `lunes_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `martes_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `miercoles_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `jueves_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `viernes_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `sabado_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `domingo_mañana` varchar(10) COLLATE utf8_bin NOT NULL,
  `inicia_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `culmina_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `lunes_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `martes_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `miercoles_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `jueves_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `viernes_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `sabado_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `domingo_tarde` varchar(10) COLLATE utf8_bin NOT NULL,
  `inicia_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `culmina_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `lunes_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `martes_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `miercoles_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `jueves_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `viernes_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `sabado_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `domingo_mañanaEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `inicia_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `culmina_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `lunes_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `martes_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `miercoles_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `jueves_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `viernes_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `sabado_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `domingo_tardeEsp_1` varchar(10) COLLATE utf8_bin NOT NULL,
  `inicia_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `culmina_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `lunes_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `martes_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `miercoles_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `jueves_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `viernes_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `sabado_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `domingo_mañanaEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `inicia_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `culmina_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `lunes_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `martes_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `miercoles_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `jueves_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `viernes_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `sabado_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL,
  `domingo_tardeEsp_2` varchar(11) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `horarios`

INSERT INTO `horarios` (`ID_Horario`, `ID_Afiliado`, `inicio_mañana`, `culmina_mañana`, `lunes_mañana`, `martes_mañana`, `miercoles_mañana`, `jueves_mañana`, `viernes_mañana`, `sabado_mañana`, `domingo_mañana`, `inicia_tarde`, `culmina_tarde`, `lunes_tarde`, `martes_tarde`, `miercoles_tarde`, `jueves_tarde`, `viernes_tarde`, `sabado_tarde`, `domingo_tarde`, `inicia_mañanaEsp_1`, `culmina_mañanaEsp_1`, `lunes_mañanaEsp_1`, `martes_mañanaEsp_1`, `miercoles_mañanaEsp_1`, `jueves_mañanaEsp_1`, `viernes_mañanaEsp_1`, `sabado_mañanaEsp_1`, `domingo_mañanaEsp_1`, `inicia_tardeEsp_1`, `culmina_tardeEsp_1`, `lunes_tardeEsp_1`, `martes_tardeEsp_1`, `miercoles_tardeEsp_1`, `jueves_tardeEsp_1`, `viernes_tardeEsp_1`, `sabado_tardeEsp_1`, `domingo_tardeEsp_1`, `inicia_mañanaEsp_2`, `culmina_mañanaEsp_2`, `lunes_mañanaEsp_2`, `martes_mañanaEsp_2`, `miercoles_mañanaEsp_2`, `jueves_mañanaEsp_2`, `viernes_mañanaEsp_2`, `sabado_mañanaEsp_2`, `domingo_mañanaEsp_2`, `inicia_tardeEsp_2`, `culmina_tardeEsp_2`, `lunes_tardeEsp_2`, `martes_tardeEsp_2`, `miercoles_tardeEsp_2`, `jueves_tardeEsp_2`, `viernes_tardeEsp_2`, `sabado_tardeEsp_2`, `domingo_tardeEsp_2`) VALUES
(44, 44, '07:00 am', '12:00 m', 'lunes', 'martes', 'miercoles', '', '', '', '', '03:30 pm', '06:00 pm', 'lunes', 'martes', 'miercoles', 'jueves', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- Indices de la tabla `horarios`

ALTER TABLE `horarios`
  ADD PRIMARY KEY (`ID_Horario`);

-- AUTO_INCREMENT de la tabla `horarios`

ALTER TABLE `horarios`
  MODIFY `ID_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `imagenes` (7)

CREATE TABLE `imagenes` (
  `ID_Imagen` int(11) NOT NULL,
  `ID_Afiliado` int(11) NOT NULL,
  `imagen_slider` varchar(100) COLLATE utf8_bin NOT NULL,
  `tamaño_imagen` varchar(15) COLLATE utf8_bin NOT NULL,
  `tipo_imagen` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `imagenes`

INSERT INTO `imagenes` (`ID_Imagen`, `ID_Afiliado`, `imagen_slider`, `tamaño_imagen`, `tipo_imagen`) VALUES
(1, 44, 'brujita.jpg', '', ''),
(7, 31, 'brujita.jpg', '8267', 'image/jpeg'),
(8, 31, 'brujita_2.jpg', '43233', 'image/jpeg'),
(9, 26, '1.jpg ', '96688 ', 'image/jpeg'),
(11, 26, '1.jpg ', '96688 ', 'image/jpeg'),
(12, 26, '1.jpg ', '96688 ', 'image/jpeg'),
(13, 26, '1.jpg ', '96688 ', 'image/jpeg'),
(14, 26, '1.jpg ', '96688 ', 'image/jpeg');

-- Indices de la tabla `imagenes`

ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`ID_Imagen`);

-- AUTO_INCREMENT de la tabla `imagenes`

ALTER TABLE `imagenes`
  MODIFY `ID_Imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `imagenes_comercial` (8)

CREATE TABLE `imagenes_comercial` (
  `ID_Imagen` int(11) NOT NULL,
  `ID_AfiliadoCom` int(11) NOT NULL,
  `imagen_slider` varchar(50) COLLATE utf8_bin NOT NULL,
  `tamaño_imagen` varchar(15) COLLATE utf8_bin NOT NULL,
  `tipo_imagen` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos `imagenes_comercial`

INSERT INTO `imagenes_comercial` (`ID_Imagen`, `ID_AfiliadoCom`, `imagen_slider`, `tamaño_imagen`, `tipo_imagen`) VALUES
(1, 44, 'sewcad_1.jpg', '78729', 'image/jpeg'),
(2, 44, 'sewcad_2.jpg', '40352', 'image/jpeg'),
(4, 44, 'sewcad_4.jpg', '65390', 'image/jpeg');

-- Indices de la tabla `imagenes_comercial`

ALTER TABLE `imagenes_comercial`
  ADD PRIMARY KEY (`ID_Imagen`);

-- AUTO_INCREMENT de la tabla `imagenes_comercial`

ALTER TABLE `imagenes_comercial`
  MODIFY `ID_Imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `perfil_afiliado` (9)

CREATE TABLE `perfil_afiliado` (
  `ID_Perfil` int(11) NOT NULL,
  `ID_Afiliado` int(10) NOT NULL,
  `perfil_profesional` varchar(600) COLLATE utf8_bin NOT NULL,
  `servicio_1` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_2` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_3` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_4` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_5` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_6` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_7` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_8` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_9` varchar(200) COLLATE utf8_bin NOT NULL,
  `servicio_10` varchar(200) COLLATE utf8_bin NOT NULL,
  `proyecto_1` varchar(200) COLLATE utf8_bin NOT NULL,
  `proyecto_2` varchar(200) COLLATE utf8_bin NOT NULL,
  `proyecto_3` varchar(200) COLLATE utf8_bin NOT NULL,
  `proyecto_4` varchar(200) COLLATE utf8_bin NOT NULL,
  `trabajo_1` varchar(200) COLLATE utf8_bin NOT NULL,
  `trabajo_2` varchar(200) COLLATE utf8_bin NOT NULL,
  `trabajo_3` varchar(200) COLLATE utf8_bin NOT NULL,
  `trabajo_4` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `perfil_afiliado`

INSERT INTO `perfil_afiliado` (`ID_Perfil`, `ID_Afiliado`, `perfil_profesional`, `servicio_1`, `servicio_2`, `servicio_3`, `servicio_4`, `servicio_5`, `servicio_6`, `servicio_7`, `servicio_8`, `servicio_9`, `servicio_10`, `proyecto_1`, `proyecto_2`, `proyecto_3`, `proyecto_4`, `trabajo_1`, `trabajo_2`, `trabajo_3`, `trabajo_4`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Director de Operaciones, encargado de administrar y gerenciar el trabajo de campo en Thermos-Control C.A empresa dedicada a climatizar edificios de salud.', 'Jefe de Mantenimiento en Hospital Central de San Felipe, Yaracuy, Venezuela', 'Encargado de Panaderia \"Belen la casa del Pan\" Lago Agrio, Sucumbios, Ecuador', '');

-- Indices de la tabla `perfil_afiliado`

ALTER TABLE `perfil_afiliado`
  ADD PRIMARY KEY (`ID_Perfil`);

-- AUTO_INCREMENT de la tabla `perfil_afiliado`

ALTER TABLE `perfil_afiliado`
  MODIFY `ID_Perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla para la tabla `profesiones` (10)

CREATE TABLE `profesiones` (
  `ID_Profesion` int(11) NOT NULL,
  `Profesion` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `profesiones`

INSERT INTO `profesiones` (`ID_Profesion`, `Profesion`) VALUES
(1, 'Estilista');

-- Indices de la tabla `profesiones`

ALTER TABLE `profesiones`
  ADD PRIMARY KEY (`ID_Profesion`);

-- AUTO_INCREMENT de la tabla `profesiones`

ALTER TABLE `profesiones`
  MODIFY `ID_Profesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Estructura de tabla `usuarios` (11)

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(30) CHARACTER SET utf8 NOT NULL,
  `clave` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcado de datos para la tabla `usuarios`

INSERT INTO `usuarios` (`ID_Usuario`, `nombre_usuario`, `clave`) VALUES
(23, 'Pablo', '$2y$10$4jnCXUYmVbtgcW1UfPCPSOYB04x.CC8Rkyzdljbx9w7DEO.0GICIK'),
(26, 'Angel', '$2y$10$Q6vrd.P2ujFt6vR4ThjfEexUlXGFe8vS3kwrxuM0Ya8oj4282Dj5m'),
(31, 'Elimelet', '$2y$10$SrFSgp7U6ieJjQhpnnMezOmHmvzciKMnj9ei9/1GS.RP67PTEUq2u');

-- Indices de la tabla `usuarios`

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `clave` (`clave`);
/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */
-- Volcado de datos para la tabla `usuario_comercial` (12)

INSERT INTO `usuario_comercial` (`ID_UsuarioCom`, `nombre_usuarioCom`, `clave_usuarioCom`) VALUES
(15, 'Belen', '0000'),
(44, 'ImpresionArte', '1906');

-- Indices de la tabla `usuario_comercial`

ALTER TABLE `usuario_comercial`
  ADD PRIMARY KEY (`ID_UsuarioCom`),
  ADD UNIQUE KEY `nombre_usuarioCom` (`nombre_usuarioCom`),
  ADD UNIQUE KEY `clave_usuarioCom` (`clave_usuarioCom`);

-- AUTO_INCREMENT de la tabla `usuario_comercial`

ALTER TABLE `usuario_comercial`
  MODIFY `ID_UsuarioCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/* ---------------------------------------------------------------------------------------------------------------------- */
/* ---------------------------------------------------------------------------------------------------------------------- */