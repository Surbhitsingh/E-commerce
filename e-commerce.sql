-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 09:54 AM
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
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_title` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `product_price` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_subtotal` int(10) NOT NULL,
  `user_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pro_id`, `pro_title`, `pro_image`, `product_price`, `pro_qty`, `pro_subtotal`, `user_id`, `created_at`) VALUES
(54, 2, 'Black T-shirt', 'shirt2.avif', 1999, 2, 3998, 53, '2023-07-30 03:47:06'),
(55, 1, 'Nike Women Shoes', 'shoe3.jpg', 8999, 1, 8999, 53, '2023-07-30 06:53:11'),
(56, 11, 'Women Gym Wear', 'active2.jpg', 4999, 1, 4999, 53, '2023-07-30 11:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `icon`, `description`, `created_at`) VALUES
(1, 'SHIRTS', 'shirt.jpg', 'shirt.png', 'Rapidiously foster exceptional alignments for plug-and-play interfaces. Progressively expedite cross-platform core competencies vis-a-vis cross-media', '2022-12-07 12:11:04'),
(2, 'SHOES', 'shoes.jpg', 'shoe.png', 'Rapidiously foster exceptional alignments for plug-and-play interfaces. Progressively expedite cross-platform core competencies vis-a-vis cross-media', '2022-12-07 12:11:04'),
(3, 'JEANS', 'jeans.jpg', 'jogger.php', 'Continually reintermediate impactful web-readiness with enabled catalysts for change. Globally synthesize go forward information for sustainable ', '2022-12-07 13:15:14'),
(4, 'ACTIVEWEAR', 'active6.jpg', 'gymwear.png', 'Continually reintermediate impactful web-readiness with enabled catalysts for change. Globally synthesize go forward information for sustainable ', '2022-12-07 13:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip_code` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `order_notes` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'sent to admins',
  `price` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lname`, `company_name`, `address`, `city`, `country`, `zip_code`, `email`, `phone_number`, `order_notes`, `status`, `price`, `user_id`, `created_at`) VALUES
(8, 'xyz', 'abc', 'sdfgb', 'wdefrgtshdyfugkisaergdtfy', 'wdefhg', 'fsZGfhcjvkh', 142536, 'user1@user.com', 2147483647, 'ergthfygjuh', 'sent to admins', 16017, 53, '2023-07-30 11:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `exp_date` varchar(200) NOT NULL,
  `category_id` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `quantity`, `image`, `exp_date`, `category_id`, `status`, `created_at`) VALUES
(1, 'Nike Women Shoes', 'Collaboratively extend collaborative ROI after client-centric metrics. Energistically enhance scalable scenarios whereas long-term high-impact architectures. Uniquely formulate leading-edge experiences through installed base technology. Quickly pontificate focused data after cutting-edge', '8999', 1, 'shoe3.jpg', '25', 2, 1, '2022-12-07 14:07:43'),
(2, 'Black T-shirt', 'Enthusiastically enable competitive e-business rather than efficient total linkage. Professionally predominate superior infrastructures with unique technology. Assertively plagiarize premium communities vis-a-vis professional channels. ', '1999', 1, 'shirt2.avif', '200', 1, 1, '2022-12-07 14:07:43'),
(3, 'White Top', 'Interactively predominate cross-media web services and leveraged e-tailers. Authoritatively drive visionary leadership without resource maximizing value. Credibly transform an expanded array of architectures for compelling results. ', '5999', 1, 'shirt3.jpg', '20', 1, 1, '2022-12-07 15:30:26'),
(4, 'Men\'s Jeans', 'Uniquely incentivize real-time services through e-business intellectual capital. Dramatically recaptiualize global internal or \"organic\" sources after timely schemas. Progressively network cross ', '3999', 1, 'jeans1.jpg', '100', 3, 1, '2022-12-07 15:30:26'),
(5, 'Top', 'Quickly administrate viral best practices without out-of-the-box benefits. Competently formulate bleeding-edge metrics without flexible niche markets. Conveniently customize leveraged networks via orthogonal convergence. Appropriately ', '4999', 1, 'shirt2.jpg', '10', 1, 1, '2022-12-08 09:24:54'),
(11, 'Women Gym Wear', 'Globally coordinate cross-media e-tailers vis-a-vis quality methodologies. Efficiently parallel task competitive synergy after ubiquitous metrics. Efficiently synthesize cost effective core ', '4999', 1, 'active2.jpg', '10', 4, 0, '2023-07-29 08:22:49'),
(12, 'Criss Cross Cut Out Seamless Back Sports Set', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '4999', 1, 'active4.jpg', '10', 4, 0, '2023-07-29 08:30:53'),
(13, 'Men\'s Sport T-Shirt', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '1099', 1, 'active6.jpg', '10', 4, 0, '2023-07-29 08:40:15'),
(14, 'Men\'s Gym Short', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '1,999', 1, 'active5.jpg', '52', 4, 1, '2023-07-29 08:40:15'),
(15, 'Nike Sport Wear', 'Globally coordinate cross-media e-tailers vis-a-vis quality methodologies. Efficiently parallel task competitive synergy after ubiquitous metrics. Efficiently synthesize cost effective core ', '7999', 1, 'active3.jpg', '20', 4, 1, '2022-12-08 09:32:32'),
(16, 'Women\'s Jogger', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '4999', 1, 'jeans.jpg', '25', 3, 0, '2023-07-29 08:56:59'),
(17, 'Women Blue Super Skinny High Rise Light Fade Jeans', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '2999', 1, 'jeans2.jpg', '10', 3, 0, '2023-07-29 08:56:59'),
(18, 'Women Regular Fit Pink Polycotton Trousers', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '4999', 1, 'jeans3.jpg', '10', 3, 0, '2023-07-29 08:56:59'),
(19, 'Women Blue Skinny Fit Mildly Distressed Stretchable Jeans', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '5999', 1, 'jeans6.jpg', '10', 3, 0, '2023-07-29 08:56:59'),
(20, 'Women Blue Jean Straight Fit High-Rise Stretchable Jeans', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '4999', 1, 'jeans7.jpg', '10', 3, 1, '2023-07-29 08:56:59'),
(21, 'Nike shoes', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '4999', 1, 'shoe1.jpg', '', 2, 0, '2023-07-31 07:32:55'),
(23, 'Blue Shoes', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '3999', 1, 'shoe4.jpg', '', 2, 0, '2023-07-31 07:32:55'),
(24, 'Nike White Jordan', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '10999', 1, 'shoe5.jpg', '', 2, 0, '2023-07-31 07:32:55'),
(25, 'Nike Jordan', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '9999', 1, 'shoes.jpg', '', 3, 1, '2023-07-31 07:35:30'),
(26, 'Black Women Top', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '2999', 1, 'top3.jpg', '', 1, 0, '2023-07-31 07:39:46'),
(27, 'White Women Top', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '3999', 1, 'top1.jpg', '', 1, 0, '2023-07-31 07:39:46'),
(28, 'Black Top', 'Occaecat sunt id anim officia laborum incididunt dolore sit consequat consectetur enim fugiat aute culpa consequat cillum incididunt officia sed esse laborum anim aliqua et duis reprehenderit commodo do dolor dolor deserunt esse in aute anim adipisicing deserunt eu tempor veniam magna magna nulla in ea nulla elit est do veniam dolor pariatur in ut deserunt adipisicing est anim proident occaecat aliquip sunt enim occaecat cillum commodo in duis fugiat pariatur officia aliquip anim in dolore id id pariatur pariatur enim quis excepteur proident incididunt dolor consequat nisi et veniam occaecat sed exercitation dolore eiusmod elit sed voluptate adipisicing ut irure ad ut ex deserunt exercitation amet in eu quis ut occaecat non sunt labore reprehenderit elit commodo aute ea occaecat tempor dolor sed ut cillum aute et pariatur sit consequat commodo sunt sit amet nulla commodo aute laborum non ullamco ea laboris do adipisicing quis consequat adipisicing ea cupidatat et minim pariatur sed amet cillum commodo pariatur fugiat duis id amet ut exercitation voluptate culpa fugiat nostrud aute.', '3999', 1, 'top2.jpg', '', 1, 0, '2023-07-31 07:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `mypassword`, `image`, `created_at`) VALUES
(53, 'Always one', 'user1@user.com', 'useruser1', '$2y$10$h09Mzzo3PhWI3.2wmMgmKODludSbr3oK/wO4RufPizAe1gXyR4Xm.', 'user.png', '2023-07-29 05:09:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
