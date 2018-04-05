-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 05 2018 г., 10:55
-- Версия сервера: 5.5.50-log
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`number`) VALUES
('12345677'),
('12345678'),
('12345679'),
('12345680');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`) VALUES
(1, 'Иван', 'Иванов'),
(2, 'Петр', 'Петров'),
(3, 'Сергей', 'Сидоров'),
(4, 'Петр', 'Петров'),
(5, 'Иван', 'Иванов'),
(6, 'Петр', 'Петров'),
(7, 'Александр', 'Кирпичев');

-- --------------------------------------------------------

--
-- Структура таблицы `user_phone`
--

CREATE TABLE IF NOT EXISTS `user_phone` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_phone`
--

INSERT INTO `user_phone` (`id`, `user_id`, `phone_number`) VALUES
(1, 1, 12345677),
(2, 1, 18345678),
(3, 2, 12345677);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`number`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_phone`
--
ALTER TABLE `user_phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `user_phone`
--
ALTER TABLE `user_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
