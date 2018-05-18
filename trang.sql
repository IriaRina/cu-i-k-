-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2018 lúc 12:20 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimedia`
--

CREATE TABLE `multimedia` (
  `id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `song` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimedia`
--

INSERT INTO `multimedia` (`id`, `parentid`, `song`, `singer`, `url`, `type`, `owner`) VALUES
('1B1WesPjxTk7aZcMPzxXJyJcUDL3PJr6s', '1B1WesPjxTk7aZcMPzxXJyJcUDL3PJr6s', 'Xin Vẫy Tay Chào', 'Đàm Vĩnh Hưng', 'https://drive.google.com/file/d/1B1WesPjxTk7aZcMPzxXJyJcUDL3PJr6s/view', 'music', 'administrator'),
('1fhbTwM3sxEP-h6qiurGkCtOD1LcJYwJ', '1fhbTwM3sxEP-h6qiurGkCtOD1LcJYwJ', 'Ai Khóc Nỗi Đau Này', 'Bảo Anh', 'https://drive.google.com/file/d/1fhbTwM3sxEP-h6qiurGkCtOD1LcJYwJt/view', 'music', 'administrator'),
('1MmFPC4ZdG1JZKWUYAWGzD-X6At6Z7Zze', '1MmFPC4ZdG1JZKWUYAWGzD-X6At6Z7Zze', 'Con Đường Xưa Em Đi', 'Đàm Vĩnh Hưng', 'https://drive.google.com/file/d/1MmFPC4ZdG1JZKWUYAWGzD-X6At6Z7Zze/view', 'music', 'administrator'),
('1vgqNdxi56HDp9Bl_Da8Ecg2I0fwv91tS', '1vgqNdxi56HDp9Bl_Da8Ecg2I0fwv91tS', 'Chạm Đáy Nỗi Đau ', 'ERIK', 'https://drive.google.com/file/d/1vgqNdxi56HDp9Bl_Da8Ecg2I0fwv91tS/view', 'music', 'administrator'),
('logo', 'logo', NULL, NULL, 'http://localhost/WebSiteDemo/picture/logo.png', 'picture', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multimediatype`
--

CREATE TABLE `multimediatype` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `multimediatype`
--

INSERT INTO `multimediatype` (`id`) VALUES
('music'),
('picture'),
('video');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`) VALUES
('admin'),
('user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `siteinfo`
--

CREATE TABLE `siteinfo` (
  `companyname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seokeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seodescription` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `copyright_ln2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `siteinfo`
--

INSERT INTO `siteinfo` (`companyname`, `slogan`, `seokeywords`, `seodescription`, `facebook`, `logo`, `copyright`, `copyright_ln2`) VALUES
('Audio Watermark Music trang', 'Ngo thi phuong trang| N14DCAT134 | PTITHCM', 'audio, watermark,Music,muaban', 'Audio Watermark Music MuaBan', 'https://www.facebook.com/IriaHiranuma', 'logo', '{companyname} © 2018', 'From Ho Chi Minh city with <span id=\"heart\">❤</span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `permission`) VALUES
('administrator', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `owner` (`owner`);

--
-- Chỉ mục cho bảng `multimediatype`
--
ALTER TABLE `multimediatype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`companyname`),
  ADD KEY `logo` (`logo`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission` (`permission`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`type`) REFERENCES `multimediatype` (`id`),
  ADD CONSTRAINT `multimedia_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD CONSTRAINT `siteinfo_ibfk_1` FOREIGN KEY (`logo`) REFERENCES `multimedia` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
