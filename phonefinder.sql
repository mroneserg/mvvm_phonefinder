-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 04 2024 г., 03:13
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phonefinder`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abonent`
--

CREATE TABLE `abonent` (
  `ID` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `otchestvo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `abonent`
--

INSERT INTO `abonent` (`ID`, `name`, `familia`, `otchestvo`) VALUES
(1, 'Петр', 'Иванов', 'Васильевич'),
(2, 'Евгений', 'Иванов', 'Васильевич'),
(3, 'Николай', 'Петров', 'Петрович'),
(4, 'Анна', 'Пирдова', 'Васильевна'),
(5, 'Иван', 'иванов', 'Сергеевич'),
(6, 'Алексей', 'Смирнов', 'Николаевич'),
(7, 'Анна', 'Кузнецова', 'Владимировна'),
(8, 'Дмитрий', 'Васильев', 'Юрьевич'),
(9, 'Ольга', 'Соколова', 'Сергеевна'),
(10, 'Максим', 'Попов', 'Владимирович'),
(11, 'Елена', 'Морозова', 'Иванова'),
(12, 'Сергей', 'Козлов', 'Александрович'),
(13, 'Татьяна', 'Федорова', 'Михайловна'),
(14, 'Николай', 'Зайцев', 'Петрович'),
(15, 'Наталья', 'Новикова', 'Дмитриевна');

-- --------------------------------------------------------

--
-- Структура таблицы `adrees`
--

CREATE TABLE `adrees` (
  `ID` int NOT NULL,
  `abonentID` int NOT NULL,
  `street` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `house` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kvartira` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `adrees`
--

INSERT INTO `adrees` (`ID`, `abonentID`, `street`, `house`, `kvartira`) VALUES
(1, 1, 'Ленина', '55', '104'),
(2, 2, 'Ленина', '234', '12'),
(3, 3, 'Пушкина', '22', '53'),
(4, 4, 'Пушкина', '234', '112'),
(5, 5, 'Чкалова', '222', '12'),
(6, 6, 'Чкалова', '57', NULL),
(7, 7, 'Никитина', '56', NULL),
(8, 8, 'Никитина', '54', NULL),
(9, 9, 'Северо-Западная', '185', '255'),
(10, 10, 'Северо-Западная', '212', '114'),
(11, 11, 'Исакова', '225', '24'),
(12, 12, 'Пролетарская', '54', '33'),
(13, 13, 'Пролетарская', '54', '32'),
(14, 14, 'Интернациональная', '65', NULL),
(15, 15, 'Интернациональная', '44', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `phoneNumber`
--

CREATE TABLE `phoneNumber` (
  `ID` int NOT NULL,
  `abonentID` int NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `home_number` varchar(6) DEFAULT NULL,
  `work_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `phoneNumber`
--

INSERT INTO `phoneNumber` (`ID`, `abonentID`, `mobile`, `home_number`, `work_number`) VALUES
(1, 1, '89637492342', '563876', '89995638211'),
(2, 2, '89610012341', '123234', '89623456575'),
(3, 3, '89610012680', '749934', '89546875647'),
(4, 4, '89950000695', NULL, '89995864856'),
(5, 5, '89938458611', '421523', '89623954657'),
(6, 6, '88855535351', NULL, '89050715683'),
(7, 7, '89050094921', '213242', '89065678324'),
(8, 8, '89069569434', NULL, '89995789787'),
(9, 9, '89456578434', '576879', '89034567586'),
(10, 10, '89609338457', '455769', '89945921232'),
(11, 11, '89529754564', '465732', '89125434637'),
(12, 12, '89049946424', '563846', '89005867456'),
(13, 13, '89669787675', '483218', '89243445434'),
(14, 14, '89070979899', '485766', '89079494567'),
(15, 15, '89990005665', '482746', '89445564321');

-- --------------------------------------------------------

--
-- Структура таблицы `Streets`
--

CREATE TABLE `Streets` (
  `ID` int NOT NULL,
  `street` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Streets`
--

INSERT INTO `Streets` (`ID`, `street`) VALUES
(1, 'Ленина'),
(2, 'Пушкина'),
(3, 'Крупской'),
(4, 'Папанинцев'),
(5, 'Чкалова'),
(6, 'Социалистический проспект'),
(7, 'Красноармейский проспект'),
(8, 'Никитина'),
(9, 'Интернациональная'),
(10, 'Комсомольский Проспект'),
(11, 'Пролетарская'),
(12, 'Аносова'),
(13, 'Бехтера'),
(14, 'Червонная'),
(15, 'Северо-Западная');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abonent`
--
ALTER TABLE `abonent`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `adrees`
--
ALTER TABLE `adrees`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `abonent` (`abonentID`);

--
-- Индексы таблицы `phoneNumber`
--
ALTER TABLE `phoneNumber`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `abonent` (`abonentID`);

--
-- Индексы таблицы `Streets`
--
ALTER TABLE `Streets`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abonent`
--
ALTER TABLE `abonent`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `adrees`
--
ALTER TABLE `adrees`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `phoneNumber`
--
ALTER TABLE `phoneNumber`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `Streets`
--
ALTER TABLE `Streets`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `adrees`
--
ALTER TABLE `adrees`
  ADD CONSTRAINT `adrees_ibfk_1` FOREIGN KEY (`abonentID`) REFERENCES `abonent` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `phoneNumber`
--
ALTER TABLE `phoneNumber`
  ADD CONSTRAINT `phonenumber_ibfk_1` FOREIGN KEY (`abonentID`) REFERENCES `abonent` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
