-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 01, 2023 lúc 12:21 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE database qlyoto
use qlyoto
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlyoto`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `idUser`, `idProduct`, `quantity`, `createAt`, `status`) VALUES
(65, 3, 57, 1, '2023-04-28 14:40:44', 3),
(66, 3, 58, 2, '2023-04-28 14:40:49', 0),
(67, 3, 60, 1, '2023-04-28 14:41:21', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `idProduct`, `idUser`, `star`, `createAt`, `status`) VALUES
(6, 57, 1, 4, '2023-05-07 20:11:22', 1),
(7, 76, 1, 4, '2023-05-23 20:52:53', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contentcomment`
--

CREATE TABLE `contentcomment` (
  `id` int(11) NOT NULL,
  `idComment` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contentcomment`
--

INSERT INTO `contentcomment` (`id`, `idComment`, `content`, `type`) VALUES
(1, 6, 'sdasdas', 0),
(2, 6, 'Img/Comment/imageeyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwiZXhwIjoxNjgzNDg2OTgyfQ.xS2DViQp9Wo3j0-wzkOHYu5xyJPNHUfKQzbSgOUrRkw0_da3.png', 1),
(3, 6, 'Img/Comment/imageeyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwiZXhwIjoxNjgzNDg2OTgyfQ.xS2DViQp9Wo3j0-wzkOHYu5xyJPNHUfKQzbSgOUrRkw1_da2.png', 1),
(4, 7, 'Hay', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imgproduct`
--

CREATE TABLE `imgproduct` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `srcImg` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `imgproduct`
--

INSERT INTO `imgproduct` (`id`, `idProduct`, `srcImg`, `status`) VALUES
(54, 57, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTMzMn0.rZDRYig6kqEsMiDAY6uM0BT7gVCBNSvascjRJ1uhjfM_0.jpeg', 1),
(55, 57, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTMzMn0.rZDRYig6kqEsMiDAY6uM0BT7gVCBNSvascjRJ1uhjfM_1.jpeg', 1),
(56, 57, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTMzMn0.rZDRYig6kqEsMiDAY6uM0BT7gVCBNSvascjRJ1uhjfM_2.jpeg', 1),
(57, 57, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTMzMn0.rZDRYig6kqEsMiDAY6uM0BT7gVCBNSvascjRJ1uhjfM_3.jpeg', 1),
(58, 58, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTg2OX0.Nn6j23J-Uh-vQhJ79Noqw42NBbKj5-hvk-C64oZ6O5A_0.jpeg', 1),
(59, 58, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTg2OX0.Nn6j23J-Uh-vQhJ79Noqw42NBbKj5-hvk-C64oZ6O5A_1.jpeg', 1),
(60, 58, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTg2OX0.Nn6j23J-Uh-vQhJ79Noqw42NBbKj5-hvk-C64oZ6O5A_2.jpeg', 1),
(61, 58, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NTg2OX0.Nn6j23J-Uh-vQhJ79Noqw42NBbKj5-hvk-C64oZ6O5A_3.jpeg', 1),
(66, 60, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjA5MH0.Y_oX0hNdtN5V09hYNT9i35zI7xWSOGk0GCGIs8Ioo-4_0.jpeg', 1),
(67, 60, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjA5MH0.Y_oX0hNdtN5V09hYNT9i35zI7xWSOGk0GCGIs8Ioo-4_1.jpeg', 1),
(68, 60, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjA5MH0.Y_oX0hNdtN5V09hYNT9i35zI7xWSOGk0GCGIs8Ioo-4_2.jpeg', 1),
(69, 60, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjA5MH0.Y_oX0hNdtN5V09hYNT9i35zI7xWSOGk0GCGIs8Ioo-4_3.jpeg', 1),
(70, 61, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjQ2NX0.CB10CWA3-mlaAOSJWDufAGLeYNePpgGkLxhd-_pn-Y8_0.jpeg', 1),
(71, 61, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjQ2NX0.CB10CWA3-mlaAOSJWDufAGLeYNePpgGkLxhd-_pn-Y8_1.jpeg', 1),
(72, 61, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjQ2NX0.CB10CWA3-mlaAOSJWDufAGLeYNePpgGkLxhd-_pn-Y8_2.jpeg', 1),
(73, 61, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjQ2NX0.CB10CWA3-mlaAOSJWDufAGLeYNePpgGkLxhd-_pn-Y8_3.jpeg', 1),
(74, 62, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjY3MH0.V6bVxAU1TAqUpVUMq_b-WEhm9Izi9W4C3DWreeyRDns_0.jpeg', 1),
(75, 62, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjY3MH0.V6bVxAU1TAqUpVUMq_b-WEhm9Izi9W4C3DWreeyRDns_1.jpeg', 1),
(76, 62, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjY3MH0.V6bVxAU1TAqUpVUMq_b-WEhm9Izi9W4C3DWreeyRDns_2.jpeg', 1),
(77, 62, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjY3MH0.V6bVxAU1TAqUpVUMq_b-WEhm9Izi9W4C3DWreeyRDns_3.jpeg', 1),
(78, 63, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjgzMH0.uLtXrJSILF2RH5T_YuatZ353X48ArX0HV9F1-B0oYp0_0.jpeg', 1),
(79, 63, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjgzMH0.uLtXrJSILF2RH5T_YuatZ353X48ArX0HV9F1-B0oYp0_1.jpeg', 1),
(80, 63, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjgzMH0.uLtXrJSILF2RH5T_YuatZ353X48ArX0HV9F1-B0oYp0_2.jpeg', 1),
(81, 63, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NjgzMH0.uLtXrJSILF2RH5T_YuatZ353X48ArX0HV9F1-B0oYp0_3.jpeg', 1),
(82, 64, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzAzMn0.ByCDmsumozIS6jrifq0XndMjnK1iI1WjDgN7c1up7c4_0.jpeg', 1),
(83, 64, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzAzMn0.ByCDmsumozIS6jrifq0XndMjnK1iI1WjDgN7c1up7c4_1.jpeg', 1),
(84, 64, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzAzMn0.ByCDmsumozIS6jrifq0XndMjnK1iI1WjDgN7c1up7c4_2.jpeg', 1),
(85, 64, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzAzMn0.ByCDmsumozIS6jrifq0XndMjnK1iI1WjDgN7c1up7c4_3.jpeg', 1),
(86, 65, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzIzNn0.I1wRnYGi8cjuIHNnbmK8A7362nbx0aFYuFzykClyBR0_0.jpeg', 1),
(87, 65, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzIzNn0.I1wRnYGi8cjuIHNnbmK8A7362nbx0aFYuFzykClyBR0_1.jpeg', 1),
(88, 65, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzIzNn0.I1wRnYGi8cjuIHNnbmK8A7362nbx0aFYuFzykClyBR0_2.jpeg', 1),
(89, 65, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzIzNn0.I1wRnYGi8cjuIHNnbmK8A7362nbx0aFYuFzykClyBR0_3.jpeg', 1),
(90, 66, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzM2Nn0.N6_PYq8Erv7KTy4LV6dFjXzoAqlKHxk2jj4zQlNOvxo_0.jpeg', 1),
(91, 66, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzM2Nn0.N6_PYq8Erv7KTy4LV6dFjXzoAqlKHxk2jj4zQlNOvxo_1.jpeg', 1),
(92, 66, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzM2Nn0.N6_PYq8Erv7KTy4LV6dFjXzoAqlKHxk2jj4zQlNOvxo_2.jpeg', 1),
(93, 66, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzM2Nn0.N6_PYq8Erv7KTy4LV6dFjXzoAqlKHxk2jj4zQlNOvxo_3.jpeg', 1),
(94, 67, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2NzYzN30.Ke-vnRKiMbK1eiS1EnjB63pjM4F3rJ92tWDXXS8jWUs_0.jpeg', 1),
(95, 68, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2Nzg1N30.02JL2bL0NLTBV2hvMt_TdrINeyl47tGb704VBTm6PAQ_0.jpeg', 1),
(96, 68, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2Nzg1N30.02JL2bL0NLTBV2hvMt_TdrINeyl47tGb704VBTm6PAQ_1.jpeg', 1),
(97, 68, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2Nzg1N30.02JL2bL0NLTBV2hvMt_TdrINeyl47tGb704VBTm6PAQ_2.jpeg', 1),
(98, 68, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2Nzg1N30.02JL2bL0NLTBV2hvMt_TdrINeyl47tGb704VBTm6PAQ_3.jpeg', 1),
(99, 70, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODQzMH0.zFh-P5mLs0P70HRXNEQOdTZD-I_d04hRZFSYAIv1eKY_0.jpeg', 1),
(100, 70, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODQzMH0.zFh-P5mLs0P70HRXNEQOdTZD-I_d04hRZFSYAIv1eKY_1.jpeg', 1),
(101, 70, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODQzMH0.zFh-P5mLs0P70HRXNEQOdTZD-I_d04hRZFSYAIv1eKY_2.jpeg', 1),
(102, 70, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODQzMH0.zFh-P5mLs0P70HRXNEQOdTZD-I_d04hRZFSYAIv1eKY_3.jpeg', 1),
(103, 71, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODYxMn0.-Ch_jHum-WBs4SPTb6y2C2w2OMKEpOm7CBga4sG1c2c_0.jpeg', 1),
(104, 71, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODYxMn0.-Ch_jHum-WBs4SPTb6y2C2w2OMKEpOm7CBga4sG1c2c_1.jpeg', 1),
(105, 71, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODYxMn0.-Ch_jHum-WBs4SPTb6y2C2w2OMKEpOm7CBga4sG1c2c_2.jpeg', 1),
(106, 71, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODYxMn0.-Ch_jHum-WBs4SPTb6y2C2w2OMKEpOm7CBga4sG1c2c_3.jpeg', 1),
(107, 72, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODc2Nn0.G_woeWfVgcW6Gr7KGRRtQevUqQoqbEH29povy7r64yI_0.jpeg', 1),
(108, 72, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODc2Nn0.G_woeWfVgcW6Gr7KGRRtQevUqQoqbEH29povy7r64yI_1.jpeg', 1),
(109, 72, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODc2Nn0.G_woeWfVgcW6Gr7KGRRtQevUqQoqbEH29povy7r64yI_2.jpeg', 1),
(110, 72, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODc2Nn0.G_woeWfVgcW6Gr7KGRRtQevUqQoqbEH29povy7r64yI_3.jpeg', 1),
(111, 73, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODk3M30.xu_jFC46UJ8mc6KOd55-rBFfCayIUkv1FzZz7F0wrpg_0.jpeg', 1),
(112, 73, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODk3M30.xu_jFC46UJ8mc6KOd55-rBFfCayIUkv1FzZz7F0wrpg_1.jpeg', 1),
(113, 73, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODk3M30.xu_jFC46UJ8mc6KOd55-rBFfCayIUkv1FzZz7F0wrpg_2.jpeg', 1),
(114, 73, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2ODk3M30.xu_jFC46UJ8mc6KOd55-rBFfCayIUkv1FzZz7F0wrpg_3.jpeg', 1),
(115, 74, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTE4M30.6i78BLIvvByv2nCO88GWQw-mf0ubtGwMg44Z36vob2A_0.jpeg', 1),
(116, 74, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTE4M30.6i78BLIvvByv2nCO88GWQw-mf0ubtGwMg44Z36vob2A_1.jpeg', 1),
(117, 74, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTE4M30.6i78BLIvvByv2nCO88GWQw-mf0ubtGwMg44Z36vob2A_2.jpeg', 1),
(118, 74, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTE4M30.6i78BLIvvByv2nCO88GWQw-mf0ubtGwMg44Z36vob2A_3.jpeg', 1),
(119, 75, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTYwNH0.A4C3M0qbNkLUBonidZfrN1yrnyWIXfh_maQca5OlW9Q_0.jpeg', 1),
(120, 75, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTYwNH0.A4C3M0qbNkLUBonidZfrN1yrnyWIXfh_maQca5OlW9Q_1.jpeg', 1),
(121, 75, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTYwNH0.A4C3M0qbNkLUBonidZfrN1yrnyWIXfh_maQca5OlW9Q_2.jpeg', 1),
(122, 75, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMSIsImV4cCI6MTY4MTg2OTYwNH0.A4C3M0qbNkLUBonidZfrN1yrnyWIXfh_maQca5OlW9Q_3.jpeg', 1),
(123, 76, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg2OTg2N30.yWeQVQ7eKoB1mHYocPS1fGs46NtkRY_9_D8M5dO4Yvc_0.jpeg', 1),
(124, 76, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg2OTg2N30.yWeQVQ7eKoB1mHYocPS1fGs46NtkRY_9_D8M5dO4Yvc_1.jpeg', 1),
(125, 76, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg2OTg2N30.yWeQVQ7eKoB1mHYocPS1fGs46NtkRY_9_D8M5dO4Yvc_2.jpeg', 1),
(126, 76, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg2OTg2N30.yWeQVQ7eKoB1mHYocPS1fGs46NtkRY_9_D8M5dO4Yvc_3.jpeg', 1),
(127, 77, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDAwOX0.7SPdytQRjP8jPKyiRNsLrKsRcGMv1XSm3IU2kh-sxFs_0.jpeg', 1),
(128, 77, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDAwOX0.7SPdytQRjP8jPKyiRNsLrKsRcGMv1XSm3IU2kh-sxFs_1.jpeg', 1),
(129, 77, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDAwOX0.7SPdytQRjP8jPKyiRNsLrKsRcGMv1XSm3IU2kh-sxFs_2.jpeg', 1),
(130, 77, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDAwOX0.7SPdytQRjP8jPKyiRNsLrKsRcGMv1XSm3IU2kh-sxFs_3.jpeg', 1),
(131, 78, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDE1OH0._F9wKtEF4jXPBv_VSZyxZAyHdTyUYLZAB9mqdCi8uHw_0.jpeg', 1),
(132, 78, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDE1OH0._F9wKtEF4jXPBv_VSZyxZAyHdTyUYLZAB9mqdCi8uHw_1.jpeg', 1),
(133, 78, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDE1OH0._F9wKtEF4jXPBv_VSZyxZAyHdTyUYLZAB9mqdCi8uHw_2.jpeg', 1),
(134, 78, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDE1OH0._F9wKtEF4jXPBv_VSZyxZAyHdTyUYLZAB9mqdCi8uHw_3.jpeg', 1),
(135, 79, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDMwOX0.JFwZ4jYTusgBO0JxLTPgd-80jcjJM6Qthp7mITlFeYQ_0.jpeg', 1),
(136, 79, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDMwOX0.JFwZ4jYTusgBO0JxLTPgd-80jcjJM6Qthp7mITlFeYQ_1.jpeg', 1),
(137, 79, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDMwOX0.JFwZ4jYTusgBO0JxLTPgd-80jcjJM6Qthp7mITlFeYQ_2.jpeg', 1),
(138, 79, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDMwOX0.JFwZ4jYTusgBO0JxLTPgd-80jcjJM6Qthp7mITlFeYQ_3.jpeg', 1),
(139, 80, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDUyM30.LQlIou5cBjfv55MBd3DWIYTbYZyGoeh-yBbFIHzB9NY_0.jpeg', 1),
(140, 80, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDUyM30.LQlIou5cBjfv55MBd3DWIYTbYZyGoeh-yBbFIHzB9NY_1.jpeg', 1),
(141, 80, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDUyM30.LQlIou5cBjfv55MBd3DWIYTbYZyGoeh-yBbFIHzB9NY_2.jpeg', 1),
(142, 80, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDUyM30.LQlIou5cBjfv55MBd3DWIYTbYZyGoeh-yBbFIHzB9NY_3.jpeg', 1),
(143, 81, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDY2N30.e2ypW7UWKvnH3Hu2f0-9kYQMX-uF32qIaIz4dzA7a5E_0.jpeg', 1),
(144, 81, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDY2N30.e2ypW7UWKvnH3Hu2f0-9kYQMX-uF32qIaIz4dzA7a5E_1.jpeg', 1),
(145, 81, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDY2N30.e2ypW7UWKvnH3Hu2f0-9kYQMX-uF32qIaIz4dzA7a5E_2.jpeg', 1),
(146, 81, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDY2N30.e2ypW7UWKvnH3Hu2f0-9kYQMX-uF32qIaIz4dzA7a5E_3.jpeg', 1),
(147, 82, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDg0Mn0.hGjIbKcyjOQ6-Tgfcu450DOiN4uwLc8fBpvpDMe82MM_0.jpeg', 1),
(148, 82, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDg0Mn0.hGjIbKcyjOQ6-Tgfcu450DOiN4uwLc8fBpvpDMe82MM_1.jpeg', 1),
(149, 82, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDg0Mn0.hGjIbKcyjOQ6-Tgfcu450DOiN4uwLc8fBpvpDMe82MM_2.jpeg', 1),
(150, 82, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MDg0Mn0.hGjIbKcyjOQ6-Tgfcu450DOiN4uwLc8fBpvpDMe82MM_3.jpeg', 1),
(151, 83, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTE2OH0.UbBCVLCTQah0FAPHoqaRS9XAFJI5WPte5gUZsqEMjn4_0.jpeg', 1),
(152, 83, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTE2OH0.UbBCVLCTQah0FAPHoqaRS9XAFJI5WPte5gUZsqEMjn4_1.jpeg', 1),
(153, 83, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTE2OH0.UbBCVLCTQah0FAPHoqaRS9XAFJI5WPte5gUZsqEMjn4_2.jpeg', 1),
(154, 83, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTE2OH0.UbBCVLCTQah0FAPHoqaRS9XAFJI5WPte5gUZsqEMjn4_3.jpeg', 1),
(155, 84, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTM1Nn0.XTIoMesh4VTJbrjO3pcYej4IeHVpoeKYYTtHRvCAaks_0.jpeg', 1),
(156, 84, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTM1Nn0.XTIoMesh4VTJbrjO3pcYej4IeHVpoeKYYTtHRvCAaks_1.jpeg', 1),
(157, 84, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTM1Nn0.XTIoMesh4VTJbrjO3pcYej4IeHVpoeKYYTtHRvCAaks_2.jpeg', 1),
(158, 84, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTM1Nn0.XTIoMesh4VTJbrjO3pcYej4IeHVpoeKYYTtHRvCAaks_3.jpeg', 1),
(159, 85, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTkyMn0.emCDFNRMmlEHWG4o8TbvSlS9RrfKLrazCbmSNJuxYp4_0.jpeg', 1),
(160, 85, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTkyMn0.emCDFNRMmlEHWG4o8TbvSlS9RrfKLrazCbmSNJuxYp4_1.jpeg', 1),
(161, 85, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTkyMn0.emCDFNRMmlEHWG4o8TbvSlS9RrfKLrazCbmSNJuxYp4_2.jpeg', 1),
(162, 85, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MTkyMn0.emCDFNRMmlEHWG4o8TbvSlS9RrfKLrazCbmSNJuxYp4_3.jpeg', 1),
(163, 86, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjM4MX0.mP_a_1hz0npNleHvEXzz5AbUiB79zyvrjMxLkIQXbBs_0.jpeg', 1),
(164, 86, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjM4MX0.mP_a_1hz0npNleHvEXzz5AbUiB79zyvrjMxLkIQXbBs_1.jpeg', 1),
(165, 86, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjM4MX0.mP_a_1hz0npNleHvEXzz5AbUiB79zyvrjMxLkIQXbBs_2.jpeg', 1),
(166, 86, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjM4MX0.mP_a_1hz0npNleHvEXzz5AbUiB79zyvrjMxLkIQXbBs_3.jpeg', 1),
(167, 87, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjU2MH0.0Q2ktl2CQ_Yg-Q6IyxEkaJkvwAcGWQ0SLaYjglrNWkQ_0.jpeg', 1),
(168, 87, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjU2MH0.0Q2ktl2CQ_Yg-Q6IyxEkaJkvwAcGWQ0SLaYjglrNWkQ_1.jpeg', 1),
(169, 87, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjU2MH0.0Q2ktl2CQ_Yg-Q6IyxEkaJkvwAcGWQ0SLaYjglrNWkQ_2.jpeg', 1),
(170, 87, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjU2MH0.0Q2ktl2CQ_Yg-Q6IyxEkaJkvwAcGWQ0SLaYjglrNWkQ_3.jpeg', 1),
(171, 88, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjY5NX0.-i0uJ2Ixcs22SyodJdbuCu-ZEYBFvciWTjNQferruEg_0.jpeg', 1),
(172, 88, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjY5NX0.-i0uJ2Ixcs22SyodJdbuCu-ZEYBFvciWTjNQferruEg_1.jpeg', 1),
(173, 88, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjY5NX0.-i0uJ2Ixcs22SyodJdbuCu-ZEYBFvciWTjNQferruEg_2.jpeg', 1),
(174, 88, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MjY5NX0.-i0uJ2Ixcs22SyodJdbuCu-ZEYBFvciWTjNQferruEg_3.jpeg', 1),
(175, 89, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjg2N30.3qUF1yaEtHroucW3uJKNL6yKawMUIVAGlpOt7FQZLB8_0.jpeg', 1),
(176, 89, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjg2N30.3qUF1yaEtHroucW3uJKNL6yKawMUIVAGlpOt7FQZLB8_1.jpeg', 1),
(177, 89, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjg2N30.3qUF1yaEtHroucW3uJKNL6yKawMUIVAGlpOt7FQZLB8_2.jpeg', 1),
(178, 89, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjg2N30.3qUF1yaEtHroucW3uJKNL6yKawMUIVAGlpOt7FQZLB8_3.jpeg', 1),
(179, 90, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjk3Nn0.D7r8JUJ4rQu_85SgP_qirVJTEGBCN7HHGt0ZpuAExTM_0.jpeg', 1),
(180, 90, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjk3Nn0.D7r8JUJ4rQu_85SgP_qirVJTEGBCN7HHGt0ZpuAExTM_1.jpeg', 1),
(181, 90, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjk3Nn0.D7r8JUJ4rQu_85SgP_qirVJTEGBCN7HHGt0ZpuAExTM_2.jpeg', 1),
(182, 90, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3Mjk3Nn0.D7r8JUJ4rQu_85SgP_qirVJTEGBCN7HHGt0ZpuAExTM_3.jpeg', 1),
(183, 91, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzEzN30.aKFF_pSDjXk3D6yt3J2-zL8pJhf3qo8ZJvr4J8dD2Uk_0.jpeg', 1),
(184, 91, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzEzN30.aKFF_pSDjXk3D6yt3J2-zL8pJhf3qo8ZJvr4J8dD2Uk_1.jpeg', 1),
(185, 91, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzEzN30.aKFF_pSDjXk3D6yt3J2-zL8pJhf3qo8ZJvr4J8dD2Uk_2.jpeg', 1),
(186, 91, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzEzN30.aKFF_pSDjXk3D6yt3J2-zL8pJhf3qo8ZJvr4J8dD2Uk_3.jpeg', 1),
(187, 92, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzM1M30.wTfwzo8445EcATitrTf3LW866jETScPAwM0pRuEio4k_0.jpeg', 1),
(188, 92, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzM1M30.wTfwzo8445EcATitrTf3LW866jETScPAwM0pRuEio4k_1.jpeg', 1),
(189, 92, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzM1M30.wTfwzo8445EcATitrTf3LW866jETScPAwM0pRuEio4k_2.jpeg', 1),
(190, 92, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTg3MzM1M30.wTfwzo8445EcATitrTf3LW866jETScPAwM0pRuEio4k_3.jpeg', 1),
(191, 93, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjMxN30.PBwremSBBkykxD2nbp06izmvBjTSC0Qcqrwt6NyHqG0_0.jpeg', 1),
(192, 93, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjMxN30.PBwremSBBkykxD2nbp06izmvBjTSC0Qcqrwt6NyHqG0_1.jpeg', 1),
(193, 93, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjMxN30.PBwremSBBkykxD2nbp06izmvBjTSC0Qcqrwt6NyHqG0_2.jpeg', 1),
(194, 93, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjMxN30.PBwremSBBkykxD2nbp06izmvBjTSC0Qcqrwt6NyHqG0_3.jpeg', 1),
(195, 94, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjUwN30.AwEtasQ18kkWTPT5wxKjOIRliMZ2fZ6fOvJeQ6IfUuk_0.jpeg', 1),
(196, 94, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjUwN30.AwEtasQ18kkWTPT5wxKjOIRliMZ2fZ6fOvJeQ6IfUuk_1.jpeg', 1),
(197, 94, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjUwN30.AwEtasQ18kkWTPT5wxKjOIRliMZ2fZ6fOvJeQ6IfUuk_2.jpeg', 1),
(198, 94, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjUwN30.AwEtasQ18kkWTPT5wxKjOIRliMZ2fZ6fOvJeQ6IfUuk_3.jpeg', 1),
(199, 95, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjc2NX0.-BaL_nS4lY_y7YwWHCVFmjJnDEeCwsClBt9mMDeJMJg_0.jpeg', 1),
(200, 95, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjc2NX0.-BaL_nS4lY_y7YwWHCVFmjJnDEeCwsClBt9mMDeJMJg_1.jpeg', 1),
(201, 95, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjc2NX0.-BaL_nS4lY_y7YwWHCVFmjJnDEeCwsClBt9mMDeJMJg_2.jpeg', 1),
(202, 95, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjc2NX0.-BaL_nS4lY_y7YwWHCVFmjJnDEeCwsClBt9mMDeJMJg_3.jpeg', 1),
(203, 96, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjkxOX0.z8DEEjLt0-GotN4jJR0hLHZH8fmf2yY51AjdoS_d09E_0.jpeg', 1),
(204, 96, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjkxOX0.z8DEEjLt0-GotN4jJR0hLHZH8fmf2yY51AjdoS_d09E_1.jpeg', 1),
(205, 96, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjkxOX0.z8DEEjLt0-GotN4jJR0hLHZH8fmf2yY51AjdoS_d09E_2.jpeg', 1),
(206, 96, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMjkxOX0.z8DEEjLt0-GotN4jJR0hLHZH8fmf2yY51AjdoS_d09E_3.jpeg', 1),
(207, 97, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzEyNn0.wGNnPnwrK2Yy5pftc9LdPquEd8RPwzb_x8D7U_N49Oo_0.jpeg', 1),
(208, 97, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzEyNn0.wGNnPnwrK2Yy5pftc9LdPquEd8RPwzb_x8D7U_N49Oo_1.jpeg', 1),
(209, 97, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzEyNn0.wGNnPnwrK2Yy5pftc9LdPquEd8RPwzb_x8D7U_N49Oo_2.jpeg', 1),
(210, 97, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzEyNn0.wGNnPnwrK2Yy5pftc9LdPquEd8RPwzb_x8D7U_N49Oo_3.jpeg', 1),
(211, 98, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzMwNn0.gp_Hi1jJp-H93dwCUZdyIzU46pqIrC3Q11lr_NX39bA_0.jpeg', 1),
(212, 98, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzMwNn0.gp_Hi1jJp-H93dwCUZdyIzU46pqIrC3Q11lr_NX39bA_1.jpeg', 1),
(213, 98, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzMwNn0.gp_Hi1jJp-H93dwCUZdyIzU46pqIrC3Q11lr_NX39bA_2.jpeg', 1),
(214, 98, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzMwNn0.gp_Hi1jJp-H93dwCUZdyIzU46pqIrC3Q11lr_NX39bA_3.jpeg', 1),
(215, 99, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzQ1NH0.NM_0d_dxPGHgG1sTXZg1GfXlVW7hZZVBXq6omrHZWkw_0.jpeg', 1),
(216, 99, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzQ1NH0.NM_0d_dxPGHgG1sTXZg1GfXlVW7hZZVBXq6omrHZWkw_1.jpeg', 1),
(217, 99, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzQ1NH0.NM_0d_dxPGHgG1sTXZg1GfXlVW7hZZVBXq6omrHZWkw_2.jpeg', 1),
(218, 99, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzQ1NH0.NM_0d_dxPGHgG1sTXZg1GfXlVW7hZZVBXq6omrHZWkw_3.jpeg', 1),
(219, 100, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzY4N30.k3GutJVr2U7fhlQJZgNCm053Um6dolqtcFWnhX-SZZY_0.jpeg', 1),
(220, 100, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzY4N30.k3GutJVr2U7fhlQJZgNCm053Um6dolqtcFWnhX-SZZY_1.jpeg', 1),
(221, 100, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzY4N30.k3GutJVr2U7fhlQJZgNCm053Um6dolqtcFWnhX-SZZY_2.jpeg', 1),
(222, 100, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzY4N30.k3GutJVr2U7fhlQJZgNCm053Um6dolqtcFWnhX-SZZY_3.jpeg', 1),
(223, 101, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzg3MX0.O-6Jw06wZFRqbyUe9vYA0RZKXHSzpqALeIb69NVmE7s_0.jpeg', 1),
(224, 101, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzg3MX0.O-6Jw06wZFRqbyUe9vYA0RZKXHSzpqALeIb69NVmE7s_1.jpeg', 1),
(225, 101, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzg3MX0.O-6Jw06wZFRqbyUe9vYA0RZKXHSzpqALeIb69NVmE7s_2.jpeg', 1),
(226, 101, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxMzg3MX0.O-6Jw06wZFRqbyUe9vYA0RZKXHSzpqALeIb69NVmE7s_3.jpeg', 1),
(227, 102, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDExM30.A6Jj-2KThMhShfO09au6lDZ8mf7wkWYGoa3NqMQ7d7g_0.jpeg', 1),
(228, 102, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDExM30.A6Jj-2KThMhShfO09au6lDZ8mf7wkWYGoa3NqMQ7d7g_1.jpeg', 1),
(229, 102, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDExM30.A6Jj-2KThMhShfO09au6lDZ8mf7wkWYGoa3NqMQ7d7g_2.jpeg', 1),
(230, 102, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDExM30.A6Jj-2KThMhShfO09au6lDZ8mf7wkWYGoa3NqMQ7d7g_3.jpeg', 1),
(231, 103, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDMxM30.wjDdNQP0TjHe0HgkDrDCIAo9rsm4FbPqo1GKirPaivo_0.jpeg', 1),
(232, 103, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDMxM30.wjDdNQP0TjHe0HgkDrDCIAo9rsm4FbPqo1GKirPaivo_1.jpeg', 1),
(233, 103, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDMxM30.wjDdNQP0TjHe0HgkDrDCIAo9rsm4FbPqo1GKirPaivo_2.jpeg', 1),
(234, 103, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDMxM30.wjDdNQP0TjHe0HgkDrDCIAo9rsm4FbPqo1GKirPaivo_3.jpeg', 1),
(235, 104, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDY4Nn0.9652-NokiIDrrIP54qN03ZC3XMvePuKPYLLKDNVKt_o_0.jpeg', 1),
(236, 104, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDY4Nn0.9652-NokiIDrrIP54qN03ZC3XMvePuKPYLLKDNVKt_o_1.jpeg', 1),
(237, 104, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDY4Nn0.9652-NokiIDrrIP54qN03ZC3XMvePuKPYLLKDNVKt_o_2.jpeg', 1),
(238, 104, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDY4Nn0.9652-NokiIDrrIP54qN03ZC3XMvePuKPYLLKDNVKt_o_3.jpeg', 1),
(239, 105, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDg2MH0.FCNCOn4yJSuPcg099VJya7K--LbfLw_kPcA2M7JwnhA_0.jpeg', 1),
(240, 105, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDg2MH0.FCNCOn4yJSuPcg099VJya7K--LbfLw_kPcA2M7JwnhA_1.jpeg', 1),
(241, 105, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDg2MH0.FCNCOn4yJSuPcg099VJya7K--LbfLw_kPcA2M7JwnhA_2.jpeg', 1),
(242, 105, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNDg2MH0.FCNCOn4yJSuPcg099VJya7K--LbfLw_kPcA2M7JwnhA_3.jpeg', 1),
(243, 106, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTAwM30.b9HFWJz8t_MzIKoMhruOWmeDWk4cXvZZIqx9CPmkP8g_0.jpeg', 1),
(244, 106, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTAwM30.b9HFWJz8t_MzIKoMhruOWmeDWk4cXvZZIqx9CPmkP8g_1.jpeg', 1),
(245, 106, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTAwM30.b9HFWJz8t_MzIKoMhruOWmeDWk4cXvZZIqx9CPmkP8g_2.jpeg', 1),
(246, 106, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTAwM30.b9HFWJz8t_MzIKoMhruOWmeDWk4cXvZZIqx9CPmkP8g_3.jpeg', 1),
(247, 107, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTQwNH0._rgpBGq0lgNBXSnOXi1mzhTcGi7-PdOYkTpnqA5NA04_0.jpeg', 1),
(248, 107, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTQwNH0._rgpBGq0lgNBXSnOXi1mzhTcGi7-PdOYkTpnqA5NA04_1.jpeg', 1),
(249, 107, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTQwNH0._rgpBGq0lgNBXSnOXi1mzhTcGi7-PdOYkTpnqA5NA04_2.jpeg', 1),
(250, 107, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTQwNH0._rgpBGq0lgNBXSnOXi1mzhTcGi7-PdOYkTpnqA5NA04_3.jpeg', 1),
(251, 108, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTUwNX0.0ITWZvwnG9p3EXiTgoWRKCf82wHWbeWvP4SC_ORor9M_0.jpeg', 1),
(252, 108, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTUwNX0.0ITWZvwnG9p3EXiTgoWRKCf82wHWbeWvP4SC_ORor9M_1.jpeg', 1),
(253, 108, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTUwNX0.0ITWZvwnG9p3EXiTgoWRKCf82wHWbeWvP4SC_ORor9M_2.jpeg', 1),
(254, 108, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNTUwNX0.0ITWZvwnG9p3EXiTgoWRKCf82wHWbeWvP4SC_ORor9M_3.jpeg', 1),
(255, 109, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjI2OX0.QcNVn2xnM5FfaB2nFrwDmjIaCjCWQ2e7X5m0qPumDTg_0.jpeg', 1),
(256, 109, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjI2OX0.QcNVn2xnM5FfaB2nFrwDmjIaCjCWQ2e7X5m0qPumDTg_1.jpeg', 1),
(257, 109, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjI2OX0.QcNVn2xnM5FfaB2nFrwDmjIaCjCWQ2e7X5m0qPumDTg_2.jpeg', 1),
(258, 109, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjI2OX0.QcNVn2xnM5FfaB2nFrwDmjIaCjCWQ2e7X5m0qPumDTg_3.jpeg', 1),
(259, 110, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjg2Nn0.7ZoQ-AWdkWViIi97-G6CyMTVg_8FYeD_ZdU98CRr8Rk_0.jpeg', 1),
(260, 110, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjg2Nn0.7ZoQ-AWdkWViIi97-G6CyMTVg_8FYeD_ZdU98CRr8Rk_1.jpeg', 1),
(261, 110, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjg2Nn0.7ZoQ-AWdkWViIi97-G6CyMTVg_8FYeD_ZdU98CRr8Rk_2.jpeg', 1),
(262, 110, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNjg2Nn0.7ZoQ-AWdkWViIi97-G6CyMTVg_8FYeD_ZdU98CRr8Rk_3.jpeg', 1),
(263, 111, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzAwM30.vTXrVE7aXZFIg8j8OQwZKC_TFXZh0VMa4lX6CBAXxtI_0.jpeg', 1),
(264, 111, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzAwM30.vTXrVE7aXZFIg8j8OQwZKC_TFXZh0VMa4lX6CBAXxtI_1.jpeg', 1),
(265, 111, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzAwM30.vTXrVE7aXZFIg8j8OQwZKC_TFXZh0VMa4lX6CBAXxtI_2.jpeg', 1),
(266, 111, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzAwM30.vTXrVE7aXZFIg8j8OQwZKC_TFXZh0VMa4lX6CBAXxtI_3.jpeg', 1),
(267, 112, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzI3Mn0.QWZmPzOAqOFBYBvd6-sqke1SnkIoIMcJRewfpW-WYFQ_0.jpeg', 1),
(268, 112, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzI3Mn0.QWZmPzOAqOFBYBvd6-sqke1SnkIoIMcJRewfpW-WYFQ_1.jpeg', 1),
(269, 112, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzI3Mn0.QWZmPzOAqOFBYBvd6-sqke1SnkIoIMcJRewfpW-WYFQ_2.jpeg', 1),
(270, 112, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzI3Mn0.QWZmPzOAqOFBYBvd6-sqke1SnkIoIMcJRewfpW-WYFQ_3.jpeg', 1),
(272, 114, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzY1OX0.0akEXVivy9N_nRS56D2_MhuL3YPE2Ckst1kyIvHD7CE_0.jpeg', 1),
(273, 114, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzY1OX0.0akEXVivy9N_nRS56D2_MhuL3YPE2Ckst1kyIvHD7CE_1.jpeg', 1),
(274, 114, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzY1OX0.0akEXVivy9N_nRS56D2_MhuL3YPE2Ckst1kyIvHD7CE_2.jpeg', 1),
(275, 114, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzY1OX0.0akEXVivy9N_nRS56D2_MhuL3YPE2Ckst1kyIvHD7CE_3.jpeg', 1),
(276, 115, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzc3Mn0.3QTDIhnol5yuSutNJID6NHbis4vAnaPY0yznCt7eypc_0.jpeg', 1),
(277, 115, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzc3Mn0.3QTDIhnol5yuSutNJID6NHbis4vAnaPY0yznCt7eypc_1.jpeg', 1),
(278, 115, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzc3Mn0.3QTDIhnol5yuSutNJID6NHbis4vAnaPY0yznCt7eypc_2.jpeg', 1),
(279, 115, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkxNzc3Mn0.3QTDIhnol5yuSutNJID6NHbis4vAnaPY0yznCt7eypc_3.jpeg', 1),
(280, 116, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzc0NH0.XIkxrEjkDDyuq2Q6WsMw2X77deD1Fwpf7vQqMDNuB5g_0.jpeg', 1),
(281, 116, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzc0NH0.XIkxrEjkDDyuq2Q6WsMw2X77deD1Fwpf7vQqMDNuB5g_1.jpeg', 1),
(282, 116, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzc0NH0.XIkxrEjkDDyuq2Q6WsMw2X77deD1Fwpf7vQqMDNuB5g_2.jpeg', 1),
(283, 116, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzc0NH0.XIkxrEjkDDyuq2Q6WsMw2X77deD1Fwpf7vQqMDNuB5g_3.jpeg', 1),
(284, 117, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzk1Nn0.I77AiAa2EqEpktbYeV4pMVInd6aa9vP1nXxeSuPQ_Xc_0.jpeg', 1),
(285, 117, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzk1Nn0.I77AiAa2EqEpktbYeV4pMVInd6aa9vP1nXxeSuPQ_Xc_1.jpeg', 1),
(286, 117, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzk1Nn0.I77AiAa2EqEpktbYeV4pMVInd6aa9vP1nXxeSuPQ_Xc_2.jpeg', 1),
(287, 117, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyNzk1Nn0.I77AiAa2EqEpktbYeV4pMVInd6aa9vP1nXxeSuPQ_Xc_3.jpeg', 1),
(288, 118, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyODEyN30.pO5q9YGmqwh5A13j-uUwl3qzw04a0KD4F7Sf3Yhlz8A_0.jpeg', 1),
(289, 118, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyODEyN30.pO5q9YGmqwh5A13j-uUwl3qzw04a0KD4F7Sf3Yhlz8A_1.jpeg', 1),
(290, 118, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyODEyN30.pO5q9YGmqwh5A13j-uUwl3qzw04a0KD4F7Sf3Yhlz8A_2.jpeg', 1),
(291, 118, '/Img/Product/posteyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMiIsImV4cCI6MTY4MTkyODEyN30.pO5q9YGmqwh5A13j-uUwl3qzw04a0KD4F7Sf3Yhlz8A_3.jpeg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `importproduct`
--

CREATE TABLE `importproduct` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `importproduct`
--

INSERT INTO `importproduct` (`id`, `idUser`, `idProduct`, `quantity`, `createAt`, `status`) VALUES
(15, 21, 57, 15, '2023-04-19 01:43:52', 1),
(16, 21, 58, 20, '2023-04-19 01:52:49', 1),
(18, 21, 60, 12, '2023-04-19 01:56:30', 1),
(19, 21, 61, 12, '2023-04-19 02:02:45', 1),
(20, 21, 62, 16, '2023-04-19 02:06:10', 1),
(21, 21, 63, 10, '2023-04-19 02:08:50', 1),
(22, 21, 64, 18, '2023-04-19 02:12:12', 1),
(23, 21, 65, 10, '2023-04-19 02:15:36', 1),
(24, 21, 66, 10, '2023-04-19 02:17:46', 1),
(25, 21, 67, 10, '2023-04-19 02:22:17', 1),
(26, 21, 68, 14, '2023-04-19 02:25:57', 1),
(28, 21, 70, 10, '2023-04-19 02:35:30', 1),
(29, 21, 71, 10, '2023-04-19 02:38:32', 1),
(30, 21, 72, 12, '2023-04-19 02:41:06', 1),
(31, 21, 73, 16, '2023-04-19 02:44:33', 1),
(32, 21, 74, 10, '2023-04-19 02:48:03', 1),
(33, 21, 75, 12, '2023-04-19 02:55:04', 1),
(34, 22, 76, 20, '2023-04-19 02:59:27', 1),
(35, 22, 77, 12, '2023-04-19 03:01:49', 1),
(36, 22, 78, 15, '2023-04-19 03:04:18', 1),
(37, 22, 79, 10, '2023-04-19 03:06:49', 1),
(38, 22, 80, 15, '2023-04-19 03:10:23', 1),
(39, 22, 81, 18, '2023-04-19 03:12:47', 1),
(40, 22, 82, 17, '2023-04-19 03:15:42', 1),
(41, 22, 83, 12, '2023-04-19 03:21:08', 1),
(42, 22, 84, 10, '2023-04-19 03:24:16', 1),
(43, 22, 85, 10, '2023-04-19 03:33:42', 1),
(44, 22, 86, 12, '2023-04-19 03:41:21', 1),
(45, 22, 87, 15, '2023-04-19 03:44:20', 1),
(46, 22, 88, 20, '2023-04-19 03:46:35', 1),
(47, 22, 89, 10, '2023-04-19 03:49:27', 1),
(48, 22, 90, 12, '2023-04-19 03:51:16', 1),
(49, 22, 91, 18, '2023-04-19 03:53:57', 1),
(50, 22, 92, 10, '2023-04-19 03:57:33', 1),
(51, 22, 93, 18, '2023-04-19 14:46:58', 1),
(52, 22, 94, 10, '2023-04-19 14:50:07', 1),
(53, 22, 95, 12, '2023-04-19 14:54:25', 1),
(54, 22, 96, 20, '2023-04-19 14:56:59', 1),
(55, 22, 97, 15, '2023-04-19 15:00:26', 1),
(56, 22, 98, 20, '2023-04-19 15:03:26', 1),
(57, 22, 99, 16, '2023-04-19 15:05:54', 1),
(58, 22, 100, 18, '2023-04-19 15:09:47', 1),
(59, 22, 101, 12, '2023-04-19 15:12:51', 1),
(60, 22, 102, 14, '2023-04-19 15:16:53', 1),
(61, 22, 103, 15, '2023-04-19 15:20:13', 1),
(62, 22, 104, 14, '2023-04-19 15:26:26', 1),
(63, 22, 105, 12, '2023-04-19 15:29:20', 1),
(64, 22, 106, 18, '2023-04-19 15:31:43', 1),
(65, 22, 107, 12, '2023-04-19 15:38:24', 1),
(66, 22, 108, 15, '2023-04-19 15:40:05', 1),
(67, 22, 109, 20, '2023-04-19 15:52:49', 1),
(68, 22, 110, 15, '2023-04-19 16:02:47', 1),
(69, 22, 111, 12, '2023-04-19 16:05:03', 1),
(70, 22, 112, 15, '2023-04-19 16:09:32', 1),
(72, 22, 114, 20, '2023-04-19 16:15:59', 1),
(73, 22, 115, 15, '2023-04-19 16:17:52', 1),
(74, 22, 116, 15, '2023-04-19 19:04:04', 1),
(75, 22, 117, 20, '2023-04-19 19:07:36', 1),
(76, 22, 118, 16, '2023-04-19 19:10:27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createAt` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `idUser` int(11) NOT NULL,
  `address_order` varchar(255) DEFAULT NULL,
  `idTransport` varchar(255) DEFAULT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_price` float NOT NULL,
  `leadTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `idUser`, `address_order`, `idTransport`, `createAt`, `note`, `status`, `total_price`, `leadTime`) VALUES
(1683995151749, 1, 'Thị Trấn Si Ma Cai - Huyện Si Ma Cai - Lào Cai', '5fc23c660db34dbbba26af16d948ae73', '2023-05-13 23:25:51', 'Giao nhanh', 1, 62690, '2023-06-02'),
(1684849881980, 1, 'Xã Châu Sơn - Huyện Đình Lập - Lạng Sơn', '66354eaba30c49f4934bcb9595c06bad', '2023-05-23 20:51:21', 'Thử khi haon thành phân quyền', 1, 24076, '2023-06-12'),
(1684850916699, 1, 'Xã Châu Sơn - Huyện Đình Lập - Lạng Sơn', '16a84f76bf98443784769bb5a3722b81', '2023-05-23 21:08:36', '', 1, 5036, '2023-06-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `idOrder` bigint(20) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`idOrder`, `idProduct`, `quantity`, `price`) VALUES
(1683995151749, 57, 2, 14000),
(1683995151749, 58, 1, 5000),
(1683995151749, 63, 1, 12000),
(1683995151749, 66, 1, 17500),
(1684849881980, 57, 1, 14000),
(1684849881980, 58, 2, 5000),
(1684850916699, 58, 1, 5000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_order` bigint(20) NOT NULL,
  `type_payment` int(11) NOT NULL COMMENT '0: truc tiep, 1: vnpay',
  `amount` double NOT NULL,
  `payment_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0: chua thanh toan, 1: da thanh toan\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `id_order`, `type_payment`, `amount`, `payment_date`, `status`) VALUES
(43, 1683995151749, 0, 62690, '2023-05-13', 0),
(44, 1684849881980, 0, 24076, '2023-05-23', 0),
(45, 1684850916699, 1, 5036, '2023-05-23', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'USER.INSERT', '2023-04-27', '2023-04-27'),
(2, 'USER.UPDATE', '2023-04-27', '2023-04-27'),
(3, 'USER.DELETE', '2023-04-27', '2023-04-27'),
(5, 'USER.VIEW', '2023-04-27', '2023-04-27'),
(11, 'ORDER.INSERT', '2023-04-27', '2023-04-27'),
(12, 'ORDER.UPDATE', '2023-04-27', '2023-04-27'),
(13, 'ORDER.DELETE', '2023-04-27', '2023-04-27'),
(15, 'ORDER.VIEW', '2023-04-27', '2023-04-27'),
(16, 'PRODUCT.INSERT', '2023-04-27', '2023-04-27'),
(17, 'PRODUCT.UPDATE', '2023-04-27', '2023-04-27'),
(18, 'PRODUCT.DELETE', '2023-04-27', '2023-04-27'),
(20, 'PRODUCT.VIEW', '2023-04-27', '2023-04-27'),
(26, 'LOG.INSERT', '2023-04-27', '2023-04-27'),
(27, 'LOG.UPDATE', '2023-04-27', '2023-04-27'),
(28, 'LOG.DELETE', '2023-04-27', '2023-04-27'),
(30, 'LOG.VIEW', '2023-04-27', '2023-04-27'),
(31, 'ADMIN_PAGE', '2023-05-13', '2023-05-13'),
(32, 'ROLE.VIEW', '2023-05-14', '2023-05-14'),
(33, 'ROLE.UPDATE', '2023-05-14', '2023-05-14'),
(34, 'ROLE.DELETE', '2023-05-14', '2023-05-14'),
(35, 'ROLE.INSERT', '2023-05-14', '2023-05-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `idVendo` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `body` varchar(255) NOT NULL,
  `yearOfManuFacture` int(11) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `createAt` datetime DEFAULT current_timestamp(),
  `height` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `idVendo`, `name`, `content`, `body`, `yearOfManuFacture`, `fuel`, `price`, `createAt`, `height`, `length`, `width`, `weight`, `status`) VALUES
(57, 22, 'Datsun 240Z 2014', 'Nissan 240Z nguyên bản sở hữu động cơ I6 2,4 lít cho công suất 151 mã lực và mô-men xoắn 198Nm kết hợp với hộp số sàn 5 cấp. Tuy nhiên, chủ xe muốn chiếc 240Z có sức mạnh “khủng” hơn thế nữa nên đã quyết định lắp đặt cho chiếc xe “biểu tượng của Nhật Bản” một động cơ V6 tăng áp kép RB26, 350 mã lực của Skyline R33 GT-R huyền thoại. ', 'SUV', 2014, '1', 14000, '2023-04-19 01:43:52', 1630, 4140, 1120, 1044, 1),
(58, 2, 'Mercedes Benz 450SEL 6.9 1995', 'Sở hữu tốc độ lên tới 225 km/h, Mercedes-Benz 450 SEL là mẫu sedan nhanh nhất trong khoảng thời gian đó. Động cơ V8 6.9L của 450 SEL được chế tạo thủ công và tích hợp một số tính năng được coi là hiện đại khi ấy như hệ thống phun xăng cơ khí K-Jetronic hay hệ thống bơm nhớt khô. Trong đó, hệ thống bơm nhớt khô giúp kéo dài chu kỳ thay dầu của xe lên đến 20.000 km – một con số ấn tượng vào khoảng thời gian đó.', 'Sedan', 1995, '1', 5000, '2023-04-19 01:52:49', 1540, 4250, 1160, 956, 1),
(60, 4, 'Honda S2000 2000', 'S2000 thế hệ thứ hai được Honda giới thiệu vào năm 2004, động cơ đặt giữa, truyền động cầu sau, cung cấp sức mạnh bởi động cơ dung tích 1.997cc, 4 xi lanh thẳng hàng DOHC. Công suất cực đại trên xe nguyên bản từ 237 mã lực, mô men xoắn 220 Nm. Một số xe Honda S2000 khác ở Việt Nam đều được độ mạnh tay từ việc nâng cấp những món “đồ chơi” đắt tiền đến gia tăng công suất máy lên mức 400 mã lực.', 'Couple', 2000, '1', 3000, '2023-04-19 01:56:30', 1285, 4120, 1750, 967, 1),
(61, 17, 'Lincoln Town Car Cartier 1996', 'Động cơ xăng đi kèm với hệ dẫn động FWD và AWD, hộp số tự động tám cấp, trong khi hệ truyền động plug-in hybrid đi kèm với hệ dẫn động e-AWD và hộp số vô cấp CVT.\n\nLincoln đã bắt đầu nhận đơn đặt hàng trên trang web chính thức của mình và những chiếc Cartier nâng cấp đầu tiên sẽ có mặt tại các đại lý ở Mỹ  từ 9.690 USD.', 'Sedan', 1996, '1', 9000, '2023-04-19 02:02:45', 1445, 5560, 1948, 1833, 1),
(62, 11, 'Rolls-Royce Corniche 1973', 'Rolls-Royce Corniche là xe mui trần 2 cửa. Chiếc xe được nhập về Việt Nam thuộc thế hệ mới nhất, đời 2000. Xe bị ngừng sản xuất vào năm 2002. Tại thời điểm ra mắt, Corniche là một trong những mẫu xe đắt đỏ nhất của Rolls-Royce với giá gần 360.000 USD. Giá sang tay chiếc xe tại Việt Nam chưa được tiết lộ và cũng khó để đoán, bởi đây là xe cổ, mang tính nhất sưu tầm. Chỉ có 374 chiếc Corniche đời này được sản xuất trên thế giới.', 'Convertible', 1973, '1', 20000, '2023-04-19 02:06:10', 1492, 5169, 1829, 2185, 1),
(63, 16, 'Buick Riviera 1963', 'Buick Riviera là một mẫu coupe thể thao được ra đời với nguồn cảm hứng lấy từ dòng xe Rolls-Royce đẳng cấp. Một trong những đặc điểm nổi bật và dễ nhận biết nhất của Buick Riviera chính là đèn pha được thiết kế nằm ẩn dưới lớp lưới tản nhiệt phía trước của xe. Giới sành chơi xe đánh giá ngoại hình Buick Riviera mang vẻ đẹp quyền lực, sang trọng và cổ điển.', 'Couple', 1963, '1', 12000, '2023-04-19 02:08:50', 1346, 5283, 1938, 1926, 1),
(64, 9, 'Tesla Model S 90D 2016', 'Sau màn ra mắt \"nổi như cồn\" của Model 3, hãng Tesla tiếp tục thu hút sự chú ý khi giới thiệu phiên bản nâng cấp của mẫu xe điện Model S. Điểm nhấn của Tesla Model S 2017 chính là phần đầu xe được thiết kế tương tự Model 3 và Model X. Trên đầu xe Tesla Model S có lưới tản nhiệt mượt mà và cụm đèn pha dạng LED mới.', 'Sedan', 2016, '2', 22000, '2023-04-19 02:12:12', 1435, 4978, 1963, 2199, 1),
(65, 10, 'BMW X5 xDrive50i 2019', 'So với thế hệ trước, BMW X5 2019 được hưởng lợi từ nhiều loại vật liệu cao cấp hơn trong khoang cabin, và chiếc X5 xDrive50i này một lần nữa lại chứng minh điều đó, khoang cabin của xe được tăng cường nhờ các bề mặt ốp gỗ sáng và những chi tiết trang trí kim loại.', 'SUV', 2019, '1', 18000, '2023-04-19 02:15:36', 1745, 4935, 2004, 2345, 1),
(66, 3, 'Ford Mustang Saleen S281 2003', 'Một trong những chiếc xe đó là chiếc Ford Mustang Saleen S281 Extreme được Paramount hợp tác cùng Saleen để biến xe trở thành nhân vật Barricade với dáng dấp của một chiếc xe cảnh sát.', 'Couple', 2003, '1', 17500, '2023-04-19 02:17:46', 1422, 4801, 1880, 1610, 1),
(67, 6, 'Land Rover Range Rover County 1995', 'Land Rover Range Rover County 2015 có kiểu dáng đẹp mắt và đột phá hơn so với các “anh em” cùng nhà. Được xem như là một phiên bản “mini” của Velar, xe Evoque gây ấn tượng bởi lối thiết kế sắc sảo, đậm chất hiện đại ở cả nội và ngoại thất.\n\nNhờ khả năng địa hình vốn có mà hãng xe đến từ Anh Quốc chiếm vị trí nổi trội trong phân khúc SUV hạng sang cỡ nhỏ. Mẫu Range Rover County 2015 đầy phong cách khi đặt lên bàn cân cùng với các đối thủ tầm cỡ như BMW X1, Mercedes-Benz GLB Class, Audi Q3, Volvo XC40 hay Lexus NX…', 'SUV', 1995, '1', 14300, '2023-04-19 02:22:17', 1750, 4450, 1820, 2008, 1),
(68, 9, 'Tesla Model X 75D 2018', 'Nâng cấp mới này đã mang tới một loạt thay đổi cho chiếc xe, cùng với sự bổ sung 5 kWh vào dung lượng pin. Model X vẫn giữ lại hệ dẫn động 4 bánh toàn thời gian như tiêu chuẩn. Phiên bản tiêu chuẩn của chiếc SUV này có vận tốc tối đa 209 km/h và có thể chạy nước rút từ 0 – 96 km/h trong vòng 6.0 giây.\n\nPhạm vi ước tính của Tesla Model X 75D là 381 km, thấp hơn Model X 90D 32 km. So với phiên bản thay thế, phạm vi tối đa được EPA ước tính đã tăng lên 27 km.', 'SUV', 2018, '2', 20000, '2023-04-19 02:25:57', 1676, 5037, 1999, 2352, 1),
(70, 10, 'BMW M2 Competition 2021', 'BMW M2 là mẫu xe thể thao tính năng cao mới nhất của BMW, thay thế cho BMW M1 và hiện cũng là phiên bản M nhỏ nhất của hãng xe BMW với kích thước là 4468 x 1854 x 1410 mm. Dù nhỏ nhắn nhưng xe vẫn mang đầy vẻ dũng mãnh, hầm hố với các đường nét thiết kế đậm chất dòng M của BMW.\nĐầu xe BMW M2 Coupe 2021 với cụm đèn trước là dạng Xenon quen thuộc trên nhiều mẫu BMW, tích hợp tính năng rửa đèn pha tiện lợi khi lái xe trong điều kiện thời tiết xấu, cũng như tăng cường nét thẩm mỹ cho M2. Sở hữu cản trước thấp cùng hốc gió lớn, được dập chi tiết rất hầm hố bên cạnh thiết kế lưới tản nhiệt hình quả thận mạ crom sang trọng quen thuộc.', 'Couple', 2021, '1', 21500, '2023-04-19 02:35:30', 1410, 4468, 1854, 1463, 1),
(71, 13, 'Porsche 356 1970', 'Một trong những chiếc Porsche cổ hàng “hiếm” – tiền thân của huyền thoại Porsche 356, đã bất ngờ xuất hiện tại bãi xe VIMS 2016 vừa qua. Tại Sài Gòn, số lượng Porsche 356 có ít nhất 2 chiếc, được trùng tu và độ lại từ các chiếc xe nguyên bản. Đây là một trong những lần hiếm hoi chiếc 356A Speedster xuống hiện lại trên đường phố.', 'Convertible', 1970, '1', 12500, '2023-04-19 02:38:32', 1320, 4010, 1660, 1041, 1),
(72, 8, 'Chevrolet Corvette 3LT 2020', 'Chevrolet Corvette C8 2020 sở hữu khả năng tăng tốc 0 - 100 km/h đầy ấn tượng với chỉ 2.9 giây, nhờ động cơ V8 6.2L cùng hộp số ly hợp kép 8 cấp Tremec. Với vô-lăng có khả năng phản ứng nhanh nhạy, mức phân bổ trọng lượng 40/60 (khác biệt hoàn toàn với mức phân bổ 50/50 thông thường trên các dòng xe có động cơ đặt giữa khác) và ghế lái được đặt gần trục trước, C8 di chuyển rất dễ dàng và linh hoạt.\nVượt trội hơn hẳn so với thế hệ tiền nhiệm C7, Corvette C8 đem lại cho người lái tầm nhìn phía trước rộng và thoáng hơn, nhờ phần mui xe thấp hơn và không còn nhô về phía trước do động cơ nay đã được đặt giữa. \n', 'Couple', 2020, '1', 21000, '2023-04-19 02:41:06', 1234, 4630, 1933, 1527, 1),
(73, 9, 'Tesla Model S Plaid 2021', 'Dòng xe Model S của Tesla vốn đã mang đến những thay đổi mang tính cách mạng cho thị trường xe điện, nhưng phiên bản Model S Plaid còn được coi là điểm sáng nổi bật trong lịch sử ngành sản xuất ô tô của thế giới.\nTesla chắc chắn không có đối thủ khi nói về hiệu suất của EV. Tất nhiên điều đó cũng đồng nghĩa rằng chiếc xe Model S Plaid có giá không hề rẻ, nhưng vẫn là một món hời nếu so với hiệu suất mà bạn nhận được. Những chiếc xe của Bugatti hay Koenigsegg cũng có thể đạt được hiệu suất tương tự nhưng Plaid có giá cạnh tranh hơn, khoảng 127.000 USD (≈ 2,9 tỷ VNĐ), trong khi các xe khác có thể đắt tới hàng triệu đô.', 'Sedan', 2021, '2', 11900, '2023-04-19 02:44:33', 1445, 4970, 1964, 2237, 1),
(74, 3, 'Ford Bronco Raptor 2023', 'Ford Bronco Raptor là sự kết hợp của chiếc xe địa hình vốn đã ấn tượng Bronco với phong cách off-road tốc độ cao đã làm nên thương hiệu của dòng sản phẩm Raptor.\nFord mới đây đã công bố biến thể hiệu năng cao Raptor dành cho chiếc SUV off-road Bronco của họ. Ở biến thể này, xe sẽ được trang bị động cơ V6 mạnh mẽ, cùng với đó là nhiều nâng cấp đáng kể để mang đến khả năng vận hành tối ưu trên các cung đường mòn, đường đá và bay nhảy giữa sa mạc.', 'SUV', 2023, '1', 24000, '2023-04-19 02:48:03', 1976, 4851, 2177, 3107, 1),
(75, 2, 'Mercedes-Benz G-Class AMG G 63 Brabus 700 2021', 'Dựa trên chiếc Mercedes-AMG G63 mới nhất và được gọi là Brabus 800 Adventure, xe được giới thiệu vào đầu năm 2020 và hiện đang được bán trên trang web chính thức của hãng độ.\n\nĐó là một chiếc xe hoàn toàn mới, được trang bị động cơ twin-turbo 4.0  L V8 sản sinh công suất 789 mã lực và mô men xoắn 1.000 Nm.\n\nĐây thực sự là một sự cải thiện đáng kể so với chiếc G63 nguyên bản (tăng 212 mã lực và mô men xoắn 150 Nm), được thực hiện nhờ việc thay thế các turbo và ánh xạ lại động cơ. Theo Brabus, chiếc Adventure XLP 800 có vận tốc tối đa 210 km/h và sẽ đạt vận tốc 100 km/h trong 4,8 giây.', 'SUV', 2021, '1', 22000, '2023-04-19 02:55:04', 1968, 4866, 1931, 2560, 1),
(76, 23, 'Lamborghini Urus Performante 2023', 'Urus Performante có thiết kế hầu như không đổi so với phiên bản trước đây, tuy nhiên được hãng nâng cấp một số chi tiết ở ngoại thất như nắp ca-pô, khe thoát gió, trần xe, bộ chia gió trước, bộ khuếch tán gió sau, cản sau và vòm bánh làm bằng sợi carbon. Xe mang dáng vẻ hầm hố thường thấy ở một mẫu SUV hiệu năng cao, với các đường nét góc cạnh, cứng cáp. Đại diện Lamborghini cho biết dùng nhiều vật liệu sợi carbon giúp tổng trọng lượng xe giảm 47 kg.', 'SUV', 2023, '1', 23000, '2023-04-19 02:59:27', 1618, 5137, 2026, 2150, 1),
(77, 18, 'Bentley Flying Spur V8 2022', 'Bentley Mulsanne 2018 là mẫu sedan siêu xe có màu xanh độc nhất Việt Nam với những đẳng cấp vượt trội không một mẫu xe nào có thể \"bắt kịp\".\r\n\r\nĐánh giá xe Bentley Mulsanne 2018 về ngoại thất\r\nBentley Mulsanne 2018 là mẫu salon sedan của Bentley với kích thước bệ vệ, hầm hố. Kích thước dài x rộng x cao của xe lần lượt là 5.575 x 2.208 x 1.521 mm, trục cơ sở dài 2.266 m.\r\nPhần đầu xe có thiết kế khá quen thuộc với những mẫu Bentley với cụm đèn pha tròn, lưới tản nhiệt màu đen bao quanh cùng những đường nẹp chrome sáng bóng. ', 'Sedan', 2022, '1', 21900, '2023-04-19 03:01:49', 1484, 5316, 2013, 2330, 1),
(78, 13, 'Porsche Cayenne Turbo GT 2023', 'Tại Việt Nam, phiên bản Porsche Cayenne Turbo GT hoàn toàn mới có thể được đặt hàng ngay từ bây giờ. Bên cạnh màu sơn tùy chọn mới Arctic Grey, đặc tính thể thao vượt trội của Cayenne Turbo GT còn được nhấn mạnh thông qua những chi tiết thiết kế cấp tiến. Đầu tiên là cản trước đặc trưng của dòng xe GT với cánh gió nổi bật và 2 khe tản nhiệt lớn ở hai bên mang lại diện mạo không thể nhầm lẫn.', 'SUV', 2023, '1', 20500, '2023-04-19 03:04:18', 1636, 4942, 1995, 2765, 1),
(79, 11, 'Rolls-Royce Phantom Coupe 2010', 'ại Việt Nam, những chiếc Rolls-Royce bắt đầu được đưa về nước vào năm 2007. Tính đến nay sau 12 năm, số lượng Rolls-Royce tại Việt nam đã là một con số không hề nhỏ. Đặc biệt hơn, giới mê xe tại Việt Nam đã có cơ hội được “diện kiến” khá nhiều dòng xe cũng như các phiên bản đặc biệt khác nhau của dòng xe này. Có thể nói, hai dòng xe Rolls-Royce phổ biến nhất tại Việt Nam chính là ông hoàng Phantom VII và “tân binh” Ghost. Bên cạnh sự phổ biến của những chiếc Phantom hay Ghost, một số người chơi xe đã có những sự lựa chọn độc đáo hơn về chiếc Rolls-Royce của mình. Chính vì thế mà những dòng khác được đưa về Việt Nam như biến thể Phantom Drophead Coupe, Dawn, Wraith, Seraph,…Có những dòng xe chỉ có duy nhất một chiếc xuất hiện tại Việt Nam như mẫu Rolls-Royce Phantom Coupe.', 'Couple', 2010, '1', 18000, '2023-04-19 03:06:49', 1592, 5609, 1987, 2590, 1),
(80, 6, 'Land Rover Range Rover Sport Svr 2021', 'Land Rover Range Rover Sport là dòng xe SUV hạng sang cỡ trung (luxury mid-size SUV) của nhà sản xuất ô tô Jaguar Land Rover, Anh Quốc. Ra đời lần đầu năm 2005, đến nay Range Rover Sport đang ở thế hệ thứ 2. Trong gia đình Land Rover, Range Rover Sport xếp trên dòng Range Rover Evoque và bên dưới dòng Range Rover.\n\nRange Rover Sport 2021 hiện tại là phiên bản Facelift của thế hệ thứ 2 (L494, 2014-nay), được ra mắt vào năm 2017. Ở bản nâng cấp lần này, Land Rover đã tinh chỉnh Range Rover Sport với một bộ phận cản trước mới, lưới tản nhiệt được chỉnh sửa và đèn pha ma trận LED Matrix Pixel. Xe vẫn có lựa chọn 5 chỗ và 7 (5 2) chỗ ngồi.', 'SUV', 2021, '1', 19600, '2023-04-19 03:10:23', 1803, 4879, 2073, 2211, 1),
(81, 14, 'Aston Martin Vanquish 2014', 'Aston Martin Vanquish được xem là mẫu siêu xe hàng đầu của hãng, cũng là mẫu xe mang lại danh tiếng và thể hiện được đẳng cấp cho hãng xe non trẻ này. Với ngôn ngữ thiết kế được dựa theo như những cơn gió lốc chiếc xe sở hữu diện mạo trẻ trung năng động và đầy những nét sang trọng lịch lãm đặc biệt là khối động cơ vô cùng mạnh mẽ chắc chắn sẽ mang đến những trải nghiệm thú vị cho khách hàng.', 'Convertible', 2014, '1', 13500, '2023-04-19 03:12:47', 1294, 4720, 2067, 1685, 1),
(82, 18, 'Bentley Mulsanne 2018', 'Bentley Mulsanne 2018 được trang bị khối động cơ V8 6.75L sản sinh công suất tối đa 505 mã lực, mô-men xoắn cực đại 1020 Nm. Hộp số tự động 8 cấp. Xe tăng tốc từ 0 – 100 km/h mất 5,5 giây, tốc độ tối đa 296 km/h.', 'Sedan', 2018, '1', 20000, '2023-04-19 03:15:42', 1521, 5575, 1976, 2711, 1),
(83, 13, 'Porsche 911 GT3 2018', 'Nhìn tổng thể ngoại hình, với thiết kế 2 cửa với 2 ghế ngồi thể thao cùng hàng loạt “đồ chơi” đi kèm. Bất kỳ ai cũng có thể dễ dàng đoán ra Porsche 911 GT3 2022 là một chiếc xe hiệu suất cao dành cho những đại gia thích cầm lái.\n\nPorsche 911 GT3 2022 sử dụng nhiều các vật liệu có trọng lượng nhẹ như mui xe làm từ sợi carbon, la zăng hợp kim siêu nhẹ, cửa kính siêu mỏng. Qua đó giúp cắt giảm trọng lượng giúp khối lượng khô chỉ còn 1.418 kg, tạo tiền đề cho hiệu suất vận hành tối ưu.', 'Couple', 2018, '1', 17800, '2023-04-19 03:21:08', 1298, 4557, 1880, 1430, 1),
(84, 13, 'Porsche 911 Turbo 2009', 'Porsche 911 Turbo S được trang bị tiêu chuẩn hệ thống phanh gốm – sợi carbon tổng hợp (PCCB) với cùm phanh sơn vàng nổi bật. Khác biệt của phiên bản này với bản Turbo thông thường đó là hệ thống đèn LED Matrix với khả năng đánh đèn theo góc lái (PDLS ).\nBên trong, khoang lái của xe được lựa chọn tùy chọn bọc da Club với màu da Truffle Brown và chỉ khâu tương phản màu xám (Crayon). Chiếc xe này cũng sở hữu thêm gói ốp trang trí nội thất bằng sợi carbon bóng. Vô-lăng tích hợp nút đa phương tiện, đàm thoại rảnh tay được bọc vật liệu Race-Tex và ốp sợi carbon mờ. Đồng hồ hiển thị vòng tua ở bảng điều khiển trung tâm được lựa chọn màu vàng trong khi đồng hồ Sport Chrono có mặt màu đen.', 'Couple', 2009, '1', 16000, '2023-04-19 03:24:16', 1303, 4535, 1900, 2040, 1),
(85, 15, 'Lucid Air Grand Touring Performance 2022', '\nĐể so sánh, phiên bản Lucid Air Grand Touring trước đó có tầm hoạt động 755 km khi dùng mâm 21 inch và tăng lên 830 km nếu được trang bị mâm 21 inch.\n\nLucid Air Grand Touring Performance là bản hiệu suất của Lucid Air Grand Touring. Chiếc xe điện này có một số thay đổi trong hệ truyền động với kiến trúc pin 900V, khả năng tăng tốc 0-100 km/h trong 2,6 giây. Với thời gian sạc 21 phút bằng bộ sạc nhanh 350 kW, mẫu xe này có thể đi được 483 km.', 'Sedan ', 2022, '2', 22000, '2023-04-19 03:33:42', 1410, 4975, 1939, 2350, 1),
(86, 24, 'Abarth Esseesse 2020', 'Fiat 500 595 Abarth Esseesse 2020 đầu tiên về Việt Nam sở hữu vóc dáng \"con bọ\" quen thuộc nhưng hãng độ Abarth đã đưa lên hàng loạt chi tiết nhằm thay đổi giúp xe thể thao và ấn tượng hơn những gì bản tiêu chuẩn thể hiện.\nPhần đầu xe, Fiat 500 595 Abarth Esseesse hoàn toàn mới sở hữu cụm đèn pha và đèn chạy ban ngày dạng elip tách rời với công nghệ LED, đèn pha bóng Projector. Tính năng điều chỉnh ánh sáng tự động và rửa đèn được hãng xe nước Ý áp dụng trên Fiat 500 bản đặc biệt này.', 'Hatchback', 2020, '2', 4500, '2023-04-19 03:41:21', 1485, 3660, 1627, 800, 1),
(87, 12, 'Audi A3 2018', 'Audi A3 Sportback 2018 (có thể gọi là hatchback) lần đầu được giới thiệu ở Việt Nam tại Triển lãm ô tô quốc tế 2017 hồi tháng 10 năm ngoái. Đây là một trong những chiếc xe nổi bật nhất trong gian hàng của Audi mang đến triển lãm vừa qua với giá được công bố ở mức 1,55 tỷ đồng.\n\nỞ dáng vẻ bên ngoài Audi A3 2018 sang trọng, thể thao và mạnh mẽ hơn bởi ngôn ngữ thiết kế hoàn toàn mới mà hãng xe nước Đức sử dụng. Audi gọi A3 2018 là chiếc coupe 5 cửa, nhưng thực chất đây là chiếc xe có thiết kế không khác gì một chiếc hatchback thông thường ở Việt Nam.', 'Sedan', 2018, '1', 8200, '2023-04-19 03:44:20', 1409, 4423, 1793, 1470, 1),
(88, 12, 'Audi Q3 2021', 'Audi Q3 sử dụng hộp số 7 cấp S tronic cho phép xe dễ dàng đạt vận tốc 100km trong vòng 6.4s và đạt vận tốc tối đa 233 km/h. Một ưu điểm nữa ở Q3 là khả năng tiết kiệm nhiên liệu khi chỉ tiêu tốn từ 6.5 đến 8.6 l nhiên liệu cho mỗi 100km tùy thuộc địa hình. \n\nXe có 6 chế độ lái bao gồm: Tự động, Thoải mái, Năng động, Off-road, Hiệu quả và Tuỳ chỉnh.\n\nMột chiếc xe gia đình nhưng lại mang hơi hướng thể thao, khối động cơ mạnh mẽ nhưng vẫn đảm bảo tính an toàn gần như tuyệt đối, sang trọng nhưng vẫn toát lên nét năng động và trẻ trung,… \n\nKhông hề quá khi nói Audi A3 là một đối thủ khiến các dòng xe SUV khác như Mercedes GLA hay BMW X4 phải dè chừng. Nếu bạn đang tìm kiếm một trợ thủ đắc lực cho những chuyến đi cùng gia đình, vậy thì hãy lựa chọn Audi Q3!', 'SUV', 2021, '1', 9000, '2023-04-19 03:46:35', 1567, 4500, 1843, 1545, 1),
(89, 10, 'BMW 3 Series 2014', 'Năm 2014, Series 3 tiếp tục là sản phẩm bán chạy nhất của BMW trên toàn cầu. Kết thúc 11 tháng đầu năm 2014, lượng xe Series 3 được bán tới tay người tiêu dùng đạt 432.064 xe, tăng 2,8% so với cùng kỳ năm trước. Thành công của Series 3 có đóng góp quan trọng vào tổng doanh số hơn 1,63 triệu xe, đồng thời giúp thương hiệu xứ Bavaria vững vàng ở ngôi vị số 1 phân khúc xe sang thế giới.\n\nBMW Series 3 mới sử dụng dạng khung gầm trọng lượng nhẹ với phần lớn các bộ phận làm từ nhôm giúp giảm sức nặng của cầu xe và tạo nên tỷ lệ phân bổ trọng lượng 50:50. Xe trang bị động cơ 2.0L TwinPower Turbo 4 xy-lanh thẳng hàng, công suất 184 mã lực tại 5.000 vòng/phút, và 245 mã lực từ 5.000 – 6.000 vòng/phút cho từng phiên bản 320i và 328i.', 'Sedan', 2014, '1', 12000, '2023-04-19 03:49:27', 1375, 4612, 1782, 1540, 1),
(90, 10, 'BMW 3 Series 2017', 'BMW 320i 2017 sở hữu “diện mạo” mạnh mẽ, sắc sảo tuy nhiên không có quá nhiều thay đổi so với thế hệ trước. Kích thước tổng thể trên BMW 320i 2017 tiếp tục kế thừa người tiền nhiệm với chiều dài x rộng x cao lần lượt là 4.633 x 2.031 x 1.429 (mm), trục cơ sở dài 2.810 (mm), khoảng sáng gầm xe 140 (mm). Đặt cạnh hai đối thủ, khoảng cách hai trục của BMW 320i kém đôi chút so với C-Class - 2.840 (mm) và ngấp nghé với A4 - 2.820 (mm).\nThiết kế đầu xe của phiên bản 320i 2017 đã được biến tấu đôi chút để tăng thêm vẻ thể thao, mạnh mẽ sẵn có của nó. Hai đường gân kép tạo hình chữ V chạy dọc mỗi bên trên nắp capo bám sát thiết kế khí động học.', 'Sedan', 2017, '1', 14500, '2023-04-19 03:51:16', 1429, 4624, 1811, 1430, 1),
(91, 10, 'BMW IX-3 2022', 'BMW iX3 là dòng xe chạy hoàn toàn bằng điện, được giới thiệu trước công chúng dưới phiên bản ý tưởng tại Triển lãm Ô tô Frankfurt 2009 và bắt đầu bán ra cho công chúng vào tháng 09-2013. Tính đến đầu năm 2020, doanh số của BMW iX3 đạt hơn 165.000 xe.\nBMW iX3 2023 là phiên bản nâng cấp giữa vòng đời thay đổi chủ yếu tập trung vào thiết kế ngoại thất. Xe được ra mắt tại sự kiện IAA Mobility 2021 tổ chức tại Munich, Đức.', 'SUV', 2022, '2', 16800, '2023-04-19 03:53:57', 1668, 4734, 1891, 2180, 1),
(92, 13, 'Porsche 911 Targa 1995', 'Là một biến thể độc đáo của dòng 911, Porsche Targa được sinh ra dựa trên quy định nghiêm ngặt về an toàn trên những mẫu xe mui trần truyền thống tại thị trường Mỹ. Chính vì thế mà vào năm 1965, Porsche 911 Targa đã chính thức được ra mắt với thiết kế lạ mắt cùng phần kính đằng sau cố định với khúc mui giữa có thể đóng mở linh hoạt.\nKiểu dáng mui xe Targa cũng được Porsche sử dụng cho 911 thế hệ thứ 2. Ở thế hệ này, phần thân xe 911 đã được sửa đổi với phần cản trước hình hộp mới với hốc gió màu đen, phù hợp với pháp luật mới ở Hoa Kỳ. Ngoài ra, phần mui xe theo phong cách Targa vẫn được giữ nguyên, thêm vào đó là một tùy chọn phần thanh ngang màu đen thay cho màu bạc trên thế hệ trước đây. Ngay cả khi chiếc 911 SC Cabriolet được sản xuất vào tháng 1 năm 1983, dòng Targa vẫn giữ nguyên vị thế của mình là một dòng xe biểu tượng đầy hấp dẫn của thương hiệu xe hơi Đức Porsche.\n', 'Couple', 1995, '1', 14700, '2023-04-19 03:57:33', 1265, 4245, 1735, 1320, 1),
(93, 21, 'Volkswagen T-Roc 2020', 'Sau khi giới thiệu các phiên bản thường của T-Roc vào năm ngoái, Volkswagen tiếp tục trình làng phiên bản hiệu suất cao T-Roc R có sức mạnh gần 300 mã lực, nằm “chung mâm” với BMW X2 M35i hay Audi SQ2.\nMẫu SUV mới được thiết kế với mục tiêu dành cho giới trẻ yêu tốc độ, Volkswagen T-Roc R 2020 sử dụng động cơ xăng dung tích 2.0L TSI tăng áp cho công suất tối đa 295 mã lực và mô men xoắn cực đại 400 Nm. Sức mạnh được truyền xuống bốn bánh thông qua hộp số tự động ly hợp kép 7 cấp. Nhờ đó, T-Roc R 2020 có khả năng tăng tốc từ 0 - 100 km/giờ chỉ trong vòng 4,9 giây trước khi đạt tốc độ tối đa 250 km/giờ.', 'SUV', 2020, '1', 17500, '2023-04-19 14:46:58', 1572, 4246, 1819, 1461, 1),
(94, 21, 'Volkswagen Arteon 2020', 'Edition có hiệu suất cao và được hãng xe Đức sản xuất số lượng giới hạn chỉ 250 chiếc.\nVề động cơ, sẽ có 2 lựa chọn động cơ xăng hoặc diesel (dầu) tăng áp đều có dung tích 2.0 lít. Động cơ xăng có 2 cấu hình công suất 188 và 268 mã lực. Trong khi đó, động cơ diesel cũng có 2 mức công suất 188 và 237 mã lực. Với các phiên bản mạnh hơn, Volkswagen sẽ trang bị sẵn hệ thống ổn định chassis DCC và dẫn động 4 bánh 4Motion.', 'Sedan', 2020, '1', 19000, '2023-04-19 14:50:07', 1435, 4862, 1871, 1658, 1),
(95, 21, 'Volkswagen Touareg 2018', 'Có thể nói, Volkswagen Touareg là một trong những chiếc xe tạo cảm hứng nhiều nhất với thế giới hiện đại trong rất nhiều năm trở lại đây. Tourareg là thương hiệu cao cấp hàng đầu của hãng xe Volkswagen và hãng lại một lần nữa khẳng định vai trò tiên phong của mình trong việc nâng cấp kỹ thuật chế tác cùng những công nghệ cao cấp tích hợp vào dòng xe của mình. Có thể nói, mẫu xe ô tô Volkswagen Touareg là “chiếc xe của tương lai”.', 'SUV', 2018, '1', 14800, '2023-04-19 14:54:25', 1732, 4898, 1965, 2146, 1),
(96, 21, 'Volkswagen Tiguan 2021', 'Mâm xe Volkswagen Tiguan 2021 có thiết kế 5 chấu đơn giản mà hãng xe Đức gọi là \"Victoria Falls\" với kích thước 19 inch, vòm bánh xe kết hợp chi tiết nhựa cứng, đặc trưng của những chiếc SUV. Một điểm thú vị trên Tiguan là những ốc vít ở lốp xe được bảo vệ bởi lớp nhựa cứng.\n\nGương chiếu hậu của Tiguan 2021 sử dụng 2 tông màu, màu xám giống bộ mâm và nhiều tính năng như chỉnh/gập điện, sấy gương, cảnh báo điểm mù, camera lề, xi-nhan LED. Cùng với đó, tay nắm cửa trên chiếc SUV Đức này có thiết kế đồng màu thân xe tích hợp khả năng mở cửa thông minh.', 'SUV', 2021, '2', 22000, '2023-04-19 14:56:59', 1645, 4509, 1839, 1612, 1),
(97, 21, 'Volkswagen Golf 2022', 'Được giới thiệu tại triển lãm Ô tô Chicago 2021, Volkswagen Golf R 2022 ra mắt thị trường Mỹ trang bị động cơ xăng 4 xi-lanh, tăng áp, phun nhiên liệu trực tiếp, dung tích 2.0L tương tự Golf GTI. Trên phiên bản số tự động ly hợp kép DSG 7 cấp, động cơ này tạo ra công suất tối đa 315 mã lực và mô-men xoắn cực đại 400 mã lực. Trong khi đó, phiên bản số sàn 6 cấp sở hữu mô-men xoắn cực đại 380 Nm.\nVolkswagen Golf R 2022 vẫn được trang bị hệ dẫn động 4 bánh toàn thời gian 4Motion tương tự thế hệ tiền nhiệm, bao gồm cả hệ thống điều hướng mô-men xoắn trên trục sau. Bên cạnh đó là khóa vi sai phía sau với 2 bộ ly hợp đa đĩa, có thể dồn 100% mô-men xoắn vào 1 bánh sau.', 'Sedan', 2022, '1', 21400, '2023-04-19 15:00:26', 1483, 4644, 1789, 1500, 1),
(98, 7, 'Maserati Levante 2021', 'Levante là chiếc SUV đầu tiên của Maserati được bán chính hãng tại Việt Nam. Mẫu xe này thể hiện tinh thần dũng mãnh, phiêu lưu và hướng về phía trước của Maserati.\n\nVới sự xuất hiện của Levante, Maserati đã góp mặt trên đường đua của những chiếc SUV hạng sang trên thế giới như Bentley, Mercedes-Benz, Porsche…', 'SUV', 2021, '2', 22300, '2023-04-19 15:03:26', 1693, 5005, 1981, 2205, 1),
(99, 7, 'Maserati Ghibli 2017', 'aserati Ghibli - dòng sedan hạng sang được hãng xe nước Ý định vị, cạnh tranh với đối thủ chính - Porsche Panamera bản tiêu chuẩn. Ở thời điểm năm 2016 ra mắt thị trường Việt Nam, Maserati Ghibli có giá bán gần 6 tỉ đồng cho bản cao cấp. Hiện tại, chiếc xe này có giá bán lại chỉ khoảng 3 tỉ đồng.\nMaserati Ghibli đời 2017 sử dụng động cơ V6 3.0 lít Twin Turbo, sản sinh công suất tối đa 345 mã lực tại 5.000 vòng/phút và mô men xoắn 500 Nm. Sức mạnh được truyền tới bánh sau thông qua hộp số tự động 8 cấp, giúp xe tăng tốc 0-100 km/giờ chỉ trong 5,6 giây, trước khi đạt tốc độ tối đa 263 km/giờ.', 'Sedan', 2017, '1', 19600, '2023-04-19 15:05:54', 1461, 4971, 1945, 1835, 1),
(100, 10, 'BMW 8 Series 2022 Sport', 'Chiếc BMW 840i Gran Coupe chính hãng đầu tiên ở Hà Nội có ngoại thất màu đen, đi kèm gói M Sport, mâm M 5 chấu kép và hệ thống phanh M hiệu suất cao với cùm phanh màu xanh tương phản thú vị.\nChiếc BMW 840i Gran Coupe trong bài được trang bị động cơ tăng áp V6 3.0L sản sinh công suất 335 mã lực và mô-men xoắn 498 Nm, sức mạnh được gửi đến các bánh xe thông qua hộp số tự động 8 cấp và dẫn động cầu sau.\n', 'Convertible', 2022, '1', 24000, '2023-04-19 15:09:47', 1346, 4851, 1902, 1890, 1),
(101, 10, 'BMW M8 2022', 'BMW M8 Competition Coupe 2022 được đánh giá là một siêu phẩm mới được Thaco nhập khẩu và phân phối tại thị trường Việt Nam. Xe sẽ làm hài lòng niềm đam mê sưu tập xe sang của giới đại gia. Có thể nói đây là một trong những mẫu xe hơi đang được săn đón nhất trong thời gian gần đây. \nĐiểm sáng “highlight” của BMW M8 Competition Coupe 2022 nằm ở khối động cơ của xe. Mẫu xe này tuy có bề ngoài nhỏ bé, nhưng có “trái tim” là khối động cơ TwinPower Turbo V8 4.4L, có thể đạt được công suất tối đa 625 mã lực tại 6000 vòng/phút, mô-men xoắn cực đại 750Nm tại 1800-5800 vòng/phút.\n', 'Couple', 2022, '1', 20000, '2023-04-19 15:12:51', 1362, 4867, 1907, 1885, 1),
(102, 10, 'BMW X5 M 2021', 'Đến với phiên bản BMW X5 M-Sport 2021, người dùng vẫn được hãng xe Đức cung cấp hệ thống chiếu sáng với công nghệ Laserlight cho tầm chiếu xa hơn 500 m. Hơn nữa, đèn pha xe còn tích sẵn nhiều tính năng như bật/tắt tự động và tự động điều chỉnh góc đánh lái khi vào cua thông qua camera giám sát phía trước.\n\"Linh hồn\" của xe BMW X5 M-Sport 2021 là khối động cơ xăng TwinPower Turbo, I6, dung tích 3.0L cho công suất tối đa 340 mã lực tại 5.500 – 6.500 vòng/phút và mô-men xoắn cực đại 450 Nm tại 1.500 – 5.200 vòng/phút. Động cơ trên được ghép nối với hộp số tự động 8 cấp Steptronic và hệ dẫn động 4 bánh toàn thời gian AWD.', 'SUV', 2021, '1', 17500, '2023-04-19 15:16:53', 1745, 4922, 2004, 2070, 1),
(103, 10, 'BMW M4 2022', 'BMW M4 2022 hiện nay thuộc thế hệ thứ 2 vốn được giới thiệu từ tháng 09/2020. Cho đến gần đây, bộ đôi M3 và M4 Competition mới có động thái rục rịch chờ ngày về Việt Nam. Theo đó, các đại lý đã bắt đầu nhận cọc, hỗ trợ khách chọn màu theo sở thích cá nhân và gửi booking đến hãng Đức, dự kiến thời gian bàn giao xe rơi vào quý I năm 2022. Thời gian này có thể kéo dài khá lâu do nguồn cung linh kiện sản xuất chưa ổn định.\nVà chiếc xe này sẽ không làm các đại gia thất vọng. Dưới nắp capo BMW M4 Competition 2022 là khối động cơ 3.0L 6 xy-lanh tăng áp kép mới, sản sinh công suất 503 mã lực và mô-men xoắn 650 Nm. \n\nThứ “cơ bắp” đó kết hợp với hộp số tự động 8 cấp, cho phép xe tăng tốc từ 0-100 km/h trong 3,8 giây, trước khi đạt tốc độ tối đa 290 km/h. Xe có hai tùy chọn dẫn động: cầu sau hoặc bốn bánh (xDrive).', 'Convertible', 2022, '1', 22000, '2023-04-19 15:20:13', 1395, 4794, 1887, 1625, 1),
(104, 4, 'Honda Civic 2016', 'Civic là mẫu xe giới thiệu đầu tiên được thương hiệu xe Nhật Bản giới thiệu đến người tiêu dùng khi gia nhập thị trường ô tô Việt Nam vào tháng 8/2006. Trải qua 9 thế hệ cùng nhiều lần nâng cấp và một thời gian dài chinh phục khách hàng, Honda Civic đã có một vị thế vững chắc trong lòng người tiêu dùng nhờ kiểu dáng trẻ trung, khả năng vận hành ổn định, tiết kiệm nhiên liệu và các trang bị tiện nghi tốt. \n\nPhiên bản Civic 2016 được Honda Việt Nam nâng cấp kiểu dáng thể thao, phong cách với bộ bodykit Modulo nhằm giúp tăng tính cạnh tranh với các đối thủ trong phân khúc xe sedan hạng C như Toyota Altis, Kia K3, Mazda 3.', 'Sedan', 2016, '1', 8600, '2023-04-19 15:26:26', 1475, 4300, 1770, 1331, 1),
(105, 4, 'Honda HR-V 2017', 'Honda HR-V 2017 có kích thước tổng thể dài x rộng x cao tương ứng là 4.295mm x 1.773mm x 1.605mm với chiều dài cơ sở 2.611mm. Xe được trang bị mâm hợp kim 17 inch, lốp 215/55, đèn pha, đèn hậu và đèn chạy ban ngày công nghệ LED… Bản E sẽ có thêm đèn pha LED với dải đèn chiếu sáng ban ngày, lẫy chuyển số trên vô-lăng, kiểm soát hành trình, màn hình cảm ứng 7 inch, tích hợp smartphone, 2 cổng USD, cổng HDMI và hệ thống 6 loa.\nHonda HR-V vận hành trên platform của những mẫu xe thuộc phân khúc B như City và Jazz, nhưng chiều dài cơ sở tăng lên mức 2.610mm, dài hơn 10mm so với City sedan và 80mm so với Jazz hatchback. Tất cả các phiên bản sử dụng la-zăng tiêu chuẩn làm từ hợp kim kích thước 17 inch với lốp 215/55. ', 'SUV', 2017, '1', 7300, '2023-04-19 15:29:20', 1605, 4294, 1772, 1328, 1),
(106, 4, 'Honda Jazz 2018', 'Honda Jazz là mẫu xe mới nhất được nhà sản xuất ô tô Nhật Bản dành cho thị trường Việt Nam. Gia nhập phân khúc hatchback hạng B, vốn không có nhiều đối thủ nổi trội, Honda Jazz 2018 được kỳ vọng sẽ bứt phá và vượt mặt đối thủ Toyota Yaris.\nHonda Jazz 2018 sử dụng cấu hình động cơ tương tự Honda City được lắp ráp trong nước. Động cơ xăng 1.5L SOHC i-VTEC 4 xy lanh thẳng hàng 16 van cho công suất tối đa 118 mã lực tại 6000 vòng/phút và mô-men xoắn cực đại 145Nm tại 4600 vòng/phút. Đi kèm hộp số vô cấp CVT Earth Dream Technology có thêm chế độ thể thao.', 'Hatchback', 2018, '1', 6500, '2023-04-19 15:31:43', 1524, 3996, 1694, 1095, 1),
(107, 20, 'Ferrari California 2014', 'Có ba điểm tôi không thích về phần thiết kế trên phiên bản California đầu tiên: mặt ca lăng hình “mặt cười” giống như xe Mazda, phần cốp xe quá cao và hệ thống xả đặt dọc – thứ càng khiến chiếc xe trông cao hơn. Với phiên bản California T, các kỹ sư Ferrari đã khéo léo áp dụng một số chi tiết điểm nhấn trên chiếc F12 Berlinetta vào California T để tạo nên một ngoại hình dữ dằn và thể thao hơn cho mẫu Grand Tourer giá “rẻ” nhất của mình.\nĐộng cơ V8 mới có dung tích thực tế 3855 cc, sở hữu hệ thống tăng áp kép và cho công suất tối đa 560 mã lực tại 7.500 vòng/phút, lực mô-men xoắn cực đại 755 Nm tại 4.750 vòng/phút. Những thông số này hoàn toàn vượt trội so với động cơ V8 nạp khí tự nhiên của California đời đầu. Đào sâu hơn một chút nữa, ta sẽ thấy những thông tin khá thú vị. Nhiều tin đồn cho rằng Ferrari California ban đầu sẽ được phát triển như là một dòng xe của Maserati, nhưng Fiat Chrysler Automobiles (đã từng là hãng mẹ của Ferrari) quyết định cộp mác Ngựa chồm lên mẫu Grand Tourer này để bán được giá hơn. Tất nhiên, Ferrari nhanh chóng phủ nhận tin đồn trên, dù thế hệ California T vẫn sử dụng chung lốc máy với Maserati Quattroporte GTS.', 'Convertible', 2014, '1', 21700, '2023-04-19 15:38:24', 1308, 4563, 1902, 1735, 1),
(108, 20, 'Ferrari F8 2020', 'Khéo léo và tràn đầy tham vọng là những mỹ từ hợp lý nhất để miêu tả Ferrari F8 Tributo 2020. Thật vậy, chiếc xe xứng đáng là ứng cử viên sáng giá cho vị trí ngôi vương của các mẫu siêu xe động cơ đặt giữa. F8 Tributo 2020 cung cấp hiệu suất cực ấn tượng đến từ khối động cơ V8 3.9L cùng cảm giác lái thể thao đầy phấn khích - tất cả được gói gọn trong một vỏ bọc quyến rũ.\nLà phiên bản Coupe của F8 Spider, Ferrari F8 Tributo 2020 thừa hưởng khối động cơ V8 công suất 710 mã lực từ 488 Pista nhưng đã được tinh chỉnh để trở nên nhẹ hơn 18 kg. Qua đó, F8 Tributo trở thành siêu xe được trang bị khối động cơ V8 mạnh mẽ nhất mà thương hiệu Ý từng chế tạo trong suốt chiều dài lịch sử của mình. Đối thủ của Ferrari F8 Tributo 2020 cũng không hề tầm thường với những cái tên như Aston Martin Vanquish, Lamborghini Huracan EVO hay McLaren 720S.', 'Couple', 2020, '1', 23800, '2023-04-19 15:40:05', 1206, 4611, 1979, 1435, 1),
(109, 20, 'Ferrari 812 Superfast 2020', 'Thiết kế của Ferrari 812 Superfast mang nhiều đường nét của \"đàn anh\" F12berlinetta và F12tdf. \"Siêu ngựa\" mang kiểu dáng grand-tourer cùng nắp capo kéo dài và khoang hành lý rộng rãi ở phía sau. 812 Superfast có nhiều chi tiết mang tính khí động học, đi kèm các đường cắt xẻ táo bạo ở toàn thân xe.\nFerrari 812 Superfast sử dụng hộp số 7 cấp ly hợp kép được gia công bởi Getrag. Xe có khả năng tăng tốc từ 0 lên 100 km/h chỉ trong khoảng 2,9 giây trước khi đạt vận tốc tối đa khoảng 340 km/h. Ngoài ra, xe còn được trang bị khá nhiều tính năng hỗ trợ lái như hệ thống chống trượt, hệ thống đánh lái bánh sau... Mức giá của Ferrari 812 Superfast tại thị trường Việt Nam vẫn chưa được tiết lộ.', 'Couple', 2020, '1', 24300, '2023-04-19 15:52:49', 1276, 4657, 1971, 1615, 1),
(110, 20, 'Ferrari Portofino M 2020', 'Chiếc siêu xe nổi bật với màu sơn đỏ Rosso Corsa đặc trưng của thương hiệu Italy. Được ra mắt từ năm 2020, Ferrari Portofino M là phiên bản nâng cấp giữa vòng đời, nhằm thay thế phiên bản Portofino cũ hơn, vốn đã ra mắt từ năm 2017.\nFerrari Portofino M được trang bị khối động cơ V8, dung tích 3.9L tăng áp kép, sản sinh công suất cực đại 619 mã lực và 780 Nm mô-men xoắn. Sức mạnh được truyền đến bánh sau thông qua hộp số bán tự động ly hợp kép 7 cấp, giúp xe tăng tốc 0-100 km/h trong 3,5 giây, tốc độ tối đa đạt 320 km/h.', 'Convertible', 2020, '1', 22800, '2023-04-19 16:02:47', 1318, 4586, 1938, 1545, 1),
(111, 10, 'BMW X2 2022', 'BMW X2 là một bản cải tiến nhỏ của dòng BMW X1, xe sở hữu khối động cơ mạnh mẽ I4 tăng áp TwinPower Turbo 2.0L, thiết kế xe có phần cứng cáp và đi theo hướng thể thao. BMW X2 là một dòng xe hướng tới nhu cầu đi đô thị phổ thông của hãng xe Đức danh tiếng.\nThiết kế ngoại thất của BMW mang hướng mạnh mẽ, nổi bật nhất là thiết kế phần đầu xe với những đường gân guốc khá mạnh mẽ. Là dòng SUV gầm cao với khoảng sáng 182mm sẽ rất hợp cho những nhu cầu đi lại trong đô thị, kích thước có phần nhỏ hơn một chút so với dòng BMW X1 đàn em.', 'SUV', 2022, '1', 22000, '2023-04-19 16:05:03', 1526, 4360, 1824, 1429, 1),
(112, 10, 'BMW I8 2016', 'BMW i8 lần đầu tiên được giới thiệu tại Triển lãm ô tô quốc tế 2009 dưới dạng mẫu Concept Vision E. Năm 2011, 2012, BMW tiếp tục lần lượt ra mắt các mẫu BMW i8 Concept. Năm 2013, tại Triển lãm ô tô Frankfurt 2013, mẫu BMW i8 thương mại chính thức trình làng. Đây là một mẫu xe thuộc “Project i” được hãng xe ô tô Đức BMW “chào hàng” thị trường xe thế giới như một thương hiệu mới mang tên “BMW i”, được phân phối riêng hoàn toàn từ BMW.\nCó thể nói BMW i8 là một trong các mẫu siêu xe sở hữu thiết kế ấn tượng mang đến nhiều cảm xúc nhất trong làng siêu xe thế giới. Thiết kế này cũng gây một vài tranh cãi. Người thì cho là “quá tuyệt”, người thì bình phẩm “nhìn hơi kỳ”. Tuy nhiên, đánh giá chung từ giới thạo xe thế giới thì đây vẫn là một thiết kế rất”cảm xúc”.\n\nBMW i8 sở hữu nét đặc trưng của hãng xe oto BMW ở chi tiết lưới tản nhiệt kép hình quả thận được viền chrome sáng bóng. Phần tản nhiệt này được thiết kế bóp gọn, kéo dài nằm trong một dải kết nối liền mạch với cụm đèn trước vô cùng thu hút. Cụm đèn pha được “đẽo gọt” sắc sảo đi cùng đồ hoạ bên trong cực kỳ thu hút.', 'Couple', 2016, '1', 13700, '2023-04-19 16:09:32', 1291, 4689, 1942, 1485, 1),
(113, 10, 'BMW Ix M Sport 2021', 'BMW gây tranh cãi khi tiếp tục cho lưới tản nhiệt hình “quả thận” mang tính biểu tượng của hãng. Nhưng nó thực sự phục vụ một mục đích ở đây lớn hơn là chỉ “làm mát”. Bên dưới schnozz kéo dài đó là một hệ thống radar toàn dải mới. Có khả năng chiếu ở khoảng cách lên đến 985 feet. Lớp phủ “Bề mặt thông minh” trên lưới tản nhiệt bảo vệ những phần quan trọng của công nghệ. Bằng năm lớp vật liệu có độ bền cao, bao gồm lớp phủ polyetylen ngăn ngừa trầy xước. Và thậm chí cung cấp đặc tính tự phục hồi. Để iX 2021 của bạn ngoài nắng đủ lâu và nhiệt sẽ tạo ra các vết nứt nhỏ và xoáy.\n\nLà mẫu xe điện BMW iX 2021 mang lại cảm giác đặc biệt ngay từ khi bạn bước lên nó. Chiếc SUV tương lai rực rỡ với màn trình diễn thể hiện lấp lánh bên trong đồ đạc. Đèn vũng nước dưới chân bạn tạo hiệu ứng thảm đỏ. Và ánh sáng xung quanh tràn ngập khắp cabin. Tất cả đều được kích hoạt bởi điện thoại trong túi của bạn. Nhân tiện, nó cũng hoạt động như chìa khóa của phương tiện. Với những yếu tố đó chứng tỏ giá xe BMW iX 2021 cũng không hề dễ chịu.\n\n', 'SUV', 2021, '1', 19800, '2023-04-19 16:13:57', 1695, 4953, 1967, 2365, 1),
(114, 10, 'BMW Ix M Sport 2021', 'BMW gây tranh cãi khi tiếp tục cho lưới tản nhiệt hình “quả thận” mang tính biểu tượng của hãng. Nhưng nó thực sự phục vụ một mục đích ở đây lớn hơn là chỉ “làm mát”. Bên dưới schnozz kéo dài đó là một hệ thống radar toàn dải mới. Có khả năng chiếu ở khoảng cách lên đến 985 feet. Lớp phủ “Bề mặt thông minh” trên lưới tản nhiệt bảo vệ những phần quan trọng của công nghệ. Bằng năm lớp vật liệu có độ bền cao, bao gồm lớp phủ polyetylen ngăn ngừa trầy xước. Và thậm chí cung cấp đặc tính tự phục hồi. Để iX 2021 của bạn ngoài nắng đủ lâu và nhiệt sẽ tạo ra các vết nứt nhỏ và xoáy.\n\nLà mẫu xe điện BMW iX 2021 mang lại cảm giác đặc biệt ngay từ khi bạn bước lên nó. Chiếc SUV tương lai rực rỡ với màn trình diễn thể hiện lấp lánh bên trong đồ đạc. Đèn vũng nước dưới chân bạn tạo hiệu ứng thảm đỏ. Và ánh sáng xung quanh tràn ngập khắp cabin. Tất cả đều được kích hoạt bởi điện thoại trong túi của bạn. Nhân tiện, nó cũng hoạt động như chìa khóa của phương tiện. Với những yếu tố đó chứng tỏ giá xe BMW iX 2021 cũng không hề dễ chịu.\n\n', 'SUV', 2021, '1', 18600, '2023-04-19 16:15:59', 1695, 4953, 1967, 2365, 1),
(115, 10, 'BMW I4 2022', 'BMW i4 M50 ra mắt sở hữu màu sơn ngoại thất xanh Frozen Portimao Blue nổi bật kết hợp cùng các chi tiết sử dụng vật liệu sợi carbon. Đặc biệt đi kèm là gói trang bị ngoại thất M Sport giúp i4 M50 trông thể thao, năng động hơn hẳn bản tiêu chuẩn.\nĐược gắn logo M danh giá, BMW i4 M50 hứa hẹn sẽ mang lại trải nghiệm đầy phấn khích. Xe sử dụng 2 mô tơ điện song song trên 2 trục sản sinh tổng công suất 536 mã lực và 795 Nm mô men xoắn được điều khiển bởi hộp số đơn cấp. \n\nTuy nhiên, thông số trên chỉ duy trì được khoảng 10 giây thông qua chức năng Sport Boost. Ở chế độ lái thường, sức mạnh của BMW i4 M50 đạt công suất 469 mã lực và 729 Nm mô men xoắn.', 'Sedan', 2022, '2', 22000, '2023-04-19 16:17:52', 1448, 4783, 1852, 2050, 1),
(116, 19, 'Nissan Leaf 2022', 'Thiết kế của Nissan Leaf được lấy cảm hứng từ ngôn ngữ thiết kế chung IDS của hãng, xe có chiều dài 4.780 mm, rộng 1.790 mm và cao 1.540 mm, chiều dài cơ sở 2.700 mm và khoảng sáng gầm xe lên tới 150 mm. Những thông số này mang lại cho chiếc Leaf ngoại hình nhỏ nhắn, linh hoạt phù hợp với các đô thị đông đúc.\nrái tim của Nissan Leaf 2018 là một nguồn pin Lithium-ion dung lượng 40 kW, sản sinh công suất tối đa 148 mã lực và mô men xoắn 320 Nm cho phép xe chạy ở tốc độ tối đa 145 km/h với phạm vi 378 km cho một lần sạc. Đây chính là nỗ lực đáng kể của Nissan khi khả năng vận hành đã mạnh mẽ hơn rất nhiều so với người tiền nhiệm, bên cạnh đó phạm vi hoạt động cũng được mở rộng để cạnh tranh với các đối thủ.', 'Hatchback', 2022, '2', 6400, '2023-04-19 19:04:04', 1540, 4490, 1788, 1594, 1),
(117, 19, 'Nissan Ariya 2022', 'Nhìn từ xa, Nissan Ariya khá mượt mà, nhưng khi tới gần xe có thể thấy rõ các đường nét góc cạnh tô điểm bộ khung tổng thể. Dưới ánh nắng tự nhiên, chính những bề mặt, đường nét trên tạo thành hiệu ứng bóng đổ gây ấn tượng mạnh hơn nữa cho bộ khung ngoại thất. Giao diện mâm như ta thấy trong ảnh là loại độc quyền cho bản Platinum càng tăng thêm nét tinh xảo, hoa mỹ bên ngoài.\nTrên bản thường, Nissan Ariya chỉ dùng mô tơ đơn 214 mã lực và pin 66 kWh, cho tầm vận hành 348 km mỗi lần sạc. Tuy nhiên, bản Platinum trang bị mô tơ đôi đưa tổng công suất lên 335 mã lực, trong khi tầm vận hành cũng tăng lên 430 km.', 'SUV', 2022, '2', 10000, '2023-04-19 19:07:36', 1660, 4595, 1850, 2164, 1),
(118, 19, 'Nissan 370Z 2019', 'Nissan cung cấp cho mỗi biến thể của 370Z các thay đổi nhỏ khác nhau, cụ thể phong cách coupe được bổ sung hai cấu hình sơn mới cho phiên bản Heritage Edition (Deep Blue Pearl và Pearl White).\nVề truyền động, Nissan 370Z 2019 vẫn sẽ sử dụng động cơ VQ37VHR từ mẫu xe tiền nhiệm, sản sinh công suất 332 mã lực, riêng phiên bản Nismo đạt 350 mã lực, hai mức công suất này đều đến từ cỗ máy hút khí tự nhiên V6 3,7 lít.', 'Couple', 2019, '1', 15500, '2023-04-19 19:10:27', 1315, 4250, 1845, 1485, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`, `type`) VALUES
(20, 'Huy', '2023-05-23', '2023-05-23', 0),
(21, 'NORMAL', '2023-05-23', '2023-05-23', 1),
(22, 'ADMIN', '2023-05-23', '2023-05-23', 1),
(23, 'Test', '2023-05-23', '2023-05-23', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(20, 1),
(20, 2),
(20, 3),
(20, 5),
(20, 11),
(20, 15),
(20, 17),
(20, 18),
(20, 31),
(22, 1),
(22, 2),
(22, 3),
(22, 5),
(22, 11),
(22, 12),
(22, 13),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(22, 20),
(22, 26),
(22, 27),
(22, 28),
(22, 30),
(22, 31),
(22, 32),
(22, 33),
(22, 34),
(22, 35),
(23, 1),
(23, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `creataAt` date NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `statusLogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `userName`, `password`, `fullname`, `email`, `phone`, `address`, `role`, `creataAt`, `avatar`, `status`, `statusLogin`) VALUES
(1, 'ngochuyk8', 'BvTTCCaAcI9VOYocNILsVWoRI1QDoQDXtyqRGVw/PcICSm/ZhDQy7nBhCXGcziBreBX9B8C4B9z/v6VkLgv44Q==', 'Nguyễn Ngọc Huy', 'ngohuyk80169@gmail.com', 348889822, 'Xã Châu Sơn - Huyện Đình Lập - Lạng Sơn', 22, '2023-04-24', 'Img/User/ngochuyk8.jpg', 1, 0),
(2, 'ngochuyk81', 'qTG23P8iCYksgpjyqrPa1LfmNOQRItX28sONLm1n5YaF5E8dPfhpxULYhMJN9WAfjEEJpOG/aB/7M+T2SR7YZQ==', 'Nguyễn Ngọc Huy', '20130282@st.hcmuaf.edu.vn', 348889823, 'Xã Vĩnh Sơn - Huyện Vĩnh Thạnh - Bình Định', 22, '2023-04-28', NULL, 1, 0),
(3, '100019539662646367576', NULL, NULL, NULL, NULL, NULL, 20, '2023-04-28', NULL, 1, 1),
(4, '104848778182430788240', NULL, 'Nguyễn Ngọc A', NULL, 341232321, 'Phường Tân Thịnh - Thành phố Hòa Bình - Hòa Bình', 3, '2023-04-28', 'Img/User/104848778182430788240.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendo`
--

CREATE TABLE `vendo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `srcImg` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vendo`
--

INSERT INTO `vendo` (`id`, `name`, `srcImg`, `status`) VALUES
(1, 'Toyota', '', 1),
(2, 'Toyota', '', 1),
(2, 'Mercedes', '', 1),
(3, 'Ford', '', 1),
(4, 'Honda', '', 1),
(5, 'Mazda', '', 1),
(6, 'Land Rover', '', 1),
(7, 'Maserati', '', 1),
(8, 'Chervrolet', '', 1),
(9, 'Tesla', '', 1),
(10, 'BMW', '', 1),
(11, 'Rolls-Royce', '', 1),
(12, 'Audi', '', 1),
(13, 'Porsche', '', 1),
(14, 'Aston Martin', '', 1),
(15, 'Lucid', '', 1),
(16, 'Buick', '', 1),
(17, 'Lincoln', '', 1),
(18, 'Bentley', '', 1),
(19, 'Nissan', '', 1),
(20, 'Ferrari', '', 1),
(21, 'Volkswagen', '', 1),
(22, 'Datsun', '', 1),
(23, 'Lamborghini', '', 1),
(24, 'Arabath', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_cartProduct` (`idProduct`) USING BTREE,
  ADD KEY `FK_cartUser` (`idUser`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_commnentProduct` (`idProduct`) USING BTREE,
  ADD KEY `comment_user` (`idUser`);

--
-- Chỉ mục cho bảng `contentcomment`
--
ALTER TABLE `contentcomment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_commentContentComment` (`idComment`) USING BTREE;

--
-- Chỉ mục cho bảng `imgproduct`
--
ALTER TABLE `imgproduct`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_productImgProduct` (`idProduct`) USING BTREE;

--
-- Chỉ mục cho bảng `importproduct`
--
ALTER TABLE `importproduct`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_importpProduct` (`idProduct`) USING BTREE,
  ADD KEY `FK_importpUser` (`idUser`) USING BTREE;

--
-- Chỉ mục cho bảng `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_logUser` (`idUser`) USING BTREE;

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_orderUser` (`idUser`) USING BTREE,
  ADD KEY `FK_orderTransport` (`idTransport`) USING BTREE;

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`idOrder`,`idProduct`) USING BTREE,
  ADD KEY `FK_orderdetailOrder` (`idOrder`) USING BTREE,
  ADD KEY `FK_orderdetailProduct` (`idProduct`) USING BTREE;

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pp21` (`id_order`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_productVendo` (`idVendo`) USING BTREE;

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `rp_p` (`permission_id`);

--
-- Chỉ mục cho bảng `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contentcomment`
--
ALTER TABLE `contentcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `imgproduct`
--
ALTER TABLE `imgproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT cho bảng `importproduct`
--
ALTER TABLE `importproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1684850916700;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_cartProduct` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_cartUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_commnentProduct` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `contentcomment`
--
ALTER TABLE `contentcomment`
  ADD CONSTRAINT `FK_commentContentComment` FOREIGN KEY (`idComment`) REFERENCES `comment` (`id`);

--
-- Các ràng buộc cho bảng `imgproduct`
--
ALTER TABLE `imgproduct`
  ADD CONSTRAINT `FK_imgproductProduct` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `importproduct`
--
ALTER TABLE `importproduct`
  ADD CONSTRAINT `pp` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `ll` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `pzuserp` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `pzp` FOREIGN KEY (`idOrder`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `pp21` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `rp_p` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  ADD CONSTRAINT `rp_r` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
