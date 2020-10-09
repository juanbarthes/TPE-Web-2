-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2020 a las 20:47:06
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_movies`
--
CREATE DATABASE IF NOT EXISTS `db_movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_movies`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `user` varchar(100) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `score` int(1) NOT NULL,
  `fk_id_movie` int(11) NOT NULL,
  `fk_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id_comment`, `date`, `user`, `comment`, `score`, `fk_id_movie`, `fk_id_user`) VALUES
(197, '2019-11-23 20:42:20', 'federico.fuhr.ff@gmail.com', 'I love it!', 5, 55, 28),
(198, '2019-11-23 20:43:03', 'federico.fuhr@live.com', 'Me too', 4, 55, 32),
(199, '2019-11-23 20:45:30', 'gwiradric.ps3@gmail.com', 'Mmmmmm....', 2, 55, 30),
(204, '2019-11-24 15:08:35', 'federico.fuhr.ff@gmail.com', 'No me gusto', 2, 55, 28),
(205, '2019-11-24 15:08:42', 'federico.fuhr.ff@gmail.com', 'Esta Genial', 5, 55, 28),
(206, '2019-11-24 15:08:52', 'federico.fuhr.ff@gmail.com', 'F por Final Fantasy', 3, 55, 28),
(207, '2019-11-24 15:09:05', 'federico.fuhr.ff@gmail.com', 'Sad', 1, 55, 28),
(209, '2019-11-24 19:57:40', 'federico.fuhr.ff@gmail.com', 'Jotaro is the best!', 5, 58, 28),
(210, '2019-11-24 20:02:40', 'federico.fuhr.ff@gmail.com', 'Nice movie', 3, 3, 28),
(211, '2019-11-24 20:06:02', 'federico.fuhr.ff@gmail.com', 'The movie is very boring', 1, 2, 28),
(212, '2019-11-24 20:11:49', 'federico.fuhr.ff@gmail.com', ':D', 4, 12, 28),
(213, '2019-11-24 20:30:46', 'federico.fuhr.ff@gmail.com', 'Mehhh...', 2, 20, 28),
(214, '2019-11-24 20:35:44', 'federico.fuhr.ff@gmail.com', 'I love it!', 4, 22, 28),
(215, '2019-11-24 20:37:34', 'federico.fuhr.ff@gmail.com', '*.*', 4, 28, 28),
(216, '2019-11-24 20:39:26', 'federico.fuhr.ff@gmail.com', 'Horrible...', 1, 37, 28),
(217, '2019-11-24 20:40:10', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 2, 34),
(218, '2019-11-24 20:40:15', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 3, 34),
(219, '2019-11-24 20:40:21', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 12, 34),
(220, '2019-11-24 20:40:29', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 20, 34),
(221, '2019-11-24 20:40:36', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 22, 34),
(222, '2019-11-24 20:40:40', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 24, 34),
(223, '2019-11-24 20:40:50', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 28, 34),
(224, '2019-11-24 20:40:55', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 37, 34),
(225, '2019-11-24 20:41:02', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 55, 34),
(226, '2019-11-24 20:41:07', 'hater@hater.com', 'This movie is a piece of sh**!!', 1, 58, 34),
(227, '2019-11-24 20:41:57', 'federico.fuhr@live.com', 'Enjoyable', 3, 2, 32),
(228, '2019-11-24 20:42:05', 'federico.fuhr@live.com', 'Enjoyable', 3, 3, 32),
(229, '2019-11-24 20:42:10', 'federico.fuhr@live.com', 'Enjoyable', 3, 12, 32),
(230, '2019-11-24 20:42:16', 'federico.fuhr@live.com', 'Enjoyable', 3, 20, 32),
(231, '2019-11-24 20:42:23', 'federico.fuhr@live.com', 'Enjoyable', 3, 22, 32),
(232, '2019-11-24 20:42:35', 'federico.fuhr@live.com', 'Enjoyable', 3, 24, 32),
(233, '2019-11-24 20:42:42', 'federico.fuhr@live.com', 'Enjoyable', 3, 28, 32),
(234, '2019-11-24 20:42:47', 'federico.fuhr@live.com', 'Enjoyable', 3, 37, 32),
(235, '2019-11-24 20:42:54', 'federico.fuhr@live.com', 'Enjoyable', 3, 55, 32),
(238, '2019-11-24 20:45:01', 'federico.fuhr@live.com', 'Enjoyable', 3, 58, 32),
(245, '2019-11-25 21:54:49', 'federico.fuhr.ff@gmail.com', 'Me encanto!', 5, 55, 28),
(254, '2019-11-25 21:59:31', 'federico.fuhr.ff@gmail.com', 'Mmmm...', 1, 12, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id_genre`, `name`, `description`) VALUES
(1, 'Horror', 'The distinction between horror and terror is a standard literary and psychological concept applied especially to Gothic and horror fiction. Terror is usually described as the feeling of dread and anticipation that precedes the horrifying experience. By contrast, horror is the feeling of revulsion that usually follows a frightening sight, sound, or otherwise experience.'),
(5, 'Adventures', 'An adventure is an event or series of events that happens outside the course of the protagonist\'s ordinary life, usually accompanied by danger, often by physical action. Adventure stories almost always move quickly, and the pace of the plot is at least as important as characterization, setting and other elements of a creative work.'),
(12, 'Comedy', 'Comedy may be divided into multiple genres based on the source of humor, the method of delivery, and the context in which it is delivered.  These classifications overlap, and most comedians can fit into multiple genres. For example, deadpan comics often fall into observational comedy, or into black comedy or blue comedy to contrast the morbidity, or offensiveness of the joke with a lack of emotion. '),
(35, 'Science fiction', 'Is a genre of speculative fiction that typically deals with imaginative and futuristic concepts such as advanced science and technology, time travel, parallel universes, fictional worlds, space exploration, and extraterrestrial life. It has been called the '),
(37, 'Action', ' Is a film genre in which the protagonist or protagonists are thrust into a series of events that typically include violence, extended fighting, physical feats, and frantic chases. Action films tend to feature a resourceful hero struggling against incredible odds, which include life-threatening situations, a villain, or a pursuit which usually concludes in victory for the hero (though a small number of films in this genre have ended in the victory for the villain instead). '),
(38, 'Drama', 'The drama genre is strongly based in a character, or characters, that are in conflict at a crucial moment in their lives. Most dramas revolve around families and often have tragic or painful resolutions.'),
(39, 'Suspense', 'Suspense is a feeling of fascination and excitement mixed with apprehension, tension, and anxiety developed from an unpredictable, mysterious, and rousing source of entertainment. The term most often refers to an audience\'s perceptions in a dramatic work. Suspense is not exclusive to fiction.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id_img` int(11) NOT NULL,
  `fk_id_movie` int(11) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id_img`, `fk_id_movie`, `path`) VALUES
(23, 20, 'img/5dc77d7908418.jpg'),
(24, 22, 'img/5dc77d9dcb4c4.jpg'),
(26, 24, 'img/5dc77ddecb3b3.jpg'),
(27, 28, 'img/5dc77df3d99d0.jpg'),
(28, 37, 'img/5dc77ef455d24.jpg'),
(39, 2, 'img/5dc82419235e0.jpg'),
(43, 55, 'img/5dc8b56f2dbe7.jpg'),
(44, 55, 'img/5dc8b56f2dc5a.jpg'),
(45, 55, 'img/5dc8b56f2dc88.jpg'),
(46, 55, 'img/5dc8b56f2dcb2.jpg'),
(47, 55, 'img/5dc8b56f2dcdb.jpg'),
(65, 58, 'img/5dcca1a707fa7.jpg'),
(66, 58, 'img/5dcca1a70802f.jpg'),
(67, 58, 'img/5dcca1a70806c.jpg'),
(68, 58, 'img/5dcca1a7080a3.jpg'),
(85, 3, 'img/5ddb0b839620b.jpg'),
(86, 3, 'img/5ddb0bedb61ce.jpg'),
(87, 3, 'img/5ddb0bedb6201.jpg'),
(88, 3, 'img/5ddb0bedb6217.jpg'),
(89, 3, 'img/5ddb0bedb622c.jpg'),
(90, 2, 'img/5ddb0c6c3064f.jpg'),
(91, 2, 'img/5ddb0c6c30687.jpg'),
(92, 2, 'img/5ddb0c6c306a0.jpg'),
(93, 2, 'img/5ddb0ca5d347c.jpg'),
(98, 12, 'img/5ddb0dcd0d062.jpg'),
(102, 12, 'img/5ddb0e0060a10.jpg'),
(103, 12, 'img/5ddb0e0060aa1.jpg'),
(105, 12, 'img/5ddb0e234aa6a.jpg'),
(106, 20, 'img/5ddb12802bbba.jpg'),
(107, 20, 'img/5ddb12802bc3a.jpg'),
(108, 20, 'img/5ddb12802bc82.jpg'),
(109, 20, 'img/5ddb12802bcc0.jpg'),
(110, 22, 'img/5ddb1344d73dd.jpg'),
(111, 22, 'img/5ddb1344d745e.jpg'),
(112, 22, 'img/5ddb1344d7496.jpg'),
(113, 22, 'img/5ddb1344d74ce.jpg'),
(114, 24, 'img/5ddb13c09e371.jpg'),
(115, 24, 'img/5ddb13c09e3d0.jpg'),
(116, 24, 'img/5ddb13c09e3f6.jpg'),
(117, 24, 'img/5ddb13c09e418.jpg'),
(118, 28, 'img/5ddb142daffdb.jpg'),
(119, 28, 'img/5ddb142db0060.jpg'),
(120, 28, 'img/5ddb142db00a4.jpg'),
(121, 28, 'img/5ddb142db00bb.jpg'),
(122, 37, 'img/5ddb149ce2568.jpg'),
(123, 37, 'img/5ddb149ce25a7.jpg'),
(124, 37, 'img/5ddb149ce25be.jpg'),
(125, 37, 'img/5ddb149ce25d4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id_movie` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(600) NOT NULL,
  `year` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id_movie`, `id_genre`, `name`, `description`, `year`, `rating`) VALUES
(2, 1, 'Resident Evil', 'Resident Evil is a 2002 action horror film written and directed by Paul W. S. Anderson. The film stars Milla Jovovich, Michelle Rodriguez, Eric Mabius, James Purefoy, Martin Crewes, and Colin Salmon. It is the first installment in the Resident Evil film series, which is loosely based on the video game series of the same name. Carlos', 2002, 49),
(3, 12, 'Tarzan', 'Tarzan, a fictional character created by Edgar Rice Burroughs, first appeared in the 1912 novel Tarzan of the Apes, and then in twenty-three sequels. The character proved immensely popular and quickly made the jump to other media, first and most notably to comics and film. This article concerns Tarzan\'s appearance in film and other non-print media.', 1999, 57),
(12, 12, 'Hercules', 'Hercules is a 1997 American animated musical fantasy comedy film produced by Walt Disney Feature Animation for Walt Disney Pictures. The 35th Disney animated feature film and the eighth animated film produced during the Disney Renaissance, the film was directed by Ron Clements and John Musker. The film is loosely based on the legendary hero Heracles (known in the film by his Roman name, Hercules), the son of Zeus, in Greek mythology. ', 1997, 61),
(20, 35, 'Blade Runner 2049', 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K, unearths a long-buried secret that has the potential to plunge what’s left of society into chaos. K’s discovery leads him on a quest to find Rick Deckard, a former LAPD blade runner who has been missing for 30 years.', 2017, 67),
(22, 39, 'Shutter Island', 'Shutter Island is a 2010 American neo-noir psychological thriller film directed by Martin Scorsese and written by Laeta Kalogridis, based on Dennis Lehane\'s 2003 novel of the same name. Leonardo DiCaprio stars as U.S. Marshal Edward \"Teddy\" Daniels who is investigating a psychiatric facility on Shutter Island after one of the patients goes missing.', 2010, 87),
(24, 39, 'Wounds', 'Wounds is a 2019 psychological horror film written and directed by Babak Anvari and starring Armie Hammer, Dakota Johnson, and Zazie Beetz. The film is based on the novella The Visible Filth by Nathan Ballingrud.', 2019, 62),
(28, 1, 'Silent Hill', 'Silent Hill is a 2006 French-Canadian psychological horror film directed by Christophe Gans and written by Roger Avary, Gans, and Nicolas Boukhrief. The film is an adaptation of Konami\'s 1999 video game Silent Hill. It stars Radha Mitchell, Sean Bean, Laurie Holden, Deborah Kara Unger, Kim Coates, Tanya Allen, Alice Krige, and Jodelle Ferland.', 2006, 78),
(37, 1, 'Resident Evil: Apocalypse', 'Is a 2004 action horror film[9] directed by Alexander Witt and written by Paul W. S. Anderson. A direct sequel to Resident Evil (2002), it is the second installment in the Resident Evil film series, which is loosely based on the video game series of the same name. The film marks Witt\'s feature directorial debut; Anderson, the director of the first film, turned down the job due to other commitments, though stayed on as one of its producers. Milla Jovovich reprises her role as Alice, and is joined by Sienna Guillory as Jill Valentine and Oded Fehr as Carlos Oliveira. ', 2004, 76),
(55, 5, 'Kingdom Hearts', 'Su historia marca la continuación de la trama principal de la saga. Con una introducción algo desconcertante para algunos en la que controlamos a un personaje llamado Roxas en la ciudad de Crepúsculo hasta que conseguimos despertar a Sora y seguir con su aventura. Mientras que Riku avanza por su lado y Kairi permance secuestrada. Controlando a Sora durante toda la trama principal del juego iremos avanzando de la mano de Donald y Goofy. Seguiremos avanzando y viajando a bordo de la habitual nave Gumi para visitar mundos conocidos y mundos nuevos.', 2008, 100),
(58, 5, 'Jojo Bizarre Adventure', 'Each of series\' eight protagonists is a member of the Joestar family, whose mainline descendants invariably possess a star-shaped birthmark above their left shoulder blade and a name that can be abbreviated to the titular \"JoJo\". The plot of each part generally consists of this JoJo gathering a group of allies, mastering their supernatural ability, battling various enemies, and ultimately confronting the part\'s powerful main villain.', 1984, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `admin`, `code`, `date`) VALUES
(28, 'federico.fuhr.ff@gmail.com', '$2y$10$keGob74JQLgXYylJzm5zt.iljPianmd1CQWVHK1mdu9tqpNGGRJkO', 1, '1574720870YCVUUceO', '2019-11-26 00:00:00'),
(30, 'gwiradric.ps3@gmail.com', '$2y$10$XutAJa6OpBaGheMaeOGav.sJS20PfNRf6aEZ/mkdQcTxpR0NFbIcy', 0, '1574005171agAbVcOb', '0000-00-00 00:00:00'),
(32, 'federico.fuhr@live.com', '$2y$10$TPjQqcxeJlVYsIGdyApAL.QT5iVcTOW2EM2XA199dKOMvUS5SrKSy', 1, '1574450787JLRCaTZR', '0000-00-00 00:00:00'),
(34, 'hater@hater.com', '$2y$10$6fKIWgQCEO5lN2UN5exyVuROtgjGps3EXXz2k9S9ojrx6wSqI3O/6', 0, '', '0000-00-00 00:00:00'),
(38, 'test@test.com', '$2y$10$gs0S.Z8xs.S6jeZ6.sa4O.3PzrzxVkWAVkiWtPXfs5sNkBQp6FibS', 0, '', '2019-11-26 00:56:13'),
(39, 'juanbarthes@outlook.com', '$2y$10$GACeHBbMiJ71iz4a.m3aHuwTOZDaBXFEKeiPPAHenuCEcMDmonweq', 1, '', '2020-10-09 03:23:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `fk_id_movie` (`fk_id_movie`),
  ADD KEY `fk_id_user` (`fk_id_user`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `fk_id_movie` (`fk_id_movie`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_movie`),
  ADD KEY `FK_id_genre` (`id_genre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_id_movie` FOREIGN KEY (`fk_id_movie`) REFERENCES `movies` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`fk_id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`fk_id_movie`) REFERENCES `movies` (`id_movie`);

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id_genre`);
--
-- Base de datos: `pagos`
--
CREATE DATABASE IF NOT EXISTS `pagos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pagos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `deudor` varchar(50) NOT NULL,
  `cuota` int(11) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`deudor`, `cuota`, `monto`, `fecha`) VALUES
('juan', 1, 550, '2020-09-15'),
('marcelo', 2, 600.5, '2020-09-18'),
('marcelo', 2, 600.5, '2020-09-18'),
('carlos', 1, 3000, '2020-09-01'),
('carlos', 1, 3000, '2020-09-01'),
('gabriel', 3, 400, '2020-09-02');
--
-- Base de datos: `personas`
--
CREATE DATABASE IF NOT EXISTS `personas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`) VALUES
(11, 'MI', 'AMORCITO'),
(12, 'juan', 'barthes'),
(13, 'BETTY', 'Salvaje'),
(14, 'Noah', 'Malcriado de mierda'),
(15, 'hola', 'chau');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"productos\",\"table\":\"categoria\"},{\"db\":\"productos\",\"table\":\"categorias\"},{\"db\":\"db_movies\",\"table\":\"users\"},{\"db\":\"productos\",\"table\":\"producto\"},{\"db\":\"personas\",\"table\":\"persona\"},{\"db\":\"pagos\",\"table\":\"pago\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-10-09 18:45:59', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `productos`
--
CREATE DATABASE IF NOT EXISTS `productos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `productos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Procesadores'),
(2, 'Placas de Video'),
(3, 'Fuentes'),
(4, 'Memorias'),
(5, 'Gabinetes'),
(6, 'Teclados'),
(7, 'Almacenamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(140) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
