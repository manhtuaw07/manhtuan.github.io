OP TABLE image_library;

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

INSERT INTO image_library VALUES("28","40","uploads/10-12-2020/pd2.jpg","1607621507","1607621507");
INSERT INTO image_library VALUES("30","40","uploads/10-12-2020/pd4.jpg","1607621507","1607621507");
INSERT INTO image_library VALUES("31","1","uploads/10-12-2020/pd2(1).jpg","1607622412","1607622412");
INSERT INTO image_library VALUES("32","1","uploads/10-12-2020/pd4(1).jpg","1607622412","1607622412");
INSERT INTO image_library VALUES("33","3","uploads/10-12-2020/dog10(1).webp","1607622564","1607622564");
INSERT INTO image_library VALUES("34","3","uploads/10-12-2020/dog11.webp","1607622564","1607622564");
INSERT INTO image_library VALUES("35","25","uploads/14-12-2020/hk2.jpg","1607965892","1607965892");
INSERT INTO image_library VALUES("36","25","uploads/14-12-2020/hk3.jpg","1607965892","1607965892");
INSERT INTO image_library VALUES("41","39","uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72.jpg","1607966918","1607966918");
INSERT INTO image_library VALUES("42","39","uploads/14-12-2020/849b32e7f47fae5cb717d2191d48ed4e0a5fef34.jpg","1607966918","1607966918");
INSERT INTO image_library VALUES("43","50","uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg","1607972566","1607972566");
INSERT INTO image_library VALUES("44","50","uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg","1607972566","1607972566");
INSERT INTO image_library VALUES("45","51","uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg","1607973066","1607973066");
INSERT INTO image_library VALUES("46","51","uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg","1607973066","1607973066");
INSERT INTO image_library VALUES("47","52","uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg","1607973085","1607973085");
INSERT INTO image_library VALUES("48","52","uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg","1607973085","1607973085");
INSERT INTO image_library VALUES("50","53","uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg","1607974328","1607974328");
INSERT INTO image_library VALUES("51","54","uploads/14-12-2020/515e2e3d461a1f0f0e2ec94119f14eb1685d5e97(1).jpg","1607974354","1607974354");
INSERT INTO image_library VALUES("52","55","uploads/10-12-2020/pd2.jpg","1608003580","1608003580");
INSERT INTO image_library VALUES("53","55","uploads/10-12-2020/pd4.jpg","1608003580","1608003580");



DROP TABLE order_detail;

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `quantity` int(200) NOT NULL,
  `price` int(255) NOT NULL,
  `created_time` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

