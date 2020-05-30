-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2020-05-30 18:21:18
-- 服务器版本： 5.7.22-log
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interactive_video`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` smallint(6) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(18) NOT NULL,
  `user_email` varchar(18) NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`) VALUES
(2, '欣紫紫', '123456', '767718235@qq.com', 1),
(8, 'admin', '123123', '123123@qq.com', 2),
(9, '992403268', 'test9924', '992403268@qq.com', 1);

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `video_id` smallint(6) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_head` varchar(255) NOT NULL,
  `video_type` varchar(128) NOT NULL,
  `video_answer_json` json NOT NULL,
  `video_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`video_id`, `user_id`, `video_name`, `video_head`, `video_type`, `video_answer_json`, `video_status`) VALUES
(10, 2, '一道简单的俄罗斯竞赛题', './upload/e586c6ba3fe7f6245f6bfd9244503a9c.mp4', '初中', '{\"src\": \"./upload/e586c6ba3fe7f6245f6bfd9244503a9c.mp4\", \"answerA\": {\"text\": \"直接解题\", \"next_video\": {\"src\": \"./upload/7969824708699b2ddb1c6ed1784dc047.mp4\", \"question\": \"\"}}, \"answerB\": {\"text\": \"学习相交弦定理\", \"next_video\": {\"src\": \"./upload/3fbc9d73a74424b4b5d3e1a5bb915a96.mp4\", \"question\": \"\"}}, \"question\": \"是否要先学习相交弦定理？\"}', 0),
(11, 2, '一道简单的俄罗斯竞赛题', './upload/e586c6ba3fe7f6245f6bfd9244503a9c.mp4', '初中', '{\"src\": \"./upload/e586c6ba3fe7f6245f6bfd9244503a9c.mp4\", \"answerA\": {\"text\": \"直接解题\", \"next_video\": {\"src\": \"./upload/7969824708699b2ddb1c6ed1784dc047.mp4\", \"question\": \"\"}}, \"answerB\": {\"text\": \"学习相交弦定理\", \"next_video\": {\"src\": \"./upload/3fbc9d73a74424b4b5d3e1a5bb915a96.mp4\", \"question\": \"\"}}, \"question\": \"是否要先学习相交弦定理？\"}', 2),
(12, 2, '数码摄影常用构图方式', './upload/fbc66049ad24c242f270155dddc8487d.mp4', '大学', '{\"src\": \"./upload/fbc66049ad24c242f270155dddc8487d.mp4\", \"answerA\": {\"text\": \"对称式构图\", \"next_video\": {\"src\": \"./upload/5e0226f4e17727205e76bf15e28b793a.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"对角线构图\", \"next_video\": {\"src\": \"./upload/edd245304bd82da966252a1b56b75e8d.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"井字构图\", \"next_video\": {\"src\": \"./upload/fd54e6510caa918b0d7c86c55be11c26.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"三角形构图\", \"next_video\": {\"src\": \"./upload/a48eb757b02f615fb2ff074ad0f1fe8c.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"你想学习哪种构图技巧能？\"}', 2),
(13, 2, '数码摄影常用构图方式', './upload/fbc66049ad24c242f270155dddc8487d.mp4', '大学', '{\"src\": \"./upload/fbc66049ad24c242f270155dddc8487d.mp4\", \"answerA\": {\"text\": \"对称式构图\", \"next_video\": {\"src\": \"./upload/5e0226f4e17727205e76bf15e28b793a.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"对角线构图\", \"next_video\": {\"src\": \"./upload/edd245304bd82da966252a1b56b75e8d.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"井字构图\", \"next_video\": {\"src\": \"./upload/fd54e6510caa918b0d7c86c55be11c26.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"三角形构图\", \"next_video\": {\"src\": \"./upload/a48eb757b02f615fb2ff074ad0f1fe8c.mp4\", \"answerA\": {\"text\": \"构图总结\", \"next_video\": {\"src\": \"./upload/403aefd125edb9f67756c691f3b4a61e.mp4\", \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"你想学习哪种构图技巧能？\"}', 0),
(15, 8, 'test', './upload/27cc674b78fb352e0994df70025be548.mp4', '大学', '{\"src\": \"./upload/27cc674b78fb352e0994df70025be548.mp4\", \"answerA\": {\"text\": \"a\", \"next_video\": {\"src\": \"./upload/0067aa9c5a2251d129475ac180e3da99.mp4\", \"answerA\": {\"text\": \" \", \"next_video\": null}, \"question\": \" \"}}, \"answerB\": {\"text\": \"b\", \"next_video\": {\"src\": \"./upload/04f68ee63cb6a28521795eee48b04547.png\", \"answerA\": {\"text\": \" \", \"next_video\": null}, \"question\": \" \"}}, \"question\": \"选ab\"}', 0),
(16, 8, '火灾求生', './upload/3c43b0ff4cab4b109c84c1b155dcbc8f.mp4', '大学', '{\"src\": \"./upload/3c43b0ff4cab4b109c84c1b155dcbc8f.mp4\", \"answerA\": {\"text\": \"走\", \"next_video\": {\"src\": \"./upload/318542db07c17aaf1f848490112ecee4.mp4\", \"answerA\": {\"text\": \"清理\", \"next_video\": {\"src\": \"./upload/8011a889e82bf83df79381fe4643662e.mp4\", \"answerA\": {\"text\": \"几天后\", \"next_video\": {\"src\": \"./upload/5a9ce08113b1c050efa7ee243360ceef.mp4\", \"answerA\": {\"text\": \"不大\", \"next_video\": null}, \"answerB\": {\"text\": \"不大\", \"next_video\": {\"src\": \"./upload/87bb5867010720ac3aa06301bd1f1106.mp4\", \"answerA\": {\"text\": \"跑\", \"next_video\": {\"src\": \"./upload/20ad61649b7796dfe0f67fcdf8299ffb.mp4\", \"answerA\": {\"text\": \"拿\", \"next_video\": {\"src\": \"./upload/4b1d0f593a2506d6ab75662a58526b24.mp4\", \"question\": \"\"}}, \"answerB\": {\"text\": \"不拿\", \"next_video\": {\"src\": \"./upload/05f0241c0de7de7cb8af680a73c59e22.mp4\", \"answerA\": {\"text\": \"坐电梯\", \"next_video\": {\"src\": \"./upload/7ed3e5be6a7468d8f28f6a15cef9fc82.mp4\", \"answerA\": {\"text\": \"1\", \"next_video\": {}}, \"question\": \"1\"}}, \"answerB\": {\"text\": \"走安全通道\", \"next_video\": {\"src\": \"./upload/74f618265597d469a00198b43f0a0e4b.mp4\", \"answerA\": {\"text\": \"1\", \"next_video\": {}}, \"question\": \"1\"}}, \"question\": \"走那条路\"}}, \"question\": \"拿不拿\"}}, \"answerB\": {\"text\": \"不跑\", \"next_video\": {\"src\": \"./upload/18176b90a06fc4624a7db600258fc294.mp4\", \"answerA\": {\"text\": \"结局\", \"next_video\": null}, \"question\": \"结局\"}}, \"question\": \"跑不跑\"}}, \"question\": \"火势大不大\"}}, \"question\": \" \"}}, \"answerB\": {\"text\": \"无视\", \"next_video\": {\"src\": \"./upload/94ce76d215ccae1949a0e0ad83ae67d9.mp4\", \"answerA\": {\"text\": \"几天后\", \"next_video\": {\"src\": \"./upload/5a9ce08113b1c050efa7ee243360ceef.mp4\", \"question\": \"\"}}, \"question\": \" \"}}, \"question\": \"清理不清理\"}}, \"answerB\": {\"text\": \"不走\", \"next_video\": {\"src\": \"./upload/996009354a45191f37fed0389b7e114a.mp4\", \"question\": \"\"}}, \"question\": \"走不走\"}', 2),
(17, 8, '火灾逃生', './upload/ef5f9981c269544b3dd6b6d36e415d08.mp4', '大学', '{\"src\": \"./upload/ef5f9981c269544b3dd6b6d36e415d08.mp4\", \"answerA\": {\"text\": \"尽快熟悉路线\", \"next_video\": {\"src\": \"./upload/d91d53a6e38512b08fbd9a8630b5ec0d.mp4\", \"answerA\": {\"text\": \"把杂物搬走\", \"next_video\": {\"src\": \"./upload/936858b770da0fcc0ff7796c6307dd32.mp4\", \"answerA\": {\"text\": \"好\", \"next_video\": {\"src\": \"./upload/2b537bbdccb4b9222946c5b769bf97c7.mp4\", \"answerA\": {\"text\": \"下一步\", \"next_video\": {\"src\": \"./upload/1f387da7873e1a4a78a7b1a306883ba1.mp4\", \"answerA\": {\"text\": \"火势不大\", \"next_video\": {\"src\": \"./upload/bbd686e65eeacfbee5295ff403da0285.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/caffcc792d72228de9abdaadcafb3f4d.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/e76828251656bea1b9a6436bf39b18b8.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/643650d604ce01d9c902a1a03b064828.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/53888a26b21cae153b24d667dcc74ee8.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/574798b61194e51321427726999241cc.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"请选择内容\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/73cfa49823523bd74b76047df295195a.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/2fa013099cfafb025dac1bb0de5be4ec.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/d379565df0ccfc48c412102d03e5abb7.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/7958e2ec5a75ae501ef21395fc54f0c6.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/db1328bc6329082abb7e70228ce51165.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/73798dfbf7b8feb9765c5ce60e723f78.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/a634d7f96e79cce97f61898fc2b18c96.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/7d2c13c9852f95a50d8721cfde45f822.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/65b680f2547ee69307e3b91f5bddaf6e.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"E\", \"next_video\": {\"src\": \"./upload/f64702927e55ff3e539a91dfe302c88f.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/51476941efb101b1a361054bd79989c7.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/7013d5d2359bed23842a8961235b1f03.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/74d46fb6ffdbc67aa1af460f2c4656b2.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/45d9c6eee9895efe889427ee68d8c57d.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"请选择灭火器\"}}, \"answerB\": {\"text\": \"火势很大\", \"next_video\": {\"src\": \"./upload/cf71c947389559a415eb046b7f73c602.mp4\", \"answerA\": {\"text\": \"赶紧逃离\", \"next_video\": {\"src\": \"./upload/42855ea4862971c37b7e2964ce3d187b.mp4\", \"answerA\": {\"text\": \"不要了安全第一\", \"next_video\": {\"src\": \"./upload/3328710a46f7da75ab0b24cc9c17ace5.mp4\", \"answerA\": {\"text\": \"坐电梯\", \"next_video\": {\"src\": \"./upload/751d51fbae0fe4a6f078295ebc2cf86a.mp4\", \"answerA\": {\"text\": \"好\", \"next_video\": {\"src\": \"./upload/3671579c79547db992ead8c759974142.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"好的，我明白了\"}}, \"question\": \"查看解说\"}}, \"answerB\": {\"text\": \"走安全通道\", \"next_video\": {\"src\": \"./upload/f9eb5b0f974d1feb01f9f251b2dc8503.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/ff79feedbabbf0326071869675e1f989.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"你选择哪条路线\"}}, \"answerB\": {\"text\": \"回去拿\", \"next_video\": {\"src\": \"./upload/8f3bfdc8dcbe844210dbe7205053033d.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/b0336fa7b5a1dd08fd00f2de440450cf.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"对于这些财产？\"}}, \"answerB\": {\"text\": \"太大了，跑不出去了\", \"next_video\": {\"src\": \"./upload/10bf4a763863b0948e9652c63caeb9e4.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/3adf368634047bb410781e9aab51f68f.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"面对这熊熊大火\"}}, \"question\": \"请你设定这次火势的大小\"}}, \"question\": \"观察周围环境或者触碰感知门外温度\"}}, \"question\": \"你已经记住了安全路线\"}}, \"answerB\": {\"text\": \"小心的绕开\", \"next_video\": {\"src\": \"./upload/b57eb9b1e9f2bc991105809a4eff2054.mp4\", \"answerA\": {\"text\": \"我记住了\", \"next_video\": {\"src\": \"./upload/2b537bbdccb4b9222946c5b769bf97c7.mp4\", \"answerA\": {\"text\": \"查看火势情况\", \"next_video\": {\"src\": \"./upload/1f387da7873e1a4a78a7b1a306883ba1.mp4\", \"answerA\": {\"text\": \"火势很小\", \"next_video\": {\"src\": \"./upload/bbd686e65eeacfbee5295ff403da0285.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/caffcc792d72228de9abdaadcafb3f4d.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/e76828251656bea1b9a6436bf39b18b8.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/643650d604ce01d9c902a1a03b064828.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/53888a26b21cae153b24d667dcc74ee8.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/574798b61194e51321427726999241cc.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/73cfa49823523bd74b76047df295195a.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/2fa013099cfafb025dac1bb0de5be4ec.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/d379565df0ccfc48c412102d03e5abb7.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/7958e2ec5a75ae501ef21395fc54f0c6.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/db1328bc6329082abb7e70228ce51165.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/73798dfbf7b8feb9765c5ce60e723f78.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/a634d7f96e79cce97f61898fc2b18c96.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/7d2c13c9852f95a50d8721cfde45f822.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/65b680f2547ee69307e3b91f5bddaf6e.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"E\", \"next_video\": {\"src\": \"./upload/f64702927e55ff3e539a91dfe302c88f.mp4\", \"answerA\": {\"text\": \"A\", \"next_video\": {\"src\": \"./upload/51476941efb101b1a361054bd79989c7.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"B\", \"next_video\": {\"src\": \"./upload/7013d5d2359bed23842a8961235b1f03.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"C\", \"next_video\": {\"src\": \"./upload/74d46fb6ffdbc67aa1af460f2c4656b2.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"answerD\": {\"text\": \"D\", \"next_video\": {\"src\": \"./upload/45d9c6eee9895efe889427ee68d8c57d.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"火势很大\", \"next_video\": {\"src\": \"./upload/cf71c947389559a415eb046b7f73c602.mp4\", \"answerA\": {\"text\": \"赶紧逃离\", \"next_video\": {\"src\": \"./upload/10bf4a763863b0948e9652c63caeb9e4.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/3adf368634047bb410781e9aab51f68f.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"火太大了，跑不出去了\", \"next_video\": {\"src\": \"./upload/42855ea4862971c37b7e2964ce3d187b.mp4\", \"answerA\": {\"text\": \"回去拿\", \"next_video\": {\"src\": \"./upload/8f3bfdc8dcbe844210dbe7205053033d.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/b0336fa7b5a1dd08fd00f2de440450cf.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/89a60eb01e233f4b5fc671e00c63710b.mp4\", \"answerA\": {\"text\": \"完成\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"不要了，安全第一\", \"next_video\": {\"src\": \"./upload/3328710a46f7da75ab0b24cc9c17ace5.mp4\", \"answerA\": {\"text\": \"坐电梯\", \"next_video\": {\"src\": \"./upload/751d51fbae0fe4a6f078295ebc2cf86a.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/3671579c79547db992ead8c759974142.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"走安全通道\", \"next_video\": {\"src\": \"./upload/3b1cc5e09a425d54c8e66a2246791a76.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/b14d4fa08520c4f42215ff23dd83f6f6.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": null}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"你选择哪条路线\"}}, \"question\": \"对于这些财产？\"}}, \"question\": \"面对这熊熊大火\"}}, \"question\": \"请你设定火势大小\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"安全通道了被人堆满了杂物\"}}, \"answerB\": {\"text\": \"收拾好放一边\", \"next_video\": {\"src\": \"./upload/1ae9f1f79da885aa07b89d46c2659591.mp4\", \"answerA\": {\"text\": \"先这样\", \"next_video\": {\"src\": \"./upload/2b537bbdccb4b9222946c5b769bf97c7.mp4\", \"answerA\": {\"text\": \"看看火势怎么样\", \"next_video\": {\"src\": \"./upload/1f387da7873e1a4a78a7b1a306883ba1.mp4\", \"answerA\": {\"text\": \"做好准备，等待救援\", \"next_video\": {\"src\": \"./upload/10bf4a763863b0948e9652c63caeb9e4.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/3adf368634047bb410781e9aab51f68f.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerB\": {\"text\": \"赶紧躲到安全的地方，等待救援\", \"next_video\": {\"src\": \"./upload/12bf4b2e0e14a68e49f6255df6780b0f.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/66cd155084300cc45f091ece6f0bb8f1.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"answerC\": {\"text\": \"赶紧跑出火场\", \"next_video\": {\"src\": \"./upload/6dc3368b087e7c088e55d522cdb5d1d0.mp4\", \"answerA\": {\"text\": \"查看解说\", \"next_video\": {\"src\": \"./upload/104bf26018c7d9391624016655b9e00c.mp4\", \"answerA\": {\"text\": \"继续\", \"next_video\": {\"src\": \"./upload/8d9b123d0cfa8aa1f6a57122150ccbd0.mp4\", \"answerA\": {\"text\": \"完成！\", \"next_video\": {}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"外面的火烧的挺大的\"}}, \"question\": \"\"}}, \"question\": \"\"}}, \"question\": \"你获得了一张消防逃生路线图，接下来你该怎么做？\"}', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `video_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
