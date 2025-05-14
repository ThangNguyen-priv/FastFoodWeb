-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2024 lúc 07:32 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlybandoan_nhanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(12) NOT NULL,
  `pttt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `name`, `address`, `tel`, `email`, `total`, `pttt`) VALUES
(15, 'Duong Le Khánh', 'BGzz', '0972461283', 'akiki@gmail.com', 33, 0),
(16, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'thanghb2003@gmail.com', 41, 0),
(17, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'thanghb2003@gmail.com', 33, 0),
(18, 'Duong Le Khánh', 'BGzz', '0987651234', 'kiki2003bgzz@gmail.com', 321, 0),
(19, 'Khánh', 'Bắc Giang', '0987654321', 'khanh2003@gmail.com', 70, 0),
(20, 'Duong Le Khanh', 'Bắc Giang', '0987654321', 'kiki2003bgzz@gmail.com', 62, 0),
(21, 'Duong Le Khánh', 'Bắc Giang', '0987651234', 'akiki@gmail.com', 69, 0),
(22, 'Duong Le Khánh', 'Bắc Giang', '0987651234', 'akiki@gmail.com', 234, 0),
(23, 'Nguyễn Văn Thắng', 'Thanh Hoa', '0987651234', 'akiki@gmail.com', 68, 0),
(24, 'Nguyễn Văn Thắng', 'Thanh Hoa', '0987651234', 'akiki@gmail.com', 42, 0),
(25, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'akiki@gmail.com', 39, 0),
(26, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'akiki@gmail.com', 253, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(12) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `dongia` int(12) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL DEFAULT 0,
  `thanhtien` int(12) NOT NULL DEFAULT 0,
  `idbill` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `tensp`, `img`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(27, 'Cheese ring snack', 'a4.png', 35, 1, 35000, 14),
(28, 'trà sữa matcha', 'a9.png', 29, 1, 29000, 14),
(29, 'trà xoài', 'v4.png', 222, 1, 222000, 14),
(30, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 14),
(31, 'American fries bacon', 'a10.png', 33, 1, 33000, 15),
(32, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 16),
(33, 'trà sữa full topping', 'a10.png', 33, 1, 33000, 17),
(34, 'trà sữa mexico', 'v1.png', 321, 1, 321000, 18),
(35, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 19),
(36, 'Cheese ring burger', 'a9.png', 55, 1, 55000, 19),
(38, 'trà sữa than tre', 'v2.png', 33, 1, 33000, 20),
(39, 'American trio charcoal burger', 'bg1.png', 129, 1, 129000, 21),
(11114, 'Pizza', 'pz2.png', 69, 1, 69000, 21),
(11115, 'Caffe đường đen sữa đá', 'cf2.png', 39, 1, 39000, 22),
(11116, 'Combo king deli kuro ninja 01', 'cb2.png', 118, 1, 118000, 22),
(11117, 'Cocacola', 'coca.png', 18, 1, 18000, 22),
(11118, 'Pizza Sun', 'pz5.png', 59, 1, 59000, 22),
(11119, 'Combo Đùi gà bốc lửa', 'cb3.png', 68, 1, 68000, 23),
(11120, 'Black Hamburger', 'bg1.png', 42, 1, 42000, 24),
(11121, 'Pizza súc sích', 'pz1.png', 39, 1, 39000, 25),
(11122, 'Trà xoài', 'v4.png', 222, 1, 222000, 26),
(11123, 'Cheese ring snack', 'a4.png', 31, 1, 31000, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `hoten` varchar(200) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`hoten`, `sdt`, `email`, `noidung`) VALUES
('Duong Le Khánh', '0987654321', 'kiki2003bgzz@gmail.com', 'Thêm sản phẩm ngon hơn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham1`
--

