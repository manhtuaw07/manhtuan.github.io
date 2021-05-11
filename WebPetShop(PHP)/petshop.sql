-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 10:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_library`
--

INSERT INTO `image_library` (`id`, `post_id`, `path`, `created_time`, `last_updated`) VALUES
(28, 40, 'uploads/10-12-2020/pd2.jpg', 1607621507, 1607621507),
(30, 40, 'uploads/10-12-2020/pd4.jpg', 1607621507, 1607621507),
(31, 1, 'uploads/10-12-2020/pd2(1).jpg', 1607622412, 1607622412),
(32, 1, 'uploads/10-12-2020/pd4(1).jpg', 1607622412, 1607622412),
(33, 3, 'uploads/10-12-2020/dog10(1).webp', 1607622564, 1607622564),
(34, 3, 'uploads/10-12-2020/dog11.webp', 1607622564, 1607622564),
(35, 25, 'uploads/14-12-2020/hk2.jpg', 1607965892, 1607965892),
(36, 25, 'uploads/14-12-2020/hk3.jpg', 1607965892, 1607965892),
(41, 39, 'uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72.jpg', 1607966918, 1607966918),
(42, 39, 'uploads/14-12-2020/849b32e7f47fae5cb717d2191d48ed4e0a5fef34.jpg', 1607966918, 1607966918),
(43, 50, 'uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 1607972566, 1607972566),
(44, 50, 'uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1607972566, 1607972566),
(45, 51, 'uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 1607973066, 1607973066),
(46, 51, 'uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1607973066, 1607973066),
(47, 52, 'uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 1607973085, 1607973085),
(48, 52, 'uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1607973085, 1607973085),
(50, 53, 'uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1607974328, 1607974328),
(51, 54, 'uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1607974354, 1607974354),
(52, 55, 'uploads/10-12-2020/pd2.jpg', 1608003580, 1608003580),
(53, 55, 'uploads/10-12-2020/pd4.jpg', 1608003580, 1608003580),
(54, 56, 'uploads/15-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 1608025104, 1608025104),
(55, 56, 'uploads/15-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97.jpg', 1608025104, 1608025104),
(57, 57, 'uploads/15-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97.jpg', 1608025109, 1608025109),
(58, 58, 'uploads/15-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 1608025362, 1608025362),
(59, 58, 'uploads/15-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1608025362, 1608025362),
(61, 59, 'uploads/15-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg', 1608025368, 1608025368);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `note` text NOT NULL,
  `total` int(255) NOT NULL,
  `created_time` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userID`, `note`, `total`, `created_time`, `last_updated`) VALUES
(6, 2, 'Khách VIP', 13000000, '1605370667', '1605370667'),
(7, 3, '', 1000000, '1605370680', '1605370680'),
(11, 2, 'Khách VIP', 13000000, '1605370667', '1605370667'),
(12, 3, '', 1000000, '1605370680', '1605370680'),
(14, 1, '', 2000000, '1606534666', '1606534666'),
(15, 2, '', 1000000, '1606534704', '1606534704'),
(18, 2, '', 5000000, '1606536996', '1606536996'),
(19, 3, '', 2000000, '1606537093', '1606537093'),
(20, 0, '', 11000000, '1607004943', '1607004943'),
(21, 3, '', 13000000, '1607005372', '1607005372'),
(22, 6, '', 9750000, '1608025062', '1608025062'),
(23, 6, '', 9750000, '1608025325', '1608025325');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `quantity` int(200) NOT NULL,
  `price` int(255) NOT NULL,
  `created_time` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `post_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(5, 6, 1, 12, 1000000, '1605370667', '1605370667'),
(6, 6, 2, 1, 1000000, '1605370667', '1605370667'),
(7, 7, 3, 1, 1000000, '1605370680', '1605370680'),
(19, 14, 1, 2, 1000000, '1606534666', '1606534666'),
(20, 15, 2, 1, 1000000, '1606534704', '1606534704'),
(25, 18, 3, 5, 1000000, '1606536996', '1606536996'),
(26, 19, 2, 2, 1000000, '1606537093', '1606537093'),
(27, 20, 1, 11, 1000000, '1607004943', '1607004943'),
(28, 21, 1, 13, 1000000, '1607005372', '1607005372'),
(29, 22, 39, 1, 10000000, '1608025062', '1608025062'),
(30, 22, 55, 3, 1000000, '1608025062', '1608025062'),
(31, 23, 39, 1, 10000000, '1608025325', '1608025325'),
(32, 23, 55, 3, 1000000, '1608025325', '1608025325');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `kind` varchar(200) NOT NULL,
  `age` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(1) NOT NULL,
  `created_time` varchar(255) NOT NULL,
  `last_updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `price`, `kind`, `age`, `address`, `image`, `type`, `created_time`, `last_updated`) VALUES
