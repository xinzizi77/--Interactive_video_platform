-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2020-05-22 12:36:40
-- 服务器版本： 5.7.24
-- PHP 版本： 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `interactive_video`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(18) NOT NULL,
  `user_email` varchar(18) NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`) VALUES
(2, '欣紫紫', '123456', '767718235@qq.com', 1),
(8, 'admin', '123123', '123123@qq.com', 2);

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `video_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` smallint(6) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_head` varchar(255) NOT NULL,
  `video_type` varchar(128) NOT NULL,
  `video_answer_json` json NOT NULL,
  `video_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`video_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`video_id`, `user_id`, `video_name`, `video_head`, `video_type`, `video_answer_json`, `video_status`) VALUES
(7, 2, '摄影之构图方式互动视频', './upload/3a28247cff7f7d354e4e0b136b40f4f0.mp4', '大学', '{\"src\": \"./upload/3a28247cff7f7d354e4e0b136b40f4f0.mp4\", \"answerA\": {\"text\": \"是\", \"next_video\": {\"src\": \"./upload/0afc05f35b28608a000cb1ff0a5ef4a8.mp4\", \"question\": \"\"}}, \"answerB\": {\"text\": \"否\", \"next_video\": {\"src\": \"./upload/1a971e7fe3d1ec1cbbad101b85bc4834.mp4\", \"question\": \"\"}}, \"question\": \"是否直接解题\"}', 1),
(8, 2, '摄影之构图方式互动视频', './upload/3a28247cff7f7d354e4e0b136b40f4f0.mp4', '大学', '{\"src\": \"./upload/3a28247cff7f7d354e4e0b136b40f4f0.mp4\", \"answerA\": {\"text\": \"是\", \"next_video\": {\"src\": \"./upload/0afc05f35b28608a000cb1ff0a5ef4a8.mp4\", \"question\": \"\"}}, \"answerB\": {\"text\": \"否\", \"next_video\": {\"src\": \"./upload/1a971e7fe3d1ec1cbbad101b85bc4834.mp4\", \"question\": \"\"}}, \"question\": \"是否直接解题\"}', 2);

--
-- 限制导出的表
--

--
-- 限制表 `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
