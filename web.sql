-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2021 lúc 06:13 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accessory`
--

CREATE TABLE `accessory` (
  `id_accessory` int(11) NOT NULL,
  `name_accessorry` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_accessory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accessory`
--

INSERT INTO `accessory` (`id_accessory`, `name_accessorry`, `detail_accessory`, `id_product`) VALUES
(1, 'Ram', '8GB', 1),
(2, 'Ổ Cứng:', ' HDD 512GB', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `nickname_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_admin` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password_admin` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `admin_img` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id_admin`, `nickname_admin`, `name_admin`, `password_admin`, `admin_img`) VALUES
(1, 'a', 'a', '123456', './img/t.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `home_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ceo_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `founder_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leader_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home`
--

INSERT INTO `home` (`id`, `home_img`, `ceo_img`, `founder_img`, `leader_img`, `home_content`) VALUES
(1, './img/gioithieu.jpg', './img/canh.jpg', './img/huy.jpg', './img/chien.jpg', 'Vingroup Joint Stock Company (Vingroup JSC)\r\nVingroup, formerly known as Technocom Corporation, was founded in 1993 in Ukraine. In the early 2000s, Vingroup started in Vietnam with two key brands: Vincom and Vinpearl. In January 2012, Vinpearl JSC merged with Vincom JSC to form Vingroup Joint Stock Company. Vingroup is one of the biggest private conglomerate in Asia with a market capitalization value of around US $16 billion. As a multi-sector corporation, Vingroup focuses on three main areas: - Technology - Industrials - Property- Services. Vingroup continues to pioneer and lead consumer trends in each of its businesses introducing Vietnamese consumers to a brand new, modern life-style with international-standard products and services. Vingroup has created a respected, well-recognized Vietnamese brand and is proud to be one of the nation’s leading private enterprises.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `infor_id` int(11) NOT NULL,
  `infor_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`infor_id`, `infor_img`, `infor_title`, `infor_content`, `note`) VALUES
(1, 'http://localhost:8080/webshop/img/image_1.png', 'Phiên bản Harry Potter của OnePlus Watch sắp ra mắt', 'Mới đây, chi nhánh Ấn Độ của OnePlus đã đăng lên Twitter để giới thiệu về chiếc đồng hồ thông minh phiên bản đặc biệt, đó chính là Oneplus Watch Harry Potter Edition. OnePlus không xác nhận rõ ràng về cái tên, nhưng họ đã đưa ra một vài gợi ý chứng minh đây là Phiên bản Harry Potter.\r\nHình ảnh teaser được OnePlus chia sẻ trên Twitter cho thấy chiếc đồng hồ với dây đeo bằng da có logo của Hogwarts, với chú thích của bài đăng là \"dành cho một thế hệ vẫn ghi nhớ phép thuật. OnePlus vẫn chưa tiết lộ nhiều về phiên bản Harry Potter, nhưng các rò rỉ trước đó đã tuyên bố rằng chiếc đồng hồ này sẽ đi kèm với công nghệ sơn mới, các chủ đề và sáu mặt đồng hồ độc quyền, bao gồm Hogwarts, Hogwarts Seal, Gryffindor, Slytherin, Hufflepuff và Ravenclaw.', 0),
(2, 'http://localhost:8080/webshop/img/image_2.png', 'Giá Bitcoin hôm nay', 'Sau khi giảm giá vào ngày hôm qua, BTC hôm nay bất ngờ bật tăng trở lại vượt mức kháng cự 58000 đô la, tăng 3,38% so với ngày 13/10.\r\n\r\nNguyên nhân giảm giá của BTC hôm qua được cho là ảnh hưởng từ việc Binace đóng cửa giao dịch OTC tại Trung Quốc. Tuy nhiên điều này cho thấy, các tác động của Trung Quốc đến thị trường hiện tại chỉ ở mức ngắn hạn.\r\nSự tăng trưởng của BTC đang tách ra khỏi thị trường chứng khoán và cả những áp lực cấm vận của chính quyền. Thêm vào đó sự suy giảm trong dòng tiền của các thợ đào đang hướng tới một báo cáo tăng giá cho Bitcoin.\r\n\r\nHiện tại BTC đang cách mức giá cao nhất nó từng đạt được 63000 USD khoảng 10%. Một khoảng cách không quá xa vời để vượt qua với đà tăng trưởng trong năm nay của đồng tiền số lớn nhất thế giới này.', 0),
(3, 'http://localhost:8080/webshop/img/image_3.png', 'OPPO Reno6 Pro 5G chính thức ra mắt với trải nghiệm toàn diện hàng đầu phân khúc', 'Được thiết kế cho trải nghiệm quay video chân dung AI chuyên nghiệp, Reno6 Pro hỗ trợ hàng loạt tính năng hàng đầu trong ngành, nổi bật nhất là Video chân dung Bokeh Flare mới, mang lại hiệu ứng xoá phông bokeh điện ảnh cho các thước hình chân dung, và Hiệu ứng video AI nâng cấp, cho chất lượng video tối ưu nhất trong mọi điều kiện ghi hình. Reno6 Pro được trang bị các công nghệ phần cứng tiên tiến, bao gồm cảm biến IMX766 do OPPO và Sony đồng phát triển, chip xử lý Qualcomm® Snapdragon™ 870, kỹ thuật thiết kế OPPO Reno Glow cải tiến và giao diện truyền cảm hứng của ColorOS 11.3, mang đến cho người dùng một chiếc smartphone đón đầu xu hướng với những trải nghiệm trọn vẹn nhất.\r\nKhi công nghệ hình ảnh ngày càng phát triển, người dùng smartphone trên toàn cầu có xu hướng ghi lại cuộc sống hằng ngày qua những video quay trên smartphone. Trang bị công nghệ AI vượt trội của OPPO, Reno6 Pro đảm bảo cho người dùng quay những thước phim chân dung đẹp nhất, dễ dàng nhất nhằm ghi lại những kỷ niệm giá trị trong cuộc sống. Dòng OPPO Reno hiện phục vụ hơn 70 triệu người dùng trên khắp thế giới mỗi tháng, với trung bình hơn 2 tỷ bức ảnh và hơn 200 triệu video ghi lại mọi khoảnh khắc đáng giá trong cuộc sống. ', 0),
(4, 'http://localhost:8080/webshop/img/image_4.png', 'Acer ra mắt loạt sản phẩm đầy hấp dẫn tại sự kiện Next@Acer', 'Sự kiện ra mắt sản phẩm mùa thu Next @ Acer của Acer, với chủ đề \"Made for humanity\", đã nêu bật \"cách Acer đang giúp cải thiện cách chúng ta làm việc, học tập và vui chơi vì con người và môi trường.\"\r\n\r\nNhững thay đổi đó bao gồm việc mở rộng dòng sản phẩm Vero thân thiện với môi trường, bắt đầu với máy tính xách tay Aspire Vero, bốn chiếc Chromebook, máy tính để bàn chơi game Predator Orion 7000 mới với CPU Intel thế hệ thứ 12 sắp ra mắt và làm mới dòng laptop Concept D...v...v\r\nDòng máy tính để bàn gaming Predator Orion 7000 (PO7-640) mạnh mẽ mới cung cấp cho người dùng mọi thứ cần thiết để chơi các trò chơi thế hệ mới nhất và thậm chí là cho cả thế hệ tiếp theo.\r\n\r\nĐược thiết kế cho những game thủ đam mê “hard-core”, những chiếc PC gaming có thể nâng cấp mới này sẽ được trang bị bộ vi xử lý Intel Core thế hệ thứ 12 mới nhất có thể ép xung, GPU lên tới NVIDIA GeForce RTX 3090 và RAM DDR5-4000 lên đến 64 GB.', 0),
(5, 'http://localhost:8080/webshop/img/tintuc1.jpg', 'FPT trình diễn công nghệ AI, Cloud, Blockchain tại ITU Digital World 2021', '(Techz.vn) Ngày 12/10, Hội nghị và Triển lãm Thế giới số (ITU Digital World) 2021 đã chính thức khai mạc tại Trung tâm Hội nghị Quốc tế (Hà Nội) với sự tham dự của Thủ tướng Chính phủ, Lãnh đạo các bộ ngành và gần 193 thành viên tổ chức công nghệ quốc tế và Việt Nam. ITU Digital 2021 được tổ chức hướng tới chủ đề chung “Cùng nhau xây dựng thế giới số”, theo 3 trụ cột: Hạ tầng cần thiết để chuyển đổi số; Đầu tư và tạo điều kiện chuyển đổi số thông qua chính sách; Các tác nhân chính cho chuyển đổi số.\r\nTrong đó, 03 giải pháp của FPT gồm Giải pháp xử lý sự cố kỹ thuật Sàn giao dịch chứng khoán Tp.HCM (HoSE); akaBot và Base.vn được vinh danh là 03 sản phẩm tiêu biểu Make in Vietnam được trưng bày tại Gian hàng Quốc gia Việt Nam tại Triển lãm Quốc tế ITU Digital World 2021, vì đã góp phần giải quyết các bài toán của Việt Nam, tạo ra các hiệu ứng lan toả và tạo ra “miễn dịch số” ngay trong dịch Covid-19, góp phần mạnh mẽ trong việc thúc đẩy và phát triển một quốc gia số trong tương lai. \r\n\r\nCũng trong khuôn khổ sự kiện ITU 2021 trực tuyến diễn ra từ ngày 12/10-12/11/2021, gian hàng triển lãm ảo của FPT cũng đã giới thiệu 06 giải pháp chuyển đổi số tiêu biểu thuộc hệ sinh thái giải pháp toàn diện FPT eCovax giúp doanh nghiệp, tổ chức gia tăng năng suất, tiết kiệm chi phí, tận dụng tối đa nguồn lực vững vàng vượt qua các thách thức của đại dịch Covid-19 và sẵn sàng bứt phá trong “bình thường mới”. ', 0),
(6, 'http://localhost:8080/webshop/img/tintuc3.jpg', 'Sony có thể ra mắt điện thoại mới \'siêu chống nước\' trong tháng này', '(Techz.vn) Sony mới đây đã công bố việc có thể ra mắt một mẫu smartphone mới ngay trong tháng này và nó hoàn toàn có thể là một chiếc Flagship.\r\nBộ phận di động của Sony khá im ắng kể từ khi ra mắt Xperia 1 III vào cuối tháng 8. Việc ra mắt Xperia 5 III tại các cửa hàng cũng không hề phô trường và nhà sản xuất Nhật Bản cũng lặng lẽ ra mắt Xperia 10 III Lite tại Nhật Bản. Nhưng mới đây có một dấu hiệu đáng ngạc nhiên về hoạt động của Sony.\r\nVì vậy, giới công nghệ hiện gần như không thể đưa ra một dự đoán chắc chắn. Không có tin đồn nào về điện thoại sắp ra mắt. Công ty đang bận rộn với PlayStation, tai nghe, máy ảnh không gương lật, v.v. nhưng không có gì về điện thoại mới. Tuy nhiên chỉ có một điều chắc chắn là cho dù đó là smartphone như thế nào, nó đều sẽ chống nước rất tốt.\r\n\r\nChà, trong vài tuần nữa, chúng tôi sẽ làm điều gì đó mà chúng tôi chưa làm trong một thời gian dài - xem một chiếc điện thoại được công bố mà không biết mọi thứ về nó (ví dụ như điều đó sẽ không xảy ra với Pixels, sắp ra mắt Thứ Ba', 0),
(7, 'http://localhost:8080/webshop/img/tintuc5.jpg', 'Ồn ào Hồ Văn Cường nổ ra, Phương Mỹ Chi gay gắt: \'Hi vọng người thân, quản lý cũ hãy tôn trọng Chi\' ', 'Nhiều ngày qua, cái tên Hồ Văn Cường liên tục bị “réo tên” trên mạng xã hội. Đáng chú ý, Phương Mỹ Chi “ngồi không cũng dính thị phi” khi bị so sánh khi có xuất phát điểm giống nhau.\r\nSau thời gian chứng kiến tên mình liên tục bị nhắc tới trong lùm xùm con nuôi cố ca sĩ Phi Nhung, nữ ca sĩ có động thái vô cùng bất ngờ.\r\n\r\nTheo đó trên trang cá nhân tối ngày 12/10, Phương Mỹ Chi chia sẻ về việc cô nàng không ít lần bị người khác réo tên và đề cập đến giữa thời điểm ồn ào này. Trước đó, giọng ca Quê Em Mùa Nước Lũ cũng có vài lần lên tiếng khi nhiều lần bị so sánh với Hồ Văn Cường nhưng đây là lần cô nàng lên tiếng chính thức như thế này.\r\nNữ ca sĩ khẳng định không nhờ hay ủy quyền bất cứ ai để nói những câu chuyện xung quanh của cô nàng. Phương Mỹ Chi nói rằng bản thân đủ nhận thức, khi cần thông tin với khán giả sẽ ủy quyền với Đại diện truyền thông của mình. Phương Mỹ Chi mong muốn khán giả quan tâm mình qua những sản phẩm âm nhạc thay vì các câu chuyện bên lề của đời tư hay tin đồn bên ngoài.\r\n\r\n\"Chi đã đủ nhận thức để có thể làm chủ tiếng nói của mình, biết mình nên làm gì và nếu cần thiết Chi sẽ chỉ uỷ quyền cho Đại diện truyền thông của mình cập nhật thông tin đến khán giả. Ngoài ra Chi KHÔNG UỶ QUYỀN cho bất kì ai, thay mình nói lên những câu chuyện xung quanh bản thân Chi. Vì 1 lời khó nói hết được, nên hi vọng những người thân, quản lí cũ, hãy tôn trọng quyền riêng tư, và tôn trọng Chi\" - giọng ca 18 tuổi viết.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menucha`
--

CREATE TABLE `menucha` (
  `id_cha` int(11) NOT NULL,
  `ten_cha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menucha`
--

INSERT INTO `menucha` (`id_cha`, `ten_cha`) VALUES
(1, 'Máy Tính'),
(2, 'Điện thoại\r\n'),
(3, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menucon`
--

CREATE TABLE `menucon` (
  `id_con` int(11) NOT NULL,
  `ten_con` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menucon`
--

INSERT INTO `menucon` (`id_con`, `ten_con`, `id_cha`) VALUES
(1, 'dell', 1),
(2, 'asus', 1),
(3, 'acer', 1),
(4, 'iphone', 2),
(5, 'SamSung', 2),
(6, 'Ram', 3),
(7, 'Ổ Cứng', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_money` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `address_order` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_orders`, `id_product`, `quantity`, `price`, `total_money`, `id_user`, `name_user`, `phone`, `address_order`, `status`) VALUES
(93, 18, 2, '23.999.000', '47.998.000', 20, 'nguyễn quốc huy', '0976045230', '', 'Đang giao'),
(94, 18, 3, '23.999.000', '71.997.000', 11, '', 'a', '', 'Đang giao'),
(100, 18, 2, '23.999.000', '47.998.000', 11, '', 'm', 'm', 'Đang giao'),
(101, 18, 2, '23.999.000', '47.998.000', 11, '', 'c', 'c', 'Đã giao'),
(102, 10, 2, '13.289.000', '26.578.000', 1, '', 'a', 'a', 'Đang giao'),
(104, 18, 3, '23.999.000', '71.997.000', 1, '', 'abcxyz', 'ha noii', 'Đang xử lí'),
(106, 18, 2, '23.999.000', '47.998.000', 1, 'a', 'a', 'a', 'Đang giao'),
(111, 10, 3, '13.289.000', '39.867.000', 21, 'abc', 'a', 'a', ''),
(120, 12, 2, '29.000', '58.000.000', 21, 'u', 'u', 'u', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `masp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_con` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `masp`, `img_product`, `content_img`, `price`, `unit`, `id_con`) VALUES
(1, 'a001', 'http://localhost:8080/webshop/img/acer1.jpg', 'LAPTOP ACER GAMING NITRO 5 EAGLE AN515-57-51G6 (NH.QD8SV.002) (I5 11400H/8GB', '24.000.000', 'đ', 3),
(2, 'a002', 'http://localhost:8080/webshop/img/acer2.jpg', 'LAPTOP ACER GAMING ASPIRE 7 A715-41G-R150 (NH.Q8SSV.004) (RYZEN 7 3750H/8GB RAM/512GB', '19.599.000', 'đ', 3),
(3, 'a003', 'http://localhost:8080/webshop/img/acer3.png', 'LAPTOP ACER SWIFT 3 SF314-511-56G1 (NX.ABLSV.002) (I5-1135G7/16GB RAM/512GB SSD/14.0', '20.799.000', 'đ', 3),
(4, 'a004', 'http://localhost:8080/webshop/img/acer4.jpg', 'LAPTOP ACER GAMING ASPIRE 7 A715-75G-56ZL (NH.Q97SV.001) (I5 10300H/8GBRAM/512GB', '20.299.000', 'đ', 3),
(5, 'a005', 'http://localhost:8080/webshop/img/acer5.jpg', 'LAPTOP ACER GAMING NITRO 5 AN515-56-51N4 (NH.QBZSV.002) (I5 11300H/ 8GB RAM/ 512GB SSD/', '21.499.000', 'đ', 3),
(6, 'a006', 'http://localhost:8080/webshop/img/acer6.png', 'LAPTOP ACER ASPIRE A315-56-502X (NX.HS5SV.00F) (I5 1035G1/4GBRAM/256GB SSD/15.6', '14.129.000', 'đ', 3),
(7, 'a007', 'http://localhost:8080/webshop/img/acer7.jpg', 'LAPTOP ACER GAMING NITRO 5 AN515-45-R0B6 (NH.QBCSV.001) (RYZEN 7 5800H /8GB RAM/512GB', '31.999.000', 'đ', 3),
(8, 'a008', 'http://localhost:8080/webshop/img/acer8.jpg', 'LAPTOP ACER GAMING NITRO 5 AN515-45-R3SM (NH.QBMSV.005) (RYZEN 5 5600H /8GB RAM/512GB', '21.999.000', 'đ', 3),
(9, 'b001', 'http://localhost:8080/webshop/img/asus1.png', 'LAPTOP ASUS ZENBOOK UX425EA-KI429T (I5 1135G7/8GB RAM/512GB SSD/14', '24.949.000', 'đ', 2),
(10, 'b002', 'http://localhost:8080/webshop/img/asus2.png', 'LAPTOP ASUS VIVOBOOK S S533EQ-BN338T (I5 1135G7/8GB RAM/512GB SSD/15.6 FHD/MX350', '13.289.000', 'đ', 2),
(11, 'b003', 'http://localhost:8080/webshop/img/asus3.png', 'LAPTOP ASUS X515EP-EJ006T (I5 1135G7/8GB RAM/512GB SSD/15.6 FHD/MX330 2GB/WIN 10/BẠC)', '25.000.000', 'đ', 2),
(12, 'b004', 'http://localhost:8080/webshop/img/asus4.png', 'LAPTOP ASUS ZENBOOK UX425EA-KI439T (I7 1165G7/16GB RAM/512GB SSD/14', '29.000.000', 'đ', 2),
(13, 'b005', 'http://localhost:8080/webshop/img/asus5.png', 'LAPTOP ASUS VIVOBOOK S533EQ-BN161T (I5 1135G7/8GB RAM/512GB SSD/15.6 FHD/MX350', '30.999.000', 'đ', 2),
(14, 'b006', 'http://localhost:8080/webshop/img/asus6.png', 'LAPTOP ASUS GAMING ROG STRIX G513QC-HN015T (RYZEN 7 5800H/8GB RAM/512GB SSD/15.6', '21.000.00', 'đ', 2),
(15, 'c001', 'http://localhost:8080/webshop/img/dell1.png', 'LAPTOP DELL INSPIRON 7306 (N3I5202W) (I5 1135G7 8GB RAM/512GB SSD/13.3 INCH FHD', '25.999.000', 'đ', 1),
(16, 'c002', 'http://localhost:8080/webshop/img/dell2.png', 'LAPTOP DELL GAMING G3 15 G3500B (P89F002G3500B) (I7 10750H/16GB RAM/512GB', '26.999.000', 'đ', 1),
(17, 'c003', 'http://localhost:8080/webshop/img/dell3.png', 'LAPTOP DELL INSPIRON 5406 2 IN 1 (70232602) (I5 1135G7/8GB RAM/ 512GB SSD/14.0 INCH FHD', '28.999.000', 'đ', 1),
(18, 'c004', 'http://localhost:8080/webshop/img/dell4.png', 'LAPTOP DELL INSPIRON 3501(70234075) (I7 1165G7 8GB RAM/512GB SSD/MX330 2G/15.6 INCH FHD/WIN10/ĐEN)', '23.999.000', 'đ', 1),
(20, 'd001', 'http://localhost:8080/webshop/img/ip1.jpg', 'iPhone 12', '20.490.000', 'đ', 4),
(21, 'd002', 'http://localhost:8080/webshop/img/ip2.jpg', 'iPhone 12 Pro Max', '30.990.000', 'đ', 4),
(22, 'd003', 'http://localhost:8080/webshop/img/ip3.jpg', 'iPhone 12 Pro', '27.990.000', 'đ', 4),
(23, 'd004', 'http://localhost:8080/webshop/img/ip4.jpg', 'iPhone 12 mini', '16.490.000', 'đ', 4),
(24, 'd005', 'http://localhost:8080/webshop/img/ip5.jpg', 'iPhone 11', '14.990.000', 'đ', 4),
(25, 'e001', 'http://localhost:8080/webshop/img/ss1.jpg', 'Samsung Galaxy A12 (4GB/128GB)', '4.290.000', 'đ', 5),
(26, 'e002', 'http://localhost:8080/webshop/img/ss2.jpg', 'Samsung Galaxy S21 Ultra 5G 128GB', '21.990.000', 'đ', 5),
(27, 'e003', 'http://localhost:8080/webshop/img/ss3.jpg', 'Samsung Galaxy A02', '2.590.000', 'đ', 5),
(28, 'e002', 'http://localhost:8080/webshop/img/ss1.jpg', 'Samsung Galaxy S21 Ultra 5G 128GB', '21.990.000', 'đ', 5),
(29, 'e005', 'http://localhost:8080/webshop/img/ss5.jpg', 'Samsung Galaxy A02s (3GB/32GB)', '2.890.000', 'đ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_user` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `password_user`, `user_img`, `phone`, `birthday`, `gender`) VALUES
(1, 'Nguyễn Quốc Huy', 'huy123456', './img/t.png', '123456789', '2000-06-30', 'nam'),
(11, 'm', 'm', './img/t.png', '', '', ''),
(20, 'canhvippro', '12345', '', '', '', ''),
(21, 'a', '1', './img/t.png', '', '', ''),
(23, 'ádádfsdaf', '1ag', './img/HUYt.jpg', '56787568', '2021-10-16', 'nu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accessory`
--
ALTER TABLE `accessory`
  ADD PRIMARY KEY (`id_accessory`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `menucha`
--
ALTER TABLE `menucha`
  ADD PRIMARY KEY (`id_cha`);

--
-- Chỉ mục cho bảng `menucon`
--
ALTER TABLE `menucon`
  ADD PRIMARY KEY (`id_con`,`ten_con`),
  ADD KEY `id_cha` (`id_cha`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_con` (`id_con`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accessory`
--
ALTER TABLE `accessory`
  MODIFY `id_accessory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `information`
--
ALTER TABLE `information`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `menucha`
--
ALTER TABLE `menucha`
  MODIFY `id_cha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menucon`
--
ALTER TABLE `menucon`
  MODIFY `id_con` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accessory`
--
ALTER TABLE `accessory`
  ADD CONSTRAINT `accessory_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Các ràng buộc cho bảng `menucon`
--
ALTER TABLE `menucon`
  ADD CONSTRAINT `menucon_ibfk_1` FOREIGN KEY (`id_cha`) REFERENCES `menucha` (`id_cha`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_con`) REFERENCES `menucon` (`id_con`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