(1, 'CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Poodle ', ' Từ 60 ngày tới 1 tuổi', 'Anh Quốc', 'uploads/27-11-2020/pd4.jpg', 0, '1605360584', '1607954676'),
(2, ' Joker Phú Quốc Vàng Lưỡi đen, Mắt vàng', 1000000, 'Chó Phú Quốc', ' Từ 60 ngày tới 1 tuổi', 'Anh Quốc', 'image/dog2.webp', 1, '1605360584', '1605360584'),
(3, 'Poodle Phantom Xám Trắng Size tiny', 1000000, 'Poodle Phantom', ' Từ 60 ngày tới 1 tuổi', 'Anh Quốc', 'uploads/10-12-2020/dog10.webp', 1, '1605360584', '1607622564'),
(5, 'Chó Dòng Bully Đực Màu Blue Hơn 1 Tuổi', 1000000, 'Bully ', '2 tuổi', 'Đức', 'image/dog5.webp', 1, '1605360584', '1605619003'),
(8, 'Micro Exotic Bully nhập Mỹ', 1000000, 'Micro Exotic Bully', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'image/dog8.webp', 0, '1605360584', '1605360584'),
(19, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'image/dog3.webp', 0, '1605360584', '1605360584'),
(21, 'CHÓ PHÚ QUỐC ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 2000000, 'Chó Phú Quốc', ' Từ 60 ngày tới 1 tuổi', 'Việt Nam', 'image/dog5.webp', 0, '1605360584', '1605659229'),
(23, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'image/dog7.webp', 0, '1605360584', '1605360584'),
(24, 'CHÓ PUB ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 3000000, 'Chó PUB ', '2 tuổi', 'Đức', 'image/dog8.webp', 0, '1605360584', '1605658833'),
(25, 'CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI', 10000000, 'Chó Husky', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'uploads/14-12-2020/hk1.jpg', 0, '1605360584', '1607965892'),
(33, 'CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI', 10000000, 'Chó Husky', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'uploads/27-11-2020/Bull.jpg', 0, '1605360584', '1606488063'),
(34, 'CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Poodle ', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'uploads/27-11-2020/pd4.jpg', 0, '1605360584', '1606492913'),
(35, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'image/dog3.webp', 0, '1605360584', '1605360584'),
(36, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Đức', 'image/dog8.webp', 0, '1605360584', '1605360584'),
(37, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Mỹ', 'image/dog3.webp', 0, '1605360584', '1605360584'),
(38, 'CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Corgi', ' Từ 60 ngày tới 1 tuổi', 'Mỹ', 'image/dog7.webp', 0, '1605360584', '1605360584'),
(39, 'CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI', 10000000, 'Chó Husky', ' Từ 60 ngày tới 1 tuổi', 'Mỹ', 'uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg', 0, '1605360584', '1607966939'),
(55, 'CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.', 1000000, 'Chó Poodle ', ' Từ 60 ngày tới 1 tuổi', 'Mỹ', 'uploads/27-11-2020/pd4.jpg', 0, '1608003580', '1608003580');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `sodienthoai`, `diachi`, `level`) VALUES
(6, 'Hứa Mạnh Tuấn', '827ccb0eea8a706c4c34a16891f84e7b', 'manhtuan@gmail.com', '03752795656', 'Kim Thành, Hải Dương', 0),
(7, 'Admin', '827ccb0eea8a706c4c34a16891f84e7b', 'huamanhtuan@gmail.com', '0375233333', 'Hồ Tây, Hà Nội', 1),
(14, 'test12', '827ccb0eea8a706c4c34a16891f84e7b', 'manhtuaw11@gmail.com', '0375233331', 'HN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `discount` float NOT NULL,
  `code` varchar(11) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `discount`, `code`, `quantity`) VALUES
(2, 0.5, '50phamtram', 0),
(3, 0.25, '25phantram', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