CREATE TABLE `sanpham1` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongiacu` int(11) NOT NULL,
  `dongiamoi` int(11) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL,
  `img4` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL,
  `diemnoibat` text DEFAULT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `ngaydang` varchar(50) DEFAULT NULL,
  `nguoidang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham1`
--

INSERT INTO `sanpham1` (`masp`, `nhom_id`, `tensp`, `mota`, `dongiacu`, `dongiamoi`, `img1`, `img2`, `img3`, `img4`, `enable`, `ghichu`, `diemnoibat`, `xuatxu`, `ngaydang`, `nguoidang`) VALUES
('SP1', 2, 'Cheese ring snack', 'Phô mai vòng\r\n\r\n\r\n\r\n      ', 34, 31, 'a4.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Ngon hết nước chấm luôn\r\n      ', 'Nhiều sốt', 'Bắc Giang  ', '12/10/2020 ', 'Khánh Akiki'),
('SP10', 2, 'Cheese ring burger ', ' Ngon haha', 44, 29, 'a9.png', 'trang.png', 'trang.png', 'a9.png', 1, 'Một chiếc bánh hamburger ngon từ bánh ngọt từ thịt thơm từ rau xà lách ', 'sốt babi kiu\r\n       ', 'Hà Nội ', '15/07/2018       ', 'Thắng HB '),
('SP11', 1, 'Combo king deli kuro ninja 01', 'Combo phải thử', 130, 118, 'cb2.png', 'bg1.png', 'cb1.png', 'coca.png', 1, 'Ngon hết nước chấm', 'Many food', 'Hà Nội', '12/08/2023', 'KiKi'),
('SP12', 5, 'Cocacola', 'Cocacola no1', 20, 18, 'coca.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Uống cocacola đã phải biết', 'Không có', 'American', '11/06/2024', 'Justin Biba'),
('SP13', 5, 'Fanta', 'Fanta đã quá ta', 20, 18, 'fanta.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Đơn giản chỉ là nước cam có ga', 'Nước cam có ga', 'American', '11/06/2024', 'Justin Biba'),
('SP14', 5, 'Nước lọc', 'Nước lọc lạnh', 10, 7, 'nuocloc.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Đơn giản chỉ là nước lọc thôi nhưng mà ngon khi kèm với đồ ăn của chúng tôi :>', 'nothing', 'Việt Nam', '12/12/2022', 'Khánh Akiki'),
('SP15', 5, 'Sprite', 'Ngon ngon ngon', 20, 18, 'sprite.png', 'trang.png', 'trang.png', 'trang.png', 1, 'nothing', 'nothing', 'American', '12/10/2019', 'Vũ'),
('SP16', 6, 'Pizza', 'Chỉ có pizza thường', 78, 69, 'pz2.png', 'trang.png', 'trang.png', 'trang.png', 1, 'nothing', 'nothing', 'France', '10/11/2017', 'Thắng HB'),
('SP17', 6, 'Pizza súc sích', 'Chỉ là thêm súc sích vào pizza thoy :>>>', 45, 39, 'pz1.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Jummy', 'Súc sích Đức', 'Korean', '05/09/2024', 'Vũ Baby'),
('SP18', 6, 'Pizza Sun', 'Đơn giản nó chỉ là pizz đươc trang chí như mặt trời thoy :v', 69, 59, 'pz5.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'China', '11/06/2024', 'Sơn Tùng'),
('SP19', 6, 'Pizza cuộn', 'Pizza cuộn lại thôi =))', 45, 40, 'pz4.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'American', '12/12/2022', 'Thắng bebe'),
('SP20', 6, 'Pizza chay', 'Pizza làm từ rau củ quả', 79, 75, 'pz3.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'American', '05/11/2024    ', 'Justin Biba'),
('SP21', 1, 'Combo Đùi gà bốc lửa', '6 Đùi gà + 3 Nước ngọt + 2 Khoai tây chiên', 69, 68, 'cb3.png', 'duiga.png', 'pt.png', 'coca.png', 1, 'Combo này chỉ có ngon', 'Quá nhiều đồ ăn ngon', 'Hà Tây', '11/06/2024', 'Thắng HB'),
('SP22', 2, 'Nem cuộn rong biển', 'x3 Nem', 25, 21, 'nc.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'Hạ Long', '12/07/2021', 'Vũ Baby'),
('SP23', 7, 'Mì Ý hải sản', 'Sợi mì dai dài ngon đến từng sợi kèm theo những con tôm béo múp', 49, 45, 'mi1.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'Ý', '11/06/2024', 'Justin Biba'),
('SP24', 7, 'Mì Ý thịt xà xíu', 'Sợi mì dai dài ngon đến từng sợi kèm theo những những miếng thịt mọng nước', 55, 49, 'mi2.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'Ý', '12/12/2022', 'Khánh Akiki'),
('SP25', 2, 'Đùi gà chiên mắm', 'Đùi gà béo ngậy dai dòn dụm', 38, 35, 'ga1.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Nothing', 'Nothing', 'American', '12/10/2019', 'Khánh Akiki   '),
('SP26', 2, 'Black Hamburger', 'Bánh được làm từ than tre', 45, 42, 'bg1.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Ngon ', 'Ngon và healthy', 'American', '12/07/2021', 'Vũ Baby'),
('SP27', 4, 'Bạc sỉu lắc sữa yến mạch', 'Thơm ngon vị sữa yến mạch + caffe  thơm ngon từ hạt caffe mộc', 49, 45, 'cf1.png', 'cf1.png', 'cf1.png', 'cf1.png', 1, 'Caffe ngon ngon ngon', 'Tỉnh táo tức thời', 'Hà Nội', '12/05/2019', 'Khánh Akiki   '),
('SP28', 4, 'Caffe đường đen sữa đá', 'Ngon từ vị đắng của caffe ', 45, 39, 'cf2.png', 'cf2.png', 'cf2.png', 'cf2.png', 1, 'Nothing', 'Coffe ngon ngon ngon', 'Bắc Giang', '17/02/2020', 'Thắng HB'),
('SP29', 4, 'Caffe đen đá', 'Caffe được làm từ caffe mộc thơm ngon tròn vị', 35, 29, 'cf3.png', 'cf3.png', 'cf3.png', 'cf3.png', 1, 'Nothing', 'Caffe thơm ngon', 'Vĩnh Phúc', '05/11/2024    ', 'Vũ'),
('SP3', 3, 'Trà sữa khoai môn', 'Trà sữa thơm ngon\r\n\r\n      ', 44, 38, 'a2.png', 'a3.png', 'br1.png', 'a2.png', 1, 'Cứ phải gọi là ngon vãi cả ngon\r\n      ', 'Đầy ú ụ\r\n      ', 'Thanh Hóa  ', '02/11/2023      ', 'Huy Bebe  '),
('SP30', 4, 'Latte nóng', 'Caffe được trang trí thêm 1 lớp kem sữa ở trên mặt theo đủ loại hình thù', 60, 55, 'cf4.png', 'cf4.png', 'cf4.png', 'cf4.png', 1, 'Thơm ngon tròn vị', 'Thơm từ caffe', 'Hà Nội', '12/07/2021', 'Vũ Baby'),
('SP31', 4, 'Bạc sỉu nóng', 'Bạc sỉu nóng hổi vừa thổi vừa húp', 45, 39, 'cf5.png', 'cf5.png', 'cf5.png', 'cf5.png', 1, 'Caffe ngon ngon', 'Thơm lừng mùi caffe', 'Hòa Bình', '15/12/2021', 'Thắng Baby'),
('SP32', 4, 'Caffe đen nóng', 'Caffe nóng hổi thơm phưng phức', 45, 39, 'cf6.png', 'cf6.png', 'cf6.png', 'cf6.png', 1, 'Caffe thơm ', 'Đắng =))', 'Bắc Giang', '12/10/2019', 'Justin Biba'),
('SP4', 3, 'Trà sữa kem trứng ', 'Lớp kem trứng béo ngậy cứ phải gọi là mờ ê mê', 45, 41, 'a1.png', 'a6.png', 'br1.png', 'a1.png', 1, 'Đặc biệt thơm ngon\r\n     ', 'Lớp kem bông mềm\r\n\r\n     ', 'Hà Tĩnh', '02/02/2022     ', 'Long 9 ngón'),
('SP5', 3, 'Trà sữa than tre', 'Thanh thanh và thơm nhẹ     ', 54, 33, 'v2.png', 'a10.png', 'a8.png', 'a9.png', 1, 'Vẫn cứ là oke      ', 'Thơm mùi than tre', 'Hòa Bình ', '16/12/2022      ', 'Aki'),
('SP6', 3, 'Trà sữa mexico', 'Uống vào chỉ thoát lên 1 câu \"OH MY GAT MONA LISA\"', 333, 321, 'v1.png', 'a2.png', 'a4.png', 'v1.png', 1, 'Thơm ngon béo ngậy', 'Nhiều trân trâu', 'Mexico', '12/08/2017    ', 'Elizabet'),
('SP7', 3, 'Hồng trà sữa', 'Không phải làm từ quả hồng đâu mà đơn giản là pha từ hồng trà kèm sữa...', 345, 232, 'a7.png', 'a2.png', 'a4.png', 'a7.png', 1, 'Very jummy  ', 'Medium   ', 'Quảng Ninh', '15/02/2024    ', 'Vũ DK'),
('SP8', 3, 'Trà xoài', 'Trà xoài thơm ngon bổ dưỡng', 321, 222, 'v4.png', 'trang.png', 'trang.png', 'trang.png', 1, 'Ngon ngon ngon     ', 'Verry jummy   ', 'Bắc Giang', '05/11/2024    ', 'Khánh Akiki   '),
('SP9', 2, 'American fries bacon', '	Khoai chiên với xốt mayo cay dịu và xốt tiêu đen.', 34, 33, 'a10.png', 'a2.png', 'a9.png', 'a10.png', 1, '	Cứ phải gọi là ngon ngon ngon', '	Sốt đặc biệt', 'Thái Bình mồ hôi rơi', '17/02/2020', 'Huy Bebe ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_nhom`
--

