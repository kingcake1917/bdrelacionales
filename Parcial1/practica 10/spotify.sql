-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2025 a las 04:58:32
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'metallica', 'banda de metal'),
(2, 'eminem', 'rapero'),
(3, 'guns n roses', 'banda de rock'),
(4, 'nirvana', 'banda de rock'),
(5, 'luis miguel ', 'cantante de pop'),
(6, 'queen', 'banda de rock'),
(7, 'bad bunny', 'cantante de reggaeton'),
(8, 'system of a down', 'banda de metal'),
(9, 'linking park', 'banda de rock'),
(10, 'acdc', 'banda de rock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artista_canciones`
--

INSERT INTO `artista_canciones` (`id`, `artista_id`, `cancion_id`) VALUES
(1, 5, 3),
(2, 8, 22),
(3, 9, 16),
(4, 6, 13),
(5, 1, 20),
(6, 8, 19),
(7, 8, 15),
(8, 7, 11),
(9, 7, 9),
(10, 7, 8),
(11, 2, 10),
(12, 2, 5),
(13, 10, 17),
(14, 10, 24),
(15, 6, 14),
(16, 6, 12),
(17, 9, 18),
(18, 3, 4),
(19, 3, 1),
(20, 1, 2),
(21, 5, 6),
(22, 5, 23),
(23, 4, 25),
(24, 4, 7),
(25, 3, 21),
(26, 10, 26),
(27, 10, 27),
(28, 10, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 3, 32),
(33, 3, 33),
(34, 4, 34),
(35, 4, 35),
(36, 4, 36),
(37, 5, 37),
(38, 5, 38),
(39, 7, 39),
(40, 7, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 6, 44),
(45, 6, 45),
(46, 9, 46),
(47, 9, 47),
(48, 9, 48),
(49, 8, 49),
(50, 8, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'civil war', 1, '00:07:47', '1993-05-03', 1, 'civil_war.jpg'),
(2, 'master of puppets', 2, '00:08:35', '1986-02-21', 1, 'master_of_puppets.jpg'),
(3, 'ahora te puedes marchar', 3, '00:03:15', '1986-06-08', 0, 'ahora_te_puedes_marchar.jpg'),
(4, 'welcome to the jungle', 2, '00:04:31', '1997-09-21', 1, 'welcome_to_the_jungle.jpg'),
(5, 'without me', 5, '00:04:50', '2002-04-06', 0, 'without_me.jpg'),
(6, 'la chica del bikini azul', 3, '00:03:00', '1984-12-04', 0, 'la_chica_del_bikini_azul'),
(7, 'come as you are', 1, '00:03:40', '1992-03-03', 1, 'come_as_you_are.jpg'),
(8, 'me porto bonito', 4, '00:03:12', '2023-02-06', 1, 'me_porto_bonito.jpg'),
(9, 'titi me pregunto', 4, '00:04:51', '2023-09-21', 0, 'titi_me_pregunto.jpg'),
(10, 'my name is', 5, '00:04:28', '1999-01-25', 1, 'my_name_is.jpg'),
(11, 'los skibidi se pusieron toilet', 4, '00:03:33', '2666-06-06', 0, 'los_skibidi_se_pusieron_toilet.jpg'),
(12, 'i want you break free', 1, '00:03:19', '1984-04-02', 1, 'i_want_you_break_free.jpg'),
(13, 'killer queen', 1, '00:02:59', '1974-10-11', 0, 'killer_queen.jpg'),
(14, 'we are the champions', 1, '00:03:04', '1977-10-07', 1, 'we_are_the_champions.jpg'),
(15, 'toxicity', 2, '00:03:27', '2002-01-22', 0, 'toxicity.jpg'),
(16, 'in the end', 1, '00:03:27', '2002-10-07', 1, 'in_the_end.jpg'),
(17, 'hells bells', 1, '00:05:10', '1980-10-31', 0, 'hells_bells.jpg'),
(18, 'faint', 2, '00:02:39', '2003-06-09', 0, 'faint.jpg'),
(19, 'chop suey', 2, '00:03:30', '2001-08-13', 1, 'chop_suey.jpg'),
(20, 'seek and destroy', 2, '00:07:00', '1986-07-16', 0, 'seek_and_destroy.jpg'),
(21, 'you could be mine', 2, '00:05:44', '1991-06-21', 1, 'you_could_be_mine.jpg'),
(22, 'byob', 2, '00:04:15', '2005-03-29', 0, 'byob.jpg'),
(23, 'la incondicional', 3, '00:04:23', '1989-02-20', 1, 'la_incondicional.jpg'),
(24, 'thunderstruck', 1, '00:04:52', '1990-09-10', 0, 'thunderstruck.jpg'),
(25, 'heart shaped box', 2, '00:04:40', '1993-08-30', 0, 'heart_shaped_box.jpg'),
(26, 'highway to hell', 1, '00:03:28', '1993-12-04', 1, 'highway_to_hell.jpg'),
(27, 'back in black', 1, '00:04:15', '1994-02-21', 0, 'back_in_black.jpg'),
(28, 'dirty deeds done dirt cheap', 1, '00:03:52', '1997-03-11', 1, 'dirty_deeds_done_dirt_cheap.jpg'),
(29, 'enter sandman', 2, '00:05:31', '1984-09-21', 1, 'enter_sandman.jpg'),
(30, 'wherever i may roam', 2, '00:06:45', '1988-04-20', 0, 'wherever_i_may_roam.jpg'),
(31, 'fuel', 2, '00:04:30', '2000-06-08', 1, 'fuel.jpg'),
(32, 'paradise city', 2, '00:06:46', '1992-01-17', 1, 'paradise_city.jpg'),
(33, 'november rain', 1, '00:08:50', '1995-07-03', 0, 'november_rain.jpg'),
(34, 'smell like teen spirit', 1, '00:05:02', '1984-04-28', 1, 'smell_like_teen_spirit.jpg'),
(35, 'lithium', 1, '00:04:17', '1992-03-09', 0, 'lithium.jpg'),
(36, 'something in the way', 1, '00:03:52', '1988-01-08', 1, 'something_in_the_way.jpg'),
(37, 'sonny', 3, '00:03:50', '1976-12-04', 1, 'sonny.jpg'),
(38, 'la bikina', 3, '00:03:00', '2000-02-21', 1, 'la_bikina.jpg'),
(39, 'monaco', 4, '00:04:28', '2023-07-03', 1, 'monaco.jpg'),
(40, 'un x100to', 4, '00:03:15', '2023-03-03', 0, 'un_x100to.jpg'),
(41, 'venom', 5, '00:04:30', '2018-10-07', 1, 'venom.jpg'),
(42, 'lose yourself', 5, '00:05:42', '2002-10-31', 0, 'lose_yourself.jpg'),
(43, 'mockingbird', 5, '00:04:14', '2004-06-08', 1, 'mockingbird.jpg'),
(44, 'bohemian rhapsody', 1, '00:05:55', '1975-05-03', 1, 'bohemian_rhapsody.jpg'),
(45, 'radio ga ga', 1, '00:05:44', '1970-05-23', 0, 'radio_ga_ga.jpg'),
(46, 'crawling', 1, '00:03:29', '2003-12-04', 1, 'crawling.jpg'),
(47, 'what ive done', 1, '00:03:25', '2000-03-01', 0, 'what_ive_done.jpg'),
(48, 'one step closer', 1, '00:02:37', '2001-09-02', 1, 'one_step_closer.jpg'),
(49, 'lost in hollywood', 2, '00:05:23', '2005-10-07', 1, 'lost_in_hollywood.jpg'),
(50, 'sad statue', 2, '00:03:26', '2005-08-12', 1, 'sad_statue.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 10, 1),
(2, 9, 23),
(3, 11, 16),
(4, 12, 4),
(5, 13, 13),
(6, 17, 11),
(7, 18, 2),
(8, 19, 11),
(9, 20, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'rock'),
(2, 'metal'),
(3, 'señora'),
(4, 'reggaeton'),
(5, 'rap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'gratuito con anuncios para pobres', 0),
(2, 'semi pobre sin anuncios pero sin playlist custom ni descargas', 79.9),
(3, 'premium para no pobres', 169.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `total_canciones`, `descripcion`, `publico`) VALUES
(1, 'nico', 20, '00:37:47', 13, 'gustos de papaolo nicholas', 0),
(2, 'bayron100%real', 12, '00:24:15', 9, 'gustos de b23', 1),
(3, 'print(musica)', 10, '00:40:15', 16, 'gustos de santiago', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `play_canciones`
--

CREATE TABLE `play_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `play_canciones`
--

INSERT INTO `play_canciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 2, 11, 13),
(2, 2, 13, 13),
(3, 2, 21, 13),
(4, 2, 18, 13),
(5, 2, 17, 13),
(6, 2, 4, 13),
(7, 2, 1, 13),
(8, 2, 16, 13),
(9, 2, 12, 13),
(10, 1, 2, 20),
(11, 1, 20, 20),
(12, 1, 22, 20),
(13, 1, 6, 20),
(14, 1, 3, 20),
(15, 1, 23, 20),
(16, 1, 10, 20),
(17, 1, 5, 20),
(18, 1, 7, 20),
(19, 1, 19, 20),
(20, 1, 25, 20),
(21, 1, 16, 20),
(22, 1, 1, 20),
(23, 3, 1, 10),
(24, 3, 2, 11),
(25, 3, 4, 10),
(26, 3, 25, 10),
(27, 3, 24, 10),
(28, 3, 22, 10),
(29, 3, 21, 10),
(30, 3, 20, 10),
(31, 3, 19, 10),
(32, 3, 18, 10),
(33, 3, 11, 10),
(34, 3, 7, 10),
(35, 3, 12, 10),
(36, 3, 13, 10),
(37, 3, 14, 10),
(38, 3, 15, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(9, 'Suwr0', 'Papasconquesowo@gmail.com', 1),
(10, 'kingcake1917', 'lopezaispurosantiago@gmail.com', 3),
(11, 'aldapa cuantico', 'gaelgordapa@gmail.com', 2),
(12, 'empanaditazs', 'gitbranloaiza@gmail.com', 1),
(13, 'bayronB23AAA', 'lagranb@gmail.com', 3),
(17, 'calcetronix', 'firfasoffia@gmail.com', 1),
(18, 'cpman123', 'urielrodriguez@hotmail.com', 2),
(19, 'insanito69', 'luisoto@gmail.com', 1),
(20, 'gran monarca p', 'paolonico@gmail.com', 3),
(21, 'Dasado06', 'jdsotoarreola06@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `play_canciones`
--
ALTER TABLE `play_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `play_canciones`
--
ALTER TABLE `play_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_ibfk` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `canciones_ibfk` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `genero_ibfk` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `cancion_ibfk` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `usuario_ibfk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `usuarios_ibfk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `play_canciones`
--
ALTER TABLE `play_canciones`
  ADD CONSTRAINT `cancionx_ibfk` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_ibfk` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `usuariox_ibfk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `membresia_ibfk` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
