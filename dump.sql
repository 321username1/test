-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2016 г., 21:03
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `Test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Cities`
--

CREATE TABLE IF NOT EXISTS `Cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `languaId` varchar(25) DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `cityName` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `Cities`
--

INSERT INTO `Cities` (`id`, `languaId`, `countryId`, `cityName`) VALUES
(1, '1', 1, 'Запорожье'),
(2, '1', 1, 'Киев'),
(3, '2', 2, 'Москва'),
(4, '4', 3, 'София'),
(5, NULL, 2, 'Челябинск'),
(7, NULL, 10, 'Саппоро'),
(8, NULL, 1, 'Синельниково'),
(9, NULL, 1, 'Львов');

-- --------------------------------------------------------

--
-- Структура таблицы `Countries`
--

CREATE TABLE IF NOT EXISTS `Countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `Countries`
--

INSERT INTO `Countries` (`id`, `country`) VALUES
(1, 'Украина'),
(2, 'Россия'),
(3, 'Болгария'),
(10, 'Япония');

-- --------------------------------------------------------

--
-- Структура таблицы `Languages`
--

CREATE TABLE IF NOT EXISTS `Languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IdCities` varchar(50) DEFAULT '0',
  `language` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `Languages`
--

INSERT INTO `Languages` (`id`, `IdCities`, `language`) VALUES
(1, '1,2,8,9', 'Украинский'),
(2, '3,2,5,8,1', 'Русский'),
(3, '2,3,7', 'Английский'),
(4, '4,', 'Болгарский'),
(5, '8,2,1', 'Суржик'),
(6, '7', 'Японский');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
