-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 04:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteenfct`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(4) NOT NULL,
  `cate_name` varchar(60) NOT NULL,
  `cate_status` varchar(15) NOT NULL,
  `cate_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`, `cate_status`, `cate_pic`) VALUES
(1, 'Rice', 'Visible', 'delish-fried-rice-020-1543875572.jpg'),
(2, 'Kottu', 'Visible', 'OIP.jpg'),
(3, 'Noodles', 'Visible', 'LindseyEats_Spicy_Garlic_Noodles-3.jpg'),
(5, 'Vegetable Dish', 'Visible', 'vegetable_stir_fry-500x375.jpg'),
(6, 'Cake', 'Visible', 'marble-cake-canva-500x500.jpg'),
(7, 'Pizza', 'Visible', '53110049.jpg'),
(8, 'Burger', 'Visible', 'Big-Juicy-Burgers.jpg'),
(10, 'Sandwich', 'Visible', '60072777.jpg'),
(49, 'Pasta', 'Visible', 'R.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(6) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `password` varchar(500) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `wallet` int(8) NOT NULL DEFAULT 0,
  `reg_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fname`, `lname`, `email`, `reg_no`, `password`, `profile_pic`, `wallet`, `reg_date`) VALUES
(2, 'Sakuntha', 'Prabodha', 'saku@gmail.com', 'CT/2019/087', '$2y$10$Pocr6W1AaMza3CSUT7c.PedoeiPl3cEcZRZDUmz/YTH1vXKg47QOq', 'Blue Background2.jpg', 3100, '2023-08-09'),
(3, 'Praneeth', 'Madhumal', 'praneethvinodapriya@gmail.com', '20010129', '$2y$10$f5.bvBzJQx84D.LmZZaO1u/R3fM/SaBJgOknVGfdCZl5DhxKePN4q', 'people.jpg', 1300, '2023-08-09'),
(4, 'Kasun', 'Madhuranga', 'kasunmadu@gmail.com', 'CT/2019/086', '$2y$10$27uvNi9c.oNC8B7vg8.Kq.84Fp2O5coWMyOXgi8ZABe5XAAd.qL8.', 'OIP.jpeg', 4550, '2023-08-09'),
(5, 'Gayan', 'Chathuranga', 'gayan@gmail.com', 'ET/2020/001', '$2y$10$e0IeGNtzphlkGSsyduQIxuQDpqohuVeAg3XMKMny7YktkxJ3Jxh9.', 'OIP (1).jpeg', 0, '2023-08-09'),
(6, 'Kavindu', 'Kalhara', 'kavindu@gmail.com', 'CS/2017/001', '$2y$10$vo929EDvZavl/B3ZidJfDOss2O/tBfoJnY7k5jotOh4HADMqetE8q', 'user-icon-symbol-sign-vector.jpg', 0, '2023-08-13'),
(9, 'Asela', 'Silva', 'sakunthaprabodhasps@gmail.com', 'CT/2019/008', '$2y$10$TuaHiqHPb.vyXCjVQc24zeUd8aunvUDERbaMVIhcZHxC1D7YOT0s6', 'people-icon-symbol-sign-vector.jpg', 500, '2023-08-17'),
(10, 'Nayana', 'Mahesh', 'nayana@gmail.com', 'CT/2019/033', '$2y$10$pkzFKEqI4pQMldD0VolEjO1zN9UgpwR8ovM/rtI5UNDbDp0JkJGAO', 'OIP (1).jpeg', 500, '2023-09-21'),
(11, 'Nimal', 'Ranathumga', 'nimal@gmail.com', 'CT/2019/099', '$2y$10$aNoaYC5xKbmaoPdpX8w4serBvnm7Hg0M1UoIRZy/U995Oq/orsf3G', 'OIP (1).jpeg', 0, '2023-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_user`
--

