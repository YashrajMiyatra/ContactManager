-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2025 at 01:33 PM
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
-- Database: `contact_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Hattie Okuneva', 'bo95@example.net', '+1-234-484-1583', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(2, 'Rosendo Boyle MD', 'donnelly.jena@example.net', '602.676.9661', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(3, 'Gaetano McKenzie', 'alia.heaney@example.org', '+1-938-461-4686', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(4, 'Heloise Satterfield', 'tbraun@example.org', '+18574418198', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(5, 'Damion Corwin', 'brady28@example.com', '+1 (818) 678-3566', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(6, 'Keenan Schumm', 'ferry.lillian@example.org', '(612) 863-1383', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(7, 'Dr. Ottis Reichert I', 'zabernathy@example.com', '1-956-368-8083', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(8, 'Eldon Lindgren', 'maureen.hessel@example.com', '256-679-4778', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(9, 'Mr. Hershel Nicolas PhD', 'hahn.cecile@example.org', '+15052574408', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(10, 'Dr. Christopher McLaughlin Sr.', 'kaitlyn.muller@example.com', '1-682-303-7912', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(11, 'Karson Graham', 'cspencer@example.net', '(651) 718-1386', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(12, 'Ella Crist', 'schuyler66@example.org', '(316) 816-7853', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(13, 'Verner Prosacco', 'aisha.herman@example.net', '+1.986.897.0389', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(14, 'Elenora Mayert', 'lexus38@example.org', '561-859-8928', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(15, 'Hildegard Pollich PhD', 'russel.danyka@example.net', '678.666.1418', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(16, 'Dr. Marlen DuBuque', 'malcolm09@example.com', '+1-680-395-9654', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(17, 'Guillermo VonRueden', 'kamille81@example.net', '+1.630.287.1410', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(18, 'Rhianna Gleason', 'willms.elijah@example.org', '469.800.1084', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(19, 'Dr. Bradley Kihn PhD', 'orland.wyman@example.org', '571-866-5407', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(20, 'Arlene Will DDS', 'kutch.isac@example.org', '1-412-538-2252', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(21, 'Prof. Princess Zboncak', 'breanne36@example.org', '(657) 517-6692', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(22, 'Rosalia Rau', 'gretchen22@example.com', '325.256.1325', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(23, 'Idella Gleichner V', 'rebeka.hackett@example.net', '+1-424-388-5416', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(24, 'Cameron Beatty', 'jpouros@example.org', '+1.480.445.7178', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(25, 'Miss Autumn Wisozk', 'jason58@example.com', '570-215-3122', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(26, 'Cynthia Dooley', 'brannon.nienow@example.net', '571.736.7442', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(27, 'Ila Bernier', 'stephan.schoen@example.net', '+1-302-284-7658', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(28, 'Kendrick Pouros', 'velva68@example.net', '+1.660.419.7667', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(29, 'Cali Bayer', 'marlen.barrows@example.com', '1-707-460-1056', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(30, 'Mckenzie Simonis', 'susanna11@example.net', '1-586-809-3841', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(31, 'Lorna Kunze PhD', 'dexter.kling@example.org', '+1.283.535.4519', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(32, 'Corine Considine', 'qmiller@example.net', '(216) 946-1826', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(33, 'Mr. Jerel Dooley', 'ezra72@example.com', '346-859-0646', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(34, 'Herman Schumm', 'doris.walter@example.org', '530-438-0654', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(35, 'Emmett Kuhn', 'felipe.fadel@example.org', '(458) 497-7279', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(36, 'Denis Botsford', 'miller.cayla@example.org', '+1.863.529.3841', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(37, 'Maxwell Gaylord', 'jesse.quigley@example.com', '331.517.9386', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(38, 'Emilia Ullrich', 'kovacek.trevion@example.net', '256-469-1865', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(39, 'Suzanne Dickinson', 'jjaskolski@example.com', '+19857645069', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(40, 'Elouise Schaefer', 'gaetano.weimann@example.org', '619-800-4800', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(41, 'Wilhelm Dickens', 'colleen00@example.com', '+1.414.603.8214', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(42, 'Hilton Lind', 'watsica.hubert@example.net', '1-681-753-8938', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(43, 'Peyton Hudson', 'king.raheem@example.com', '(435) 695-0811', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(44, 'Prof. Reta Wunsch', 'lance.jakubowski@example.org', '(779) 436-9826', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(45, 'Kennedy Altenwerth', 'mandy46@example.net', '+1 (972) 474-0572', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(46, 'Ray Welch II', 'ladarius.wehner@example.org', '602-787-4912', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(47, 'Torrey Deckow', 'terrill64@example.com', '+1-972-534-1341', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(48, 'Elnora Corwin', 'mccullough.paxton@example.com', '+1-463-984-0715', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(49, 'Prof. Green Ebert', 'nikolas86@example.org', '+1.959.559.0144', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(50, 'Dr. Leonard Pfeffer IV', 'zemlak.baylee@example.com', '+1.347.242.5815', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(51, 'Prof. Solon Robel', 'robel.rhoda@example.net', '680.621.3422', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(52, 'Jadon Corwin', 'lind.henri@example.net', '(731) 247-1842', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(53, 'Selena Beier', 'nitzsche.kayden@example.org', '478-316-8516', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(54, 'Arvid Kunze V', 'laila97@example.org', '(704) 613-8965', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(55, 'Yasmin Braun', 'quitzon.nyasia@example.org', '308-955-1827', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(56, 'Polly Gerlach', 'crist.jeremy@example.com', '+1 (229) 871-3592', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(57, 'Mrs. Maia Kassulke DDS', 'xsmitham@example.com', '+1 (607) 536-3219', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(58, 'Shyann Barrows PhD', 'krajcik.bianka@example.org', '1-832-459-7641', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(59, 'Dr. Malinda Bode', 'michale.toy@example.net', '(520) 279-9879', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(60, 'Kaitlyn Hessel', 'qeichmann@example.net', '(865) 331-1240', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(61, 'Dr. Walter Roob', 'madelyn21@example.net', '+1-785-655-1214', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(62, 'Prof. Domingo Hill III', 'laurianne22@example.net', '+1-260-423-6781', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(63, 'Adelbert Feeney', 'mbalistreri@example.com', '614.786.8084', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(64, 'Mr. Boyd Hahn', 'orrin69@example.org', '(386) 522-1370', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(65, 'Miss Cleora Kertzmann', 'funk.aliyah@example.net', '1-860-716-0429', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(66, 'Prof. Joey Kiehn IV', 'estevan.rodriguez@example.org', '(208) 507-9175', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(67, 'Misty Kulas', 'natasha.vandervort@example.org', '+1 (443) 895-7542', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(68, 'Jeromy Conn', 'estrella99@example.org', '724-514-7390', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(69, 'Jaleel Swift', 'claudine.streich@example.org', '1-872-247-2935', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(70, 'Lula Wiza', 'turner.alysa@example.org', '+1-859-310-7868', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(71, 'Cole Frami', 'logan52@example.com', '1-813-299-3678', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(72, 'Cloyd Toy V', 'kmarquardt@example.org', '304-530-6822', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(73, 'Dr. Carson Kovacek', 'greenfelder.isabella@example.com', '(346) 323-8523', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(74, 'Robbie Cassin', 'cole.krystel@example.com', '574.896.8573', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(75, 'Allan Maggio', 'ahmad.kovacek@example.com', '+1.336.631.5318', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(76, 'Hershel Willms', 'ffadel@example.com', '223.798.2131', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(77, 'Melyssa Collins', 'ahudson@example.net', '(713) 335-0131', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(78, 'Ardith Purdy', 'stehr.julia@example.com', '+1-417-220-3568', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(79, 'Hortense Wolf', 'tkshlerin@example.net', '+1-346-764-9013', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(80, 'Reba Waelchi III', 'dawn.kemmer@example.org', '+1-845-527-6267', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(81, 'Sim Schneider', 'auer.una@example.net', '1-541-512-5138', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(82, 'Joan Walker', 'aleen.stanton@example.com', '347.780.9977', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(83, 'Loy Bruen', 'remington.johnson@example.com', '(207) 897-8144', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(84, 'Velva Rohan MD', 'humberto89@example.net', '339.785.6552', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(85, 'Prof. Hermann Crona', 'sthompson@example.net', '+1-319-386-4611', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(86, 'Dr. Jeanne Satterfield MD', 'pcrist@example.org', '+1 (820) 691-2210', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(87, 'Dave Buckridge', 'maye97@example.org', '+1 (904) 701-1392', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(88, 'Adela Bradtke', 'homenick.herta@example.org', '305.561.7907', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(89, 'Dr. Travon Mayer', 'ferne.kirlin@example.org', '1-803-465-3338', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(90, 'Harold Fadel Sr.', 'bwisoky@example.net', '901.853.4286', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(91, 'Birdie Fahey', 'cynthia31@example.org', '(445) 486-1998', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(92, 'Alejandrin Predovic Sr.', 'giuseppe74@example.org', '(623) 732-0177', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(93, 'Prof. Lorena Bogan DDS', 'theodora.mante@example.org', '+1.713.810.9899', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(94, 'Janelle Treutel', 'wintheiser.nathaniel@example.org', '(281) 706-4934', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(95, 'Mellie Funk', 'brown.donavon@example.net', '906-525-4814', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(96, 'Torey Parisian', 'little.javier@example.net', '+1-716-814-5891', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(97, 'Glen Koepp', 'lsauer@example.net', '678.262.3886', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(98, 'Mr. Francis Leffler DVM', 'fschamberger@example.com', '(657) 706-8934', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(99, 'Troy Bednar', 'ward.jacynthe@example.com', '920.900.4771', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(100, 'Amy Robel', 'toy.garrett@example.org', '(540) 941-1389', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(101, 'Aaron Krajcik PhD', 'ehamill@example.org', '+1-682-861-6185', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(102, 'Prof. Jonathon Zboncak', 'rudolph82@example.org', '+1-575-284-1323', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(103, 'Prof. Camden Morar PhD', 'torrance.kemmer@example.org', '743-507-0621', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(104, 'Mayra Marquardt', 'vanderson@example.com', '1-562-703-6081', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(105, 'Mr. Harold Grant Jr.', 'tkirlin@example.net', '(323) 926-1150', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(106, 'Heath McClure', 'frieda19@example.org', '+1.334.589.1632', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(107, 'Ellis Thiel', 'shayne45@example.com', '305.271.7443', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(108, 'Jonathan Gulgowski', 'heller.carley@example.com', '530.908.9390', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(109, 'Aniyah Witting IV', 'johnston.clara@example.net', '1-650-585-9471', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(110, 'Jayne Grimes', 'qwaters@example.net', '+1.747.374.3985', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(111, 'Jammie Zieme', 'weber.cayla@example.org', '1-404-516-9161', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(112, 'Keenan Metz I', 'muller.jerrold@example.org', '+1-726-273-0063', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(113, 'Mr. Fredrick Spencer', 'murazik.bradley@example.net', '+17267186255', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(114, 'Rebeca Erdman', 'xcarter@example.org', '+13646130082', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(115, 'Miss Eulah Franecki III', 'bartell.frida@example.net', '+1-283-814-2436', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(116, 'Helen O\'Keefe V', 'winston29@example.org', '(562) 346-9746', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(117, 'Mr. Keanu Monahan IV', 'mpredovic@example.com', '364.737.7419', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(118, 'Thea Wehner', 'schmidt.norbert@example.org', '727.375.3856', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(119, 'Prof. Elise D\'Amore', 'mozelle79@example.net', '321.756.2545', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(120, 'Coleman Marks III', 'donny.abshire@example.net', '786-855-5036', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(121, 'Arvid Zemlak', 'twiegand@example.net', '+1 (703) 552-9502', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(122, 'Keaton Windler', 'rleannon@example.net', '+16789619648', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(123, 'Akeem Bashirian V', 'dreilly@example.com', '+1.845.712.3652', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(124, 'Dr. Marquis Beatty MD', 'stokes.mason@example.com', '+1.986.223.5605', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(125, 'Green Schowalter', 'thora.gusikowski@example.com', '956.951.8954', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(126, 'Lolita Spencer', 'bethany21@example.com', '1-301-852-9163', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(127, 'Makenzie Zemlak', 'lehner.nora@example.org', '(510) 812-1905', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(128, 'Brant Abshire', 'clarissa93@example.org', '1-830-841-9050', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(129, 'Winston Hudson', 'will.kobe@example.org', '+1-364-403-2130', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(130, 'Josie Lebsack', 'anderson.arlene@example.net', '(678) 270-2579', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(131, 'Ollie Parisian I', 'zane.wilkinson@example.com', '+1.848.719.7396', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(132, 'Dr. Rico Carter', 'eryn.schiller@example.org', '+15416598119', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(133, 'Dr. Yvonne Emmerich I', 'rtremblay@example.org', '(360) 243-4441', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(134, 'Dr. Cade Mueller', 'adolphus.gorczany@example.org', '+1-239-955-4025', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(135, 'Mr. Kieran Murazik PhD', 'natasha.wilderman@example.org', '+1 (808) 481-5859', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(136, 'Duncan Glover', 'lela24@example.net', '480-648-5528', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 4),
(137, 'Dedric Thiel', 'freida70@example.org', '+1-539-433-8774', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(138, 'Dr. Dedric Fritsch', 'schaden.nicholas@example.org', '(262) 902-8124', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(139, 'Blaise Jenkins Sr.', 'paolo11@example.net', '1-351-938-2146', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(140, 'Nickolas Howell', 'kunde.francesca@example.net', '947.475.1729', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(141, 'Leonora Breitenberg', 'amya04@example.com', '586.562.0903', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(142, 'Nikki Wilderman', 'lfadel@example.org', '424.653.6034', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(143, 'Dr. Annabelle Wilderman Sr.', 'marlene94@example.com', '1-341-436-2580', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(144, 'Edmund Veum III', 'hackett.amina@example.com', '+1-346-878-4562', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(145, 'Christian Dicki II', 'murray.vernon@example.net', '351-460-1949', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(146, 'Trace Lakin', 'uyost@example.net', '+13024544843', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 2),
(147, 'Mr. London Von Jr.', 'fgreenfelder@example.net', '+1.515.746.3202', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5),
(148, 'Tre Powlowski', 'whitney.vandervort@example.org', '1-641-800-4678', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 3),
(149, 'Jailyn Beer', 'cole.charity@example.net', '205.347.4189', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 1),
(150, 'Veronica Bashirian DVM', 'farrell.ethyl@example.com', '747.477.1956', '2025-03-06 05:48:02', '2025-03-06 05:48:02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_06_070854_create_contacts_table', 1),
(5, '2025_03_06_100254_add_user_id_to_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3cZW3AhoFM1LoiZOBew6PsTAVR1c3e6iKG7qTIcn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYnhIR256cW51REZ0Ymd3RzU1VHZXZjJBSzlZcmlGcjE3TGNWNDkxZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NvbnRhY3RzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fX0=', 1741260454),
('nUCKJiRTjFKKnPr2xGaWRTTGDpTLFdQdydbJKdQg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnRQc21RSFQ1czFGR0tUT0dYeHBVWnNmYlYwQkhoYU94WGkwNmpvUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1741261444);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aniyah Kreiger', 'will13@example.org', NULL, '$2y$12$rJHk.ryOma1OOFaWIBhuhOnF4/fA9BvQKYv/YyO4c01azzqfkfXwm', NULL, '2025-03-06 05:48:02', '2025-03-06 05:56:20'),
(2, 'Mr. Elijah Green', 'mraz.olen@example.net', NULL, '$2y$12$rJHk.ryOma1OOFaWIBhuhOnF4/fA9BvQKYv/YyO4c01azzqfkfXwm', NULL, '2025-03-06 05:48:02', '2025-03-06 05:56:20'),
(3, 'Elenor Botsford', 'scotty.smith@example.org', NULL, '$2y$12$rJHk.ryOma1OOFaWIBhuhOnF4/fA9BvQKYv/YyO4c01azzqfkfXwm', NULL, '2025-03-06 05:48:02', '2025-03-06 05:56:20'),
(4, 'Jude Jast II', 'llewellyn.terry@example.net', NULL, '$2y$12$rJHk.ryOma1OOFaWIBhuhOnF4/fA9BvQKYv/YyO4c01azzqfkfXwm', NULL, '2025-03-06 05:48:02', '2025-03-06 05:56:20'),
(5, 'Prof. Judson McKenzie DDS', 'tmante@example.org', NULL, '$2y$12$rJHk.ryOma1OOFaWIBhuhOnF4/fA9BvQKYv/YyO4c01azzqfkfXwm', NULL, '2025-03-06 05:48:02', '2025-03-06 05:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
