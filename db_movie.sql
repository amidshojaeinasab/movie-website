-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 08:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actors`
--

CREATE TABLE `tbl_actors` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `gender` int(1) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `place_birthday` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_actors`
--

INSERT INTO `tbl_actors` (`id`, `name`, `family`, `biography`, `gender`, `birthday`, `place_birthday`, `image`) VALUES
(1, 'Chris ', 'Hemsworth', 'Chris Hemsworth (born 11 August 1983) is an Australian actor. He is best known for his roles as Kim Hyde in the Australian TV series Home and Away (2004) and as Thor in the Marvel Cinematic Universe films Thor (2011), The Avengers (2012), Thor: The Dark World (2013), Avengers: Age of Ultron (2015), Thor: Ragnarok (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), and Thor: Love and Thunder (2022). He has also appeared in the science fiction action film Star Trek(2009), the thriller adventure A Perfect Getaway (2009), the horror comedy The Cabin in the Woods (2012), the dark fantasy action film Snow White and the Huntsman (2012), the war film Red Dawn (2012) and the biographical sports drama film Rush (2013).\r\n\r\nDescription above from the Wikipedia article Chris Hemsworth, licensed under CC-BY-SA, full list of contributors on Wikipedia.', 1, '1983-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/jpurJ9jAcLCYjgHHfYF32m3zJYm.jpg'),
(2, 'Austin \r\n', 'Butler', 'Austin Robert Butler ist ein US-amerikanischer Schauspieler. Bekannt wurde er zunächst durch seine Rollen in den Serien Zoey 101 und The Carrie Diaries. Später übernahm er auch Rollen in Kinofilmen wie Die Eindringlinge, Once Upon a Time in Hollywood und Dune: Part Two', 1, '1983-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/2gHiYPXOq7RJLs4vTz5fUmSg8cd.jpg'),
(3, 'Tom\r\n', 'Holland', 'Thomas Stanley Holland (* 1. Juni 1996 in Kingston upon Thames, London) ist ein britischer Schauspieler und Tänzer. International bekannt wurde er durch die ...', 1, '1973-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/bBRlrpJm9XkNSg0YT5LCaxqoFMX.jpg'),
(4, 'Jennifer', 'Connelly', 'Jennifer Lynn Connelly ist eine US-amerikanische Schauspielerin. Sie war zunächst Kindermodel und begann ihre Kinokarriere 1984 mit dem Gangster-Epos Es war einmal in Amerika. Es folgten Filme wie Die Reise ins Labyrinth und Rocketeer, bis sie sich in den späten 1990er Jahren als ernsthafte Schauspielerin etablierte.', 2, '1993-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/egh1eOHuYgeoqdlLQgaXMl6cPOm.jpg'),
(5, 'Chris', 'Pratt', 'Christopher Michael „Chris“ Pratt (* 21. Juni 1979 in Virginia, Minnesota) ist ein US-amerikanischer Schauspieler. Pratt auf der San Diego Comic-Con ...', 1, '1987-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/83o3koL82jt30EJ0rz4Bnzrt2dd.jpg'),
(6, 'Ana \r\n', 'de Armas', 'Ana Celia de Armas Caso (* 30. April 1988 in Havanna) ist eine kubanisch-spanische Schauspielerin. Ana de Armas 2018 ...', 2, '1993-01-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/14uxt0jH28J9zn4vNQNTae3Bmr7.jpg'),
(7, 'Antony ', 'Starr', 'Antony Starr ist ein neuseeländischer Schauspieler. In seiner Heimat ist er vor allem durch seine Doppelrolle in der Fernsehserie Outrageous Fortune bekannt. Von 2013 bis 2016 spielte Starr die Hauptrolle in Banshee – Small Town. Big Secrets., die auf dem Sender Cinemax lief.', 1, '1996-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/dr2GvKjDgbIDXUO8KtT64JUQ7UR.jpg'),
(8, 'Finn', 'Wolfhard', 'Finn Wolfhard ist ein kanadischer Schauspieler und Musiker. Weltweite Bekanntheit erreichte er durch die Rolle des Mike Wheeler in der Netflix-Serie Stranger Things. ', 2, '1973-08-11', 'Melbourne, Victoria, Australia', 'https://image.tmdb.org/t/p/w500/p0ayyuQWPnTvbCaN7E2ROetuLVs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genres`
--

CREATE TABLE `tbl_genres` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_persion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_genres`
--

INSERT INTO `tbl_genres` (`id`, `title`, `title_persion`) VALUES
(1, 'Drama', 'درام'),
(2, 'Fantasy', 'فانتزی'),
(3, 'Mystery', 'رازآلود');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `rate` float NOT NULL,
  `description` text NOT NULL,
  `genres` varchar(255) NOT NULL,
  `actors` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `date_publish` int(255) NOT NULL,
  `series` int(1) NOT NULL,
  `view` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`id`, `user_id`, `title`, `rate`, `description`, `genres`, `actors`, `image_path`, `date_publish`, `series`, `view`) VALUES
(1, 1, 'Stranger Things', 8.6, ' When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl. ', '1,2,3', '2,3,4,5,6,7,8', 'https://image.tmdb.org/t/p/w500/49WJfeN0moxb9IPfGn8AIqMGskD.jpg', 2016, 1, 20),
(2, 2, 'The Princess', 8.62, 'The film focuses on a strong-willed princess who fights to protect her family and save the kingdom when her suitor, a cruel sociopath she refuses to marry, ...', '1,2', '3', 'https://image.tmdb.org/t/p/w500/9pCoqX24a6rE981fY1O3PmhiwrB.jpg', 2015, 0, 155),
(3, 1, 'The Terminal List', 7.25, 'The series tells the story of a Navy SEAL who seeks to avenge the murder of his family. It stars Chris Pratt, Constance Wu, Taylor Kitsch, Riley Keough, Arlo ...', '1', '6,7', 'https://image.tmdb.org/t/p/w500/71f3JHlJCP6V7LhHHiKZgjtFxZw.jpg', 2021, 1, 188),
(4, 2, ' Doctor Strange in the Multiverse of Madness ', 8.62, 'Doctor Strange in the Multiverse of Madness is a 2022 American superhero film based on Marvel Comics featuring the character Doctor Strange.', '1,2', '1,8', 'https://image.tmdb.org/t/p/w500/61PVJ06oecwvcBisoAQu6SDfdcS.jpg', 2021, 0, 512),
(5, 1, 'The Boys', 4.23, 'The Boys ist eine US-amerikanische Superhelden-Fernsehserie, basierend auf dem gleichnamigen Comic von Garth Ennis und Darick Robertson.', '1,2', '3,4', 'https://image.tmdb.org/t/p/w500/stTEycfG9928HYGEISBFaG1ngjM.jpg', 2023, 0, 175),
(6, 2, 'Minions: The Rise of Gru', 7.54, 'Minions: The Rise of Gru, also known as Minions 2, is a 2022 American animated comedy film produced by Universal Pictures and Illumination, and distributed ...', '1,2', '6,8', 'https://image.tmdb.org/t/p/w500/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg', 2016, 1, 198),
(7, 1, 'Code Name Banshee', 6.78, 'CODE NAME BANSHEE ist ein adrenalingeladener Actionfilm. Zwischen Caleb (Antonio Banderas), Banshee (Jaime King) und Greene (Tommy Flanagan) entwickelt sich ...', '1,2', '5,3', 'https://image.tmdb.org/t/p/w500/dt53jhcegkYu2hKcE4tAdnbpBzt.jpg', 2015, 0, 250),
(8, 2, 'Baymax!', 8.45, 'Baymax – Riesiges Robowabohu (Originaltitel: Big Hero 6) ist ein US-amerikanischer Computeranimationsfilm von Walt Disney Pictures. Disneys 54.', '1,2', '1,6', 'https://image.tmdb.org/t/p/w500/muzgYvvFniQnwiTdAvfMCEkHsT4.jpg', 2020, 0, 420),
(9, 1, ' Fantastic Beasts: The Secrets of Dumbledores', 7.35, 'Fantastic Beasts: The Secrets of Dumbledore is a 2022 fantasy film directed by David Yates from a screenplay by JK Rowling and Steve Kloves', '1,2', '2,5', 'https://image.tmdb.org/t/p/w500/jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg', 2010, 0, 432),
(10, 2, 'Sonic the Hedgehog 3', 7.85, 'Sonic the Hedgehog 2 ist ein US-amerikanischer Kinofilm mit der Computerspielfigur und dem Maskottchen Segas Sonic und der Nachfolger von Sonic the Hedgehog ...', '1,2,3', '1,2,3', 'https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', 2019, 1, 266),
(13, 2, 'Lord Of the Rings', 0, 'Good Movie', '2', '3', 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg', 0, 0, 0),
(75, 22, 'adsadsa', 0, 'dsadsadsa', '3', '1', 'https://asdsad', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Interstellar', 'images/slider1.jpg'),
(2, 'due', 'images/slider2.jpg'),
(3, 'Spider-Man: No Way Home', 'images/slider3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `phone`, `name`, `family`, `password`) VALUES
(1, 'devminds@gmail.com', '09101001010', 'devminds', '', '$2y$10$84SpHzkdI.vOMww3HXrlM.L1NMjDFAFZsY7DJvMVbRU7K4j1qG9Dy'),
(2, 'farhad@gamil.com', '09101001011', 'farhad', '', '$2y$10$84SpHzkdI.vOMww3HXrlM.L1NMjDFAFZsY7DJvMVbRU7K4j1qG9Dy'),
(22, 'farhadkazemzadeh@gmail.com', '', 'farhad', 'kazemzadeh', '$2y$10$84SpHzkdI.vOMww3HXrlM.L1NMjDFAFZsY7DJvMVbRU7K4j1qG9Dy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_actors`
--
ALTER TABLE `tbl_actors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD CONSTRAINT `tbl_movie_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