CREATE TABLE `deleted_user` (
  `customer_id` int(6) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `wallet` int(8) NOT NULL,
  `reason` text NOT NULL,
  `reg_date` date NOT NULL DEFAULT current_timestamp(),
  `del_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deleted_user`
--

INSERT INTO `deleted_user` (`customer_id`, `fname`, `lname`, `email`, `reg_no`, `profile_pic`, `wallet`, `reason`, `reg_date`, `del_date`) VALUES
(1, 'Tharindu', 'Prabhath', 'tharindu123@gmail.com', 'CT/2019/096', 'R.webp', 0, 'rrg', '2023-08-13', '2023-08-28'),
(2, 'Aruni', 'Samadhi', 'aruni@gmail.com', 'ET/2018/001', 'Team-Member-Icon-e1534260328377.jpg', 500, 'sgfd', '2023-08-13', '2023-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `deposit_id` int(7) NOT NULL,
  `amount` int(6) NOT NULL,
  `new_amount` int(8) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `deposit_status` varchar(10) NOT NULL DEFAULT 'Include',
  `customer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`deposit_id`, `amount`, `new_amount`, `time`, `deposit_status`, `customer_id`) VALUES
(7, 500, 500, '2023-08-06 19:51:57', 'Include', 2),
(8, 200, 700, '2023-08-06 19:52:29', 'Include', 2),
(9, 300, 1000, '2023-08-07 11:23:52', 'Include', 2),
(10, 100, 1100, '2023-08-07 11:32:54', 'Include', 2),
(11, 100, 100, '2023-08-07 11:33:05', 'Include', 3),
(13, 100, 1000, '2023-08-07 11:54:14', 'Exclude', 2),
(14, 300, 400, '2023-08-07 12:14:52', 'Include', 3),
(15, 1000, 2000, '2023-08-07 12:15:17', 'Include', 2),
(16, 500, 900, '2023-08-07 19:57:55', 'Include', 3),
(17, 100, 800, '2023-08-07 20:01:55', 'Exclude', 3),
(18, 200, 1000, '2023-08-07 20:05:58', 'Include', 3),
(19, 300, 1300, '2023-08-07 20:06:27', 'Include', 3),
(20, 500, 1500, '2023-08-07 20:06:46', 'Exclude', 2),
(21, 100, 1400, '2023-08-07 20:07:50', 'Exclude', 2),
(22, 1400, 0, '2023-08-07 20:30:00', 'Exclude', 2),
(23, 1500, 1500, '2023-08-07 20:31:35', 'Include', 2),
(24, 1500, 0, '2023-08-07 20:32:05', 'Exclude', 2),
(25, 500, 500, '2023-08-07 20:32:55', 'Include', 2),
(26, 200, 300, '2023-08-07 20:33:04', 'Exclude', 2),
(28, 500, 500, '2023-09-03 23:37:44', 'Include', 9),
(29, 700, 1000, '2023-09-15 10:38:20', 'Include', 2),
(30, 500, 500, '2023-09-15 19:20:20', 'Exclude', 2),
(31, 5000, 5500, '2023-09-16 12:51:21', 'Include', 2),
(32, 3000, 3000, '2023-09-16 21:18:41', 'Include', 4),
(33, 1000, 1200, '2023-09-17 13:00:32', 'Include', 2),
(34, 5000, 5750, '2023-09-17 18:45:43', 'Include', 2),
(35, 5000, 5050, '2023-09-17 19:55:22', 'Include', 2),
(36, 1000, 6800, '2023-09-18 20:07:16', 'Include', 2),
(37, 10000, 10500, '2023-09-19 08:11:27', 'Include', 4),
(38, 10000, 10700, '2023-09-19 09:16:15', 'Include', 4),
(39, 7000, 5000, '2023-09-19 18:13:24', 'Exclude', 2),
(40, 3000, 3400, '2023-09-21 12:16:38', 'Include', 2),
(41, 1000, 1000, '2023-09-21 17:08:19', 'Include', 10),
(42, 500, 500, '2023-09-21 17:09:32', 'Exclude', 10),
(43, 1000, 2100, '2023-09-22 14:06:21', 'Include', 2),
(44, 1000, 3100, '2023-09-22 14:06:21', 'Include', 2);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(5) NOT NULL,
  `food_name` varchar(80) NOT NULL,
  `food_price` int(6) NOT NULL,
  `food_quantity` int(3) NOT NULL,
  `food_pic` varchar(255) NOT NULL,
  `food_description` varchar(255) NOT NULL,
  `refill` int(3) NOT NULL DEFAULT 0,
  `food_status` varchar(15) NOT NULL DEFAULT 'Visible',
  `showcase_id` int(3) DEFAULT NULL,
  `cate_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_price`, `food_quantity`, `food_pic`, `food_description`, `refill`, `food_status`, `showcase_id`, `cate_id`) VALUES
(2, 'Seafood Kottu', 1200, 5, 'R (1).jpg', 'Sri Lankan dish Kottu roti, alternatively spelled kothu roti, is a Sri Lankan dish consisting of chopped roti, a Seafood dish of choice, along with scrambled egg, onions, and chillies. The ingredients are chopped..', 5, 'Hidden', 0, 2),
(5, 'Cheese Kottu', 1800, 8, '1601266_1608545547.1556_original.jpg', 'Sri Lankan dish Kottu roti, alternatively spelled kothu roti, is a Sri Lankan dish consisting of chopped roti, a cheese, along with scrambled egg, onions, and chillies. The ingredients are chopped..', 0, 'Visible', 0, 2),
(6, 'Chicken Kottu', 900, 35, 'OIP.jpg', 'It is made with parotta, a soft, crispy, and layered flat bread, and left over chicken curry. Chicken Kothu Parotta actually means shredded or minced parotta. It is very easy to make and I would call it bachelor food.', 0, 'Visible', 1, 2),
(7, 'Super Supreme', 1500, 5, '7af746a5-3ffd-4c50-a069-788ac28dc271.jpg', 'Roast chicken, chicken bacon, chicken sausage, beef pepperoni, pineapple, bell pepper, mushroom, onion and olive with a double layer of mozzarella cheese.', 0, 'Visible', 0, 7),
(9, 'Egg Kottu', 800, 4, 'egg-kottu.jpg', 'Egg Koththu Paratha is made with leftover paratha and eggs mixed with some spicy onion tomato masala.', 0, 'Visible', 0, 2),
(10, 'Vegetable kottu', 700, 5, 'vegan-kottu-roti-4.jpg', 'vegetable koththu roti is a spicy stir fry of chopped roti, veggies, and a protein option. It is a very versatile dish where you can easily make veggie and protein substitutions based on your preferences.', 0, 'Visible', 1, 2),
(11, 'Beef Kottu', 1500, 10, 'PXL_20220309_155225205.PORTRAIT-2-500x375.webp', 'With beef mince, curry paste and slaw mix, this stir-fry is jam packed full of flavour, colour and texture.', 10, 'Visible', 0, 2),
(12, 'Dolphin kottu', 1100, 5, 'ITM04530.jpg', 'Dolphin Kottu is prepared in a wok or a saucepan. Dolphin Kottu uses Paratha Roti torn into pieces by hand. A separately prepared curry (usually Chicken Curry) is added to the Dolphin Kottu.', 0, 'Hidden', 1, 2),
(13, 'Pork Kottu', 1400, 5, 'download (1).jpeg', 'Pork Koththu Paratha Is Made With Leftover Paratha And Pork Mixed With Some Spicy Onion Tomato Masala.gggg', 0, 'Visible', 0, 2),
(14, 'Cheeseburger', 1200, 4, 'intro-import.jpg', 'A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty, added near the end of the cooking time. ', 0, 'Hidden', 0, 8),
(15, 'Cheese sandwich', 500, 19, 'shutterstock_321217517.webp', 'A cheese sandwich is a sandwich made with cheese on bread. Typically semi-hard cheeses are used for the filling, such as Cheddar, Red Leicester, or Double Gloucester.', 0, 'Visible', 2, 10),
(16, 'Chicken Noodles', 850, 1, 'chicken-chow-mein-recipe-500x500.webp', 'Chicken noodles are a delicious flavor packed meal of stir fried noodles, chicken, vegetables and sauces. Made in Chinese Hakka Style!', 0, 'Visible', 1, 3),
(20, 'Chocolate Cake', 150, 10, 'Chocolate-Chocolate-Cake4-600x400.webp', 'Chocolate cake or chocolate gâteau is a cake flavored with melted chocolate, cocoa powder, or both. Chocolate cake is made with chocolate. It can also include other ingredients. These include fudge, vanilla creme, and other sweeteners.', 10, 'Visible', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_code`
--

CREATE TABLE `forgot_code` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(6) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forgot_code`
--

INSERT INTO `forgot_code` (`id`, `email`, `code`, `expire`) VALUES
(1, 'sakunthaprabodhasps@gmail.com', '263010', 1692262073),
(2, 'sakunthaprabodhasps@gmail.com', '118986', 1692262245),
(3, 'sakunthaprabodhasps@gmail.com', '302221', 1693532731),
(4, 'sakunthaprabodhasps@gmail.com', '348065', 1693535659),
(5, 'sakunthaprabodhasps@gmail.com', '379088', 1693536139),
(6, 'sakunthaprabodhasps@gmail.com', '752425', 1693537653),
(7, 'sakunthaprabodhasps@gmail.com', '790551', 1693538061),
(8, 'sakunthaprabodhasps@gmail.com', '523875', 1694786442);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_foods`
--

CREATE TABLE `ordered_foods` (
  `order_food_id` int(9) NOT NULL,
  `order_id` int(8) NOT NULL,
  `food_id` int(5) NOT NULL,
  `quantity` int(3) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordered_foods`
--

INSERT INTO `ordered_foods` (`order_food_id`, `order_id`, `food_id`, `quantity`, `comment`) VALUES
(13, 9, 9, 1, 'No Requests'),
(14, 10, 9, 1, 'No Requests'),
(15, 11, 16, 1, 'No Requests'),
(16, 12, 15, 1, 'No Requests'),
(17, 13, 20, 1, 'No Requests'),
(18, 13, 10, 1, 'No Requests'),
(19, 14, 7, 1, 'Roast Chicken, Chicken Bacon, Chicken Sausage, Beef Pepperoni, Pineapple, Bell Pepper, Mushroom, Onion And Olive With A Double Layer Of Mozzarella CheeseRoast Chicken, Chicken Bacon, Chicken Sausage, '),
(20, 15, 5, 1, 'No Requests'),
(22, 17, 20, 2, 'Chocolate Cake Or Chocolate Gâteau Is A Cake Flavored With Melted Chocolate, Cocoa Powder, Or Both. Chocolate Cake Is Made With Chocolate.'),
(23, 18, 20, 1, 'No Requests'),
(24, 19, 7, 3, 'No Requests'),
(25, 20, 20, 2, 'No Requests'),
(26, 21, 20, 1, 'No Requests'),
(27, 22, 20, 1, 'No Requests'),
(28, 23, 20, 1, 'No Requests'),
(29, 24, 20, 1, 'No Requests'),
(30, 25, 20, 1, 'No Requests'),
(31, 26, 20, 1, 'No Requests'),
(32, 27, 7, 1, 'No Requests'),
(33, 28, 9, 3, 'No Requests'),
(34, 29, 9, 1, 'No Requests'),
(35, 30, 13, 1, 'No Requests'),
(36, 31, 10, 1, 'No Requests'),
(37, 32, 10, 1, 'No Requests'),
(38, 33, 10, 1, 'No Requests'),
(39, 34, 10, 1, 'No Requests'),
(40, 35, 10, 1, 'No Requests'),
(41, 36, 10, 1, 'No Requests'),
(42, 37, 12, 1, 'No Requests'),
(43, 38, 12, 1, 'No Requests'),
(44, 39, 12, 1, 'No Requests'),
(45, 40, 9, 1, 'No Requests'),
(46, 41, 12, 1, 'No Requests'),
(47, 42, 12, 1, 'No Requests'),
(48, 43, 5, 1, 'No Requests'),
(49, 44, 9, 1, 'No Requests'),
(50, 45, 9, 1, 'No Requests'),
(51, 46, 20, 1, 'No Requests'),
(52, 47, 9, 1, 'No Requests'),
(53, 47, 14, 1, 'No Requests'),
(54, 47, 16, 1, 'No Requests'),
(55, 47, 20, 1, 'No Requests'),
(56, 48, 6, 2, 'No Requests'),
(57, 49, 6, 2, 'No Requests'),
(58, 49, 20, 2, 'No Requests'),
(59, 49, 16, 1, 'No Requests'),
(60, 50, 16, 1, 'No Requests'),
(61, 50, 20, 2, 'No Requests'),
(62, 50, 9, 1, 'No Requests'),
(63, 51, 2, 1, 'No Requests'),
(64, 51, 20, 2, 'No Requests'),
(65, 52, 7, 1, 'No Requests'),
(66, 53, 15, 1, 'No Requests'),
(67, 54, 20, 1, 'No Requests'),
(68, 55, 20, 1, 'No Requests'),
(69, 56, 20, 1, 'No Requests'),
(70, 57, 2, 1, 'No Requests'),
(71, 58, 15, 1, 'No Requests'),
(72, 59, 20, 1, 'No Requests'),
(73, 60, 10, 2, 'No Requests'),
(74, 61, 10, 2, 'No Requests'),
(75, 62, 20, 1, 'No Requests'),
(76, 63, 20, 1, 'No Requests'),
(77, 63, 15, 1, 'No Requests'),
(78, 64, 15, 1, 'No Requests'),
(79, 64, 20, 1, 'No Requests'),
(80, 64, 9, 1, 'No Requests'),
(81, 65, 20, 1, 'No Requests'),
(82, 66, 6, 1, 'No Requests'),
(83, 67, 5, 1, 'No Requests'),
(84, 67, 20, 2, 'No Requests'),
(85, 68, 16, 1, 'No Requests'),
(86, 69, 9, 1, 'No Requests');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(8) NOT NULL,
  `customer_id` int(6) NOT NULL,
  `total_price` int(8) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(25) NOT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `total_price`, `date_time`, `order_status`, `feedback`) VALUES
(9, 2, 800, '2023-09-16 13:50:53', 'Finished', NULL),
(10, 2, 800, '2023-09-16 13:53:24', 'Cancelled', NULL),
(11, 2, 850, '2023-09-16 18:54:43', 'Cancelled', NULL),
(12, 2, 500, '2023-09-16 20:42:53', 'Cancelled', NULL),
(13, 2, 850, '2023-09-16 20:43:17', 'Cancelled', NULL),
(14, 2, 1500, '2023-09-16 20:49:07', 'Cancelled', NULL),
(15, 4, 1800, '2023-09-16 21:19:11', 'Cancelled', NULL),
(17, 2, 300, '2023-09-17 13:04:57', 'Cancelled', NULL),
(18, 2, 150, '2023-09-17 13:06:56', 'Finished', NULL),
(19, 2, 4500, '2023-09-17 18:46:17', 'Cancelled', NULL),
(20, 2, 300, '2023-09-17 18:52:41', 'Finished', NULL),
(21, 2, 150, '2023-09-17 18:56:56', 'Cancelled', NULL),
(22, 2, 150, '2023-09-17 18:57:13', 'Cancelled', NULL),
(23, 2, 150, '2023-09-17 18:58:29', 'Cancelled', NULL),
(24, 2, 150, '2023-09-17 18:59:29', 'Finished', NULL),
(25, 2, 150, '2023-09-17 19:04:44', 'Cancelled', NULL),
(26, 2, 150, '2023-09-17 19:05:08', 'Cancelled', NULL),
(27, 2, 1500, '2023-09-18 20:08:14', 'Cancelled', NULL),
(28, 2, 2400, '2023-09-19 07:29:38', 'Finished', NULL),
(29, 2, 800, '2023-09-19 07:29:59', 'Ready', NULL),
(30, 2, 1400, '2023-09-19 07:42:06', 'Ready', NULL),
(31, 4, 700, '2023-09-19 07:43:26', 'Finished', NULL),
(32, 4, 700, '2023-09-19 08:11:45', 'Finished', NULL),
(33, 4, 700, '2023-09-19 08:11:49', 'Finished', NULL),
(34, 4, 700, '2023-09-19 08:11:53', 'Finished', NULL),
(35, 4, 700, '2023-09-19 08:11:57', 'Finished', NULL),
(36, 4, 700, '2023-09-19 08:12:00', 'Finished', NULL),
(37, 4, 1100, '2023-09-19 08:12:19', 'Finished', NULL),
(38, 4, 1100, '2023-09-19 08:12:23', 'Finished', NULL),
(39, 4, 1100, '2023-09-19 08:12:26', 'Finished', NULL),
(40, 4, 800, '2023-09-19 09:13:46', 'Finished', NULL),
(41, 4, 1100, '2023-09-19 09:15:38', 'Finished', NULL),
(42, 4, 1100, '2023-09-19 09:15:43', 'Finished', NULL),
(43, 4, 1800, '2023-09-19 09:16:52', 'Finished', NULL),
(44, 4, 800, '2023-09-19 09:19:10', 'Finished', NULL),
(45, 4, 800, '2023-09-19 09:19:17', 'Finished', NULL),
(46, 4, 150, '2023-09-19 09:32:19', 'Finished', NULL),
(47, 2, 3000, '2023-09-19 18:23:53', 'Cancelled', NULL),
(48, 2, 1800, '2023-09-19 18:30:30', 'Cancelled', NULL),
(49, 2, 2950, '2023-09-20 11:01:58', 'Cancelled', NULL),
(50, 2, 1950, '2023-09-20 11:03:18', 'Cancelled', NULL),
(51, 4, 1500, '2023-09-20 11:31:53', 'Finished', NULL),
(52, 4, 1500, '2023-09-20 11:32:17', 'Cancelled', NULL),
(53, 4, 500, '2023-09-20 11:32:34', 'Canceled by the Canteen', NULL),
(54, 4, 150, '2023-09-20 12:27:42', 'Finished', NULL),
(55, 4, 150, '2023-09-20 12:28:59', 'Canceled by the Canteen', NULL),
(56, 4, 150, '2023-09-20 18:12:33', 'Finished', NULL),
(57, 2, 1200, '2023-09-20 20:31:30', 'Processing', NULL),
(58, 2, 500, '2023-09-20 21:56:29', 'Processing', NULL),
(59, 2, 150, '2023-09-20 22:10:39', 'Processing', NULL),
(60, 2, 1400, '2023-09-20 22:36:37', 'Cancelled', NULL),
(61, 2, 1400, '2023-09-20 22:37:43', 'Canceled by the Canteen', NULL),
(62, 2, 150, '2023-09-21 12:14:57', 'Finished', ''),
(63, 2, 650, '2023-09-21 12:17:33', 'Finished', 'It truly exceeded my culinary expectations.'),
(64, 4, 1450, '2023-09-21 15:26:56', 'Finished', 'I must commend the excellent quality of the food. It was truly delightful, and I thoroughly enjoyed every bite.'),
(65, 4, 150, '2023-09-21 16:13:34', 'Finished', ''),
(66, 2, 900, '2023-09-21 22:42:18', 'Cancelled', ''),
(67, 2, 2100, '2023-09-22 08:25:28', 'Pending', ''),
(68, 2, 850, '2023-09-22 11:54:58', 'Finished', ''),
(69, 2, 800, '2023-09-22 14:02:09', 'Finished', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `showcase`
--

CREATE TABLE `showcase` (
  `showcase_id` int(3) NOT NULL,
  `showcase_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `showcase`
--

INSERT INTO `showcase` (`showcase_id`, `showcase_name`) VALUES
(0, 'No Showcase'),
(1, 'Showcase 01'),
(2, 'showcase 02'),
(3, 'showcase 03');

-- --------------------------------------------------------

--
-- Table structure for table `suspended_customer`
--

CREATE TABLE `suspended_customer` (
  `suspend_id` int(6) NOT NULL,
  `reason` text NOT NULL,
  `notice` text NOT NULL,
  `sus_date` date NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suspended_customer`
--

INSERT INTO `suspended_customer` (`suspend_id`, `reason`, `notice`, `sus_date`, `customer_id`) VALUES
(69, 'jjjjjjjjj', 'After reviewing your account, we have noted several concerns within your account activity. As a result, we have suspended your account. If you feel this action was taken in error and would like to continue to use your account, we would like to verify your account and account activity directly with you.', '2023-08-29', 6),
(71, 'aaa', 'After reviewing your account, we have noted several concerns within your account activity. As a result, we have suspended your account. If you feel this action was taken in error and would like to continue to use your account, we would like to verify your account and account activity directly with you.', '2023-09-22', 9);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `watchlist_id` int(8) NOT NULL,
  `customer_id` int(6) NOT NULL,
  `food_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`watchlist_id`, `customer_id`, `food_id`) VALUES
(7, 2, 20),
(8, 4, 20),
(9, 2, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`),
  ADD UNIQUE KEY `cate_name` (`cate_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- Indexes for table `deleted_user`
--
ALTER TABLE `deleted_user`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`deposit_id`),
  ADD KEY `deposit_customer_id` (`customer_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD UNIQUE KEY `food_name` (`food_name`),
  ADD KEY `foodCategory` (`cate_id`),
  ADD KEY `foodShowcase` (`showcase_id`);

--
-- Indexes for table `forgot_code`
--
ALTER TABLE `forgot_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`);

--
-- Indexes for table `ordered_foods`
--
ALTER TABLE `ordered_foods`
  ADD PRIMARY KEY (`order_food_id`),
  ADD KEY `orderid_o_f` (`order_id`),
  ADD KEY `foodid_o_f` (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_customer` (`customer_id`);

--
-- Indexes for table `showcase`
--
ALTER TABLE `showcase`
  ADD PRIMARY KEY (`showcase_id`),
  ADD UNIQUE KEY `showcase_name` (`showcase_name`);

--
-- Indexes for table `suspended_customer`
--
ALTER TABLE `suspended_customer`
  ADD PRIMARY KEY (`suspend_id`),
  ADD KEY `sus_customer` (`customer_id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`watchlist_id`),
  ADD KEY `watclhist_customer` (`customer_id`),
  ADD KEY `watchlist_food` (`food_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deleted_user`
--
ALTER TABLE `deleted_user`
  MODIFY `customer_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `deposit_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `forgot_code`
--
ALTER TABLE `forgot_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordered_foods`
--
ALTER TABLE `ordered_foods`
  MODIFY `order_food_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `showcase`
--
ALTER TABLE `showcase`
  MODIFY `showcase_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suspended_customer`
--
ALTER TABLE `suspended_customer`
  MODIFY `suspend_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `watchlist_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `deposit_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `foodCategory` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodShowcase` FOREIGN KEY (`showcase_id`) REFERENCES `showcase` (`showcase_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ordered_foods`
--
ALTER TABLE `ordered_foods`
  ADD CONSTRAINT `foodid_o_f` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid_o_f` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suspended_customer`
--
ALTER TABLE `suspended_customer`
  ADD CONSTRAINT `sus_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_food` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `watclhist_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