INSERT INTO order_detail VALUES("5","6","1","12","1000000","1605370667","1605370667");
INSERT INTO order_detail VALUES("6","6","2","1","1000000","1605370667","1605370667");
INSERT INTO order_detail VALUES("8","8","1","1","1000000","1605571505","1605571505");
INSERT INTO order_detail VALUES("9","8","2","1","1000000","1605571505","1605571505");
INSERT INTO order_detail VALUES("10","9","1","1","1000000","1605621730","1605621730");
INSERT INTO order_detail VALUES("11","9","2","1","1000000","1605621730","1605621730");
INSERT INTO order_detail VALUES("12","10","1","1","1000000","1606439266","1606439266");
INSERT INTO order_detail VALUES("13","10","2","1","1000000","1606439266","1606439266");
INSERT INTO order_detail VALUES("18","13","1","2","1000000","1606534584","1606534584");
INSERT INTO order_detail VALUES("19","14","1","2","1000000","1606534666","1606534666");
INSERT INTO order_detail VALUES("20","15","2","1","1000000","1606534704","1606534704");
INSERT INTO order_detail VALUES("21","16","2","7","1000000","1606536376","1606536376");
INSERT INTO order_detail VALUES("22","16","3","1","1000000","1606536376","1606536376");
INSERT INTO order_detail VALUES("23","16","5","1","1000000","1606536376","1606536376");
INSERT INTO order_detail VALUES("24","17","3","5","1000000","1606536763","1606536763");
INSERT INTO order_detail VALUES("25","18","3","5","1000000","1606536996","1606536996");
INSERT INTO order_detail VALUES("26","19","2","2","1000000","1606537093","1606537093");
INSERT INTO order_detail VALUES("28","21","1","13","1000000","1607005372","1607005372");
INSERT INTO order_detail VALUES("30","23","1","2","1000000","1607056370","1607056370");
INSERT INTO order_detail VALUES("31","24","1","3","1000000","1607056606","1607056606");
INSERT INTO order_detail VALUES("32","25","1","2","1000000","1607618866","1607618866");
INSERT INTO order_detail VALUES("33","25","5","2","1000000","1607618866","1607618866");
INSERT INTO order_detail VALUES("34","26","2","1","1000000","1607619011","1607619011");
INSERT INTO order_detail VALUES("35","27","2","1","1000000","1607619200","1607619200");
INSERT INTO order_detail VALUES("36","28","2","1","1000000","1607619368","1607619368");
INSERT INTO order_detail VALUES("37","29","2","1","1000000","1607619431","1607619431");
INSERT INTO order_detail VALUES("38","30","2","2","1000000","1607619474","1607619474");
INSERT INTO order_detail VALUES("39","30","19","3","1000000","1607619474","1607619474");
INSERT INTO order_detail VALUES("40","31","2","1","1000000","1607620700","1607620700");
INSERT INTO order_detail VALUES("41","32","1","3","1000000","1607645662","1607645662");
INSERT INTO order_detail VALUES("42","32","2","1","1000000","1607645662","1607645662");
INSERT INTO order_detail VALUES("43","33","1","2","1000000","1607652424","1607652424");
INSERT INTO order_detail VALUES("44","33","2","1","1000000","1607652424","1607652424");
INSERT INTO order_detail VALUES("45","34","2","1","1000000","1607843544","1607843544");
INSERT INTO order_detail VALUES("46","35","1","1","1000000","1607843826","1607843826");
INSERT INTO order_detail VALUES("47","36","1","3","1000000","1607849722","1607849722");
INSERT INTO order_detail VALUES("48","36","2","2","1000000","1607849722","1607849722");
INSERT INTO order_detail VALUES("49","37","1","1","1000000","1607849923","1607849923");
INSERT INTO order_detail VALUES("50","38","1","1","1000000","1607850054","1607850054");
INSERT INTO order_detail VALUES("51","39","1","1","1000000","1607850211","1607850211");
INSERT INTO order_detail VALUES("52","40","1","1","1000000","1607850520","1607850520");
INSERT INTO order_detail VALUES("53","41","1","1","1000000","1607850674","1607850674");
INSERT INTO order_detail VALUES("54","42","8","1","1000000","1607852461","1607852461");
INSERT INTO order_detail VALUES("55","43","3","4","1000000","1607853103","1607853103");
INSERT INTO order_detail VALUES("56","43","5","1","1000000","1607853103","1607853103");
INSERT INTO order_detail VALUES("57","44","2","1","1000000","1607853295","1607853295");
INSERT INTO order_detail VALUES("58","44","5","1","1000000","1607853295","1607853295");
INSERT INTO order_detail VALUES("59","45","2","3","1000000","1607853485","1607853485");
INSERT INTO order_detail VALUES("60","45","8","2","1000000","1607853485","1607853485");
INSERT INTO order_detail VALUES("61","46","1","3","1000000","1607872741","1607872741");
INSERT INTO order_detail VALUES("62","47","1","1","1000000","1607875935","1607875935");
INSERT INTO order_detail VALUES("63","47","2","1","1000000","1607875935","1607875935");
INSERT INTO order_detail VALUES("64","48","1","1","1000000","1607875987","1607875987");
INSERT INTO order_detail VALUES("65","49","1","1","1000000","1607876012","1607876012");
INSERT INTO order_detail VALUES("66","50","39","1","10000000","1607970530","1607970530");
INSERT INTO order_detail VALUES("67","50","40","3","1000000","1607970530","1607970530");
INSERT INTO order_detail VALUES("68","51","39","1","10000000","1607972241","1607972241");
INSERT INTO order_detail VALUES("69","51","40","3","1000000","1607972241","1607972241");
INSERT INTO order_detail VALUES("70","52","39","1","10000000","1607973014","1607973014");
INSERT INTO order_detail VALUES("71","52","40","3","1000000","1607973014","1607973014");
INSERT INTO order_detail VALUES("72","53","39","1","10000000","1607974280","1607974280");
INSERT INTO order_detail VALUES("73","53","40","3","1000000","1607974280","1607974280");
INSERT INTO order_detail VALUES("74","54","40","1","1000000","1607996868","1607996868");