CREATE TABLE `sanpham_nhom` (
  `id` int(11) NOT NULL,
  `tennhom` varchar(100) NOT NULL,
  `ghichu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_nhom`
--

INSERT INTO `sanpham_nhom` (`id`, `tennhom`, `ghichu`) VALUES
(1, 'Combo', 'Jummy'),
(2, 'Món ăn kèm', 'Ngon và sạch  '),
(3, 'Trà sữa', 'Thanh mát, béo ngậy '),
(4, 'Coffe', 'Mạnh mẽ   '),
(5, 'Nước giải khát', 'Mát lạnh'),
(6, 'Pizza', 'Ngon vãi nho'),
(7, 'Mì Ý', 'Dai ngon tròn vị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tendangnhap`, `matkhau`, `hoten`, `email`, `enable`) VALUES
('khanhakiki', '16112003', 'Duong Le Khanh', 'kiki2003bgzz@gmail.com', 1),
('thang2003', '2003', 'Nguyễn Văn Thắng', 'thanghb2003@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idbill` (`idbill`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`hoten`);

--
-- Chỉ mục cho bảng `sanpham1`
--
ALTER TABLE `sanpham1`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `nhom_id` (`nhom_id`);

--
-- Chỉ mục cho bảng `sanpham_nhom`
--
ALTER TABLE `sanpham_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
