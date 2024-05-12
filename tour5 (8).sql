-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2024 lúc 08:44 PM
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
-- Cơ sở dữ liệu: `tour5`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adminid`, `ten`, `phone`, `mail`) VALUES
(1, 'Võ Như Ý', '0739769047', 'nhuyvo@gmail.com'),
(2, 'Phan Anh Vy', '0578237495', 'anhvycontactwork@gmail.com'),
(3, 'My Trần', '0978567786', 'mytranmohon@gmail.com'),
(4, 'Nguyễn Minh Tú', '0235678987', 'thuylieubali@gmail.com'),
(5, 'Nguyễn Trần Trung Quân', '0569875728', 'trungquanidol@gmail.com'),
(6, 'Phạm Anh Khôi', '0978505776', 'anhkhoitanung@gmail.com'),
(7, 'Phạm Như Phương', '0354880950', 'phuong2947n@gmail.com'),
(8, 'Võ Hoàng Yến', '0354770906', 'vominhson@gmail.com'),
(9, 'Nguyễn Thanh Tùng', '0345789098', 'sontungmtp@gmail.com'),
(10, 'Nguyễn Việt Mỹ', '0978337854', 'nguyenvietmy@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tourid` int(11) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `ngaythem` date NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `tourid`, `soluong`, `ngaythem`, `total`) VALUES
(1, 1, 1, 2, '2024-03-25', 0),
(2, 2, 2, 3, '2024-03-26', 0),
(3, 3, 3, 1, '2024-03-27', 0),
(4, 4, 4, 2, '2024-03-28', 0),
(5, 5, 5, 4, '2024-03-29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `reviewid` int(11) NOT NULL,
  `tourid` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `cmt` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `tenuser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`reviewid`, `tourid`, `rating`, `cmt`, `userid`, `tenuser`) VALUES
(1, 1, 4, 'Tour rất tuyệt vời!', 1, 'Nguyễn Văn A'),
(2, 2, 5, 'Tour rất thú vị và đáng nhớ!', 2, 'Nguyễn Văn B'),
(3, 54, 3, 'Tour không quá ấn tượng như mong đợi.', 3, 'Phan Thị A'),
(4, 54, 4, 'Địa điểm đẹp, dịch vụ tốt.', 4, 'Nguyễn Thị C'),
(5, 5, 5, 'Sapa là một nơi tuyệt vời để khám phá!', 5, 'Bành Thị Lựu'),
(21, 54, 1, 'tour xịn nhở', 1, 'Nguyễn Xuân Đào'),
(22, 54, 4, 'xịn nha', 1, 'Nguyễn Xuân Đào'),
(23, 54, 3, 'Tệ', 1, 'Lê Trọng Vinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tourid` int(11) NOT NULL,
  `ngaythanhtoan` date NOT NULL,
  `money` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `userid`, `tourid`, `ngaythanhtoan`, `money`) VALUES
