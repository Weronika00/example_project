-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Lis 2021, 08:29
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dvwa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guestbook`
--

CREATE TABLE `guestbook` (
  `comment_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `guestbook`
--

INSERT INTO `guestbook` (`comment_id`, `comment`, `name`) VALUES
(1, 'This is a test comment.', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `failed_login` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user`, `password`, `avatar`, `last_login`, `failed_login`) VALUES
(1, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '/dvwa/hackable/users/admin.jpg', '2021-11-25 13:18:39', 0),
(2, 'Gordon', 'Brown', 'gordonb', 'e99a18c428cb38d5f260853678922e03', '/dvwa/hackable/users/gordonb.jpg', '2021-11-10 13:31:06', 0),
(3, 'Hack', 'Me', '1337', '8d3533d75ae2c3966d7e0d4fcc69216b', '/dvwa/hackable/users/1337.jpg', '2021-11-10 13:31:06', 0),
(4, 'Pablo', 'Picasso', 'pablo', '0d107d09f5bbe40cade3de5c71e9e9b7', '/dvwa/hackable/users/pablo.jpg', '2021-11-10 13:31:06', 0),
(5, 'Bob', 'Smith', 'smithy', '5f4dcc3b5aa765d61d8327deb882cf99', '/dvwa/hackable/users/smithy.jpg', '2021-11-10 13:31:06', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `comment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