DROP TABLE orders;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `note` text NOT NULL,
  `total` int(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_time` varchar(255) DEFAULT NULL,
  `last_updated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

INSERT INTO orders VALUES("6","2","Khách VIP","13000000","1","1605370667","1605370667");
INSERT INTO orders VALUES("42","2","","1000000","0","1607852461","1607852461");
INSERT INTO orders VALUES("43","2","","5000000","1","1607853103","1607853103");
INSERT INTO orders VALUES("44","1","","2000000","0","1607853295","1607853295");
INSERT INTO orders VALUES("50","2","","9750000","0","1607970530","1607970530");
INSERT INTO orders VALUES("51","2","","9750000","0","1607972241","1607972241");
INSERT INTO orders VALUES("52","2","","9750000","0","1607973014","1607973014");
INSERT INTO orders VALUES("53","2","","9750000","0","1607974280","1607974280");
INSERT INTO orders VALUES("54","1","","1000000","1","1607996868","1607996868");



DROP TABLE post;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `kind` varchar(200) NOT NULL,
  `age` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(1) NOT NULL,
  `created_time` varchar(255) NOT NULL,
  `last_updated` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

INSERT INTO post VALUES("1","CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Poodle "," Từ 60 ngày tới 1 tuổi","Anh Quốc","uploads/27-11-2020/pd4.jpg","0","1605360584","1607954676");
INSERT INTO post VALUES("2"," Joker Phú Quốc Vàng Lưỡi đen, Mắt vàng","1000000","Chó Phú Quốc"," Từ 60 ngày tới 1 tuổi","Anh Quốc","image/dog2.webp","1","1605360584","1605360584");
INSERT INTO post VALUES("3","Poodle Phantom Xám Trắng Size tiny","1000000","Poodle Phantom"," Từ 60 ngày tới 1 tuổi","Anh Quốc","uploads/10-12-2020/dog10.webp","1","1605360584","1607622564");
INSERT INTO post VALUES("5","Chó Dòng Bully Đực Màu Blue Hơn 1 Tuổi","1000000","Bully ","2 tuổi","Đức","image/dog5.webp","1","1605360584","1605619003");
INSERT INTO post VALUES("8","Micro Exotic Bully nhập Mỹ","1000000","Micro Exotic Bully"," Từ 60 ngày tới 1 tuổi","Đức","image/dog8.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("19","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Đức","image/dog3.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("21","CHÓ PHÚ QUỐC ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","2000000","Chó Phú Quốc"," Từ 60 ngày tới 1 tuổi","Việt Nam","image/dog5.webp","0","1605360584","1605659229");
INSERT INTO post VALUES("23","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Đức","image/dog7.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("24","CHÓ PUB ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","3000000","Chó PUB ","2 tuổi","Đức","image/dog8.webp","0","1605360584","1605658833");
INSERT INTO post VALUES("25","CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI","10000000","Chó Husky"," Từ 60 ngày tới 1 tuổi","Đức","uploads/14-12-2020/hk1.jpg","0","1605360584","1607965892");
INSERT INTO post VALUES("33","CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI","10000000","Chó Husky"," Từ 60 ngày tới 1 tuổi","Đức","uploads/27-11-2020/Bull.jpg","0","1605360584","1606488063");
INSERT INTO post VALUES("34","CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Poodle "," Từ 60 ngày tới 1 tuổi","Đức","uploads/27-11-2020/pd4.jpg","0","1605360584","1606492913");
INSERT INTO post VALUES("35","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Đức","image/dog3.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("36","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Đức","image/dog8.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("37","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Mỹ","image/dog3.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("38","CHÓ CORGI ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Corgi"," Từ 60 ngày tới 1 tuổi","Mỹ","image/dog7.webp","0","1605360584","1605360584");
INSERT INTO post VALUES("39","CHÚ CHÓ SIÊU ĐÁNG YÊU MANG TÊN NÈ LƯỠI","10000000","Chó Husky"," Từ 60 ngày tới 1 tuổi","Mỹ","uploads/14-12-2020/8af769baf25f4ebe5516322e59e0b28ee3404b72(1).jpg","0","1605360584","1607966939");
INSERT INTO post VALUES("55","CHÓ POODLE ĐỰC THUẦN CHỦNG 2 THÁNG TUỔI MÀU VÀNG TRẮNG ĐÃ TIÊM NGỪA.","1000000","Chó Poodle "," Từ 60 ngày tới 1 tuổi","Mỹ","uploads/27-11-2020/pd4.jpg","0","1608003580","1608003580");



DROP TABLE user;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES("1","Admin","827ccb0eea8a706c4c34a16891f84e7b","manhtuaw@gmail.com","0375233333","Hà Đông, Hà Nội","1");
INSERT INTO user VALUES("2","Hứa Mạnh Tuấn","827ccb0eea8a706c4c34a16891f84e7b","manhtuanseonn@gmail.com","099999992","Kim Lương,Kim Thành,Hải Dương","0");
INSERT INTO user VALUES("3","Lê Thị Thu","827ccb0eea8a706c4c34a16891f84e7b","user2@gmail.com","099999999","Tiên Du,Từ Sơn,Bắc Ninh","0");
INSERT INTO user VALUES("17","Nguyễn ABC","827ccb0eea8a706c4c34a16891f84e7b","user122@gmail.com","0375233331","HN","0");



DROP TABLE vouchers;

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount` float NOT NULL,
  `code` varchar(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO vouchers VALUES("2","0.5","50phamtram","0");
INSERT INTO vouchers VALUES("3","0.25","25phantram","0");