(1, 1, 1, '2024-03-25', 4000000),
(2, 2, 2, '2024-03-26', 9000000),
(3, 3, 3, '2024-03-27', 1500000),
(4, 4, 4, '2024-03-28', 9000000),
(5, 5, 5, '2024-03-29', 11200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reset_token`
--

CREATE TABLE `reset_token` (
  `email` varchar(64) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expire_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reset_token`
--

INSERT INTO `reset_token` (`email`, `token`, `expire_on`) VALUES
('admin@gmail.com', '', 0),
('tdt@tdtu.edu.vn', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `tourid` int(11) NOT NULL,
  `tentour` varchar(50) NOT NULL,
  `chitiet` varchar(255) NOT NULL,
  `ndchitiet` text NOT NULL,
  `giatour` float NOT NULL DEFAULT 0,
  `thoigiandi` date NOT NULL,
  `thoigianve` date NOT NULL,
  `tendiadiem` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gioihannguoi` int(11) NOT NULL,
  `soluongtrong` int(11) NOT NULL,
  `dadat` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `adminname` varchar(40) NOT NULL,
  `adminphone` varchar(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `ngay1` varchar(255) NOT NULL,
  `ndngay1` text NOT NULL,
  `imagengay1` varchar(255) NOT NULL,
  `ngay2` varchar(255) NOT NULL,
  `ndngay2` text NOT NULL,
  `imagengay2` varchar(255) NOT NULL,
  `ngay3` varchar(255) NOT NULL,
  `ndngay3` text NOT NULL,
  `imagengay3` varchar(255) NOT NULL,
  `ngay4` varchar(255) NOT NULL,
  `ndngay4` text NOT NULL,
  `imagengay4` varchar(255) NOT NULL,
  `ngay5` varchar(255) NOT NULL,
  `ndngay5` text NOT NULL,
  `imagengay5` varchar(255) NOT NULL,
  `ngay6` varchar(255) NOT NULL,
  `ndngay6` text NOT NULL,
  `imagengay6` varchar(255) NOT NULL,
  `ngay7` varchar(255) NOT NULL,
  `ndngay7` text NOT NULL,
  `imagengay7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`tourid`, `tentour`, `chitiet`, `ndchitiet`, `giatour`, `thoigiandi`, `thoigianve`, `tendiadiem`, `area`, `image`, `gioihannguoi`, `soluongtrong`, `dadat`, `images`, `adminname`, `adminphone`, `mail`, `ngay1`, `ndngay1`, `imagengay1`, `ngay2`, `ndngay2`, `imagengay2`, `ngay3`, `ndngay3`, `imagengay3`, `ngay4`, `ndngay4`, `imagengay4`, `ngay5`, `ndngay5`, `imagengay5`, `ngay6`, `ndngay6`, `imagengay6`, `ngay7`, `ndngay7`, `imagengay7`) VALUES
(1, 'Nha Trang Discovery', 'Tour du lịch Nha Trang 3 ngày 2 đêm', 'Nha Trang là một thành phố ven biển và là trung tâm chính trị, kinh tế, văn hóa, khoa học kỹ thuật và du lịch của tỉnh Khánh Hòa. Hiện nay còn rất nhiều di tích của người Chăm còn tồn tại, do vùng đất này xưa kia từng thuộc về vương quốc Chiêm Thành. Đây cũng được công nhận là một trong những vịnh biển đẹp nhất thế giới với thành phố êm ả nằm ngay bên bờ biển, du lịch Nha Trang bạn sẽ được khám phá những món ăn, những địa điểm của miền đất được mệnh danh là “xứ Trầm, biển Yến”.', 200, '2024-04-14', '2024-04-17', 'Nha Trang, Viet Nam', 'Central Viet Nam', 'https://picjj.com/image/nhatrang1.sYxNT', 50, 45, 5, '', 'Nguyễn Việt Mỹ', '0978337854', 'nguyenvietmy@gmail.com', 'Hà Nội - Nha Trang - Vui chơi VinWonders', 'Quảng trường đại dương: có biểu diễn nhạc nước tại sân khấu nhạc nước từ 19h - 19h30 mỗi ngày  Cung Điện Hải Vương: có 2 show diễn là biểu diễn nàng tiên cá (11h - 11h10 | 15h - 15h10) và biểu diễn cho cá ăn (10h - 10h15 | 17h - 17h15)  Vịnh Cá heo: thưởng thức những màn biểu diễn có 1-0-2 của những siêu sao cá heo, hải cẩu tinh nghịch và đáng yêu. Đừng quên chụp ảnh cùng các bé sau show diễn bạn nhé!', 'https://picjj.com/image/nhatrang4.sY3gV', 'Ngày 2: Tour 1 ngày đi vịnh Nha Phu, Đảo Khỉ - Chợ đêm Nha Trang', 'Khung cảnh quanh vẫn còn rất hoang sơ, với hệ sinh vật đa dạng và vắng bóng con người. Chính vì những điều này nên nên vợ chồng mình đã quyết định book tour trong vòng “một nốt nhạc” đó. Tour này sẽ bao gồm 4 điểm tham quan và trải nghiệm là:  Du ngoạn vịnh Nha Phu Thăm đảo Hoa Lan Tham quan Đảo Khỉ Trải nghiệm các trò chơi độc đáo trên đảo', 'https://picjj.com/image/nhatrang5.sYM2v', 'Ngày 3: Đi chợ Đầm vừa tham quan vừa mua sắm làm quà - tạm biệt Nha Trang', 'Thời gian trả phòng khách sạn của gia đình mình là 12h trưa, nên vợ chồng tranh thủ buổi sáng tham quan một số địa điểm trong nội thành và đi mua quà tại chợ Đầm Nha Trang.   8h - 10h: cả nhà bắt taxi ghé thăm tháp Bà Ponagar và Viện Hải dương học. 10h - 11h30: ghé vào Chợ Đầm ăn trưa và mua chút đặc sản Nha Trang làm quà mang về trước khi kết thúc hành trình du lịch Nha Trang 3 ngày 2 đêm của mình. Chợ Đầm này nổi tiếng là khu chợ lâu đời nên cái gì cũng có nhé mọi người, từ món ngon đặc sản, quà lưu niệm cho đến đặc sản làm quà mang về nữa đó.', 'https://picjj.com/image/nhatrang6.sYqXf', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Da Nang Discovery', 'Tour du lịch Đà Nẵng 3 ngày 2 đêm', 'Đến Đà Nẵng, quý khách sẽ có rất nhiều lựa chọn để tham quan khám phá vùng đất được mệnh danh là “đáng sống nhất Việt Nam”. Từ đây Quý khách có thể dễ dàng đến với những điểm tham quan du lịch nổi tiếng: Phố cổ đèn lồng Hội An, Bà Nà 4 mùa Xuân Hạ Thu Đông, viếng chùa Linh Ứng, viếng Ngũ Hành Sơn, vọng về Thành phố từ Bán đảo Sơn Trà…', 300, '2024-05-15', '2024-05-18', 'Da Nang, Viet Nam', 'Central Viet Nam', 'https://picjj.com/image/danang1.srxNl', 10, 3, 7, '', 'Phan Anh Vy', '0578237495', 'anhvycontactwork@gmail.com', 'NGÀY 1: ĐÀ NẴNG – SƠN TRÀ – PHỐ CỔ HỘI AN (Ăn trưa, tối)', 'Sáng: Xe và Hướng Dẫn Viên (HDV) của Công ty du lịch đón Quý khách tại sân bay, nhà ga, bến xe,…trước 12h00. Về khách sạn nhận phòng nghỉ ngơi và tự do tham quan. Sau thời gian trên công ty vẫn bố trí dịch vụ đón khách ( nhưng không giảm trừ dịch vụ ăn trưa). Trưa: Đoàn ăn trưa với những mớn đặc sản địa phương. Chiều: Đoàn bắt đầu hành trình tour Đà Nẵng – Bán Đảo Sơn Trà -14:30: Xe đưa Quý khách hành trình tham quan đi Bán đảo Sơn Trà – viếng chùa Linh Ứng Bãi Bụt – ngôi chùa lớn nhất của thành phố Đà Nẵng, chiêm ngưỡng Tượng Phật Quan Thế Âm Bồ Tát cao nhất Việt Nam 67m. – 15:30: Rời bán đảo Sơn Trà, Quý khách sẽ được thưởng ngoạn vẻ đẹp Mỹ Khê một trong những bãi biển đẹp nhất Đà Nẵng. HDV sẽ đưa Quý khách dạo quanh ngắm nhìn và nghe hướng dẫn thuyết minh 4 cầu cầu nổi tiếng tại Đà Nẵng… – 16:00: Khởi hành đi Hội An theo đường biển Sơn Trà, tiếp tục thăm Làng đá Mỹ nghệ Non Nước với các tác phẩm nghệ thuật được tạo nên bởi bàn tay tài hoa của các nghệ nhân làng nghề cổ 300 năm tuổi. -17:00 Xe và HDV tiếp tục đưa đoàn tham quan phố cổ Hội An. Đây là phố đèn lồng đẹp nhất vào ban đêm mang phong cách đậm chất người Hoa. Quý khách sẽ có dịp tham quan chùa Cầu Nhật Bản, xây dựng vào đầu thế kỷ 17, một biểu tượng độc đáo và rất thân thương của người Hội An. Sau đó, quý khách sẽ thăm hai trong các điểm sau: Hội Quán Quảng Đông, Hội Quán Phúc Kiến, nhà cổ Tấn Ký, nhà cổ Phùng Hưng. Tối: Đoàn dùng bữa tại nhà hàng ,thưởng thức các đặc sản tại Hội An (Cao lầu, hoành thánh, cơm gà…). Xe và HDV sẽ đưa đoàn về Đà Nẵng theo cung đường ven biển. Quý khách có dịp ngắm nhìn các resort, sân gôn cao cấp từ Hội An ra Đà Nẵng. Nhận phòng khách sạn nghỉ ngơi.', 'https://picjj.com/image/danang2.sr3Tb', 'NGÀY 2: BÀ NÀ HILLS “LÀNG PHÁP MỘNG MƠ” (Ăn sáng, trưa, tối)', '– 8h30: Đến Ga Suối Mơ, tại đây quý khách tự do chụp ảnh lưu niệm. Sau đó, quý khách lên cáp treo Bà Nà – đạt 2 kỷ lục Guinness thế giới, ngồi trên cabin Bà Nà lơ lửng giữa lưng chừng mây, quý khách có cơ hội nhìn xuống bạt ngàn núi rừng để thưởng ngoạn cảnh vật của khu bảo tồn thiên nhiên Bà Nà. Từ trên cao, quý khách sẽ chiêm ngưỡng toàn bộ thác Tóc Tiên chín tầng hùng vỹ hiện ra với thác nước chảy ngoạn mục. Ngồi trong cáp treo, quý khách còn có thể thu vào tầm mắt toàn cảnh Đà Nẵng, từ vịnh biển Nguyễn Tất Thành đến bán đảo Sơn Trà, đèo Hải Vân… – 09h00: Đến Ga Bà Nà, quý khách tham quan Bà Nà By night với hầm rượu 100 năm tuổi, tại đây quý khách có thể thưởng thức 1 ly rượu vang Pháp sẽ làm ấm lòng khi đi dạo ở nơi se lạnh như Bà Nà (chi phí tự túc) Tham quan Đồi Vọng Nguyệt, chùa Linh Ứng, Thích Ca Phật Đài, khu chuồng ngựa cũ của Pháp, Vườn Tịnh Tâm và đỉnh Nhà Rông. Tiếp tục ngồi cáp treo đến đỉnh Nghinh Phong, biệt thự Lệ Nim, Lầu Vọng Nguyệt, Cầu Treo Bà Nà và chinh phục đỉnh núi Chúa ở độ cao 1.487m so với mực nước biển để thưởng thức quang cảnh núi rừng Bà Nà và toàn cảnh Đà Nẵng và Quảng Nam trên cao. Tiếp tục tham quan Khu vui chơi giải trí trong nhà lớn thứ 3 Thế giới với tên gọi là FANTASY PARK (Vòng quay tình yêu, phi công SKIVER, đường đua lửa, cối xay gió, người nhện, tháp rơi xoay tự do, Xem phim 4D, Công viên khủng long, Bảo tàng tượng sáp…chi phí trò chơi tự túc). Trưa: Ăn trưa tại nhà hàng dưới chân núi Bà Nà. Chiều: Rời Bà Nà về lại Đà Nẵng theo tuyến đường du lịch Nguyễn Tất Thành, tuyến đường biển đẹp nhất Miền Trung. Ngắm cầu treo Thuận Phước (cầu treo dài nhất Việt Nam), bãi biển Thanh Bình, bãi biển Red Beach (nơi thực dân Pháp đổ bộ lần đầu tiên lên Đà Nẵng), ghé tham quan mua sắm tại siêu thị đặc sản miền Trung. Tối: Quý khách dùng bữa tối tại nhà hàng. Quý khách được tự do khám phá Phố Biển Đà Nẵng về đêm: Ngồi Du thuyền sông Hàn hoặc Vòng quay Mặt Trời Sun Whell ngắm cảnh TP (chi phí tự túc), Trung Tâm Thương Mại, Khu phố ẩm thực, Café – Bar – Discotheque,… Nghỉ đêm tại Đà Nẵng.', 'https://picjj.com/image/dn3.srLwN', 'NGÀY 3: ĐÀ NẴNG CITY – NGŨ HÀNH SƠN – SÂN BAY (Ăn sáng, trưa)', 'Khởi hành đi Ngũ Hành Sơn (Monkey Moutain) – cách trung tâm Tp Đà Nẵng 10km với 5 ngọn núi được nằm theo hệ Ngũ Hành, dường như ai từng biết đến Đà Nẵng là biết đến Ngũ Hành Sơn. Không gian huyền ảo, thơ mộng, chùa chiền và hang động, cây cỏ và tiếng chuông chùa, sóng vỗ và những dằng dặc nghìn trùng…, từ lâu đã thật sự là một cõi thiên thai dành cho du khách', 'https://picjj.com/image/dn4.srZDH', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Ha Noi Discovery', 'Tour du lịch Hà Nội 2 ngày 1 đêm', 'Hà Nội mỗi mùa đều có những vẻ đẹp khác nhau nhưng thời điểm lý tưởng nhất để du lịch Hà Nội 2 ngày 1 đêm, khám phá bất tận các địa điểm vui chơi ở trung tâm Hà Nội chính là mùa xuân (tháng 3, tháng 4) và mùa thu (tháng 8, 9, 10).   Nếu như mùa xuân Hà Nội nổi bật với vẻ đẹp ngọt ngào của muôn hoa khoe sắc, mùa thu lại dễ dàng thu hút du khách bởi bầu không khí trong lành, mát mẻ và khung cảnh cực kỳ bình yên. ', 450, '2024-06-26', '2024-06-28', 'Ha Noi, Viet Nam', 'Northern Viet Nam', 'https://picjj.com/image/hanoi2.sruE1', 16, 7, 9, '', 'Phạm Như Phương', '0354880950', 'phuong2947@gmail.com', 'Ngày 1: Phố cổ Hà Nội: Nơi đây mang nhiều nét yên bình và cổ kính, là địa điểm check in được nhiều du khách lựa chọn', 'Đi tham quan ngắm cảnh khắp phố cổ Hà Nội', 'https://picjj.com/image/hanoi1.srcJI', 'Ngày 2: Nhà hát lớn Hà Nội: Công trình biểu tượng của Hà Nội với kiến trúc Pháp độc đáo và cổ kính là địa điểm check in được nhiều du khách yêu thích', 'Du khách được đoàn dẫn đi xem ở nhà hát lớn Hà Nội', 'https://picjj.com/image/nhhn.sYPQQ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Phu Quoc Discovery', 'Tour du lịch Phú Quốc 3 ngày 2 đêm', 'Chương trình tour là một món quà dành cho những du khách của Cattour muốn có một chuyến đi Phú Quốc, tiết kiệm, an toàn, và vui vẻ nhất. Chương trình đầy đủ những điểm tham quan mà quý khách cần tới trong chuyến đi tới Phú Quốc, hãy đến cùng trải nghiệm với bãi biển Phú Quốc xanh rì, với khu du lịch Vinpearl lớn nhất VN và thưởng thức những món đặc sản của vùng đất này. Nào hãy tự thưởng cho mình một tour du lịch Phú Quốc!', 400, '2024-04-14', '2024-04-17', 'Phu Quoc, Viet Nam', 'Southern Viet Nam', 'https://picjj.com/image/phuquoc1.sYDha', 60, 56, 4, '', 'Võ Như Ý', '0739769047', 'nhuyvo@gmail.com', ' Ngày 1: TP HỒ CHÍ MINH – PHÚ QUỐC – GRAND WORLD (ĂN TRƯA) ', 'Sáng: Xe và HDV Phú Quốc đón quý khách tại sân bay/bến tàu theo giờ hẹn. Khởi hành tham quan:    Cơ sở nuôi cấy Ngọc Trai: Quý khách được tìm hiểu về mô hình Nuôi Trai lấy ngọc, tận mắt theo dõi quá trình mỗ trai và những kiến thức độc đáo về sinh vật này. Không gian nơi đây cũng vô cùng sang trọng với những món trang sức được trưng bày nơi đây, quý khách cũng có cơ hội sở hữu những sản phẩm từ Ngọc trai chính hiệu.   Tiếp tục hành trình Xe và Hướng dẫn viên sẽ đưa Quý khách tham quan Dinh Cậu, Dinh Bà, biểu tượng đặc trưng về vùng đất tâm linh của Phú Quốc. Trưa 11h00: Quý khách dùng cơm trưa tại nhà hàng. Sau đó về khách sạn nhận phòng nghỉ ngơi.  14h30: Xe và Hướng dẫn viên đưa Quý khách tham quan:  Nhà thùng nước mắm truyền thống Phú Quốc: Tham quan các làng nghề truyền thống lâu đời ở trên đảo. Vườn Tiêu Suối Đá, Suối tranh (nước nhiều từ tháng 6 – tháng 11 trong năm – chi phí tự túc). Cơ sở hải sản khô, Cơ sở sản xuất rượu vang sim (loại vang riêng của đảo). 19h00: Khởi hành đến Bắc đảo Phú Quốc. Khám phá Grand world – Thành phố không ngủ. ( Không tính phí vào cổng - Chi phí vui chơi tự túc ) Khách tự túc ăn tối ở Grand World:  Tham quan Kiến trúc nhà Tre độc đáo. Khu mái Vòm ánh sáng đổi màu độc đáo Claker Quay. Tham quan Công viên tình yêu. Ngắm dòng sông Venice phong cách Ytalia. Tháp hẹn hò. 20h15 – 21h00: Thưởng thức show diễn Tinh hoa Việt Nam – Show diễn triệu đô, được thiết kế và dàn dựng bởi Tổng đạo diễn nổi tiếng Việt Tú, đây là \"dạ tiệc\" thực cảnh đa phương tiện, kéo dài 45 phút. Chương trình nghệ thuật đặc sắc này được ví như bức tranh hoàn hảo vẽ lại hành trình \"xuyên không\" ngược thời gian khám phá tinh hoa đời sống cổ xưa của người Việt, tái hiện đầy đủ nét đẹp phong tục và đời sống văn hóa truyền thống ngàn đời. ( Giá vé tự túc ).  21h30 – 22h00: Thưởng thức Show nhạc nước vô cùng hoành tráng và vô vàn cảm xúc tuyệt vời tại kênh đào Grand World. Kết thúc chương trình khám phá Grandword, xe đưa quý khách về lại Khách sạn nghỉ ngơi.     ', 'https://picjj.com/image/pq1.sYj3r', 'Ngày 2: KHÁM PHÁ NAM ĐẢO - ĐỊA TRUNG HẢI (ĂN SÁNG, TRƯA, TỐI) ', 'Sáng: Quý khách dậy sớm ngắm cảnh bình minh trên Đảo Ngọc, dùng điểm tâm sáng tại khách sạn.  8h00: Xe và Hướng dẫn viên đón Quý khách bắt đầu khám phá Nam đảo:  Khu di tích lịch sử Nhà Tù Phú Quốc: Được mệnh danh là địa ngục trần gian, nơi đã từng trải qua hai thời kỳ thực dân Pháp và đế quốc Mỹ. Xe đưa Quý khách đến cảng biển, lên tàu và bắt đầu cuộc trải nghiệm hành trình Câu cá lặn ngắm san hô trên tàu. Quý khách được cung cấp thiết bị câu cá (dây câu, mồi) và được trang bị áo phao, kính lặn, ống thở khi tham gia lặn biển ngắm san hô. 11h30: Quý khách được trải nghiệm bữa ăn trên tàu.  14h30: Quý khách trở lại cảng biển và tiếp tục hành trình tham quan và viếng Chùa Hộ Quốc: (Thiền Viện Trúc Lâm Hộ Quốc), đây cũng là một địa điểm tham quan tâm linh mới của Phú Quốc.  15h30: Check-in Cầu Hôn Kiss Bridge tại thị trấn Hoàng hôn. Đây là điểm check in mới được thiết kế với nguồn cảm hứng từ chuyện tình Ngưu Lang Chức Nữ kết hợp văn hóa Việt Nam và Italia ngay tại đảo Ngọc Phú Quốc. (Chi phí tự túc) Xem show diễn mang tên \"Kiss The Stars” - Nụ Hôn giữa Ngàn Sao sẽ đưa 5.000 khán giả đi xuyên qua dải ngân hà để theo chân cuộc tình của Mộc Và Kim cùng những người bạn chiến đấu chống lại mối đe dọa từ vũ trụ. (Chi phí tự túc)  18h30: Quý khách dùng cơm tối. Tự do tham quan Chợ Đêm. ', 'https://picjj.com/image/pq2.sYfCq', 'Ngày 3 PHÚ QUỐC – TP HỒ CHÍ MINH (ĂN SÁNG, TRƯA) ', '07h00: Ăn sáng tại khách sạn, Quý khách tự do nghỉ ngơi, tắm biển. Đoàn làm thủ tục trả phòng Dùng bữa trưa tại nhà hàng. Xe đưa đoàn đi tham quan mua sắm đặc sản Phú Quốc. (chi phí tự túc). Xe đưa đoàn đến sân bay làm thủ tục khởi hành về TP.Hồ Chí Minh.', 'https://picjj.com/image/nhap.sYIKN', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Sapa Discovery', 'Tour du lịch Sapa 3 ngày 2 đêm', 'Lên Sapa để hít thở bầu không khí mới', 500, '2024-05-28', '2024-05-31', 'Sapa, Viet Nam', 'Northern Viet Nam', 'https://picjj.com/image/sapa1.sYhh1', 25, 17, 8, '', 'Phạm Như Phương', '0354880950', 'phuong2947@gmail.com', 'NGÀY 1: HÀ NỘI – SAPA – CÁT CÁT – VƯỜN HOA CẢI – THỦY ĐIỆN – THÁC NƯỚC. (Ăn trưa – ăn tối).', 'Đặc biệt khi đến với bản Cát Cát quý khách có thể được chiêm ngưỡng, ngắm nhìn vẻ đẹp như hút hồn của các loài hoa, cánh đồng Hoa Cải Vàng rực rỡ trải dài khuất tầm mắt,điểm tô vào đó là những ngôi nhà sàn nhỏ xinh của người dân tộc H,Mông.Nơi đây,cứ mỗi độ mùa hoa về lại trở nên vô cùng thơ mộng và quyến rũ hơn bao giờ hết bởi những luống hoa cải bạt ngàn, nở rộ vàng rực khiến bất kỳ ai lạc vào cũng khó lòng rời bước. Chúng tôi tin chắc rằng với sự dẫn dắt của hướng dẫn viên nhiệt tình,kinh nghiệm,dịch vụ trọn gói xuyên suốt và phong cảnh tuyệt đẹp của nơi đây sẽ mang lại cho du khách chuyến thăm quan vô cùng thú vị.  – Thăm quan thác nước Cát Cát (một trong những thác nước đẹp nhất Lào Cai) và nhà máy Thuỷ điện do người Pháp xây dựng từ thập niên 20 của thế kỷ trước. Và được xem biểu diễn văn hóa bản địa (miễn phí vé) , xem các điệu nhảy, phong tục tập quán của người dân nơi đây.', 'https://picjj.com/image/sapa3.sYevl', 'NGÀY 2: SAPA – NÚI HÀM RỒNG – VƯỜN LAN – VƯỜN TƯỢNG 12 CON GIÁP – CỔNG TRỜI – SÂN MÂY – THÁP TRUYỂN HÌNH – HÒN PHẬT BÀ (ăn sáng , ăn trưa, ăn tối).', 'HDV sẽ đưa quý khách đi thăm núi Hàm Rồng.Nơi đây được ví như “nàng tiên của Sa Pa”. Với khí hậu mát mẻ quanh năm, bầu không khí trong lành và hơn thế nữa là sự góp mặt của các rừng Lan: rừng Lan 1, rừng Lan 2…rực rỡ muôn màu, bừng khoe sắc thắm.Chắc hẳn sẽ mang lại cho quý khách những giây phút thư giãn vô cùng thoải mái.Và dường như chưa chịu thỏa mãn dừng lại ở đó. Nơi đây lại tiếp tục được tạo hóa ban tăng cho: “Cổng Trời” và “Sân Mây”. Được ví như nơi “gặp gỡ, vui chơi của các nàng tiên”. Đến nơi đây quý khách có cảm giác như bị líu giữ lại bởi các đám mây bay rất chậm,vờn sát xung quanh mình. Từ trên đỉnh “Sân Mây” quý khách có thể phóng hết tầm mắt nhìn xuống Thị Trấn SaPa thơ mộng nhỏ gọn trong mắt mình, ngắm nhìn dãy núi Fansipan hung vĩ,cao trọc trời…Đó  cũng chính là điều mà ”Hàm Rồng” làm quý khách bị mê hoặc, đến rồi không lỡ đi về. Quý khách sẽ được hướng dẫn giới thiệu cặn kẽ, tự do ngắm nhìn và chụp ảnh lưu niệm thỏa thích trước khi quay trở lại khách sạn.', 'https://picjj.com/image/sapa4.sYGCY', 'NGÀY 3: SAPA TỰ DO –  ĐỈNH NÚI FANSIPAN – CỘT CỜ FANSIPAN – HÀ NỘI. (Ăn sáng, Ăn trưa).', 'Qúy khách có thể tự do khám phá Fansipan (chi phí tự túc giá). Quý khách di chuyển đến điểm làm thủ tục lên cáp treo, bắt đầu hành trình chinh phục và khám phá đỉnh núi Fansipan (nơi được mệnh danh là Nóc Nhà Đông Dương). Từ ga trên, đi qua Cổng Trời Thanh Vân Đắc Lộ là đến được tới chốn mây ngàn. Bích Vân Thiền Tự nằm trên độ cao trên 2.000m đón du khách và Phật tử bốn phương bằng nét kiến trúc thuần Việt, giữa bảng lảng sương giăng; Rảo bước đi trong tiếng chuông vọng giữa mây ngàn gió núi, tới độ cao 3.000 m, bạn thu vào tầm mắt Đại tượng Phật A Di Đà bằng đồng cao 21,5m, sừng sững uy nghiêm trong mây bay huyền ảo, hướng ánh nhìn từ bi xuống nhân gian. Trong thời khắc trầm mặc mà linh thiêng ấy, chắp tay nguyện cầu giữa tiết xuân đang tràn về ấm áp, giữa những chồi non của đỗ quyên, mâm xôi, đào mận… đang cựa mình, bật mầm mới, bạn sẽ thấy trong lòng những cánh hoa của tình thương yêu và hi vọng cũng đang bung nở; Từ Đại tượng Phật, con đường La Hán – nơi ngự tọa 18 bức tượng La Hán bằng đồng cao 2,5m từ bi, trầm mặc trong bảng lảng mây bay, sẽ dẫn bạn tới quần thể Kim Sơn Bảo Thắng Tự với vẻ đẹp cổ kính của những ngôi chùa gỗ Việt Nam từ thế kỷ 15-16, Quý khách cùng chiêm bái tượng Quan thế âm Bồ Tát, Miếu Sơn thần… Hòa quyện trong khung cảnh ấy là những cây đỗ quyên hàng trăm năm tuổi vươn mình trong giá rét, đang bật lên mầm nụ, chờ sang tháng 3, tháng 4 là bung nở những sắc trắng, vàng, đỏ, tím hồng…', 'https://picjj.com/image/sapa5.scKfl', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Hue Discovery', 'Tour du lịch Huế 2 ngày 1 đêm', 'Để có sự chuẩn bị tốt nhất cho chuyến du lịch, vui chơi tại cố đô Huế, kinh nghiệm du lịch Huế 2 ngày 1 đêm dưới đây sẽ là những tips bạn không nên bỏ lỡ. Lịch trình sẽ có đủ thông tin cần thiết để mang đến những trải nghiệm tuyệt vời cho bạn và gia đình.', 380, '2024-07-15', '2024-07-17', 'Hue, Viet Nam', 'Central Viet Nam', 'https://picjj.com/image/tanung.sYuYP', 28, 14, 14, '', 'Phạm Anh Khôi', '0978505776', 'anhkhoitanung@gmail.com', 'Ngày 1: Đại Nội - Lăng Cô - Đầm Lập An - Biển Thuận An - phố Tây ', 'Sáng: nhận phòng khách sạn - ăn sáng - Đại Nội - Kỳ Đài - Trường Quốc Tử Giám - ăn trưa Chiều: ghé thăm đầm Lập An - Biển Thuận An Tối: tham quan phố đi bộ, phố Tây', 'https://picjj.com/image/hue1.sEtKI', 'Ngày 2: Trường Quốc học Huế - Hồ Thủy Tiên - Công viên ma - Lăng Khải Định - chùa Thiên Mụ - sông Hương', 'Sáng: ăn sáng - Lăng Khải Định - Lăng Minh Mạng - hồ Thủy Tiên   Chiều: chùa Thiên Mụ - ngắm hoàng hôn trên sông Hương - mua đồ ở chợ Đông Ba - check-out khách sạn - kết thúc chuyến đi.', 'https://picjj.com/image/hue2.sE4L1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Vung Tau Discovery', 'Tour du lịch Vũng Tàu 2 ngày 1 đêm', 'Vũng Tàu là một thành phố ven biển nằm ở phía Nam của Việt Nam, cách thành phố Hồ Chí Minh khoảng 125km. Thành phố này có bãi biển dài và nhiều địa điểm du lịch hấp dẫn.Đến đây, du khách có thể tham quan các điểm đến như Bãi Trước, Bãi Sau, hòn Bà, đền thờ Đức Mẹ Chúa Thiên Hậu, tượng chúa Kito và Tượng Chúa Kitô Vua, Đồi Con Heo... Với những địa điểm này, du khách có thể tham quan và tận hưởng không khí trong lành, những bãi biển tuyệt đẹp, hồ bơi, các quán ăn ngon và nhiều hoạt động giải trí khác. Ngoài ra, nơi này còn có các điểm đến lịch sử như Công viên Lịch sử Vũng Tàu, bãi Dứa, Nhà Thờ Cổ, đài phun nước, Bảo tàng Tỉnh Bà Rịa - Vũng Tàu... Đây là những địa điểm du lịch phù hợp cho du khách muốn khám phá về lịch sử và văn hóa của thành phố.', 100, '2024-08-04', '2024-08-06', 'Vung Tau, Viet Nam', 'Southern Viet Nam', 'https://picjj.com/image/vungtau1.sY8oT', 30, 17, 13, '', 'Nguyễn Trần Trung Quân', '0569875728', 'trungquanidol@gmail.com', 'NGÀY 01: HỒ CHÍ MINH – TRẠI CỪU  –  VŨNG TÀU – TEAMBUILDING – GALADINNER', '05h00: Xe và hướng dẫn viên CHIÊU TOUR đón khách Tour Vũng Tàu 2 ngày 1 đêm chất lượng tại điểm hẹn, điểm danh đoàn và khởi hành đi Vũng Tàu.  07h00: Đoàn dừng chân ăn sáng tại nhà hàng khu vực đồng nai. Trên hành trình Hdv CHIÊU TOUR tổ chức các trò chơi vui nhộn như: Tìm người bí ẩn, Truy tìm báu vật, Chiếc nón kỳ cục, hành trình kết nối vui nhộn với nhiều phần quà hấp dẫn, và nghe giới thiệu những điểm trên cung đường mà đã đi qua  09h00: Đoàn đến khám phá Nông Trại Cừu để được nhìn ngắm những chú cừu đáng yêu to tròn trong bộ lông mềm mại, căn phồng. Tất cả mọi lứa tuổi đến tham quan nông trại cừu đều tỏ ra thích thú khi được vui đùa cùng đàn cừu nơi đây. Du khách được tự do đi lại trong nông tại, được chạm tay vuốt ve lông cừu, được ôm chúng lên nhẹ nhàng và dĩ nhiên là sẽ được chụp ảnh thỏa thích. Đến đây bạn có thể cho chúng ăn, cho chúng uống sữa và tìm hiểu về quy trình chăm sóc cừu, tìm hiểu quá trình sinh sản và được giới thiệu về quy trình lấy lông cừu để làm qu', 'https://picjj.com/image/ct2.srQ91', 'NGÀY 02: VŨNG TÀU – TẮM BIỂN – THAM QUAN – HỒ CHÍ MINH', '07h00: Xe đưa quý khách đến nhà hàng dùng điểm tâm sáng. Đoàn tham quan Tượng Chúa Kitô, ngắm nhìn toàn cảnh Tp. Vũng Tàu, hoặc có thể về khách sạn tắm biển tự do tại khách sạn.  11h30: Đoàn làm thủ tục trả phòng khách sạn. Đoàn dùng cơm trưa tại nhà hàng.  13h30: Khởi hành về lại Hồ Chí Minh trên đường về đoàn ghé tham quan mua sắm đặc sản tại trạm dừng chân Bò Sữa Long Thành.  16h30: Quý khách về đến Hồ Chí Minh xe đưa quý khách về điểm đón ban đầu.', 'https://picjj.com/image/vt2.sYvrH', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'Hoi An Discovery', 'Tour du lịch Hội An 4 ngày 3 đêm', 'Lên lịch trình Đà Nẵng Hội An 4 ngày 3 đêm được nhiều du khách lựa chọn bởi quãng thời gian này đủ để bạn có thể tham quan trọn vẹn các điểm du lịch nổi tiếng của hai địa phương này. Trong khoảng 4 ngày tham quan Hội An Đà Nẵng, bạn có thể tận hưởng trọn vẹn quãng thời gian du lịch của mình mà không bị gấp gáp, vội vàng như những chuyến đi ngắn ngày. ', 320, '2024-04-14', '2024-04-18', 'Hoi An, Viet Nam', 'Central Viet Nam', 'https://picjj.com/image/halongbay4.srhhq', 20, 10, 10, '', 'Nguyễn Thanh Tùng', '0345789098', 'sontungmtp@gmail.com', 'Ngày 1: Biển An Bàng - khu vui chơi VinWonders Nam Hội An', 'Từ nhiều địa phương khác nhau, du khách có thể cân nhắc lịch trình của mình để đáp cánh xuống sân bay Đà Nẵng vào khoảng 11h30. Sau khi xuống máy bay, đi taxi về khách sạn ở Hội An để check in.   13h30: Ăn cơm tại quán cơm gà Bà Nga – đây là quán ăn nổi tiếng tại Hội An và cũng là món ăn mà bạn nên thưởng thức trong chuyến du lịch Đà Nẵng Hội An của mình.   14:30: Di chuyển đến bãi biển An Bàng, nếu thời tiết còn quá nắng bạn có thể thưởng thức các thức uống bên bãi biển trước khi chụp hình check in tại đây.  15h30: Di chuyển đến điểm vui chơi giải trí VinWonders Nam Hội An. Tại đây, bạn có thể thỏa sức khám phá muôn vàn trò chơi hấp dẫn. Đây cũng là dịp để bạn và gia đình, bạn bè có thể gắn kết, thỏa sức trải nghiệm. VinWonders Nam Hội An chắc chắn sẽ là trải nghiệm đầu tiên và không nên bỏ lỡ trong lịch trình du lịch Đà Nẵng Hội An 4 ngày 3 đêm của bạn. ', 'https://picjj.com/image/ha1.sryKV', 'Ngày 2: Hội An – Cù Lao Chàm – sông Hàn Đà Nẵng', '7h30: Thức dậy và chuẩn bị ăn sáng tại khách sạn. Sau đó bạn nên tranh thủ đi sớm đến trung tâm phố cổ để check in trước khi quá nắng. Tại đây, bạn có thể thưởng thức nhiều món ăn như: Bánh mì Madam Khánh, sữa ngô… Bạn nên lựa chọn khách sạn gần phố cổ Hội An để tiết kiệm thời gian trong lịch trình của mình.   8h00: Bắt đầu di chuyển đến Cù Lao Chàm để ngắm lặn san hồ. Đây cũng là hoạt động thú vị mà du khách không nên bỏ lỡ khi lên lịch trình Đà Nẵng Hội An 4 ngày 3 đêm. Tại đây, bạn có thể tham quan một số điểm như: Khu bảo tồn Biển, Giếng cổ Champa, Chùa Hải Tạng…  12h00: Trở về nhà hàng tại khách sạn để ăn trưa và nghỉ ngơi.   13h00: Xuất phát đi đến Bãi Ông, Bãi Chồng để khám phá trải nghiệm du lịch biển, sau đó về lại Đà Nẵng vào khoảng 15h00.   16h00: Tham quan bán đảo Sơn Trà, chùa Linh Ứng. Hai điểm đến này khá gần trung tâm, thuận tiện giao thông nên sẽ không mất nhiều thời gian. Đây cũng là những điểm du lịch Đà Nẵng nổi tiếng với nhiều khung cảnh check in tuyệt đẹp.   18h00: Trở về khách sạn nghỉ ngơi, ăn uống. Sau đó có thể thỏa sức vui chơi về đêm tại một số điểm ăn uống lân cận. ', 'https://picjj.com/image/ha2.srDNv', 'Ngày Thứ 3: Bà Nà Hill – Tắm biển Mỹ Khê – Chợ đêm Helio', '7h00: Thức dậy và ăn sáng tại khách sạn.   8h30: Bắt đầu di chuyển tham quan Bà Nà Hills. Với kinh nghiệm du lịch Đà Nẵng Hội An thì đây chắc chắn sẽ là điểm đến không thể bỏ qua. 10h00 lên đến điểm du lịch này, bạn có thể thoải mái tham quan, ngắm cảnh. Du khách nên mang theo ô, kem chống nắng trong chuyến đi của mình. 12h00: Ăn trưa tại nhà hàng ngay trên khu du lịch Bà Nà Hill. Sau đó bạn có thể tiếp tục tham quan các khu trưng bày, di chuyển đến làng Pháp để chụp ảnh.   17h00: Quay trở về Đà Nẵng và di chuyển luôn đến biển Mỹ Khê. Tại đây du khách có thể thỏa sức tắm biển và trải nghiệm các hoạt động du lịch biển.   19h30: Ăn tối tại nhà hàng hải sản gần biển Mỹ Khê. Đã du lịch biển thì chắc chắn phải ăn hải sản, có rất nhiều món ngon mà bạn có thể gọi như là: Tôm, cua, ghẹ, các món gỏi…   19h30: Đi chợ đêm Helio để tham quan, khám phá, sau đó trở về khách sạn lúc 22h nghỉ ngơi.  ', 'https://picjj.com/image/ha3.srJgf', 'Ngày Thứ 4: Ngắm Bình Minh - ăn uống – Chợ Hàn - chuẩn bị ra về', '5h00: để chuẩn bị có lịch ngắm bình minh và có những tấm hình check in tuyệt đẹp thì du khách nên tranh thủ dậy sớm. Bạn có thể chụp hình sau đó tắm biển vào buổi sáng cũng rất tốt. Sau đó trở về khách sạn ăn uống, thay đồ.   8h30: Xuất phát qua chợ Hàn, tại đây bạn có thể mua nhiều món quà kỷ niệm mang về.12h00: Trả phòng khách sạn và di chuyển ra sân bay Đà Nẵng, kết thúc chuyến hành trình check in Đà Nẵng – Hội An 4 ngày 3 đêm. ', 'https://picjj.com/image/ha4.srj3Q', '', '', '', '', '', '', '', '', ''),
(9, 'Da Lat Discovery', 'Tour du lịch Đà Lạt 3 ngày 2 đêm', 'Đà Lạt là một điểm đến lý tưởng. Nơi để mọi người đến để relax sau bao ngày mệt mõi vì công việc.', 250, '2024-05-06', '2024-05-09', 'Da Lat, Viet Nam', 'Southern Viet Nam', 'https://picjj.com/image/dalat1.srULY', 16, 5, 11, '', 'Nguyễn Minh Tú', '0235678987', 'thuylieubali@gmail.com', ' NGÀY 1: KHÁM PHÁ ĐÀ LẠT ( ĂN SÁNG,TRƯA,TỐI)', ' Đoàn tham quan Khu Du Lịch Làng Cổ Tích – Dalat Fairytable Land, nằm ẩn mình trong một ngọn đồi, là một trong những điểm tham quan hấp dẫn đầy mộng ảo của thế giới cổ tích về xứ sở của những \"người lùn\" với những ngôi nhà nhỏ nhắn dễ thương đầy màu sắc, không gian sinh hoạt chung của những chú lùn cùng những câu chuyện thần thoại vô cùng đặc sắc và hấp dẫn, bạn sẽ ', 'https://picjj.com/image/dl1.srq1z', 'NGÀY 2 : KHÁM PHÁ CAO NGUYÊN LÂM VIÊN  (ĂN SÁNG,TRƯA,TỐI', 'Đoàn tham quan Thiền Viện Trúc Lâm – một trong những thiền viện đẹp nhất nước ta nằm trên núi Phượng Hoàng, ẩn mình trong đồi thông cùng với cảnh Hồ Tuyền Lâm, bên trong thờ đức Phật Bổn Sư Ca Thích Mâu Ni cao 2m, tay phải ngài cầm cành hoa sen đưa lên theo điển tích “Niên Hoa Vi Tiếu” của nhà Phật.  Rời chánh điện đi ra khu vực vườn hoa có rất nhiều các loại hoa đẹp như cẩm tú cầu, xác pháo…. và một giàn hoa móng cọp tuyệt đẹp rất được du khách thích thú chụp ảnh làm kỷ niệm. Rời vườn hoa quý khách đi xuống phía dưới chùa là Hồ Tĩnh Tâm, nuôi rất nhiều loại rùa cảnh. Quý khách sẽ thấy lòng thật thanh tịnh khi đến đây', 'https://picjj.com/image/dl2.sctsR', 'NGÀY 3: THAM QUAN THÁC PONGOUR – TP.HCM ( ĂN SÁNG, ĂN TRƯA)', 'Quý khách tham quan thác Pongour hùng vĩ với 7 tầng thác ào ạt tuôn ào trắng xóa, nước đổ ầm ầm suốt ngày đêm. Người dân địa phương còn gọi là thác Bảy Tầng bởi dòng thác chảy qua hệ thống đá bậc thang 7 tầng với độ cao gần 40m. Khung cảnh thiên nhiên nơi đây vẫn còn lưu giữ được nét hoang sơ. Bao quanh thác là khu rừng nguyên sinh có diện tích khoảng 2,5 hecta với thảm thực vật đa dạng, phong phú. Thấp thoáng đâu đó bạn có thể bắt gặp những giỏ lan rừng đẹp mắt… Sau khi tham quan xong quý khách lên xe về lại TP.Hồ Chí Minh', 'https://picjj.com/image/dl3.srM2P', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'Can Tho Discovery', 'Tour du lịch Cần Thơ 2 ngày 1 đêm', 'Miền Tây từ lâu đã nổi tiếng là một vùng đất bình yên của những người dân chất phác, thân thiện với phong cảnh thiên nhiên thơ mộng, hữu tình. Du lịch miền Tây được xem là một trải nghiệm tuyệt vời với những phút giây thư giãn bên cạnh những hoạt động giải trí độc đáo, ấn tượng.  Vùng đất Tây Nam Bộ rộng lớn với nhiều điểm đến mới lạ, hấp dẫn hứa hẹn đem lại cho bạn một kỳ nghỉ đáng nhớ. Ngay bây giờ, hãy cùng khám phá những địa điểm đặc sắc nhất miền Tây cho chuyến du lịch sắp tới qua bài viết sau.', 100, '2024-06-26', '2024-06-28', 'Can Tho, Viet Nam', 'Westside Viet Nam', 'https://picjj.com/image/cantho1.shg9a', 4, 0, 4, '', 'Võ Hoàng Yến ', '0354770906', 'vominhson@gmail.com', 'Ngày 1: HCM - Cù Lao Thới Sơn- Cồn Phụng - Chùa Vĩnh Tràng - Cần Thơ  ( Ăn Trưa, Tối)', 'Quý khách lên Cù Lao Thới Sơn - Quý khách sẽ được tham quan tìm hiểu quy trình sản xuất kẹo dừa và được thưởng thức  kẹo dừa nóng ngay tại lò.', 'https://picjj.com/image/cvt.srIAn', 'NGÀY 02: Cần Thơ - Chợ Nổi  - Cồn Sơn ( Ăn Sáng, Trưa)', 'Xe và HDV đưa đoàn di chuyển đến bến tàu. Lên Đò di chuyển đến tham quan Cồn Sơn   Đoàn sẽ ghé tham quan và tìm hiểu về nghề nuôi cá trên bè và cho cá ăn.  Sau đó, đoàn di chuyển trên đường làng đến vườn trái cây. Đoàn sẽ được thưởng thức trái cây theo mùa: nhãn, bưởi, Chôm chôm ( tùy theo mùa mà đoàn sẽ được thưởng thức trái cây mùa đó)', 'https://picjj.com/image/ct3.srWeR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'Ha Long Discovery', 'Tour du lịch Hạ Long 3 ngày 2 đêm', 'CHƯƠNG TRÌNH HẠ LONG 3 NGÀY 2 ĐÊM (1 đêm ngủ du thuyền – 1 đêm khách sạn)', 400, '2024-05-08', '2024-05-11', 'Ha Long, Viet Nam', 'Northern Viet Nam', 'https://picjj.com/image/halongbay1.srpEa', 27, 7, 20, '', 'Phạm Như Phương', '0354880950', 'phuong2947@gmail.com', 'NGÀY 1: HÀ NỘI – VỊNH HẠ LONG – ĐỘNG SỬNG SỐT – ĐẢO TITOP (ĂN TRƯA – TỐI)', 'Quý khách check in nhận phòng và sau đó thưởng thức những món ăn mang hương sắc của biển cả quý khách vừa có thể thưởng lãm những cảnh quan thiên nhiên hùng vĩ của vịnh Hạ long như Hòn Đinh Hương, Gà Chọi – Trống Mái, Chó Đá…Quý khách sẽ có cảm giác như đi vào thế giới động vật trải qua triệu năm hoá đá. đá. 15.00: Tàu đưa quý khách đi thăm vịnh Hạ Long – kỳ quan của thế giới, du khách dừng thuyền để lên thăm động Sửng Sốt (Hang Sáng, Hang Tối) – những hang động lớn nhất vịnh Hạ Long, quý khách sẽ  được chiêm ngưỡng hàng nghìn măng nhũ đã lung linh trong ánh đèn màu.', 'https://picjj.com/image/hl1.sE1Tr', 'NGÀY 02: VỊNH HẠ LONG- CHÈO KAYAK – TUẦN CHÂU/BÃI CHÁY  (ĂN SÁNG – TRƯA – TỐI )', 'Quý khách có thể dậy sớm hơn ngắm bình minh tuyệt đẹp trên biển, một vài động tác thể dục sẽ làm cho buổi sáng trở nên trong lành hơn. – Quý khách sẽ dùng bữa sáng theo tiêu chuẩn của từng du thuyền cùng với trà và cafe miễn phí. – Tàu đưa quý khách đến làng các làng chài, quý khách khám phá, tìm hiểu về phương pháp nuôi trồng thuỷ hải sản của ngư dân nơi đây. – Hoạt động tiếp theo là chèo thuyền kayak/bamboo miễn phí khám phá Hang Luồn và vịnh Hạ Long xinh đẹp – một trong những hoạt động thú vị nhất của chuyến đi.', 'https://picjj.com/image/hl2.sEg9B', 'NGÀY 3: HẠ LONG PARK – HÀ NỘI  (ĂN SÁNG – TRƯA)', 'Đoàn dậy sớm ngắm cảnh bỉnh minh trên vịnh và dùng bữa điểm tâm sáng tại nhà hàng của khách sạn. Quý khách tự do vui chơi, tắm biển thư giãn hoặc tự do khám phá: TẠI BÃI CHÁY: KHU VUI CHƠI HẠ LONG PARK Quần thể Hạ Long Park là tổ hợp công viên vui chơi mang đẳng cấp quốc tế bao gồm 2 khu vực chính: Tổ hợp vui chơi ven biển với khu Công Viên Rồng và Công viên Nước + tổ hợp vui chơi trên đỉnh Ba Đèo – được kết nối với nhau bởi hệ thống cáp treo độc đáo.', 'https://picjj.com/image/hl3.sEB1s', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'Quy Nhon Discovery', 'Tour du lịch Quy Nhơn 4 ngày 3 đêm', 'Du lịch Quy Nhơn không thể bỏ qua Phú Yên và ngược lại, Du lịch Phú Yên chắc chắn không thể bỏ qua Quy Nhơn – thành phố biển yên bình với nhiều thắng cảnh biển đảo hoang sơ đậm chất. Đây là câu nói cửa miệng của rất nhiều du khách phương xa khi đến với mảnh đất Xứ Nẫu nắng gió này. Và thực sự, 2 địa điểm du lịch Quy Nhơn – Phú Yên từ bao đời nay đã gắn bó với nhau không thể tách rời.', 250, '2024-04-23', '2024-04-27', 'Quy Nhon, Viet Nam', 'Central Viet Nam', 'https://picjj.com/image/quynhon1.sYVJ3', 30, 10, 20, '', 'Nguyễn Thanh Tùng', '0345789098', 'sontungmtp@gmail.com', 'NGÀY 1: ĐÓN SÂN BAY – CHÙA THIÊN HƯNG - VỀ MIỀN TAM KIỆT TÂY SƠN – QUY NHƠN (Ăn trưa, tối)', 'Chùa Thiên Hưng – Một trong những ngôi chùa đặc biệt và nổi tiếng nhất tỉnh Bình Định với lối kiến trúc độc đáo và phong cảnh tuyệt vời. Điều đặc biệt không chỉ là về vẻ đẹp kiến trúc tinh tế mà nơi đây hiện đang lưu giữ Ngọc Xá Lợi của Phật Tổ Thích Ca Mâu Ni.Tiếp tục tham quan Bảo Tàng Quang Trung – Dâng hương lên Tây Sơn Tam Kiệt và các văn quan võ tuớng, cầu nguyện đuờng học hành, quan trường, sự nghiệp đỗ đạt thăng tiến. Cùng chiêm ngưỡng Giếng nước xưa; Cây me cổ thụ hơn 300 năm tuổi – Là những kỷ vật còn lưu giữ trong vuờn nhà của ba anh em Tây Sơn. Quý khách xem phim lịch sử về nhà Tây Sơn.', 'https://picjj.com/image/qn1.sYdXo', 'NGÀY 2: QUY NHƠN – KỲ CO – LẶN NGẮM SAN HÔ – EO GIÓ – ĐỒI CÁT PHƯƠNG MAI (Ăn sáng, trưa, tối)', 'Vượt Cầu Thị Nại – Từng là cây cầu vượt biển dài nhất Việt Nam với chiều dài gần 2,5km. Tại đây Quý Khách có thể nhìn toàn cảnh Thành phố Quy Nhơn và Tháp Thầy Bói từ xa, ngắm những tia nắng vàng rắc trên Đầm Thị Nại, và nghe kể về những trận thủy chiến bi tráng giữa Champa và Đại Việt, giữa Tây Sơn và nhà Nguyễn (Nguyễn Ánh) trong suốt 5 thế kỷ. Trên đường đi Quý khách sẽ cùng HDV chơi 1 – 2 trò chơi hoạt náo vui nhộn có thưởng.', 'https://picjj.com/image/qn2.sYCQs', 'NGÀY 3: QUY NHƠN – PHÚ YÊN – GHỀNH ĐÁ DĨA - HOA VÀNG CỎ XANH – THÁP NGHINH PHONG (Ăn sáng, trưa, tối)', 'Nhà thờ Mằng Lăng, một trong những nhà thờ cổ nhất Việt Nam với lối kiến trúc Gothic giao thoa kiến trúc truyền thống. Nhà thờ Mằng Lăng là địa chỉ để quý khách tìm hiểu về cuốn sách Phép giảng Tám Ngày – Cuốn sách bằng chữ Quốc ngữ đầu tiên của Việt Nam.', 'https://picjj.com/image/qn3.sYpEB', 'NGÀY 4: QUY NHƠN – TỰ DO – TIỄN SÂN BAY (Ăn sáng)', 'Quý khách ăn sáng tại Khách sạn và làm thủ tục trả phòng. Xe và Hướng dẫn viên Quy Nhơn Tourist đón Quý khách đi mua sắm đặc sản Xứ Nẫu làm quà cho người thân, bạn bè. Đúng giờ, tiễn Quý khách ra sân bay. Kết thúc hành trình Tour Quy Nhơn – Tây Sơn – Kỳ Co – Phú Yên 4 ngày 3 đêm. Chào tạm biệt và hẹn gặp lại !', 'https://picjj.com/image/nhap.sYIKN', '', '', '', '', '', '', '', '', ''),
(13, 'Cat Ba Discovery', 'Tour du lịch Cát Bà 2 ngày 1 đêm', 'Tour du lịch Hà Nội - Cát Bà - 2 Ngày 1 đêm của Đông Anh Travel đưa quý khách từ Hà Nội đến Đảo Cát Bà khám phá vịnh Lan Hạ và tận hưởng không khí trong lành của biển Đảo Cát Bà, với Đảo Khỉ cát Trắng và nước trong xanh.', 150, '2024-04-14', '2024-06-16', 'Cat Ba, Viet Nam', 'Northern Viet Nam', 'https://picjj.com/image/catba1.sh4Lq', 45, 40, 5, '', 'Phạm Như Phương', '0354880950', 'phuong2947@gmail.com', 'NGÀY 1: HÀ NỘI – CÁT BÀ           (Ăn Trưa/ Tối)', '08h00: Xe của Công ty sẽ đón Quý Khách tại các điểm hẹn ở khu vực phố cổ và khởi hành đi Cát Bà. quý khách sẽ đi theo tuyến đường cao tốc và đi qua cây cầu vượt biển dài nhất Đông Nam Á.  10h30: Sau khi xuống đến Phà Gót hướng dẫn sẽ đưa quý khách lên phà đi theo hướng vào Cát Bà  11h30: Đoàn đến khách sạn Hướng dẫn của công ty chúng tôi sẽ đưa quý khách đi làm thủ tục nhận phòng, ăn trưa và nghỉ ngơi.  Buổi chiều: Quý khách tự do tắm biển tại bãi tắm cát cò 1,2,3  19h00: Quý khách ăn tối tại khách sạn, sau đó quý khách có thể tự do thưởng thức cảnh biển về đêm, hay đi bộ thong dong trên bờ biển….Ngủ đêm tại khách sạn.', 'https://picjj.com/image/cb1.shAFo', 'NGÀY 2: CÁT BÀ – VỊNH LAN HẠ – HÀ NỘI (Ăn sáng / trưa)', '8h00: Xe và hdv đón du khách tại các khách sạn ra cảng bến Bèo, sau đó làm thủ tục check in tại cổng soát vé và lên tàu.  8h30: Thăm quan làng chài nổi Cái Bèo hay còn gọi là Làng chài Vụng O, bạn có cơ hội được chiêm ngưỡng một làng chài nổi cổ đại có dấu tích từ thời tiền sử, đây cũng là làng chài có quy mô lớn nhất Việt Nam hiện tại với hơn 400 hộ dân đang sinh sống. Tàu dừng tại một bè cá ngư dân để chiêm ngưỡng chú cá Song khổng lồ (100kg).  10h30: Thăm quan Hang Tối, Hang Sáng. Trải nghiệm chèo thuyền kayak qua những hang động tự nhiên được hình thành cách đây cả triệu năm và tiến sâu vào trong một áng nhỏ được bao quoanh bởi các dãy núi đá vôi hùng vĩ, nếu may mắn bạn có thể sẽ bắt gặp gia đình Vooc Cát Bà, là 1 trong 25 loài linh trưởng quý hiếm nhất cần phải được bảo vệ của thế giới.  12h00: Cùng quay trở lại tàu để thưởng thức bữa trưa với những đặc sản của địa phương.  13h00: Tắm biển tại bãi Ba Trái Đào. Khu vực này được biết đến với những bãi tắm nhỏ hoang sơ và đẹp ngoạn mục. Hãy đắm mình trong làn nước trong vắt của vịnh Lan Hạ để bơi và lặn ngắm san hô, hay đơn giản nằm phơi mình trên những bãi cát trắng mịn nghe biển hát những “bản tình ca”. Đảm bảo bạn sẽ có những trải nghiệm hết sức tuyệt vời.  14h30: Thăm quan Castaway island – resort tre lứa đã cùng kiến trúc sư Võ Trọng Nghĩa đạt giải vàng tại ARCASIA Award for Architectures 2019. Tại đây quý khách có thể pose những bức đẹp, bơi lội thỏa thích hay cùng chơi các trò chơi bãi biển với bạn bè  16h00: Hdv đưa quý khách về bến. Xe đón quý khách về Hà Nội  20h30: Về đến Hà Nội Chia tay quý khách. Hẹn gặp lại quý khách vào những chuyến du lịch tiếp theo.', 'https://picjj.com/image/cb2.shKTs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'Mui Ne Discovery', 'Tour du lịch Mũi Né 2 ngày 1 đêm', 'Tour du lịch chất lượng, giá tốt nhất thị trường. Đội ngũ tài xế và hướng dẫn viên nhiệt tình phục vụ suốt tuyến. Hành hương tham quan khu du lịch núi Tà Cú Tắm biển, hồ bơi và trải nghiệm các dịch vụ của resort. Ghé thăm những điểm đến nổi tiếng nhất của Mũi Né Thưởng thức các món ngon hải sản địa phương TRÒ CHƠI TRẢI NGHIỆM TẠI KDL BIKINI BEACH 5 SAO', 99, '2024-04-19', '2024-04-21', 'Mui Ne, Viet Nam', 'Southern Viet Nam', 'https://picjj.com/image/muine1.sYWez', 30, 2, 28, '', 'Nguyễn Minh Tú', '0235678987', 'thuylieubali@gmail.com', 'NGÀY 1 KHỞI HÀNH TOUR DU LỊCH PHAN THIẾT MŨI NÉ 2 NGÀY 1 ĐÊM', 'Mua vé tự túc để tham quan Lâu Đài Rượu Vang. Kiến trúc mang phong cách châu Âu cổ kính thu hút rất nhiều du khách gần xa có dịp đến với Phan Thiết.  Đến đây, bạn sẽ được tìm hiểu về quy trình sản xuất rượu vang của tỉnh Bình Thuận và quá trình đầu tư lâu đài, tham quan phòng trưng bày, giới thiệu hàng trăm chai rượu vang các loại từ bình dân đến cao cấp và tham quan hầm rượu dưới lòng đất.', 'https://picjj.com/image/mn1.sEm1b', 'NGÀY 02 THAM QUAN CHƯƠNG TRÌNH PHAN THIẾT MŨI NÉ 2 NGÀY 1 ĐÊM', 'Đồi Cát Bay – hay còn gọi là Đồi Cát Vàng, được mệnh danh là sa mạc mini. Bạn sẽ có cơ hội hòa mình với thiên nhiên và lưu lại những bức ảnh khó quên. Đặc biệt, bạn còn có thể trải nghiệm trò chơi trượt cát siêu vui nhộn tại đây.', 'https://picjj.com/image/mn2.sEnw7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'Tour Bình Hưng', 'Tour Bình Hưng 3 ngày 2 đêm', 'Trải nghiệm lặn ngắm san hô Xe giường năm cao cấp suốt tuyến Trải nghiệm xe điện tham quan khám phá vòng đảo Thưởng thức Tiệc Bar trên biển Thưởng thức Tiệc BBQ Hải sản & Tôm hùm Khám phá bức tranh thiên nhiên tươi đẹp tại Đảo Bình Hưng tại Bãi Đá Trứng, Bãi Kinh, Bãi Nhà Cũ, …', 149, '2024-04-24', '2024-04-27', 'Cam Ranh, Nha Trang', 'Westside Viet Nam', 'https://picjj.com/image/hinhhung1.sE8do', 5, 5, 0, '', 'Võ Hoàng Yến', '0354770906', 'vominhson@gmail.com', 'Ngày 1: Khám phá đảo Bình Hưng', 'Quý khách lên xe điện tham quan cung đường cầu vồng sát biển, ngắm toàn cảnh Vịnh Cam Ranh với đảo Bình Ba, ngọn hải đăng Hòn Chút đây là “cây” đèn biển hiện diện trước vịnh Cam Ranh đã trên 100 năm tuổi, hang tình nhân với vực sâu phía sau hải đăng, bãi Đá Trứng là thắng cảnh độc đáo ở đảo Bình Hưng với hàng ngàn hòn đá tròn như trứng khủng long và nhiều hình thù thú vị khác.', 'https://picjj.com/image/baicoc1.shvUu', 'Ngày 2: Tắm biển lặn ngắm san hô', 'Quý khách tham quan tắm biển ở Bãi Cóc, đây là bãi tắm tuyệt đẹp, những con sóng chỉ lăn tăn vỗ vào bờ, cộng với nước biển trong xanh. Xung quanh được bao bọc bởi các dãy núi đá, những phiến đá nhấp nhô có thể ngả lưng hoặc ngắm biển từ trên cao.', 'https://picjj.com/image/binhhung2.shB0k', 'Ngày 3: Đảo Bình Hưng - Vườn nho Ninh Thuận', 'Quý khách qua thuyền đến Bãi Kinh và lên xe để tham                                  quan cung đường ven biển Bình Tiên – Vịnh Vĩnh Hy được                                  mệnh danh là một trong những cung đường ven biển đẹp                                  nhất Việt Nam. Dừng chân và chụp toàn cảnh đảo Bình                                   Hưng từ trên cao. Tự tay hái những trái nho tươi ngon                                   ngay tại Làng Nho Thái An - Ninh Thuận. Sau đó thưởng                                   thức rượu nho, mật nho, mức rong biển', 'https://picjj.com/image/vuonnhoninhtrhuan.sYS5V', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL,
  `activated` bit(1) DEFAULT b'0',
  `activate_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userid`, `ten`, `email`, `phone`, `password`, `activated`, `activate_token`) VALUES
(1, 'Nguyen Van A', 'nguyenvana@example.com', '123456789', '1234567', b'1', '123456'),
(2, 'Tran Thi B', 'tranthib@example.com', '987654321', '1234576', b'1', '123456'),
(3, 'Hoang Minh C', 'hoangminhc@example.com', '456123789', '1234589', b'1', '123456'),
(4, 'Le Thi D', 'lethid@example.com', '321654987', '1234569', b'1', '123456'),
(5, 'Pham Van E', 'phamvane@example.com', '789321654', '1234599', b'1', '123456'),
(6, 'Vo Van F', 'vovanf@example.com', '456789123', '1234555', b'1', '123456'),
(7, 'Nguyen Thi G', 'nguyenthig@example.com', '654789321', '1234566', b'1', '123456'),
(8, 'Tran Van H', 'tranvanh@example.com', '987123456', '1234577', b'1', '123456'),
(9, 'Le Van I', 'levani@example.com', '321789456', '1234543', b'1', '123456'),
(10, 'Pham Thi K', 'phamthik@example.com', '654321987', '12345600', b'1', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `cart_tour` (`tourid`),
  ADD KEY `cart_user` (`userid`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`reviewid`),
  ADD KEY `danhgia_tour` (`tourid`),
  ADD KEY `danhgia_user` (`userid`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoadon_user` (`userid`),
  ADD KEY `hoadon_tour` (`tourid`);

--
-- Chỉ mục cho bảng `reset_token`
--
ALTER TABLE `reset_token`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tourid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `reviewid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `tourid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_tour` FOREIGN KEY (`tourid`) REFERENCES `tour` (`tourid`),
  ADD CONSTRAINT `cart_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_tour` FOREIGN KEY (`tourid`) REFERENCES `tour` (`tourid`),
  ADD CONSTRAINT `danhgia_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_tour` FOREIGN KEY (`tourid`) REFERENCES `tour` (`tourid`),
  ADD CONSTRAINT `hoadon_user` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
