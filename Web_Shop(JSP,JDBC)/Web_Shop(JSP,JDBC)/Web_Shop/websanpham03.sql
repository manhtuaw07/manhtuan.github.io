-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 04:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websanpham03`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbchitiethoadon`
--

CREATE TABLE `tbchitiethoadon` (
  `id` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giamua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbchitiethoadon`
--

INSERT INTO `tbchitiethoadon` (`id`, `mahd`, `idsp`, `soluong`, `giamua`) VALUES
(3, 2, 1, 1, 5000000),
(4, 2, 2, 2, 20000),
(5, 3, 1, 1, 5000000),
(6, 3, 2, 2, 20000),
(7, 4, 1, 1, 5000000),
(8, 4, 2, 2, 20000),
(9, 5, 2, 1, 2000000),
(10, 5, 4, 1, 12000000),
(11, 5, 6, 1, 10000000),
(12, 6, 6, 2, 10000000),
(13, 6, 3, 1, 5000000),
(14, 7, 2, 1, 2000000),
(15, 7, 6, 2, 10000000),
(16, 8, 3, 1, 5000000),
(17, 8, 4, 1, 12000000),
(18, 9, 6, 3, 65700000);

-- --------------------------------------------------------

--
-- Table structure for table `tbhoadon`
--

CREATE TABLE `tbhoadon` (
  `mahd` int(11) NOT NULL,
  `tennguoimua` varchar(30) CHARACTER SET utf8 NOT NULL,
  `dienthoai` varchar(15) NOT NULL,
  `ngaydat` datetime NOT NULL DEFAULT current_timestamp(),
  `ngaynhan` datetime NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbhoadon`
--

INSERT INTO `tbhoadon` (`mahd`, `tennguoimua`, `dienthoai`, `ngaydat`, `ngaynhan`, `trangthai`) VALUES
(2, 'abc19', '123456789', '2018-09-19 21:16:22', '2018-09-20 21:16:00', 0),
(3, 'abc19', '123456789', '2018-09-19 21:17:17', '2018-09-20 21:16:00', 1),
(4, 'abc20', '0912356004', '2018-09-19 21:17:47', '2018-09-20 21:17:00', 2),
(5, 'Ngọc Anh', '0123456789', '2019-09-03 10:13:06', '2019-09-05 10:12:00', 0),
(6, 'Phương', '123456789', '2019-09-03 11:41:20', '2019-09-06 11:41:00', 0),
(7, 'Nguyễn Đức Anh', '0123456789', '2019-09-05 10:09:15', '2019-09-06 11:41:00', 0),
(8, 'Nguyễn Đức Anh 2', '0123456789', '2019-09-05 10:14:02', '2019-09-06 11:41:00', 0),
(9, 'abzlxc', '31315', '2020-11-04 15:44:19', '2020-12-15 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbloaitin`
--

CREATE TABLE `tbloaitin` (
  `LoaiTin` int(11) NOT NULL,
  `TenLoaiTin` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `Sothutu` int(11) DEFAULT NULL,
  `TrangThai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbloaitin`
--

INSERT INTO `tbloaitin` (`LoaiTin`, `TenLoaiTin`, `Sothutu`, `TrangThai`) VALUES
(1, 'Thể Thao', NULL, NULL),
(2, 'Kinh tế', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbnhomsp`
--

CREATE TABLE `tbnhomsp` (
  `manhom` int(11) NOT NULL,
  `tennhom` varchar(200) CHARACTER SET utf8 NOT NULL,
  `sothutu` int(11) DEFAULT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnhomsp`
--

INSERT INTO `tbnhomsp` (`manhom`, `tennhom`, `sothutu`, `trangthai`) VALUES
(1, 'Máy tính', 3, 1),
(2, 'Điện thoại', 2, 1),
(5, 'Đồng hồ', 1, 1),
(6, 'Tủ lạnh', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbquantri`
--

CREATE TABLE `tbquantri` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(32) NOT NULL,
  `loai` tinyint(4) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbquantri`
--

INSERT INTO `tbquantri` (`id`, `taikhoan`, `matkhau`, `loai`, `trangthai`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(2, 'nhanvien', '202cb962ac59075b964b07152d234b70', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbsanpham`
--

CREATE TABLE `tbsanpham` (
  `id` int(11) NOT NULL,
  `masp` varchar(30) NOT NULL,
  `tensp` varchar(100) CHARACTER SET utf8 NOT NULL,
  `giasp` int(11) NOT NULL,
  `manhom` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tomtat` text CHARACTER SET utf8 DEFAULT NULL,
  `noidung` text CHARACTER SET utf8 DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsanpham`
--

INSERT INTO `tbsanpham` (`id`, `masp`, `tensp`, `giasp`, `manhom`, `hinhanh`, `tomtat`, `noidung`, `trangthai`) VALUES
(1, 'sp01', 'Máy tính MacBook Pro 2020', 5000000, 1, 'c7lw233mcxmmq.jsp', '<p> tóm tắt sản phẩm 1 </p>\r\n<p> tóm tắt sản phẩm 1 </p>\r\n<p> tóm tắt sản phẩm 1 </p>', '<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>\r\n<p> chi tiết sản phẩm 1 </p>', 0),
(2, 'sp02', 'Máy tính 2', 2000000, 1, 'apple-macbook-pro-touch-mr9q2sa-a-2018-thumb-1-600x600.jpg', '', '', 1),
(3, 'SP04', 'LapTop HP', 17800000, 1, 'hp-15s-fq0004tu-n5000-1a0d5pa-224010-1-600x600.jpg', '', '', 1),
(4, 'SP05', 'LapTop Dell ', 18500000, 1, '10043170_MTXT_DELL_INSPIRON-3480-14HD-CORE-I7-8565U-SILVER-N4I7116W_01.jpg', '', '', 1),
(6, 'SP053', 'LapTop MacBook Pro 2020', 65700000, 1, 'c7lw233mcxmmq.jpg', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbtintuc`
--

CREATE TABLE `tbtintuc` (
  `id` int(11) NOT NULL,
  `Tieude` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TomTat` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `Noidung` text CHARACTER SET utf8 DEFAULT NULL,
  `Hinhanh` varchar(100) CHARACTER SET utf16 DEFAULT NULL,
  `TinNoiBat` tinyint(1) DEFAULT NULL,
  `LoaiTin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtintuc`
--

INSERT INTO `tbtintuc` (`id`, `Tieude`, `TomTat`, `Noidung`, `Hinhanh`, `TinNoiBat`, `LoaiTin`) VALUES
(2, 'tiêu đề tin 1', 'Tóm tắt tin 1', 'Nội dung tin 1', 'ha_giang.PNG', 1, 1),
(3, 'tiêu đề tin 2', 'Tóm tắt tin 2', 'Nội dung tin 2', 'moc_chau.PNG', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbchitiethoadon`
--
ALTER TABLE `tbchitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_hd_sp` (`mahd`,`idsp`),
  ADD KEY `idsp` (`idsp`);

--
-- Indexes for table `tbhoadon`
--
ALTER TABLE `tbhoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Indexes for table `tbloaitin`
--
ALTER TABLE `tbloaitin`
  ADD PRIMARY KEY (`LoaiTin`);

--
-- Indexes for table `tbnhomsp`
--
ALTER TABLE `tbnhomsp`
  ADD PRIMARY KEY (`manhom`);

--
-- Indexes for table `tbquantri`
--
ALTER TABLE `tbquantri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taikhoan` (`taikhoan`);

--
-- Indexes for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masp_unique` (`masp`),
  ADD KEY `manhom` (`manhom`);

--
-- Indexes for table `tbtintuc`
--
ALTER TABLE `tbtintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LoaiTin` (`LoaiTin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbchitiethoadon`
--
ALTER TABLE `tbchitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbhoadon`
--
ALTER TABLE `tbhoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbloaitin`
--
ALTER TABLE `tbloaitin`
  MODIFY `LoaiTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbnhomsp`
--
ALTER TABLE `tbnhomsp`
  MODIFY `manhom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbquantri`
--
ALTER TABLE `tbquantri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbtintuc`
--
ALTER TABLE `tbtintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbchitiethoadon`
--
ALTER TABLE `tbchitiethoadon`
  ADD CONSTRAINT `tbchitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `tbhoadon` (`mahd`),
  ADD CONSTRAINT `tbchitiethoadon_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `tbsanpham` (`id`);

--
-- Constraints for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  ADD CONSTRAINT `tbsanpham_ibfk_1` FOREIGN KEY (`manhom`) REFERENCES `tbnhomsp` (`manhom`);

--
-- Constraints for table `tbtintuc`
--
ALTER TABLE `tbtintuc`
  ADD CONSTRAINT `tbtintuc_ibfk_1` FOREIGN KEY (`LoaiTin`) REFERENCES `tbloaitin` (`LoaiTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
