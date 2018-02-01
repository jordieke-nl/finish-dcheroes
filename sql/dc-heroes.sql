-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 01 feb 2018 om 10:53
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(6, 'Superman', 'Rocketed to Earth as an infant from the doomed planet Krypton, Kal-El was adopted by the loving Kent family and raised in America\'s heartland as Clark Kent. Using his immense solar-fueled powers, he became Superman to defend mankind against all manner of threats while championing truth, justice and the American way!', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/superman.jpg', 1),
(7, 'Batman', 'Bruce Wayne, who witnessed the murder of his multi-millionaire parents as a child, swore to avenge their deaths. He trained extensively to achieve mental and physical perfection, mastering martial arts, detective skills, and criminal psychology. Costumed as a bat to prey on criminals\'s fears, and utilizing a high-tech arsenal, he became the legendary Batman.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/batman.jpg', 1),
(8, 'Wonder Woman', 'The princess of the Amazons, armed with powers of a god, Wonder Woman is one of Earth\'s most powerful defenders of peace and equality and a member of the Justice League. She is often considered an archetype for the comic book superheroine. She stands for Love, peace, and above all else, truth! Her original origin depicted her as a clay figure brought to life by the gods, but in recent years she has been depicted as the daughter of Zeus and the Amazon queen Hippolyta.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/wonderwoman.jpg', 1),
(9, 'Green Lantern', 'With the ability to overcome great fear and harness the power of will, test-pilot Hal Jordan was chosen to be the Green Lantern of Sector 2814 inheriting the ring of the dying alien Green Lantern, Abin Sur. Through sheer will power and determination, Hal has established an impressive record of heroism across the galaxy with the help of his fellow Green Lanterns as well as his peers in the Justice League.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/greenlantern.jpg', 1),
(10, 'Jay Garrick', 'Jay Garrick is the original, Golden Age, super-speedster, and was the first to have the mantle of the Flash and a founder of the Justice Society of America. It was Jay Garrick\'s legendary heroics that inspired Barry Allen.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/jaygarrick.jpg', 2),
(11, 'Barry Allen', 'Having discovered his mother murdered and his father blamed for the act, forensic scientist Barry Allen sought to clear his father\'s name and find the real killer. After being doused in chemicals and struck by lightning, Barry was granted the gift of super-speed. Now he protects his hometown of Central City as The Flash, the fastest man alive and founding member of the Justice League.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/barryallen.jpg', 2),
(12, 'Wally West', 'Struck by the same lightning bolt that turned his uncle Barry Allen into the Flash, Wallace Rudolph \"Wally\" West took the name Kid Flash and became Barry\'s sidekick and the member of the Teen Titans. Eventually, Wally became the Flash to honor his uncle\'s memory, who died saving the Universe. He also became a member of the Justice League. He married a woman named Linda Park and had two kids, Jai and Iris West II. Currently, Wally was pulled from the Speed Force by Barry and is one of two fastest men alive.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/wallywest.jpg', 2),
(13, 'Bart Allen', 'Hailing from the 30th century, Bart Allen is the grandson of the Flash, Barry Allen and Iris Allen. Originally using the name Impulse and trained by Max Mercury, Bart utilizes the same powers of super-speed possessed by his grandfather and fights crime alongside the Teen Titans, know as Kid Flash and Wally West\'s sidekick.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/bartallen.jpeg', 2),
(14, 'Brane', 'Brane is the Batman of the 31st Century, and a descendant of Bruce Wayne.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/brane.jpg', 3),
(15, 'Carrie Kelley', 'In the Dark Knight Returns, Carrie Kelley sought out Batman and earned the right to fight alongside him as Robin using her home made costume. She later took up the mantles of Catgirl, Batman, Batgirl, and Batwoman', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/carriekelley.png', 3),
(16, 'Damian Wayne', 'Damian Wayne is the son of Bruce Wayne and Talia al Ghul. Trained by the League of Assassins all his life, Damian joined his father’s side in the war against crime by becoming the fifth Robin.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/damianwayne.jpg', 3),
(17, 'Dick Grayson', 'As the first Robin, Dick Grayson was the most famous sidekick in all of fiction. When the boy became a man, he became the independent hero known as Nightwing.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/dickgrayson.jpg', 3),
(18, 'Aquagirl', 'In the DC Animated Universe future, Marinaa is Aquagirl-- the daughter of Aquaman and Mera. She is also a member of the Justice League.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/aquagirl.jpg', 4),
(19, 'Gnarrk', 'Gnarrk was a gentle cave man who formed a special bond with Lilith, but died a tragic death.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/gnarrk.jpg', 4),
(20, 'Bumblebee', 'Karen Beecher-Duncan was a scientist that created a scientific super-suit which means she had no true powers. Karen also been affiliated with Doom Patrol, S.T.A.R. Labs and Teen Titans. As of Rebirth, her origins has been slightly changed she is an Air accident investigator.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/bumblebee.jpg', 4),
(21, 'Hawk', 'Hawk is the field commander and leader of G.I. Joe.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/hawk.jpg', 4),
(22, 'Black Lantern', 'A Guardian of the Universe who fell while trying to retrieve the box of Parallax from Larfleeze and his guild of thieves while in the presence of the Orange Light of Avarice. He may now serve as an Orange Lantern avatar.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/blacklantern.jpg', 5),
(23, 'Ganthet', 'Once a Guardian of the Universe, Ganthet was exiled from Oa along with Sayd, a fellow Oan. They went on to found the Blue Lantern Corps, the heralds of Hope. Ganthet inducted himself into the Green Lantern Corps to aid in the fight for the Blackest Night.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/ganthet.jpg', 5),
(24, 'Gurion', 'Gurion is one of the six new guardians of the Green Lantern Universe', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/gurion.jpg', 5),
(25, 'Guardian 7', 'Guardian 7 was one of The Guardians of The Universe who gave Sodam Yat the power of Ion and was present during the final battle against The Anti-Monitor and The Sinestro Corps. He died sacrificing his life in an attempt to destroy Superman-Prime.', '-Agility<br>\r\n-Berserker Strength<br>\r\n-Blast Power<br>\r\n-Energy Absorption<br>', 'images/guardian7.jpg', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag',
  `HowManyHeros` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`, `HowManyHeros`) VALUES
(1, 'Justice League', '', '', '(4 hero\'s)'),
(2, 'Flash Family', '', '', '(4 hero\'s)'),
(3, 'Batman and Robin', '', '', '(4 hero\'s)'),
(4, 'Teen Titans', '', '', '(4 hero\'s)'),
(5, 'Guardians of the Universe', '', '', '(4 hero\'s)');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented';
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
