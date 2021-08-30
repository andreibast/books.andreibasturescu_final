-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: aug. 31, 2021 la 01:07 AM
-- Versiune server: 10.4.17-MariaDB
-- Versiune PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `books.app`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `books`
--

INSERT INTO `books` (`id`, `title`, `authors`, `category`, `picture`, `description`, `date_added`) VALUES
(29, 'fdsg', 'asfsafs', 'fffff', '150x212.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, ipsa animi laborum, perferendis dolorum, nam nemo consequatur velit iure numquam aliquid. Delectus cum laboriosam illum expedita officia eveniet commodi! Officiis.', '2021-03-29 21:16:45'),
(32, 'tttt', 'gsgdgdgd', 'fsafsdf', '150x212.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, ipsa animi laborum, perferendis dolorum, nam nemo consequatur velit iure numquam aliquid. Delectus cum laboriosam illum expedita officia eveniet commodi! Officiis.', '2021-03-29 21:28:45'),
(33, 'sssssttt', 'ffddd', 'abc', '150x212.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, ipsa animi laborum, perferendis dolorum, nam nemo consequatur velit iure numquam aliquid. Delectus cum laboriosam illum expedita officia eveniet commodi! Officiis.', '2021-04-06 16:41:54'),
(34, 'ffffffffffffffffffgg', 'gdggg', 'dsggsd', '150x212.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, ipsa animi laborum, perferendis dolorum, nam nemo consequatur velit iure numquam aliquid. Delectus cum laboriosam illum expedita officia eveniet commodi! Officiis.', '2021-05-02 09:18:31'),
(35, 'fffffgdgg', 'dgdggg', 'abcd', '1.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, ipsa animi laborum, perferendis dolorum, nam nemo consequatur velit iure numquam aliquid. Delectus cum laboriosam illum expedita officia eveniet commodi! Officiis.', '2021-05-02 11:11:43');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `favorites`
--

CREATE TABLE `favorites` (
  `id_user` varchar(150) NOT NULL,
  `id_book` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `favorites`
--

INSERT INTO `favorites` (`id_user`, `id_book`) VALUES
('32', '38'),
('32', '29'),
('81', '29'),
('81', '32');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `email` varchar(55) NOT NULL,
  `parola` varchar(255) NOT NULL,
  `data_adaugare` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `prenume`, `email`, `parola`, `data_adaugare`) VALUES
(32, 'fdjhndfjd', 'drtyeryrey@gsgd.df', '$2y$10$.KEyhZh0RZHRBpcuJon5seSxvaDuhKiVeyjyghfuYpJakirV94n42', '2021-02-26 16:28:19'),
(58, 'gsdgdsg', 'dsgdsg@dfgdf.df', '$2y$10$E0QZIix6T/RjKn03Wghf/Oo7EcLJACyjPhmLccqkKirXFOS1/d3hK', '2021-03-13 18:24:51'),
(70, 'Andrei', 'gdsgdsgdsgd.d@gdd.fd', '$2y$10$uCcW6GuFJSWGmxItV/j/1OAYQWwg3/P5uWWJt.0cX/Umi7GMDKqke', '2021-05-02 11:11:21'),
(71, 'fasfafsaf', 'drtyeryrey@gsgd.df', '$2y$10$w0BGHK3HviAqALRySehkgeO7KF4GK9GIt8ehejHtRj7Ctz70HBp7W', '2021-05-02 11:17:08'),
(72, 'ggdsgdsg', 'drtyeryrey@gsgd.df', '$2y$10$B16T0L94/Wh3Srj8jqWKX..lBoLOUSOtwmYrxkwfR/PViXlQptgYK', '2021-05-02 11:18:45'),
(77, 'agasgsa', 'asfasfasfasf@fdsfdf.df', '$2y$10$vxTAC/0DgCZ6XZdjGGvSCu6CjT6bBNiqD9YiYKH49kXmR20J/NHZm', '2021-06-11 05:36:42'),
(78, 'Tom', 'sdggsdgs@gdffd.df', '$2y$10$hllrDfOYZKW97Z9f1bzgpepbviRAhOlWo8s.kWXq0A6wQRpmXg2.u', '2021-06-11 05:38:02'),
(79, 'fgjhfg', 'fgjfgj@gdfd.df', '$2y$10$RlPvvegNsEr/ae.Fq44oVeVmMi0FKDIkGyFEp8CIYLJN9i5qUJ/7.', '2021-08-29 14:36:50'),
(80, 'gasagsas', 'fsaasffs@fsddsds.sd', '$2y$10$NNvItjL3/ngGsS3v9PNNPuK5IRDD/T5dvEyn.ZAFSN7VEl/QXhPvu', '2021-08-29 19:21:25'),
(81, 'test', 'test@test.com', '$2y$10$eNRW6ocIgN6LNK7NJrRuue4lWk5BRQzMXg1bv57rPvGGWns5UIvJq', '2021-08-30 20:30:05'),
(82, 'Tom', 'tom@test.com', '$2y$10$nxT8bTGarbHHqvGmoy5XE./GEAyUlRvU4DwYl4TR4Ia04/rZ92i62', '2021-08-30 20:57:33');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `user` (`id_user`),
  ADD KEY `book` (`id_book`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
