-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2014 at 10:04 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wpilife`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_link`
--

CREATE TABLE IF NOT EXISTS `active_link` (
  `link` varchar(32) NOT NULL,
  `expire_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_link`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_doc`
--

CREATE TABLE IF NOT EXISTS `api_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `api_doc`
--

INSERT INTO `api_doc` (`id`, `title`, `text`, `sort`, `deleted`) VALUES
(1, 'User Info', '<p>\r\n	Now, you can get user inforamtion by user_id, and the URL format is:\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:18px;color:#E53333;">http://wpilife.org/api/user/id/2<span style="color:#337FE5;">[/format/JSON|XML|HTML|CSV...]</span></span>\r\n</p>\r\n<p>\r\n	<span style="font-size:18px;"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	1. The number after id is the user_id in the database, you can change it to get the user information you need.\r\n</p>\r\n<p>\r\n	2. The "format" parameter is not necessary. If you do not define it, it returns JSON format data.&nbsp;\r\n</p>\r\n<p>\r\n	3. You can get this data without&nbsp;authorization.\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Code demo for PHP:\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class="prettyprint lang-php">&lt;?php\r\n	$json_data= file_get_contents(''http://wpilife.org/api/user/id/2'');\r\n	var_dump(json_decode($json_data));\r\n?&gt;</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 2, 0),
(2, 'Shop Info', '<p>\r\n	Now, you can also get shop inforamtion by id, and the URL format is:\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:18px;color:#E53333;">http://wpilife.org/api/shop/id/23<span style="color:#337FE5;">[/format/JSON|XML|HTML|CSV...]</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:18px;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	1. The number after id is the user_id in the database, you can change it to get the shop information you need.\r\n</p>\r\n<p>\r\n	2. The "format" parameter is not necessary. If you do not define it, it returns JSON format data.&nbsp;\r\n</p>\r\n<p>\r\n	3. You can get this data without&nbsp;authorization.\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Screenshot for the XML format data returned:\r\n</p>\r\n<p style="text-align:center;">\r\n	<img src="/kindeditor/attached/image/20140314/20140314165116_81805.jpg" alt="" />\r\n</p>', 4, 0),
(3, 'House Info', 'Under writing', 6, 0),
(4, 'CSSA News', 'Under writing', 8, 0),
(5, 'Introduction', '<p>\r\n	Cheers! I am trying to create APIs for Third-party develoepr, of course, you can use this information in your course project, if you like.\r\n</p>\r\n<p>\r\n	Currently, I will provide information of:\r\n</p>\r\n<ol>\r\n	<li>\r\n		<span style="line-height:1.5;">Basic User Info (just return name &amp; email)</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Sells Info</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Hourse Info</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">CSSA New Info</span> \r\n	</li>\r\n</ol>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	For developers''&nbsp;convenience, my APIs can return information in JSON, XML, CSV, ect formats(CSV does not always work).\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>WIKI:</strong> \r\n</p>\r\n<p>\r\n	1. How does API URL look like?\r\n</p>\r\n<p style="text-align:center;">\r\n	<img src="/kindeditor/attached/image/20140314/20140314163012_40963.png" alt="" /> \r\n</p>\r\n<p>\r\n	Please click to have a check(default foramt is JSON):<br/><a href="http://wpilife.org/api/user/id/2" target="_blank">http://wpilife.org/api/user/id/2</a> <br/></br/>\r\nDemo for data returned in XML format:<br/><a href="http://wpilife.org/api/user/id/2/format/xml" target="_blank">http://wpilife.org/api/user/id/2/format/xml</a>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bbs`
--

CREATE TABLE IF NOT EXISTS `bbs` (
  `bbs_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '1',
  `bbs_title` varchar(128) NOT NULL,
  `bbs_text` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `bbs_time` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bbs_id`),
  KEY `user_id` (`user_id`),
  KEY `isDelete` (`isDelete`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bbs`
--

INSERT INTO `bbs` (`bbs_id`, `type_id`, `bbs_title`, `bbs_text`, `user_id`, `bbs_time`, `isDelete`) VALUES
(3, 1, 'Online bbs test', '<p>This is for bbs test</p>\r\n---- By Hao Zhou', 2, '2014-03-13 22:43:40', 0),
(6, 1, '支持下项目进展', '<p>\n	支持一下周浩同学以及CSSA的成果。\n</p>\n<p>\n	刚好看到API的内容，觉得如果有时间，完全可以做一个Android版本的来用用，当然如果网站推广成功了，使用的可能性也会大不少。\n</p>\n<p>\n	对于选择了有编程课程项目的同学，这其实是一个不错得课程小项目，可以考虑做一个android的前台，逻辑很简单：发送Request，然后解析下Response里的数据格式，显示出来即可。有了后台强大的支持，前台的工作也会轻松一些。\n</p>\n<p>\n	有时间有能力的同学不妨试一试~\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Pan Ye\n</p>', 27, '2014-03-15 15:42:50', 0),
(8, 1, 'StudentUniverse $20 Promotion Code', '<p class="MsoNormal">\n	<span style="background-color:#FFFFFF;color:#99BB00;font-size:18px;"><strong>CSSA合作商StudentUniverse为WPI-CSSA提供的专属福利机票折扣码来啦！</strong></span> \n</p>\n<p class="MsoNormal">\n	<br />\n</p>\n<p class="MsoNormal">\n	<span style="font-size:14px;"><u>折扣码索要方式：</u>在该帖下方留言，<span style="color:#E53333;"><strong>注明你的邮箱</strong></span>，SU</span><span style="font-size:14px;">提供给我们的</span><span style="font-size:14px;">$20</span><span style="font-size:14px;">机票折扣码将会发送到你的邮箱中。折扣码仅限前</span><span style="font-size:14px;">100</span><span style="font-size:14px;">位使用者，先到先得，折扣码将会发送至前</span><span style="font-size:14px;">100</span><span style="font-size:14px;">位留言的登录用户邮箱中。</span> \n</p>\n<p class="MsoNormal">\n	<span style="font-size:14px;">&nbsp;</span> \n</p>\n<p class="MsoNormal">\n	<span style="font-size:14px;"><u>折扣码使用条款：</u>该枚折扣码能让您在<a href="http://www.studentuniverse.com" target="_blank">www.studentuniverse.com</a></span><span style="font-size:14px;">上购买的一张单程或往返机票上享受</span><span style="font-size:14px;">$20</span><span style="font-size:14px;">美金的优惠。</span><span style="font-size:14px;">限于始发于美国，达到亚洲的机票。优惠不适用于酒店，当地活动，火车票，保险，租车及已经购买了的机票。折扣码一人限用一次，并不能与其他折扣叠加使用。折扣码不能用于减免税费。折扣码仅供前100位使用者。折扣码有效期2014年5月20日，须在该日期前购买抵用，可用于购买任意时间航班。</span> \n</p>\n<p class="MsoNormal">\n	<span style="font-size:14px;"><br />\n</span> \n</p>\n<p class="MsoNormal">\n	<span style="font-size:18px;line-height:21px;color:#FF9900;background-color:#FFFFFF;font-family:Tahoma;"><em><strong>赶快行动吧！</strong></em></span> \n</p>', 346, '2014-04-22 16:42:41', 0),
(9, 1, 'Trying A new topic', 'Because some guy says there''s a problem with posting.', 1, '2014-04-24 12:59:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bbs_type`
--

CREATE TABLE IF NOT EXISTS `bbs_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `sort` int(5) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`sort`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bbs_type`
--

INSERT INTO `bbs_type` (`id`, `name`, `sort`) VALUES
(1, 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_types`
--

CREATE TABLE IF NOT EXISTS `blog_types` (
  `types_id` int(11) NOT NULL AUTO_INCREMENT,
  `types_name` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `types_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`types_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog_types`
--

INSERT INTO `blog_types` (`types_id`, `types_name`, `types_status`) VALUES
(1, 'Want to Sell', 1),
(2, 'Want to Buy', 1),
(3, 'Restaurant Recommendation', 1),
(4, 'Share Experience', 1);

-- --------------------------------------------------------

--
-- Table structure for table `changelog`
--

CREATE TABLE IF NOT EXISTS `changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0001-01-01',
  `text` varchar(140) NOT NULL DEFAULT '',
  `contributor` varchar(32) NOT NULL DEFAULT '',
  `reporter` varchar(32) NOT NULL DEFAULT '',
  `reporter_url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `changelog`
--

INSERT INTO `changelog` (`id`, `date`, `text`, `contributor`, `reporter`, `reporter_url`) VALUES
(1, '2014-02-09', 'Highlighter Shop tab in Main Menu', '', '黑色幽默', 'http://www.renren.com/432093877/profile'),
(2, '2014-02-09', 'Remove Limitation of wpi Email Registration Only', '', '', ''),
(3, '2014-03-13', 'Add BBS module', '', 'CSSA Maillist', ''),
(4, '2014-03-14', 'Add APIs for User & Shop', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--
-- --------------------------------------------------------

--
-- Table structure for table `contact_archive`
--

CREATE TABLE IF NOT EXISTS `contact_archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact_archive`
--

INSERT INTO `contact_archive` (`id`, `name`, `email`, `comment`, `date`, `status`) VALUES
(1, 'Hao', 'hzhou@wpi.edu', 'Your website is great!', '2013-08-05 17:53:10', 1);
-- --------------------------------------------------------

--
-- Table structure for table `cssa_activities`
--

CREATE TABLE IF NOT EXISTS `cssa_activities` (
  `activities_id` int(11) NOT NULL AUTO_INCREMENT,
  `activities_title` varchar(128) NOT NULL DEFAULT '',
  `activities_content` text NOT NULL,
  `activities_author` int(11) NOT NULL,
  `activities_year` int(4) NOT NULL DEFAULT '2013',
  `activities_month` varchar(32) NOT NULL DEFAULT 'August',
  `activities_day` int(2) NOT NULL DEFAULT '0',
  `activities_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `activities_view_times` int(11) NOT NULL DEFAULT '0',
  `activities_up_time` int(11) NOT NULL DEFAULT '0',
  `activities_down_time` int(11) NOT NULL DEFAULT '0',
  `activities_allow_comment` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(12) NOT NULL DEFAULT 'activity',
  PRIMARY KEY (`activities_id`),
  KEY `activities_view_time` (`activities_view_times`),
  KEY `activities_author` (`activities_author`),
  KEY `activities_year` (`activities_year`),
  KEY `activities_month` (`activities_month`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cssa_activities`
--

INSERT INTO `cssa_activities` (`activities_id`, `activities_title`, `activities_content`, `activities_author`, `activities_year`, `activities_month`, `activities_day`, `activities_date`, `activities_view_times`, `activities_up_time`, `activities_down_time`, `activities_allow_comment`, `type`) VALUES
(4, 'CSSA 第二届卡拉OK大赛（报名ING）', '<p>\n Karaoke Competition Coming Back !&nbsp;\n</p>\n<p>\n CSSA第二届卡拉ok大赛又要华丽丽的来啦~~&nbsp;\n</p>\n<p>\n <br />\n</p>\n<p>\n 各位乡亲父老，无论哪一种风格，无论哪一路嗓音，内敛羞涩or High歌麦霸, 只要爱好音乐爱好K歌，就快点加入吧！ 不要犹豫，\n</p>\n<p>\n 猛戳链接报名哦： <a href="https://docs.google.com/forms/d/12ofmkkAgrLfyQipC8SwhExWuPZSjmS6U-U8UP-yTg7k/viewform" target="_blank">https://docs.google.com/forms/d/12ofmkkAgrLfyQipC8SwhExWuPZSjmS6U-U8UP-yTg7k/viewform</a>\n</p>\n<p>\n （温馨提示：初赛露嗓不露脸，怯场童鞋们的福音哟）&nbsp;\n</p>\n<p>\n Deadline ：11月6日&nbsp;\n</p>\n<p>\n 具体报名细则如下：&nbsp;\n</p>\n<p>\n 初赛细则：&nbsp;\n</p>\n<p>\n 1.录制歌曲\n选手使用K歌软件如“唱吧”或“天籁K歌”录制自己的歌曲，生成网页链接，或者可以自己录制视频上传到youtube，优酷等视频分享网站，于11月6日之前把链接提交到报名信息内。&nbsp;\n</p>\n<p>\n 或者 将个人信息以及照片发送到CSSA指定邮箱: yxia@wpi.edu, 邮件标题格式为：the voice of WPI+姓名， 内容包括：选手姓名，专业，年纪，手机号，参赛歌曲，照片，之后由主办方将链接和选手信息公布在网页上&nbsp;\n</p>\n<p>\n 2.评分细则\n公众投票以及评委打分（更多细节稍后公布）&nbsp;\n</p>\n<p>\n 3.友情提示&nbsp;\n</p>\n<p>\n 1）. 选手可发动小伙伴们踊跃参与评分&nbsp;\n</p>\n<p>\n 2）. 鉴于K歌软件可能缺少选手期望参赛歌曲的配音，选手可自由选择录制歌曲的形势，比如录制视频等\n有具体问题请联系CSSA文艺 yxia@wpi.edu, thanks for your participation!\n</p>\n<p>\n <br />\n</p>', 1, 2013, 'November', 4, '2013-11-04 18:02:30', 0, 0, 0, 1, 'activity');

-- --------------------------------------------------------

--
-- Table structure for table `cssa_blogs`
--

CREATE TABLE IF NOT EXISTS `cssa_blogs` (
  `blogs_id` int(11) NOT NULL AUTO_INCREMENT,
  `blogs_title` varchar(128) NOT NULL DEFAULT '',
  `blogs_content` text NOT NULL,
  `blogs_author` int(11) NOT NULL,
  `blogs_year` int(4) NOT NULL DEFAULT '2013',
  `blogs_month` varchar(32) NOT NULL DEFAULT 'August',
  `blogs_day` int(2) NOT NULL DEFAULT '0',
  `blogs_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `blogs_view_times` int(11) NOT NULL DEFAULT '0',
  `blogs_up_time` int(11) NOT NULL DEFAULT '0',
  `blogs_down_time` int(11) NOT NULL DEFAULT '0',
  `blogs_allow_comment` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(12) NOT NULL DEFAULT 'blog',
  PRIMARY KEY (`blogs_id`),
  KEY `blogs_view_time` (`blogs_view_times`),
  KEY `blogs_author` (`blogs_author`),
  KEY `blogs_year` (`blogs_year`),
  KEY `blog_month` (`blogs_month`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cssa_blogs`
--

INSERT INTO `cssa_blogs` (`blogs_id`, `blogs_title`, `blogs_content`, `blogs_author`, `blogs_year`, `blogs_month`, `blogs_day`, `blogs_date`, `blogs_view_times`, `blogs_up_time`, `blogs_down_time`, `blogs_allow_comment`, `type`) VALUES
(1, '2013 MIT-CSSA中秋Heat on Water游船舞会', '<p>\n 想体验热力四射的水上舞会？曾憧憬在游轮上意外的邂逅？盼望与数百人热闹喧哗共同赏明月，庆中秋？那么请随我们登上Provincetown II号——2013 MIT-CSSA中秋游船派对欢迎你！中秋游船是MIT-CSSA的传统活动，已经有近的历史，今年我们诚挚的邀请你加入年度波士顿华人社区最为激动人心的巨型Heat on  water游船舞会！在这里，你将在超大型三层华丽游船上结交大波士顿地区各路同胞，共享受良辰美景，庆祝中秋之夜，并在露天平台之上欣赏波士顿港湾的夕阳月色。甲板上由靓丽劲爆舞团和专业DJ引领激情澎湃夜晚！当然，月光音乐海景一定缺不了美酒了。我们还会提供酒精饮品，供你尽兴！&nbsp;\n</p>\n<p>\n 俊男美女，泛舟明月；劲爆舞会，点燃中秋。如果你心动了，还不赶快加入我们，船票有限！&nbsp;\n</p>\n<p>\n 时间: 2013年9月15日 (星期日) ，晚6:30-10:00 (6:30登船，7:00起航)&nbsp;\n</p>\n<p>\n 登船地点: 200 Seaport Blvd. Suite 50, Boston, MA 02210, Pronvincetown II号邮轮&nbsp;\n</p>\n<p>\n 交通：MBTA乘坐silver line到World Trade Center 下车，步行可到游船码头。&nbsp;\n</p>\n<p>\n 售票信息：&nbsp;\n</p>\n<p>\n 第一季(08/17-09/04，限购450张)  MIT: $22  Guests: $28&nbsp;\n</p>\n<p>\n 第二季(09/05-09/14)  MIT: $32  Guests: $38&nbsp;\n</p>\n<p>\n 当日现场购票：$50 （只收现金）&nbsp;\n</p>\n<p>\n 支持团队购票(上限5人)！&nbsp;\n</p>\n<p>\n 购票方式: 请猛击这里！\n</p>\n<p>\n &nbsp;注：门票包含限量晚餐，不包含酒类。请携带现金用于购买船上酒类及额外餐点。本次游船活动仅对21周岁以上同胞开放，请持政府发放的有效证件登船。&nbsp;\n</p>\n<p>\n 详情请浏览 http://cssa.mit.edu/ 或邮件咨询cssa-cruise-exec@mit.edu&nbsp;\n</p>\n<p>\n 主办方：MIT-CSSA，浮云相声社&nbsp;\n</p>\n<p>\n 赞助方：感谢 CORT 和牛牛收书的大力支持与赞助!\nCORT (家具租借公司) fills your space with great looking furniture from bed for bedroom to cookware for kitchen and help you get acclimated to the area quickly so you focus on your studies.&nbsp;\n</p>\n<p>\n 牛牛收书：现金收书,，预约上门！闲置的书籍要处理吗? 回收价格根据书本质量和需求程度有不同，有的高达70%。\n</p>\n<p>\n 微信公共主页ID：newnewshoushu 邮箱：book@newnewinc.com.&nbsp;\n</p>\n<p>\n 麻省理工学院中国学生学者联合会 (MIT-CSSA)&nbsp;\n</p>\n<p>\n 2013年8月17日\n</p>', 1, 2013, 'August', 24, '2013-08-25 15:22:20', 0, 0, 0, 1, 'blog'),
(2, 'WPI CSSA Maillist 文明使用章程 （最终版）', '<p>\n 首先，介绍一下Maillist 的作用，在WPI，它是快速快速，使用方便，有效的通讯工具。能够即使与WPI社区内所有学生、老师、团体、组织进行沟通，保持联系的有效平台。常用邮件群包括本科生、研究生、教职工等邮件列表群，这些邮件群是为讨论或通知、官方公布校内新闻、活动消息、课程通知等而设立的。访问这些邮件群是一种特权，伍斯特理工很乐意将这种特权提供给其成员。但任何特权，它带有责任。&nbsp;\n</p>\n<p>\n WPI CSSA Mail list 是WPI邮件列表群的其中一员，因此我们严格遵守学校邮件群的使用守则（详细请见：https://www.wpi.edu/Academics/CCC/Help/Email/etiquette.html，请使用自己WPI 账户的账号和密码登陆）。此外，CSSA 作为学校最大的中国学生学者组织，一直致力于促进为在伍斯特理工学生学者提供生活学习的便利，促进知识和文化交流活动，为留学生之间的信息交换提供平台，并在校园和美国维护其成员的权利，机会和利益。&nbsp;\n</p>\n<p>\n 随着新来的中国留学生与日俱增，邮件群的管理任务也越来越繁重，我们每天都有专人负责邮件的管理，但是对于邮件群内容我们无权进行手动滤过，这是我们无法触及的管理范围。我们因此也正在建立WPI CSSA BBS论坛，专门用于商品交易买卖、租房、学术工作交流、CSSA公共讨论等。CSSA Maillist将专门用于各类学术、文艺、社交等活动的信息发布，以及各位同学学者提供交流、娱乐、学习、成长，和求职的机会。我们相信这样能更好的服务于WPI的华人社区，也能对CSSA MAILLIST进行更好的质量管理。\n在此，请大家严格遵循WPI  CSSA 文明使用章程，我们呼吁每一位邮件订阅者能自觉做到一下守则，为干净的网络环境共同努力。我们将采取更加严格的邮件审查制度，同时对某些邮箱进行屏蔽和清理。&nbsp;\n</p>\n<p>\n 使用须知：&nbsp;\n</p>\n<p>\n 1、  加入或退出邮件群，或要变更邮件群地址，请发邮件至：<a href="mailto:zhuang@wpi.edu" target="_blank">zhuang@wpi.edu&nbsp;</a>\n</p>\n<p>\n 2、  请不要发送大量重复邮件。如果对学习、生活上出现的问题要寻求帮助，可以先qq群里询问（2012 WPICSSA qq群号：218715001，2013 WPICSSA qq群号：234016698），如实在需紧急帮助，再选择在mail list上发布。&nbsp;\n</p>\n<p>\n 3、  不得发布商业广告或带以个人名利目的的言论；&nbsp;\n</p>\n<p>\n 4、  不得发布损害CSSA声誉及成员个人声誉的言论；&nbsp;\n</p>\n<p>\n 5、  不得在群内吵架、对骂，不得发布嘲笑、讽刺、抵毁他人以及有可能引起他人不安、影响团结的言论；严禁随意攻击他人扰乱群内秩序。\n</p>\n<p>\n 6、  邮件名称与言论不得涉及政治、宗教、商业以及地域敏感性、或其他引起争议性的各方面问题;&nbsp;\n</p>\n<p>\n 7、  请不要发任何涉及暴力，色情，种族歧视等不良内容的邮件，发现一次我们将会直接屏蔽邮箱。&nbsp;\n</p>\n<p>\n 8、 如果违反以上规则成员，CSSA有权清除出群。\n</p>\n<p>\n &nbsp;CSSA保留对Maillist的管理权和解释权。\n</p>\n<p>\n &nbsp;如有带来的不便，尽请谅解，按章程办事才能建立一个纯净、和谐的交流平台。因此恳请大家遵守Maillist文明使用章程。希望这个平台继续为各位学生学者提供服务和便利！多谢大家配合：）&nbsp;\n</p>\n<p>\n WPI-CSSA\n</p>', 1, 2013, 'August', 24, '2013-08-25 13:30:21', 0, 0, 0, 1, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `cssa_manager_list`
--

CREATE TABLE IF NOT EXISTS `cssa_manager_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL DEFAULT '2013',
  `user_id` int(11) NOT NULL,
  `user_title` varchar(64) NOT NULL DEFAULT 'no title',
  PRIMARY KEY (`id`),
  KEY `year` (`year`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `cssa_manager_list`
--

INSERT INTO `cssa_manager_list` (`id`, `year`, `user_id`, `user_title`) VALUES
(4, 2013, 1, 'Administrator'),
(3, 2013, 2, 'Header of IT technology team 2013'),
(10, 2013, 106, 'Editor 2013'),
(11, 2013, 273, 'Header of IT team 2014'),
(12, 2013, 298, 'President 2014'),
(14, 2013, 84, 'Editor 2014'),
(15, 2013, 346, 'My Leader'),
(66, 2014, 365, 'Test Account'),
(67, 2014, 101, '生活部长'),
(68, 2014, 282, 'Ke Liang');

-- --------------------------------------------------------

--
-- Table structure for table `cssa_officers_info`
--

CREATE TABLE IF NOT EXISTS `cssa_officers_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `photo` varchar(128) NOT NULL DEFAULT '',
  `major` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `des` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `cssa_officers_info`
--

INSERT INTO `cssa_officers_info` (`id`, `name`, `photo`, `major`, `email`, `des`, `sort_order`) VALUES
(1, '郑阳', 'zhenyang.png', 'ECE', 'yzheng2@wpi.edu', '主席团作为连接各部门的桥梁，负责主持、协调CSSA全面工作，以及规划和机构编制。\r\n <br/>', 0),
(4, '林赟', 'linyun.png', 'MKT', 'ylin@wpi.edu', '<br />', 1),
(5, '温常淘 ', 'wenchangtao.png', '', 'cwen@wpi.edu', '', 0),
(6, '杨理涵', 'yanglihan.png', '', 'lyang4@wpi.edu', '', 0),
(7, '蔡薇', 'caiwei.png', '', 'wcai@wpi.edu', '宣传部除了负责在各媒体对CSSA活动进行宣传以外，还包揽制作海报、门票、PPT等前期工作以及《学生手册》的维护，大家对新生手册上的信息有什么好的意见都可以向我们提出。', 0),
(2, '柯亮', 'keliang.png', 'ECE', 'lke@wpi.edu', '秘书处是这届CSSA新增的部门，以协助主席团处理学生会日常事务为工作中心，协调各部门的关系，促进学生会各项工作的顺利开展。', 0),
(3, '苟鹏宇', 'goupengyu.png', 'ECE', 'pgou@wpi.edu', '文体部作为和同学们平时生活中接触最多的部门，其主要职能是负责组织和策划WPI两大晚会（中秋晚会、春节晚会）以及各种文体比赛（台球大赛、卡拉OK、电竞比赛等），总之大家喜欢什么活动我们就办什么活动！', 0),
(8, '陈丝雨', 'miomio.png', 'IT', 'schen@wpi.edu', '外联部作为CSSA承办活动的主要经济来源之一，负责与外界公司或组织合作以提供活动赞助，同时也包括和校内其他社团组织或其他学校CSSA的合作。', 0),
(9, '王克寒', 'wkh.png', 'ECE', 'kwang3@wpi.edu', 'IT部其实和大家接触的也很多，比如对现在正逐渐繁荣的WPILIFE网站建设和维护是IT部的主要职能，而且CSSA活动现场布置，器材租赁保管以及活动现场摄影也是IT部任务之一。', 0),
(10, '赵锴锋', 'zhaokaifeng.png', '', 'kzhao3@wpi.edu', '民以食为天，晚会负责大家伙食的是生活组织部。大家都还记得刚开学时上届CSSA学长学姐们带我们买菜买家具吧？ 都是由生活组织部一手操办的。', 0),
(11, '庞葳洁', 'pangweijie.png', '', 'wpang@wpi.edu', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cssa_officers_list`
--

CREATE TABLE IF NOT EXISTS `cssa_officers_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `director` varchar(32) NOT NULL,
  `member` varchar(64) NOT NULL,
  `year` int(4) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `year` (`year`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `cssa_officers_list`
--

INSERT INTO `cssa_officers_list` (`id`, `title`, `director`, `member`, `year`, `sort_order`) VALUES
(1, '主席', '1', '0', 2014, 1),
(2, '副主席', '4', '0', 2014, 2),
(3, '会计', '11', '', 2014, 3),
(4, 'IT部长', '9', '', 2014, 8),
(5, '副主席', '5', '', 2014, 2),
(6, '副主席', '6', '', 2014, 2),
(7, '文体部长', '3', '', 2014, 19),
(8, '宣传部长', '7', '', 2014, 19),
(9, '外联部长', '8', '', 2014, 9),
(10, '生活组织部', '10', '', 2014, 20),
(11, '秘书处', '2', '', 2014, 21);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_type` varchar(32) CHARACTER SET utf8 NOT NULL,
  `faq_questions` varchar(500) CHARACTER SET utf8 NOT NULL,
  `faq_answers` text CHARACTER SET utf8 NOT NULL,
  `faq_helpful` int(11) NOT NULL DEFAULT '0',
  `faq_shit` int(11) NOT NULL DEFAULT '0',
  `faq_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `faq_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`faq_id`),
  KEY `faq_type` (`faq_type`),
  KEY `faq_helpful` (`faq_helpful`,`faq_shit`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_type`, `faq_questions`, `faq_answers`, `faq_helpful`, `faq_shit`, `faq_date`, `faq_status`) VALUES
(1, 'Website Manual', 'Just tell me how to post on this website?', '<p>\n	Yeah, I know the website is not so elegant. And I have to make a manual to you as below:\n</p>\n<p>\n	<a href="http://wpilife.org/manual" target="_blank">http://wpilife.org/manual</a>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Wish this make your life easier!\n</p>', 0, 0, '0001-01-01 00:00:00', 1),
(3, 'Daily Life', 'Do you believe that I am a FAQ?', 'Sure, I believe you are!', 0, 0, '0001-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq_type`
--

CREATE TABLE IF NOT EXISTS `faq_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `faq_type`
--

INSERT INTO `faq_type` (`id`, `type`, `status`) VALUES
(1, 'Website Manual', 1),
(2, 'School Life', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight_info`
--

CREATE TABLE IF NOT EXISTS `flight_info` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `airlines` char(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_num` int(11) NOT NULL,
  `arrival_date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `luggage` varchar(80) NOT NULL,
  `contact` char(80) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `flight_info`
--

INSERT INTO `flight_info` (`f_id`, `airlines`, `user_id`, `flight_num`, `arrival_date`, `arrival_time`, `luggage`, `contact`) VALUES
(17, 'test', 365, 123, '2014-05-20', '05:55:00', ' test', ' test');
-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `addr` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `des` text CHARACTER SET utf8 NOT NULL,
  `bedrooms_count` int(3) NOT NULL,
  `month_rent` int(11) NOT NULL DEFAULT '0',
  `water_included` tinyint(1) NOT NULL DEFAULT '1',
  `electricity_included` tinyint(1) NOT NULL DEFAULT '0',
  `heat_included` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date NOT NULL DEFAULT '0001-01-01',
  `post_time` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `isAvailable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`house_id`),
  KEY `blogs_id` (`bedrooms_count`),
  KEY `isAvailable` (`isAvailable`),
  KEY `bedrooms_count` (`bedrooms_count`),
  KEY `water_included` (`water_included`),
  KEY `electricity_included` (`electricity_included`),
  KEY `heat_included` (`heat_included`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=43 ;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `user_id`, `addr`, `des`, `bedrooms_count`, `month_rent`, `water_included`, `electricity_included`, `heat_included`, `available_date`, `post_time`, `isAvailable`) VALUES
(7, 289, '45 Dover Street Apt 2, Worcester, MA, United States', '<p>\n <span >不好意思打扰了。</span>\n</p>\n<p>\n <br />\n</p>\n<p>\n 我们在寻找一位新男性室友，从今年6月份开始的新一年的lease。\n</p>\n<p>\n 房子在 45 Dover Apt 2, 离学校2分钟，离price chopper3分钟，地理位置非常便利，而且很安全。\n</p>\n<p>\n 整套房子三室一厅<span >一厨一卫，还有个很大的储藏间。</span>\n</p>\n<p>\n <span ><br />\n</span>\n</p>\n<p>\n 舍友都是中国人，一个phd，一个上班，都是好人儿，好聊天，不吸烟不开趴~\n</p>\n<p>\n 吃饭的话，周末可以一起做，平常愿意跟phd合餐也行~\n</p>\n<p>\n <br />\n</p>\n<p>\n 你的房间里，床，桌子，床头柜，沙发全有，基本拎包入住。<span >厨具碗筷更不必担心，全套的~</span>\n</p>\n<p>\n 房租375一个月，加上网费电费和煤气费，冬天大概450，夏天400左右。\n</p>\n<p>\n 楼下是为老奶奶，是房东的妈妈，所以不喜欢很闹（当然一般活动没啥事儿&nbsp;）\n</p>\n<p>\n 我们希望你是不吸烟不开闹趴爱干净的童鞋，并且能住一整年，要不可能会有sublease的烦恼 : )\n</p>\n<p>\n <br />\n</p>\n<p>\n 我的QQ是 472619560， 电话 508-471-7014，邮箱是whr4726@gmail.com，或者直接回复（别选回复全部。。）\n</p>\n<p>\n 45 Dover 欢迎您来看房！\n</p>\n<p>\n <br />\n</p>\n<p>\n 王昊然\n</p>\n<br />', 1, 375, 1, 0, 0, '2014-06-01', '2014-02-20 10:54:31', 1),
(23, 369, '9 Hackfeld Road, Worcester, MA, United States', '<p>\n 9 Hackfeld Road 2楼朝南房间， 567月短租。 可日租$25/天。 该房离学校及超市Price Chopper极近，是新生落脚的理想之地。房东为中国人，女儿在WPI读书，不必担心语言障碍。\n</p>\n<p>\n <br />\n</p>\n<p>\n 因室友皆为女生，因此希望新室友也是女生。\n</p>\n<p>\n <br />\n</p>\n<p>\n 联系人： 刘昱508-736-9638，吕业诚774-314-7518（<a href="mailto:lyc0snow@gmail.com" target="_parent">lyc0snow@gmail.com</a>)&nbsp;\n</p>\n<p>\n <img src="http://maps.googleapis.com/maps/api/staticmap?center=42.27224364869792,-71.81119075924683&zoom=16&size=558x360&maptype=roadmap&markers=42.27224364869792,-71.81119075924683&language=en&sensor=false" alt="" /> \n</p>\n<p>\n <img src="/kindeditor/attached/image/20140501/20140501125845_58377.jpeg" alt="" /> \n</p>', 1, 560, 1, 1, 1, '2014-05-01', '2014-05-01 13:00:46', 0);
-- --------------------------------------------------------

--
-- Table structure for table `job_opportunity`
--

CREATE TABLE IF NOT EXISTS `job_opportunity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `poster` int(11) NOT NULL,
  `file` varchar(128) NOT NULL,
  `type_id` int(11) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poster` (`poster`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_opportunity`
--

INSERT INTO `job_opportunity` (`id`, `title`, `content`, `post_date`, `poster`, `file`, `type_id`, `isDeleted`) VALUES
(1, 'Cloud Operations Developer [Full-Time]', '<p class="p0">\r\n	<span style="line-height:1.5;">TraceLink is building the TraceLink Life Sciences Cloud, the first cloud-based application platform for creating a truly collaborative, high-performance global business network. We help our global customers connect to each other, share crucial business information and collaborate on manufacturing and distributing billions of products worldwide. To do so, we need team members that are motivated, creative, questioning and driven to push conventional boundaries. We have strong financial backing, a great roster of well-known customers and a product that analysts say revolutionizes how people work. Ready for a challenge?</span> \r\n</p>\r\n<p class="p0">\r\n	<br />\r\nTraceLink is seeking a full-time, experienced Cloud Operations Developer with direct, hand-on experience developing software to manage the deployment, monitoring, and security of Linux systems and applications in Amazon’s AWS. The position is part of a team responsible for the deployment, management, and operation of TraceLink Life Sciences Cloud Platform.\r\n</p>\r\n<p class="p0">\r\n	<br />\r\n<strong>Responsibilities<br />\r\n</strong>\r\n</p>\r\n<ol>\r\n	<li>\r\n		<span style="line-height:1.5;">Development and maintenance of tools and processes used to support the operation, deployment and management of TraceLink’s Life Sciences Cloud Platform&nbsp;</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Assist with the monitorin</span><span style="line-height:1.5;">g and management of TraceLink’s cloud platform. This includes health, system and application security, performance, and metrics</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Responding to and addressing any system, application, or network failures or issues, including issues outside normal business hours</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Communicate with all parts of the TraceLink organization, in both verbal and written capacity</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Work closely with management and other departments to assist planning, implementation, documentation, management, troubleshooting, and incremental improvement of processes as they relate to the department and the rest of the company</span>\r\n	</li>\r\n</ol>\r\n<strong><br />\r\n</strong>\r\n<p>\r\n	<strong>Skills and Requirements</strong>\r\n</p>\r\n<br />\r\nCandidates must possess the following skills and traits:<br />\r\n<br />\r\n<ol>\r\n	<li>\r\n		<span style="line-height:1.5;">3-5 years direct, hands-on experience developing tools and processes to support the deployment and management of a distributed system in a Unix environment</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Have a solid understanding by having done what it takes to deliver a product to customers from development through production-test and ultimately to production</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Prior position in cloud operations and development&nbsp;</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Programming: Skilled with Python, Boto, Bash, programming in a SVN/GIT source code controlled environment, knowledge of Perl a plus&nbsp;</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Tools: Skilled with Puppet/mcollective, Nagios, and related&nbsp;</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">1-2 years hands-on experience with Amazon’s EC2 (and related) API and CLI</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Strong understanding of Linux, IP networking, Linux system services, virtualization, and configuration management techniques including the use of Open Source tools in a Cloud/SaaS environment</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">First hand experience with solving problems in the areas of systems and application performance&nbsp;</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">BS Computer Science or related discipline</span> \r\n	</li>\r\n</ol>\r\n<strong><br />\r\n</strong>\r\n<p>\r\n	<strong>Key Attributes</strong>\r\n</p>\r\n<br />\r\n<ol>\r\n	<li>\r\n		<span style="line-height:1.5;">Have a solid grasp on what it takes to configure and manage multiple Linux systems, along with strong skills in programming</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Strong organizational skills</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Ability to multi-task, estimate time</span><span style="line-height:1.5;">lines accurately and set/take priorities effectively</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Attention to detail is critical</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Strong communication skills</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Ability to communicate and document new/established tools/procedures/policies</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Understands role of documentation and communication in an operational environment</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Excellent problem solving skills</span> \r\n	</li>\r\n	<li>\r\n		<span style="line-height:1.5;">Punctual and reliable</span> \r\n	</li>\r\n</ol>\r\nTraceLink is headquartered in Wakefield, MA just off Rte. 95 North between exits 39 &amp; 40.. Please forward your resume with a cover letter and salary requirement to <a href="mailto:Jobs-2013-18@tracelink.com" target="_blank">Jobs-2013-18@tracelink.com</a>. Only applicants who include a cover letter and their salary requirements will be contacted. Please insert “Cloud Operations Developer” in the subject heading line. TraceLink is an Equal Opportunity Employer.\r\n<p>\r\n	<br />\r\n</p>\r\n<p class="p0">\r\n	<br />\r\n</p>\r\n<p style="font-family:''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif;font-size:13px;vertical-align:baseline;color:#666666;background-color:#FFFFFF;">\r\n	----------------------------\r\n</p>\r\n<p style="font-family:''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif;font-size:13px;vertical-align:baseline;color:#666666;background-color:#FFFFFF;">\r\n	You can also contact&nbsp;<span style="font-family:inherit;font-size:inherit;font-style:inherit;font-weight:600;line-height:inherit;vertical-align:baseline;color:#333333;">Michael Danielczyk</span>&nbsp;(<a href="https://www.linkedin.com/pub/michael-danielczyk/20/711/898">https://www.linkedin.com/pub/michael-danielczyk/20/711/898</a>)<span id="__kindeditor_bookmark_start_26__" style="font-family:inherit;font-size:inherit;font-style:inherit;line-height:inherit;vertical-align:baseline;">&nbsp;for more details.</span>\r\n</p>\r\n<p>\r\n	<strong></strong><a href="https://www.linkedin.com/pub/michael-danielczyk/20/711/898"></a> \r\n</p>', '2014-04-03 16:11:00', 2, 'TraceLink_Cloud_Engineer.docx', 1, 0);
-- --------------------------------------------------------

--
-- Table structure for table `job_opportunity_type`
--

CREATE TABLE IF NOT EXISTS `job_opportunity_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job_opportunity_type`
--

INSERT INTO `job_opportunity_type` (`id`, `name`, `sort`) VALUES
(1, 'Software Engineer', 0),
(2, 'Marketing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `karaoke2013`
--

CREATE TABLE IF NOT EXISTS `karaoke2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerID` int(11) NOT NULL,
  `voterID` int(11) NOT NULL,
  `weight` int(1) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `singerID` (`singerID`,`voterID`,`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `karaoke2013`
--

INSERT INTO `karaoke2013` (`id`, `singerID`, `voterID`, `weight`, `date`) VALUES
(1, 14, 14, 1, '2013-11-13'),
(8, 17, 17, 1, '2013-11-13'),
(7, 16, 16, 1, '2013-11-13'),
(4, 2, 2, 1, '2013-11-13'),
(6, 15, 15, 1, '2013-11-13'),
(9, 18, 18, 1, '2013-11-13'),
(10, 19, 19, 1, '2013-11-13'),
(11, 20, 20, 1, '2013-11-13'),
(12, 21, 21, 1, '2013-11-13');


-- --------------------------------------------------------

--
-- Table structure for table `love`
--

CREATE TABLE IF NOT EXISTS `love` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boy` varchar(64) NOT NULL DEFAULT '',
  `girl` varchar(64) NOT NULL DEFAULT '',
  `from` varchar(64) NOT NULL,
  `to` varchar(64) NOT NULL,
  `startDate` date NOT NULL DEFAULT '0001-01-01',
  `date` datetime NOT NULL DEFAULT '0001-01-01 01:01:01',
  `hashCode` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hasdCode` (`hashCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `love`
--

INSERT INTO `love` (`id`, `boy`, `girl`, `from`, `to`, `startDate`, `date`, `hashCode`) VALUES
(1, 'Boy', 'Girl', 'BOY', 'GIRL', '2013-09-04', '2014-01-24 01:01:01', 'b5c0b187fe309af0f4d35982fd961d7e'),
(2, 'Hao Zhou', 'Yuan Lu', 'Hao Zhou', 'Yuan Lu', '2007-02-13', '2014-01-24 02:00:26', '4416f672d1a8b832b87d26687e509fb9'),
(3, 'Hao', 'Yuan', 'Hao', 'Yuan', '2013-06-17', '2014-01-24 02:02:02', '87c7d53ac912a861606ca11ad4aa6e0f'),
(4, '', '', '', '', '0000-00-00', '2014-01-24 02:11:06', 'e179bd6c62c104c511c54173009921e7'),
(5, 'Hao', 'Yujiao', 'Hao', 'Yujiao', '2013-01-24', '2014-01-24 02:11:45', '48988a0bce99e4635321183da5ffe82a'),
(6, 'Hao', 'Yujiao', 'Hao', 'Yujiao', '2013-01-24', '2014-01-24 02:12:12', '64b9eef2bb8f3e908f61b9bde51bd499'),
(7, '张达', '刘洋', '张达', '刘洋', '2013-02-04', '2014-01-24 23:00:42', '764b79d8773c4e7f70751c9c1667e1b8'),
(8, '麻庆进', '孙晓丽', '南宁', '山东', '2013-06-06', '2014-01-25 04:40:06', '189ba43815a94ece433bddb45ebd4d37'),
(9, '麻庆进', '孙晓丽', '南宁', '山东', '2013-06-06', '2014-01-25 04:41:00', '29c52e84da54dbb3dfb6c8835f720278'),
(10, '疯狂de咸蛋', '姗姗来迟', '疯狂de咸蛋', '姗姗来迟', '2014-01-31', '2014-02-03 22:21:31', '40345157495f11ef036ee15483aa67d5'),
(11, 'Hao', 'test', 'hao ', 'test', '2014-01-03', '2014-01-03 23:01:07', 'c42f26d35eb0c4f1c1d0b2ba9c459d26'),
(12, 'Kevin', 'Celeste', 'Celeste', 'Kevin', '2013-02-14', '2014-02-03 23:46:58', 'e879323d9179a8c280307312a7946f83'),
(13, '田轶夫', '妖蛾子', '妖蛾子', '田轶夫', '2012-08-17', '2014-02-03 23:53:27', '5bd3a7239df7ecf207546f108d5b4a13'),
(14, 'xinzhuo', 'xuesi', 'xinzhuo', 'xuesi', '2007-09-24', '2014-02-04 00:19:36', '0c142c4a8fa31a36f7ac2397b0bc39f8'),
(15, '郎斌', '盛宽', '斌斌', '宽宽', '2014-02-01', '2014-02-04 01:03:36', '8258dcb681be300fafb805c72413d629'),
(16, 'Marc', 'Shasha', 'Shasha', 'Marc', '2012-10-27', '2014-02-04 15:55:29', '0cc15901621c0cb9d9737589e3de2edd'),
(17, 'Marc', 'Shasha', 'Shasha', 'Marc', '2012-10-26', '2014-02-14 00:37:16', 'bacfe0de969fa6ff6b16a13e78c7f2ab');

-- --------------------------------------------------------

--
-- Table structure for table `manual`
--

CREATE TABLE IF NOT EXISTS `manual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`,`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `manual`
--

INSERT INTO `manual` (`id`, `title`, `text`, `sort`, `deleted`) VALUES
(1, '首页', '<p>\n	WPILIFE是一个平台网站，大家对CSSA群邮件的抱怨，是这个网站得以开发的导火线。\n</p>\n<p>\n	目前，WPILIFE支持的功能有（Version 0.9.0）：\n</p>\n<ol>\n	<li>\n		<span style="line-height:1.5;">CSSA发布一些公告信息，上传和管理</span><a href="http://wpilife.org/cssa/photograph" target="_blank">关于WPI的照片</a><span style="line-height:1.5;">，通过网站辅助开展活动（如：</span><a href="http://wpilife.org/events" target="_blank">卡拉OK大赛</a><span style="line-height:1.5;">）</span> \n	</li>\n	<li>\n		<span style="line-height:1.5;">注册用户发布商品的买卖，和房源信息</span> \n	</li>\n	<li>\n		<span style="line-height:1.5;">任何用户都可以查看被发布的内容<br />\n<br />\n</span> \n	</li>\n</ol>\n<p>\n	此外，我们<sub>[现在完全可以把“们”去掉]</sub>还在努力开发其他新鲜的功能，以为在WPI的学生和在国内的潜在WPI学生提供更多有价值的信息（如：“接机报名”、“临时住房”... ...）。<br />\n</p>\n<p>\n	据说常常登录WPILIFE，能让女生更漂亮，男生更帅气，情侣之间的关系越来越融洽，屌丝逆袭的概率越来越大，女汉子也慢慢变淑女，想单身都甩不开身边的异性，就连考试也可以一口气考5门全A（实在吹不下去了）... ...\n</p>', 0, 0),
(3, '注册与登录', '<h3>\n	<a href="http://wpilife.org/signup" target="_blank">注册：</a> \n</h3>\n<p style="text-align:left;">\n	1. 请看下图，还能比这更简单的注册过程吗？连密码都不需要，我们会直接把密码发你邮箱（顺便验证了你邮箱的可用性，当然，你可以登录后修改你的密码）。\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123165756_99550.png" alt="" /> \n</p>\n<p>\n	2. 点击“Register”后，你会在你的WPI邮箱收到如下格式的邮件：\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123171449_15905.png" alt="" /> \n</p>\n<p style="text-align:left;">\n	<br />\n</p>\n<p style="text-align:left;">\n	3. 点击“Login”，就可以自由自在的登录啦！\n</p>\n<h3>\n	<a href="http://wpilife.org/login" target="_blank">登录</a>\n</h3>\n<p>\n	和注册一样，登录的功能也很简洁直观（忘记密码的时候，你可以在登录页面通过邮箱找回密码）。\n</p>\n<p>\n	<br />\n</p>\n<p>\n	如果你有任何问题，请联系<a href="mailto:zhouhao@wpilife.org" target="_blank">zhouhao@wpilife.org</a>\n</p>\n<p>\n	<br />\n</p>', 3, 0),
(4, '个人管理', '<p>\n	登录之后，点击右上角的“Account Center”，你就可以进入自己的管理页面（如下图）。\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123172419_99657.png" alt="" />\n</p>\n<p style="text-align:left;">\n	通过左侧的导航，你可以发布自己想发布的内容（界面是丑了点，但是第一步，我们以实用为主，慢慢是升级GUI）。\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123172723_20966.png" alt="" />\n</p>', 4, 0),
(5, '房源发布', '<p>\n	点击个人管理页左侧菜单里的“<span><span style="font-style:inherit;background-color:#FCFCFC;line-height:1.5;">Post House Resource</span></span>”，然后你就进入了房源信息发布页面（哈哈，其实还有一个快捷进入发布页面的方式，先不告诉你，你会发现的）：\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123225344_93331.png" alt="" /> \n</p>\n<p style="text-align:left;">\n	<br />\n</p>\n<p style="text-align:left;">\n	最后，别忘了点击“submit”！\n</p>\n<p style="text-align:left;">\n	Yeah，你竟然发布了一条房源信息，真不可思议！\n</p>\n<p style="text-align:left;">\n	<br />\n</p>\n<p style="text-align:left;">\n	现在就让我们来看看刚刚的信息是怎么被别人看到的：\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123231920_28916.png" width="560" height="538" alt="" /> \n</p>\n<p style="text-align:center;">\n	<br />\n</p>\n<p style="text-align:left;">\n	点击“Conatct Information”之后：\n</p>\n<p style="text-align:left;">\n	<br />\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140123/20140123231956_72214.png" width="560" height="298" alt="" /> \n</p>', 6, 0),
(6, '商品发布', '<p>\n	<span style="color:#666666;font-family:''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif;font-size:13px;line-height:21px;background-color:#FFFFFF;">点击个人管理页左侧菜单里的“</span><span style="font-family:''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif;font-size:13px;line-height:21px;vertical-align:baseline;color:#666666;background-color:#FFFFFF;"><span style="font-family:inherit;font-size:inherit;font-style:inherit;line-height:1.5;vertical-align:baseline;background-color:#FCFCFC;">Post Items to Sell</span></span><span style="color:#666666;font-family:''Open Sans'', HelveticaNeue, ''Helvetica Neue'', Helvetica, Arial, sans-serif;font-size:13px;line-height:21px;background-color:#FFFFFF;">”，然后你就进入了房源信息发布页面</span>（<a href="http://wpilife.org/wpilife/shop" target="_blank">http://wpilife.org/wpilife/shop</a>&nbsp;页面右侧的菜单有进入商品发布的快捷方式）。\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140203/20140203223719_12778.png" width="600" height="317" alt="" /> \n</p>\n<p>\n	<br />\n</p>\n<p>\n	填好所有的信息，请毫不犹豫的点击提交按钮！没错，不出意外，你已经发布了一条全世界人民都能看到的商品信息。（比如：<a href="http://wpilife.org/wpilife/shop/product/1" target="_blank">http://wpilife.org/wpilife/shop/product/1</a><span id="__kindeditor_bookmark_start_20__"></span>）\n</p>\n<p>\n	<br />\n</p>\n<p>\n	既然发布了一条全世界人们都能看见的商品信息，你肯定就得希望别人能够联系你买下你的商品。\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140203/20140203224948_18098.png" width="500" height="243" alt="" /> \n</p>\n<p style="text-align:center;">\n	<br />\n</p>\n<p style="text-align:left;">\n	接下来的日子，嗯哼，没错，你可能会收到全世界人民给你的咨询。于是，突然在某一天，你的商品突然就这么一不小心卖给了其中一个人，于是，你不想误导全世界人民这个商品还在。于是：\n</p>\n<p style="text-align:left;">\n	<br />\n</p>\n<h3>\n	关闭商品交易\n</h3>\n<p>\n	1. 进入个人管理主页，你会在简陋的左侧菜单发现一个叫“sell list”的选项卡，接着你会看到如下图的列表：\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140203/20140203225907_12870.png" alt="" />\n</p>\n<p style="text-align:center;">\n	<br />\n</p>\n<p style="text-align:left;">\n	至此，希望你能简单了解了如何发布一个（群）商品，如何关闭商品。:-)\n</p>', 5, 0),
(7, 'test', '<p>\n	Now, you can also get shop inforamtion by id, and the URL format is:\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<span style="font-size:18px;color:#E53333;">http://wpilife.org/api/shop/id/23<span style="color:#337FE5;">[/format/JSON|XML|HTML|CSV...]</span></span> \n</p>\n<p>\n	<span style="font-size:18px;"><br />\n</span> \n</p>\n<p>\n	1. The number after id is the user_id in the database, you can change it to get the shop information you need.\n</p>\n<p>\n	2. The "format" parameter is not necessary. If you do not define it, it returns JSON format data.&nbsp;\n</p>\n<p>\n	3. You can get this data without&nbsp;authorization.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Screenshot for the XML format data returned:\n</p>\n<p style="text-align:center;">\n	<img src="/kindeditor/attached/image/20140314/20140314165116_81805.jpg" alt="" />\n</p>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recs`
--

CREATE TABLE IF NOT EXISTS `recs` (
  `recs_id` int(11) NOT NULL AUTO_INCREMENT,
  `recs_type_id` int(11) NOT NULL,
  `recs_title` varchar(128) NOT NULL DEFAULT '',
  `recs_content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `recs_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `recs_view_times` int(11) NOT NULL DEFAULT '0',
  `recs_up_time` int(11) NOT NULL DEFAULT '0',
  `recs_available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`recs_id`),
  KEY `recs_view_time` (`recs_view_times`),
  KEY `recs_author` (`user_id`),
  KEY `recs_type` (`recs_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `recs`
--

INSERT INTO `recs` (`recs_id`, `recs_type_id`, `recs_title`, `recs_content`, `user_id`, `recs_date`, `recs_view_times`, `recs_up_time`, `recs_available`) VALUES
(1, 6, 'Software recommendation in 2013', '<section class="post">\r\n	<h3>Text Editor:</h3>\r\n\r\n<ol>\r\n<li><a href="http://www.sublimetext.com/3">Sublime Text 3</a>: Now, installing Sublime text 3 is the first thing I do when I refresh my OS, no matter WINDOWS, Ubuntu or Mac.</li>\r\n<li><a href="http://www.everedit.net/">EverEdit</a>: another choice for WINDOWS, but only for WINDOWS.</li>\r\n<li><a href="http://markdownpad.com/">MarkdownPad 2</a>: A markdown editor for WINDOWS, not free. But I have bought a license.</li>\r\n<li><a href="http://mouapp.com/">Mou</a>: A markdown editor for Mac, and free.</li>\r\n</ol>\r\n\r\n\r\n<h3>FTP &amp; SFTP</h3>\r\n\r\n<ol>\r\n<li><a href="http://winscp.net/eng/docs/introduction">WinSCP</a>: For WINDOWS only. It is very powerful, as it is integrated with <a href="http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html">PuTTY</a> SSH client (WinSCP + PuTTY + Sublime Text = My choices in WINDOWS).</li>\r\n<li><a href="http://cyberduck.io/">Cyberduck</a>: For WINDOWS &amp; Mac. I use it on my air with <a href="http://www.iterm2.com/#/section/home">iTerm2</a>.</li>\r\n<li><a href="https://filezilla-project.org/">FileZilla</a>: For ALL platform, but I only use it on Ubuntu.   <br>\r\n[<strong>Note</strong>: All of them support Key Authentication!]</li>\r\n</ol>\r\n\r\n\r\n<h3>Terminal</h3>\r\n\r\n<ol>\r\n<li><a href="http://www.cygwin.com/">Cygwin</a>: For WINDOWS. Always run commands on Linux, so feel weird to use DOS. With Cygwin, this can be achieved easily.</li>\r\n<li><a href="http://www.iterm2.com/#/section/home">iTerm2</a>: For Mac. Haven''t used it for a long time, as the screen size of my air is 11 inch, which is too small for coding. But iTrem2 seems great to use (The original terminal of Mac is also great. It is your choice to use which one).</li>\r\n</ol>\r\n\r\n\r\n<h3>To Do List</h3>\r\n\r\n<ol>\r\n<li><a href="https://www.wunderlist.com/en/">Wunderlist</a>: Has clients for iPhone, iPad, Mac, Windows, Android, Kindle Fire and the Web (On Ubuntu, you should use web). It is very convinient to orgniaze what to do. [I "hate" it becasue it lauches so slow in WINDOWS]</li>\r\n</ol>\r\n\r\n\r\n<h3>Office &amp; Email Client</h3>\r\n\r\n<ol>\r\n<li><a href="http://www.wps.cn/">WPS</a>:  For WINDOWS &amp; Linux. (Lighter than MS office)</li>\r\n<li><a href="http://www.mozilla.org/en-US/thunderbird/">Mozilla Thunderbird</a>: I hate outlook, so I use Thunderbird. And with <a href="https://addons.mozilla.org/en-us/thunderbird/addon/exquilla-exchange-web-services/">ExQuilla</a>, I can orgnize exchange service in Thunderbird. [No more Outlook]</li>\r\n</ol>\r\n\r\n\r\n	</section>', 2, '2014-01-13 00:00:00', 0, 0, 1),
(2, 5, '[转：经验总结] WPI CS(含ECE) 选课策略及教授介绍', '<p>\r\n这篇文章转载自: http://www.1point3acres.com/bbs/forum.php?mod=viewthread&tid=70776\r\n</p>\r\n到目前为止，我来WPI已经一年了，在此期间完全跟过的以及了解过的课程虽然不是很多，但我认为自己的些许感受和所了解到的观点提出来有助于其他同学的选课决策。尤其是这个summer实习归来，我发现很多CS的新同学都已经到了，正值选课之计，我希望下面的内容能切实的帮助到他们，同时也希望能向即将来WPI或想了解WPI CS Master课程的同学提供一些有用的信息。毕竟，一亩三分地目前是最广阔的北美留学平台，我觉的发在这里才能使这些内容传播地最广。此外，要感谢@W大的辛勤耕耘和地里众多同学的各种实用信息，They really helped/are helping/willhelp me a lot！\r\n<br/>\r\n<br/>\r\n<br/>PS: 我的表达能力不太好，所以有些内容可能说的不够细致，望大家谅解。我不会介绍教授的背景，研究领域，这对普通授课型MS没有太大意义，本文偏实用，不偏学术。\r\n<br/>\r\n<br/>\r\n<br/>本文只提WPI CS Master的课程和教授（为什么要提教授？因为即便同一门课，不同的教授也会导致你的学习过程和结果大相径庭），PHD课程和教授虽相同（你们可以参考），但有关PHD的其他方面我不甚了解，所以不多说了；另外我对本科的课程不熟悉，不过据我观察，相同教授（很多教授同时教授本科和研究生的课程）所教的类似课程相似度比较高，所以本科也可以参考。还有，WPI非CS系的同学如果你们想选CS课程的也可以参考一下本文的内容，尤其是ECE的同学，你们有很多课都是和CS相同的，并且是同一时间，同一地点，同一老师，只是彼此的课程名称不一样而已。\r\n<br/>\r\n<br/>\r\n<br/>首先，我来讲一下绝大部分WPI CS Master学生的毕业要求：（这些在研究生概览手册Graduate Catalog  http://www.wpi.edu/academics/catalogs/grad.html 中都有，我做一下简单的说明）All M.S.students must complete the Breadth Requirement. M.S. students are required toachieve a passing grade in courses from four different bins.  看到了吧，你必须至少从4个方向中选出一门课并获得“通过”的分数。注意：“通过”是指A, B, C这3个成绩，D是不能获得学分的，F就不用说了。研究生得了F，你的GPA就很有可能低于2.75，这样以后你的课程记分方式就会被降为只有Pass和Fail，然后通过petition才能恢复成tradition的记分方式，即A, B, C, D, F。如果petition失败，那你将来的GPA就很有可能低于2.5，然后被dismiss掉。\r\n<br/>\r\n<br/>\r\n<br/>Graduate的评分信息：\r\n<br/>A -Excellent\r\n<br/>B - Good\r\n<br/>C - Pass\r\n<br/>D -Unacceptable for graduate credit\r\n<br/>F – Fail\r\n<br/>\r\n<br/>\r\n<br/>现在继续回到4个方向的选课问题，这4个方向中有3个方向是必选的： Theory, Algorithms, Systems或Networks。即Theory, Algorithms, Systems或者Theory, Algorithms, Networks。剩下的一个方向你可以从Design, Compilers/Languages,Graphics/Imaging, AI和Databases中任选。\r\n<br/>\r\n<br/>下面所列出的是你为了满足bins所能选的课：\r\n<br/>\r\n<br/>\r\n<br/>Theory:\r\n<br/>5003 (Intro.Theory), 503(Found.), 521 (Logic), 559 (Adv. Th.)\r\n<br/>\r\n<br/>Algorithms:\r\n<br/>5084 (Intro.Algorithms),504 (Analysis), 584 (Algs)\r\n<br/>\r\n<br/>Systems:\r\n<br/>502 (OS), 533(Perf. Eval.), 535(Adv. OS)\r\n<br/>\r\n<br/>Networks:\r\n<br/>513 (Comp Net.),529(Multi. Net.), 530 (HP Net.), 577 (Adv.Net.)\r\n<br/>\r\n<br/>Design:\r\n<br/>509 (SE),546 (HCI), 562 (Adv.SE)\r\n<br/>\r\n<br/>Compilers/Languages:\r\n<br/>536(Langs.), 544(Compilers)\r\n<br/>\r\n<br/>Graphics/Imaging:\r\n<br/>543(Graph.), 545(Im. Proc.), 549 [Vision], 563 (Adv. Gr.)\r\n<br/>\r\n<br/>AI:\r\n<br/>534 (AI),538 (Ex. Sys.), 539 (Learning),540 (AI Design), 549 [Vision]\r\n<br/>\r\n<br/>Databases:\r\n<br/>542 (DB),561 (Adv. DB)\r\n<br/>\r\n<br/>\r\n<br/>从这个列表中按照上述规则选出4门课后，其他的课你可以随便选了。注意其中以5开头的4位数的课程是相应3位数课程的基础版本，例如5003和503，5084和584，学校官方称4位数的课程会简单一些，会教授一些基础知识，照顾基础弱的同学。实际上有些出入。有一点要注意：CS的学生可以选其他Department的课程，但最多只能选两门，并且这两门课程中还包括你所选的以5开头的4位数CS课程，也就是说，如果你选了5003，那你只能选一门外系的课了，如果你5003和5084都选了，那你不能再选外系的课了。我解释地够清楚了吧。\r\n<br/>\r\n<br/>下面开始介绍选课，我会主要介绍4大方向中的课，因为这是谁也跑不掉的，你总得在4个大方向中至少各选一门课。\r\n<br/>\r\n<br/>\r\n<br/>Theory:\r\n<br/>5003 (FOUNDATIONS OF COMPUTER SCIENCE: ANINTRODUCTION)：这门课主要讲授离散数学(基础)、有限自动机、正则语言、上下文无关文法、可确定性、图灵机和计算复杂度。这些是编译领域的基础。没有project，只有作业和考试。最近几年教授这门课的Professor是Daniel J. Dougherty，简称DD，人不错，讲课还行，每节课quiz，如果作业好好做，你会发现quiz和考试基本都是与作业类似的内容，拿A比较容易（前提是把作业弄懂）。如果作业掉以轻心，你很可能得B。\r\n<br/>\r\n<br/>\r\n<br/>503(FOUNDATIONS OF COMPUTER SCIENCE)：这是一门和5003一样的课，通常是给PHD提供的，一般由DD来教，有时也会由Gabor Sarkozy来教。如果DD同时教5003和503，对于MS的学生他会让你选5003，不过有的MS也上了503，反映说没什么太大区别。\r\n<br/>\r\n<br/>\r\n<br/>521 (LOGIC IN COMPUTER SCIENCE)：此课是503基础上的高级课程，我没上过，据说更多地是从数学的角度来讲授深层的503中的内容，所以同学们，如果数学底子不够厚，请三思。\r\n<br/>\r\n<br/>\r\n<br/>559 (ADVANCED TOPICS IN THEORETICAL COMPUTERSCIENCE)：这门课我没上过，不过有一点需要注意：研究生课程中凡是带有ADVANCED TOPICS的，99%都是要读很多论文的，这些课程培养的是你的学术研究能力，我个人对此无爱，所以这类课程基本不会做太多介绍。我认为这些课非常适合PHD，以及那些理论背景雄厚的MS。如果需要更多信息，可以去问以前上过这门课的同学。\r\n<br/>\r\n<br/>\r\n<br/>Algorithms:\r\n<br/>\r\n<br/>5084 (INTRODUCTION TO ALGORITHMS: DESIGN ANDANALYSIS)：算法，这门课本身没什么说的，本科都应该上过，没有project，全是作业和考试，每节课quiz。这门课通常由Micha Hofri来教来，口音很重，在算法课上数学讲的太多，这可能和他的背景有关，当我听了2节课并进行比较后，果断放弃了这门比较“基础”的5084，转投584了。另外，我了解到，Hofri教授属于little tough的grader，所以同学们如果数学基础不牢，听力不够好（尤其是新生），慎选。\r\n<br/>\r\n<br/>\r\n<br/>584 (ALGORITHMS: DESIGN AND ANALYSIS)：与584类似，由Gabor Sarkozy（简称萨科奇）讲授，讲课清晰，不会有unexpected的quiz，人也不错。如果想满足算法的bin，建议同学们选择这门课。\r\n<br/>\r\n<br/>\r\n<br/>504 (ANALYSIS OF COMPUTATIONS AND SYSTEMS)：我不了解，只知道是更多地从数学的角度来讲授算法和计算理论，教授通常是Micha Hofri，所以各位请慎重。\r\n<br/>\r\n<br/>\r\n<br/>Systems:\r\n<br/>\r\n<br/>502 (OPERATING SYSTEMS)：502是WPI CS课程中比较tough的一门课（大多数学校中应该都是这样，不过据我从同学那了解到的，我发现WPI的OS课比起CMU的OS课要简单多了），但是对你了解底层还是很有帮助的。这门课主要是coding较多，有关文件和内存的管理等，Project和考试各占一半。考试难度中等，好好听课就行。通常教授这门课的是Jerry Breecher，讲课还行吧，打分也还不错，人也算nice。注意：上这门课你一定要熟悉C，下面这一段话是他的课程介绍中所写的：The project requires substantialprogramming in C, (3 to 4 thousand lines of code is not atypical), thusstudents should already have a sound programming foundation. CS 502 is not theplace to "pick up" C. 另外，如果你还熟悉Windows/Linux两大系统的系统调用和线程库就再好不过了（这一句是我说的）。另外此处有他提供的参考试题：http://web.cs.wpi.edu/~jb/CS502/samples/CS3013_Midterm_C07.pdf\r\n<br/>\r\n<br/>\r\n<br/>533(MODELING AND PERFORMANCE EVALUATION OFNETWORK AND COMPUTER SYSTEMS，同 ECE581): 这门课是偏重于网络性能评估测量的，ECE581和这门课是一样的，同一个老师，一般是Jerry Breecher来教，几次Presentation，两个exam，一个与性能评估相关的项目，不是太复杂，如果你不喜欢502，或觉得502太难，可以用这门课来满足Systems的bin。\r\n<br/>\r\n<br/>\r\n<br/>535(ADVANCED TOPICS IN OPERATING SYSTEMS)：有关操作系统的高级内容，大量的论文需要读，内容涉及502中的高级部分，比如分布式系统，多媒体系统，安全等等。通常讲授这门课的老师是Craig Wills，这是WPI CS的Department Head，人很nice，讲课清晰，打分也不tough，如果对OS感兴趣可以听听这门课。\r\n<br/>\r\n<br/>\r\n<br/>Networks:\r\n<br/>\r\n<br/>513 (Computer Networks，同ECE506)：计算机网络这门课如果是CS系的老师来教，就会比较累一些，如果是ECE的老师来教就会轻松一些。513讲授有关计算机网络的基础概念，和本科的内容差不多，如果你本科学过网络，从概念上来讲可能会好理解一些。如果是ECE的老师来教通常会偏重底层电子电路方面一些，没有太多coding的project。如果是CS的老师来教，通常会包含一个比较复杂的Project，要求你模拟一个简单的小型网络协议栈，并在此协议栈的基础上构建一个支持多用户的C/S架构的网络应用程序。所以你必须熟悉C/C++，如果你没有上过502并且对UNIX/Linux系统编程和TCP编程不熟悉，那么我建议你不要选。\r\n<br/>\r\n<br/>\r\n<br/>接下来说说教授，如果是ECE的老师，通常是Kaveh Pahlavan，他是ECE的大牛，讲课还行，如果是他上这门课，你们会轻松一些。\r\n<br/>\r\n<br/>如果是CS的老师，通常是Robert Kinicki(Bob Kinicki)，那么这门课将会占用你大量的时间，他讲课一般，因为他的课程内容信息量巨大，自己也记不住，所以基本上只能念PPT，一节课讲100多张PPT是很正常的。此外他的课程中包含大量的模拟实验，各种Project，以及十分麻烦的Middle和Final Exam，这里是他syllabus：http://web.cs.wpi.edu/~rek/Grad_Nets/Spring2013/CourseInformation_S13.pdf。两次Exam是20道左右的问答题，有些题反正我对着PPT也没找到答案，这里有个往年的考试题，http://web.cs.wpi.edu/~rek/Grad_Nets/Spring2013/MidTerm_KEY_Spring2013.pdf，同学们可以参考一下。\r\n<br/>\r\n<br/>注意：他是个非常tough的grader，考试的平均分基本是满分的一半，最后这门课的分数比例大概是10%的A，50%的B，30%的C，10%的D，他说自己不会给F，他说F会导致研究生被kick off。其实我分析估计是如果他给了F，那么你进行petition的时候，他肯定不会签字。没有instructor的签字，你的petition是无法通过的。Kinicki好像很乐于做一个坏老师，而且我认为他对中国学生有偏见。一般课程上到一半时，有人会觉得很tough想drop这门课，他会提前在课上很“善意”地提醒大家(CS的课一般80%的中国学生)：For international students, if you drop thiscourse, you may lose your visa. 原因是国际学生必须每学期选够3门课才能保持visa。这门课一般都在spring学习开设，一般会赶上中国的新年，在往年的课上，他会向中国学生问候“Happy Chinese New Year！”，然后让每个中国学生来回答一个与上节课内容相关的问题。诸如此类我就不列举了。此外，如果你最后不幸得了一个不好的分数C?D? ，不要去找他argue，没有用的。所以，如果是Kinicki教这门课，并且你是中国学生（不是中国学生应该也看不到本文），我给你的建议是Avoid him at all costs！\r\n<br/>\r\n<br/>\r\n<br/>另外，我注意到2014 Spring的513是Krishna Kumar Venkatasubramanian来教，我对此人不了解，猜测应该会比Kinicki好一些，了解的同学可以在回复中添加对其的评价。注意，CS的513谁来教都不会太轻松，毕竟那个Project摆在那呢。建议你们避开Kinicki的课是因为他本人Abnormal。\r\n<br/>\r\n<br/>\r\n<br/>还有：现在CS的学生不能通过选ECE506来满足网络的bin了，只能选CS513。\r\n<br/>\r\n<br/>\r\n<br/>529(MULTIMEDIA NETWORKING)：多媒体网络，讲授音视频算法在网络中的应用。这门课你需要阅读大量的论文，了解相关的音视频算法，需要有solid programming background，熟悉Windows或Linux平台编程均可。通常讲授这门课的是Mark Claypool教授，他人不错，但是讲课语速奇快无比，平常说话也一样，所以听力不好的就别选了，不过打分还算比较nice。如果不是有特殊的兴趣或其他原因，其实没什么必要选这门课。\r\n<br/>\r\n<br/>\r\n<br/>530 (HIGH-PERFORMANCE NETWORKS，同ECE530)：这门课讲授的内容和513有部分重叠，但更注重网络性能，拥塞控制的领域，不是太难。通常教这门课的教授是Eladio R. Cortes Ramos，有口音，讲课一般，7次作业和两次考试，好好跟下来并不难。另外，这个老师每年的教学计划和内容变动都很小很小哦，所以想拿A的同学，你懂的。\r\n<br/>\r\n<br/>\r\n<br/>577 (ADVANCED COMPUTER AND COMMUNICATIONSNETWORKS，同ECE537)：高级计算机网络，要读很多论文的哦，在513的基础上深入研究。通常由Kinicki教授来教，所以同学们你们自己看着办吧。\r\n<br/>\r\n<br/>\r\n<br/>主要的内容说完了，剩下的课有时间再写吧。另外有一些比较不错的课推荐给你们：Xinming Huang的ECE505，Elke Angelika Rundensteiner的CS542，以及George T. Heineman的CS509。另外CS系中每学期会有不少525X开头的课，X代表不同的课，一般都是不同的教授自己根据的背景和研究领域来设置的，有可能几年只有一次，或者只有一次，这就不如去选相同教授的固定编号的课程，这些课程基本上每年都会有，如果出了什么问题也好处理和补救，而且在课程内容上如果是同一个教授不会相差太多的。\r\n<br/>\r\n<br/>Usefullinks：\r\n<br/>CS 课程介绍：http://www.wpi.edu/academics/catalogs/grad/cscourses.html\r\n<br/>\r\n<br/>课本查询：\r\n<br/>http://wpi.bncollege.com/webapp/wcs/stores/servlet/TBWizardView?catalogId=10001&storeId=32554&langId=-1&level=1\r\n<br/>\r\n<br/>2013 Fall课程情况：\r\n<br/>https://bannerweb.wpi.edu/pls/prod/hwwkrnbw.P_DisplayDept?sel_term=201401&sel_ptrm=A&sel_dept=CS&sel_desc=Computer+Science&sel_level=05&sel_campus=x\r\n<br/>\r\n<br/>2014Spring课程情况：\r\n<br/>https://bannerweb.wpi.edu/pls/prod/hwwkrnbw.P_DisplayDept?sel_term=201402&sel_ptrm=C&sel_dept=CS&sel_desc=Computer+Science&sel_level=05&sel_campus=x\r\n<br/>\r\n<br/>\r\n<br/>主干已经说完了，有什么其他信息以后陆续补上，希望以上内容能帮到其他同学。Thanks！', 2, '2014-01-13 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recs_type`
--

CREATE TABLE IF NOT EXISTS `recs_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `recs_type`
--

INSERT INTO `recs_type` (`id`, `name`, `sort`, `status`) VALUES
(1, 'Food & Eating', 0, 1),
(2, 'Shopping', 0, 1),
(3, 'Travelling', 0, 1),
(4, 'Car', 0, 1),
(5, 'Course Choosing', 0, 1),
(6, 'Softwares', 0, 1),
(7, 'hardwares', 0, 1),
(8, 'Programming', 0, 1),
(9, 'Others', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_type` varchar(32) NOT NULL DEFAULT '',
  `shop_title` varchar(128) NOT NULL DEFAULT '',
  `shop_image_cover` varchar(140) NOT NULL DEFAULT 'default_cover.jpg',
  `shop_price` varchar(32) NOT NULL DEFAULT 'N/A',
  `shop_content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `shop_view_times` int(11) NOT NULL DEFAULT '0',
  `shop_up_time` int(11) NOT NULL DEFAULT '0',
  `shop_available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shop_id`),
  KEY `blogs_view_time` (`shop_view_times`),
  KEY `blogs_author` (`user_id`),
  KEY `blogs_type` (`shop_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_type`, `shop_title`, `shop_image_cover`, `shop_price`, `shop_content`, `user_id`, `shop_date`, `shop_view_times`, `shop_up_time`, `shop_available`) VALUES
(1, 'SELL', 'Sale for test (Not take it serious)', 'wpilife.jpg', '$1000', 'It is just for test (Not take it serious)', 2, '2013-08-27 09:27:57', 0, 0, 0),
(4, 'BUY', 'Second test of something I want to buy', 'default_cover.jpg', 'N/A', '<p>\n	Second test of something I want to buy\n</p>\n<p>\n	Second test of something I want to buySecond test of something I want to buySecond test of something I want to buySecond test of something I want to buy\n</p>', 2, '2013-08-27 12:41:48', 0, 0, 0),
(5, 'SELL', '<del>Book for Sale or exchange</del>', 'DBMS.jpg', '$13', '<p>\n	I have a book:&nbsp;<strong>Database Management Systems [International version]</strong>, which will be used for a CS class.&nbsp;Now it is for sale of $13, or you can exchange it with a WPI Flash Disk(4g or 8g).\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Amazon Link here:&nbsp;<a href="http://www.amazon.com/Database-Management-Systems-Johannes-Ramakrishnan/dp/007123151X/ref=sr_1_2?ie=UTF8&qid=1377726430&sr=8-2&keywords=database+management+system">http://www.amazon.com/Database-Management-Systems-Johannes-Ramakrishnan/dp/007123151X/ref=sr_1_2?ie=UTF8&amp;qid=1377726430&amp;sr=8-2&amp;keywords=database+management+system</a> \n</p>\n<p>\n	<br />\n</p>\n<p>\n	This is not a test! And you can take it serious!\n</p>\n<p>\n	Thanks\n</p>\n<p>\n	<br />\n</p>\n<p>\n	It has been sold.&nbsp;\n</p>', 2, '2013-08-27 15:23:03', 0, 0, 0),
(11, 'SELL', '<del>Tickets for Halloween Party </del>', 'IMG_0157.png', '$13', '<p>\n CSSA will hold a party for Halloween Day this 1st Nov in Shangri-La Restaurant!\n</p>\n<p>\n $13 for each ticket!\n</p>', 2, '2013-10-21 18:15:55', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `singer2013`
--

CREATE TABLE IF NOT EXISTS `singer2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `win` tinyint(1) NOT NULL DEFAULT '0',
  `singerID` int(11) NOT NULL,
  `song` varchar(64) NOT NULL DEFAULT '',
  `songlink` varchar(256) NOT NULL,
  `des` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `singer2013`
--

INSERT INTO `singer2013` (`id`, `win`, `singerID`, `song`, `songlink`, `des`) VALUES
(1, 0, 2, '疯狂de咸蛋', 'http://sbzhouhao.net/', 'NND，此刻只想对那个叫盛宽的家伙说句：“我们的友谊就这么结束了！”<p>本以为有你这个家伙垫底，我妥妥的倒二。现在好了，我都不敢以真面目现身了。</p> 本来名声就不好，现在就更臭了！<br/>'),
(2, 1, 14, '第一次', 'http://okehero.com/player/iphone.jsp?id=qfGB5qo7pGT', '鄙人王呈睿，性别直男，生于上世纪八十年代末，长于共和国东北老工业基地。<br/> 爱好广泛，品性端正，优点不多，毛病不少，弹过琴，打过鼓，唱过歌，组过队，比过赛，拿过奖，解过散，骂过街，考过托，出过国。<br/> 曾于青少年时期混迹于北京学院路各高校乐队地下排练室及小型酒吧，后解散，遂投其精力于书本，终于毕业。<br/> 今于WPI结识诸位英才，实乃三生有幸！苦于学业压力，智商捉急，迫不得已，隐姓埋名，除中秋晚会唱力宏经典老歌《改变自己》未参加任何其他活动。<br/> 今鼓足勇气，参加比赛，愿博诸位一笑。<br/> 还望各位同学少年多多支持！在下有礼了！<br/>'),
(3, 0, 15, '清唱', 'http://changba.com/s/nHNYlBNnw9JYLE1EtfTEqA?&code=Kxhsv6044ik', '狮子座，但不会唱《狮子座》，非90年代生人，现为典型的抓住青春尾巴的患者，人艰不拆。</br/> 声线控，腔调控，不懂音乐也没有特别热爱音乐，但喜好自娱自乐地哼唱，怕鬼者不得不防。</br/> 大学时既宅又腐，毕业后前途未卜，工作三年大跨度转专业留学，现在伍村苦逼地继续治疗。</br/>'),
(4, 1, 16, '落叶归根', 'http://fc.5sing.com/11224196.html', '大家好，我叫李超，是2013Fall入学的CS专业的新生。从小我就热爱音乐，并且从小就接受了一些音乐启蒙教育，让我后来慢慢认识音乐了解音乐，从而更加喜爱音乐。大学以后我开始喜欢上了唱歌，先后喜欢过好多歌手的歌曲。这次参加卡拉ok大赛是我第一次参加比赛，希望大家多多支持！'),
(5, 0, 17, '圣诞结', 'http://changba.com/s/8A0HnwWCd_IiDEJSWblq9g?code=Gt1bjDM0qnHCJdoHUPnwOOYWQJwXDKFu_QG6y-aqVOU-tGk48IACkfutguIuUlY4vqa65x-3zVb6HJMt3iViiIN6neGN9SUfUv4svb8y9bh4h0hhh8R3vQ', '宅。由于不怎么爱说话，存在感总是稀薄，但却很享受这种简单安静的生活。在狭小宁静的空间里窥探世界的广博与跃动，大概就是我的生存之道了。'),
(6, 0, 18, '僕みたいな君、君みたいな僕】', 'http://fc.5sing.com/5557066.html', '大家好，我是郑蓓欣。是WPI MSIT的学生。请多关照。'),
(7, 1, 19, '烂泥', 'http://changba.com/s/VpqyLBt-awqER05zUA1uwQ?ac=web', '这个人很懒，什么都没留下。。。'),
(8, 1, 20, '爱情电影', 'http://www.youtube.com/watch?v=40L-_4J5Q-o&feature=youtu.be', '我们是热爱文艺的靠谱女青年'),
(9, 0, 21, '下沙', 'http://www.tlkg.com.cn/maiba/share.action2?code=TVY7MTI5MDE2NQ%3D%3D', '大家好！ 我是来自湖北武汉的温常淘，我的兴趣爱好挺多的，喜欢打球游泳还有各种桌游！ 至于唱歌嘛，也就是平时哼哼小曲，这次参加好声音希望大家能为我转身！'),
(10, 0, 22, '星月神话', 'http://www.tlkg.com.cn/maiba/share.action2?code=TVY7MTI5MDI2Nw==', '大家好，我叫姜晗，是一个性格活泼开朗的女孩儿，希望大家多多支持和鼓励，谢谢大家！'),
(11, 0, 23, '孤单北半球', 'http://www.tlkg.com.cn/maiba/share.action2?code=TVY7MTI5MDI0Mg==', '大家好！ 我叫王亚雄，来自山西太原。 我有很多兴趣爱好，比如羽毛球、游泳、还有dota等等，有相同爱好的同学可以一起切磋切磋。 这次是我第一次参加唱歌类型的比赛，还请大家多多指教！'),
(12, 0, 37, '你太猖狂', 'http://www.tlkg.com.cn/maiba/share.action2?code=TVY7MTI5MzgwNA==&t=1384583249338', '大家好，我是任超，山东大嫚，活泼健康有朝气；希望大家多捧场支持我~'),
(13, 1, 99, '忽然之间', 'http://www.tudou.com/programs/view/IZRSHIejkuk/?qq-pf-to=pcqq.c2c', '最爱突发奇想，<br/> 好当超级捧场王，<br/> 今日终于荣登主角宝座，<br/> 宇宙无敌好基友组合腾空出世！<br/> 还请大家多投票少试听，<br/> 待到听现场之时，我们包您腰好腿好胃口好，<br/> 珍爱生命，请支持宇宙无敌好基友组合！<br/>'),
(14, 0, 160, '天使之城', 'http://www.tlkg.com.cn/maiba/share.action2?code=TVY7MTMwMDQyMw==&t=1384748425245', ' Dream as if you&#39;ll live forever. <br/>Live as if you&#39;ll die today'),
(15, 1, 137, '记得', 'http://www.tudou.com/programs/view/c58fQNqMj3o/', '');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(140) NOT NULL,
  `name` varchar(140) NOT NULL,
  `des` text NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`enable`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`id`, `type`, `name`, `des`, `enable`) VALUES
(1, '房产商', 'Micozzi Management, Inc', '<section align="center" style="text-align:center;">\r\n	<h1>Micozzi Management, Inc</h1>\r\n	<a href="http://www.micozzimanagement.com%2foffice_worcester.htm" target="_blank">http://www.micozzimanagement.com/office_worcester.htm</a>\r\n</section>\r\n\r\n<p class="MsoNormal" align="center" style="text-align:center;background:white;">\r\n	<b>联系方式</b><br />\r\n	5O Elm Street<br />\r\n	Worcester, MA 01609<br />\r\n\r\n	tel.- 508.798.8406<br />\r\nfax.- 508.798.8988<br />\r\nEmail: <span><a href="mailto:worcester@micozzimanagement.com" >worcester@micozzimanagement.com</a></span>\r\n</p>\r\n<p class="MsoNormal" style="background:white;">\r\n	该房产由owner所有，不属于中介性质，不含中介费用。房产遍布WPI附近的街区，包括West st. Bowdoin st.\r\nJohn st. Elm st 等等。具体地址见上面的链接，网页左栏的Properties\r\n</p>\r\n<p class="MsoNormal" style="background:white;">\r\n	同时，该房产还立足于新英格兰地区，包括波士顿，罗德岛在内，方便毕业后找工作的同学在相应的地区找房子，房产地址详见：<span><a href="http://www.micozzimanagement.com/">http://www.micozzimanagement.com/</a></span>\r\n</p>\r\n<img src="/kindeditor/attached/image/20131206/20131206232617_59622.png" style="width:400px; margin:0 auto;" alt="Micozzi Management, Inc" />\r\n<p class="MsoNormal" align="center" style="text-align:center;background:white;">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>&nbsp;</span>\r\n</p>\r\n<p class="MsoNormal">\r\n	Hereby recommend a real\r\nestate management company, Micozzi Management, Inc.\r\n</p>\r\n<p class="MsoNormal">\r\n	<span><a href="http://www.micozzimanagement.com/office_worcester.htm">http://www.micozzimanagement.com/office_worcester.htm</a></span><u></u>\r\n</p>\r\n<p class="MsoNormal" align="center" style="text-align:center;">\r\n	<b>Contact\r\ninformation:</b>\r\n</p>\r\n<p class="MsoNormal" align="center" style="text-align:center;">\r\n	<b>5O Elm Street<br />\r\nWorcester, MA 01609</b>\r\n</p>\r\n<p class="MsoNormal" align="center" style="text-align:center;">\r\n	<b>tel.- 508.798.8406<br />\r\nfax.- 508.798.8988<br />\r\nEmail: <a href="mailto:worcester@micozzimanagement.com" >worcester@micozzimanagement.com</a></b>\r\n</p>\r\n<p class="MsoNormal">\r\n	Micozzi Management, Inc owns its property, not a letting agent, not\r\nasking for agent fee.\r\n</p>\r\n<p class="MsoNormal">\r\n	Micozzi Management, Inc has\r\nmany houses and apartments\r\nnear WPI campus, such as West St, Bowdoin St, John St, and Elm St. For more\r\ndetail information, please click on the above-mentioned link and see the left\r\ncolumn of the Properties.\r\n</p>\r\n<p class="MsoNormal">\r\n	In addition, Micozzi\r\nManagement, Inc also has other officers around New England Area, including\r\nBoston and Rhodes Island. It is convenient for job seeking graduates to find\r\nhouses or apartments in these cities. The properties address: <span><a href="http://www.micozzimanagement.com/">http://www.micozzimanagement.com/</a></span>\r\n</p>', 1),
(2, 'Dealer', 'Herb Chambers Honda of Westborough', '<p class="p0">\r\n	<span>推荐一家有中文服务的</span><span>dealer</span> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0" style="text-align:center;">\r\n	<img src="/kindeditor/attached/image/20140127/20140127133856_97350.png" alt="" /><img src="/kindeditor/attached/image/20140127/20140127133903_51107.png" alt="" /> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0">\r\n	有需要买车的同学们可以考虑下这家与<span>CSSA</span><span>合作的</span><span>dealer</span><span>：</span><span>Herb&nbsp;Chambers&nbsp;Honda&nbsp;of&nbsp;Westborough</span><span>。店里有中文服务，沟通零障碍，售后更轻松。车是个复杂的大件，与同胞交流真的方便放心很多。</span> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0">\r\n	Herb&nbsp;Chambers<span>是新英格兰地区最大车行，拥有</span><span>56</span><span>家连锁，品质绝对有保证。他家在购得二手车后会做完整的检查和必要的修整保养再出售，因此车况都蛮好的。</span><span>Herb&nbsp;Chambers</span><span>还提供完整的售后服务，包括</span><span>5-day&nbsp;money&nbsp;back&nbsp;guarantee&nbsp;&amp;&nbsp;30-day/1500&nbsp;mile&nbsp;exchange&nbsp;policy</span><span>，并且有专业的维修部门。</span> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0">\r\n	店里有大量不同型号的新车和二手车，主要是本田，也会有客户<span>trade-in</span><span>的其他品牌车辆。同学们有任何关于购车的疑问都可以咨询杨先生。</span> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0">\r\n	联系人：<span>David&nbsp;Yang</span><span>（杨佳兴）</span> \r\n</p>\r\n<p class="p0">\r\n	公司：<span>774-760-0500</span> \r\n</p>\r\n<p class="p0">\r\n	手机：<span>774-272-5312</span> \r\n</p>\r\n<p class="p0">\r\n	邮箱：DYang@herbchambers.com\r\n</p>\r\n<p class="p0">\r\n	地址：<span>350&nbsp;Turnpike&nbsp;Road,&nbsp;Route&nbsp;9,&nbsp;Westborough,&nbsp;MA&nbsp;01581</span> \r\n</p>\r\n<p class="p0">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（临近<span>9</span><span>号</span><span>/20</span><span>号公路交会口，距离学校</span><span>7.7</span><span>迈。）</span> \r\n</p>\r\n<p class="p0">\r\n	网站：<a href="http://www.herbchambershondaofwestborough.com/index.htm" target="_blank">http://www.herbchambershondaofwestborough.com/index.htm</a>\r\n</p>\r\n<p class="p0">\r\n	&nbsp;\r\n</p>\r\n<p class="p0" style="text-align:center;">\r\n	<img src="/kindeditor/attached/image/20140127/20140127133920_74202.png" alt="" />&nbsp;\r\n</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suvival_guide`
--

CREATE TABLE IF NOT EXISTS `suvival_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` varchar(140) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `suvival_guide`
--

INSERT INTO `suvival_guide` (`id`, `index`, `parent_id`, `content`, `sort`) VALUES
(1, '前言', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;前言 </span> \n</h1>\n<hr />\n<p>\n	<span style="line-height:1.5;">亲爱的同学</span><span style="line-height:1.5;">:</span> \n</p>\n<p>\n	<span style="color:;"></span> \n</p>\n<p class="normal">\n	<span>你好</span>!\n</p>\n<p class="normal" style="text-indent:36.0pt;">\n	首先我们代表WPI<span>中国学生学者联谊会</span>Chinese\nStudents &amp; Scholars Association(CSSA)<span>欢迎您来</span>WPI<span>学习深造</span>! WPI<span>地处美国历史最悠久的马萨诸塞州</span>,<span>不仅人文气息浓厚</span>,<span>而且高科技产业由于众多大学的支撑而非常发达</span>。对于WPI<span>的同学来说</span>,<span>无论理工文商</span>,<span>这里都是学习和工作的理想地点。</span> \n</p>\n<p class="normal" style="text-indent:36.0pt;">\n	WPI CSSA<span>主要是由来自中国的学生和学者组成的志愿性组织。目前我们已有超过</span>300<span>名成 员</span>,<span>其中包括学生、教授、访问学者及家属等。</span>CSSA<span>的主要任务是为中国学生学者提供一些生活 和学习上的帮助</span>,<span>包括接新生、帮助新生安顿和适应这里的生活、举办中秋晚会、春节晚会等具有中国特色的活动等等。</span> \n</p>\n<p class="normal" style="text-align:justify;text-indent:36.0pt;">\n	<span>这本新生手册主要是为了帮助刚来到美国</span>, <span>来到</span>Worcester<span>的新同学、朋友们尽快地适应这 里的生活、和学习、工作。本手册经过</span>WPI<span>中国学生学者联谊会成员们的共同努力制作而成。这 里</span>, <span>我们向所有参与编写和校正的同学们表示深深的感谢</span>!\n</p>\n<p class="normal" style="text-indent:36.0pt;">\n	<span>本手册中不足之处恳请大家及时指正</span>, <span>我们会不断地更新和完善。本手册中出现的一些网 上购物地点或者订机票代理等的电话</span>,<span>完全是同学们平时积累的经验所得</span>,<span>不存在任何商业广告 行为。</span> \n</p>\n<p class="normal" style="text-indent:36.0pt;">\n	<span>我们也真诚地希望能有更多热心的同学、朋友们加入</span>WPI<span>中国学生学者联谊会</span>, <span>互相帮助</span>, <span>共同努力</span>, <span>更好地为这里的中国学生学者们服务</span>!\n</p>\n<p class="normal">\n	最后, <span>祝大家在</span>WPI<span>过得愉快、充实</span>!\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	CSSA <span>敬上</span> 2014<span>年夏</span> \n</p>', 0),
(2, '简介', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;新生必读\n	<hr />\n	</span> \n</h1>\n<p class="normal">\n	<span style="line-height:1.5;"></span><span style="line-height:1.5;"> </span> \n</p>\n<p class="normal" style="margin-left:24.0pt;text-indent:-24.0pt;">\n	<b>(1) 2014FALL QQ 群:374823208</b> \n</p>\n<p class="normal">\n	<span>此群为<span style="background-color:#FFE500;">实名制</span></span>,<span>请同学们把群名片改为</span>:<span style="background-color:#FFE500;">中文姓名/</span><span style="background-color:#FFE500;">专业</span><span style="background-color:#FFE500;">/</span><span style="background-color:#FFE500;">入学年份</span><span style="background-color:#FFE500;">/</span><span style="background-color:#FFE500;">籍贯</span><span>。定时清理人员</span>,<span>请及时更改<b>。</b></span><b></b> \n</p>\n<p class="normal">\n	<b>&nbsp;</b> \n</p>\n<p class="normal">\n	<b>&nbsp;(2) WPILIFE<span>网站</span>&amp;Mailist<span>使用规范</span></b> \n</p>\n<p class="MsoNormal">\n	WPILIF<span>是一个</span>CSSA<span>官方的信息分享网站，网址是</span><a href="http://wpilife.org/">http://wpilife.org</a>需要注册。\n</p>\n<p class="MsoNormal">\n	WPILIFE<span>上会经常有学校活动信息发布，同时也有很多同学在该网站上出售物品，</span> \n</p>\n<p class="MsoNormal">\n	<br />\n</p>\n<p class="MsoNormal">\n	新生也可以在这个网站以较低的价格买到学长学姐们的二手商品，给大家都提供了便利。\n</p>\n<p class="MsoNormal">\n	发布商品教程请看<a href="http://wpilife.org/manual/6">http://wpilife.org/manual/6</a><b>，</b>非常简单明了！\n</p>\n<p class="MsoNormal">\n	<br />\n</p>\n<p class="MsoNormal">\n	Maillist <b>(</b><a href="mailto:cssa@wpi.edu">cssa@wpi.edu</a><b>) </b>的用途主要是由CSSA officer<span>为大家提供以下信息：</span> \n</p>\n<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-36.0pt;">\n	1. 发布学校、学生会、各社团和组织的活动信息。\n</p>\n<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-36.0pt;">\n	2. 提供学术交流的平台，包括职业规划，职业规划，工作机会等。\n</p>\n<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-36.0pt;">\n	3. 张贴学生会公告、通知。\n</p>\n<p class="MsoNormal" style="margin-left:36.0pt;">\n	<br />\n</p>\n<p class="normal">\n	<b>&nbsp;(3) CSSA Mail List<span>加入方法</span>:</b> \n</p>\n<p class="MsoNormal">\n	&nbsp;请发邮件到: <a href="mailto:yzheng2@wpi.edu">yzheng2@wpi.edu</a><span class="MsoHyperlink"></span> \n</p>\n<p class="MsoNormal">\n	<br />\n</p>\n<p class="normal">\n	<span>标题写为</span>:<span>加入</span> Mail List;\n</p>\n<p class="normal">\n	<span style="line-height:1.5;">内容写为</span><span style="line-height:1.5;">:[</span><span style="line-height:1.5;">发件人姓名</span><span style="line-height:1.5;">]</span><span style="line-height:1.5;">和</span><span style="line-height:1.5;">[</span><span style="line-height:1.5;">专业</span><span style="line-height:1.5;">],</span><span style="line-height:1.5;">发件人的</span><span style="line-height:1.5;">[</span><span style="line-height:1.5;background-color:#FFE500;">邮箱地址</span><span style="line-height:1.5;">]</span><span style="line-height:1.5;">（建议使用</span><span style="line-height:1.5;">wpi</span><span style="line-height:1.5;">邮箱）</span> \n</p>\n<p class="normal">\n	<b>&nbsp;</b> \n</p>\n<p class="normal">\n	<b>(4)<span>对新生手册的意见与建议</span>:</b> \n</p>\n<p class="normal">\n	<span>请发邮件到</span>: <a href="mailto:wpicssa2014@gmail.com">wpicssa2014@gmail.com</a>;\n</p>\n<p>\n	<br />\n</p>\n<h1>\n	<span style="color:#E53333;">简介\n	<hr />\n	</span> \n</h1>\n<p class="normal">\n	<span style="line-height:1.5;"></span><span style="line-height:1.5;"></span> \n</p>\n<p class="normal" style="margin-left:24pt;text-indent:-24pt;">\n	<b>WPI CSSA 2014主要工作人员：</b><b></b> \n</p>\n<p class="normal">\n	郑阳（主席），林赟（副主席），温常淘（副主席）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n</p>\n<p class="normal">\n	杨理涵（副主席），柯亮（秘书），庞葳洁（会计）\n</p>\n<p class="normal">\n	苟鹏宇（文体部长），蔡薇（宣传部长），陈丝雨（外联部长）\n</p>\n<p class="normal">\n	王克寒（IT部长），赵锴峰（生活组织部长）\n</p>\n<p class="normal">\n	详见WPILIFE：<a href="http://wpilife.org/">http://wpilife.org</a> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal" style="margin-left:24pt;text-indent:-24pt;">\n	<b>对</b><b>WPI CSSA工作的意见与建议:</b> \n</p>\n<p class="normal">\n	请发邮件到:&nbsp;<a href="mailto:wpicssa2014@gmail.com">wpicssa2014@gmail.com</a>;\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal" style="margin-left:24pt;text-indent:-24pt;">\n	Chinese Students &amp; Scholars Association (CSSA),&nbsp;即中国学者联谊会:\n</p>\n<p class="normal">\n	Email:&nbsp;<a href="mailto:cssa@wpi.edu">cssa@wpi.edu</a> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal" style="margin-left:24pt;text-indent:-24pt;">\n	Chinese Student Association (CSA),&nbsp;即中国学生会:\n</p>\n<p class="normal">\n	Email:&nbsp;<a href="mailto:csa@wpi.edu">csa@wpi.edu</a> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal" style="margin-left:24pt;text-indent:-24pt;">\n	International House (IH),&nbsp;即&nbsp;WPI&nbsp;的国际学生管理部门:\n</p>\n<p class="normal">\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone: +1-508-831-6030\n</p>\n<p class="normal">\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: +1-508-831-6032\n</p>\n<p class="normal">\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email: ih@wpi.edu\n</p>\n<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Webpage:&nbsp;</span><a href="http://www.wpi.edu/offices/ih/">http://www.wpi.edu/offices/ih/</a>\n<p class="normal">\n	<a href="http://www.wpi.edu/offices/ih/"></a> \n</p>', 0),
(3, '行前准备', 0, '<h1>\n	<span class="Heading1Char" style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 行前准备</span> \n</h1>\n<h2 id="签证">\n	<hr />\n	1.签证\n</h2>\n<p class="normal">\n	网上的签经有很多,这里就不多说了。附上几个国内比较有名的留学论坛的签证版网址。\n</p>\n<p class="normal">\n	○寄托家园:<a href="http://bbs.gter.net/bbs/forum-61-1.html">http://bbs.gter.net/bbs/forum-61-1.html</a> \n</p>\n<p class="normal">\n	○太傻:<a href="http://bbs.gter.net/bbs/forum-61-1.html">http://bbs.taisha.org/forum-73-1.html</a> \n</p>\n<p class="normal">\n	○CD:<a href="http://bbs.gter.net/bbs/forum-61-1.html">http://www.chasedream.com/list.aspx?cid=7</a> \n</p>\n<p class="normal">\n	关于签证,这里要解释一下。你在美国能够呆多久不是签证官决定的,而是你刚进入美国的机场的入境官决定的。他会根据你的签证和I-20来判断你在美国能呆多久。一般都是D/S。意味这只要你不出美国,你可以一直待到结束学业。从大陆来的同学签证一般都是1年期的,意思是你可以在1年内无限次进出美国。但是如果你在签证过期后出了美国国境,再次回到美国就需要重新签证。(一般即将过期的话最好也重新签,以免出问题;比如签证6、18到期,你打算6月1号的飞机回美国,就最好去重新签一个)International House的回复是一般WPI的学生签证过期又不想回家的,可以去墨西哥或者加拿大去重新签证。为什么不能在美国本土重新签证呢?因为管签证的是美国大使馆。在美国本土怎么可能有美国大使馆呢?(我觉得挺扯淡的。。其他国家都行。。) (如果签证过期之后,只要不出美国是没有问题的。因为签证代表的是你合法进入美国的期限,跟出去没有关系。)\n</p>\n<h2 id="订机票">\n	2.订机票\n</h2>\n<h2 id="订机票">\n	<span style="font-size:12px;font-weight:normal;line-height:1.5;">可以找当地的机票代理,但因为是单程会比较贵。买的早可能更便宜,买的迟就贵。当然也看地区,一般从北京,上海,香港可能相对便宜;经停点越多越便宜。定机票后请将航程信息填入CSSA接机表,等统计完成后会放出统计结果,具体链接请见群分享或询问CSSA。</span>\n</h2>\n<h2 id="找飞友&amp;订limo">\n	3.找飞友&amp;订limo\n</h2>\n<p class="normal">\n	首先,limo不是加长凯迪拉克,她就是叫limo而已......一般也就是轿车或者van。\n</p>\n<p class="normal">\n	当大家签证办好之后请到新生群里询问一下在同一地区的同学,大家尽量约好一起飞。一是一路上互相有个照应,一起聊个天吃个饭什么的,等待时间长的话还可以轮流睡觉;二来是到伍斯特之后可以大家一起订limo去学校。学长姐们毕竟有限,他们也都有自己的事情要忙。\n</p>\n<p class="normal">\n	订limo的网站:\n</p>\n<p class="normal">\n	○Knight Limo:<a href="http://www.knightlimo.com/">www.knightlimo.com</a> \n</p>\n<p class="normal">\n	○Worcester Limo:<a href="http://www.wlimo.com/">www.wlimo.com</a>\n</p>\n<p class="normal">\n	注意,一辆车好像只能指定送到一个地点,这是规定,你可以试着跟司机说好话让他多送几个地点。成功率好像不高,成功的话记得多给小费,不然可能没有下次了。\n</p>\n<p class="normal">\n	订limo流程:订车的时候选择付现金,这样如果司机服务态度不好,比如不帮你提箱子之类的就少给点小费。小费一般10%。\n</p>\n<h2 id="体检和疫苗">\n	4.体检和疫苗\n</h2>\n<p class="normal">\n	大家拿到offer的时候应该也同时看到学校要求要寄体检单子和疫苗注射的单子,如果没有请到此处下载(<a href="http://www.wpi.edu/Admin/Health/forms.html">http://www.wpi.edu/Admin/Health/forms.html</a>)。在国内一般都是去各地的国际旅行卫生保健中心去体检(还有些同学去大医院也行,主要就是让他们填单子盖章)。带着身份证、体检表、2张二寸证件照、小时候的疫苗记录本、1000元人民币(其实用不了这么多)去就好了。\n</p>\n<p class="normal">\n	因为可能要做一个TB皮试,有些地方不是每天可以做,所以去之前大家可以打个电话去问一下一周哪几天可以做TB皮试;不然可能就要多跑一趟。然后,如果疫苗本找不到了也没关系,大不了多扎几针。\n</p>\n<p class="normal">\n	体检和疫苗两个部分哪个先做都可以,完了会给一本黄色的体检证和一本深红疫苗证。这两个如果你去其他国家也会认,因为上面盖着中国国家检疫检验局的大章。虽然学校让把体检表寄回来,其实也可以来了以后再交。期间你的账号会被hold而已,大概就是不能自己在网上注课。学校网站上的四份表都要下载填写。体检要尽早,很多疫苗要打多次,然后其间要隔三四个星期,所以体检越早越好。\n</p>\n<p class="normal">\n	体检表格指南请见附录。\n</p>\n<p class="normal">\n	另外请参考CD(有分地区介绍):<a href="http://www.chasedream.com/list.aspx?cid=36">http://www.chasedream.com/list.aspx?cid=36</a> \n</p>\n<p class="normal">\n	(武汉:<a href="http://parents.tiandaoedu.com/ready/17271.html%20">http://parents.tiandaoedu.com/ready/17271.html</a>)\n</p>\n<h2 id="住房">\n	5.住房\n</h2>\n<p class="normal">\n	(1)临时住房\n</p>\n<p class="normal">\n	a. 想要来之后再看房子的同学可以暂时住在International House一个星期,需要提前申请;租金是20美元/天/人。房子很紧,越早申请越好。\n</p>\n<p class="normal">\n	b. 租不到International House住房的同学,可以找老生帮忙,借住几晚,按天付房租;一般15美元/天/人。这个钱是帮老生付你居住期间的水费电费网费等等。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	(2)关于房子\n</p>\n<p class="normal">\n	首先,美国的房子分House和Apartment。House就比较有乡村风情,一幢一幢的房子;整幢租给你的话,可能就是大家公用一楼的厨房客厅,二楼各睡各屋;另一种就是House里两层或三层,每层住3个人,然后厨房客厅卧室都在一层。Apartment就是公寓了,公寓一般比较现代化,房子也会新一点。\n</p>\n<p class="normal">\n	新生可以在来之前就找好房子,如果你想亲自看看这边住房的条件再决定,也可以来了以后再找。 按照所有权,房子大概分为以下两类:\n</p>\n<p class="normal">\n	<b>a. On-Campus</b> \n</p>\n<p class="normal">\n	On-campus的房子是学校的,分部在学校周围比较近的区域。月租500-600美元,包热水包电,(美国这边未加热的水是免费的);有家具(furnished) (一般有twin size的 床,桌子,椅子等)。500美元的是三个人share一层,3个bedroom,一个卫生间,一个厨房,1-2个living room;600美元的是三个人share整个两层的house,一楼是厨房客厅,二楼是bedrooms。\n</p>\n<p class="normal">\n	学校的房子都有洗衣机和烘干机,免费无限量使用。 除了设备齐全、空间 大之外,学校的房子不需要deposit,lease也比较灵活(每个月一签)。如果想搬走,大概 提前1个半月通知管理员就可以。另外,学校还有专门的服务人员负责维修,如果是下水道堵了之类的小事情,一般都是免费的。\n</p>\n<p class="normal">\n	申请学校的房子,请联系Residential Services: Amy Beth Polonsky Phone: +1 508-831-5130;Email: apolonsky@wpi.edu遇到高峰期,可能要排上比较久时间。(运气好的话一般可以排到)注意:申请学校的房子不需要提前找好roommate,都是学校安排。\n</p>\n<p class="normal">\n	<b>b. Off-Campus</b> \n</p>\n<p class="normal">\n	Off-campus的房子一般是owner的,也有个别是中介公司旗下的,有的距离学校很 近,像weststreet,隔条institute road就是学校;有的则比较远,像William street, etc,走路大概需要10几分钟。\n</p>\n<p class="normal">\n	房子一层3-4个bedroom是最普遍的房型,有的房子两层4-5个bedroom,很多把livingroom改造成bedroom。很多时候是整体出租,需要大家租房之前自己找好室友。月租350-600美元不等。房租低的一般不包括任何Utilities,像电和气都得自己付。暖气分三种,烧油的,烧气的和电暖。\n</p>\n<p class="normal">\n	烧油的,油大概570美元150 gallon,可以用一个多月;电暖大约30美元/月/人;气暖暂时不了解。一般烧油和气的不给力还贵。然后,如果是包水电暖的房子,注意问一下房东是不是有限制:比如暖气是不是随便开之类的。\n</p>\n<p class="normal">\n	还有一点就是有的房子是带家具的,价格会高点,便宜的很多基本是没有家具的。 对新生来说,住furnished apartment会方便一点,毕竟第一年来什么都没有,要一样一样家具买起来还是挺累人的。如果找的是Unfurnished apartment,那么来了以后可以买点家具,例如Wal-Mart, Target, IKEA, Home Depot等。 如果想找价廉物美的家具,可以去yard sale看看,会比店里 便宜不少,或者去上面的那个craigslist上去淘,经常能遇见比较便宜的。旧家具还可以去Park Ave的Good Will,和Chandler Street上面的旧家具店买。(如果早点儿来,还可以捡到路边的椅子,桌子之类的家具。床垫沙发之类的不要轻易往家里搬,容易藏匿bad bug)校外的房子,一般都要签一年或者至少9个月的lease,还要交safety deposit,第一个月和最后一 个月的房租,在这里必须要提醒大家的是,一定要考虑清楚以后,才能慎重地签下你的lease。一不经意就可能碰到恶房东,可别小看这房东的作用,一个可怕的房东,会给你带来一年阴沉的心情,最后还可能拿不回押金。Nice的房东会很体贴,例如帮你修东西,整理草坪,放置家具等等。找房子最好自己看个仔细清楚明白。想买车的同学还要看租住的房子有没有停车位置,或者周围 是否适合街边停车。冬天的时候路边有雪,街边停车位比较难找,有个固定车位还是挺方便的。<span style="line-height:1.5;">房子的位置也要考虑,尽量离学校近一点。第一年没有车,住的远会比较麻烦。下图是我们总结的所谓安全区,供参考。</span>\n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821124622_59100.png" alt="" /> \n</p>\n<p class="normal">\n	一般在学校附近域内的房子综合条件比较理想,无论远近、 安全、安静程度都比较好。总体来说,住房的综合条件由西向东,由北向南逐渐递减。Park Ave以西是一个山坡,也 是可以考虑的。Highland以南的地区,在Dix street和Bowdoin street上现在也有很多中国学 生租住。\n</p>\n<p class="normal">\n	网上在线找房子有两个地方:\n</p>\n<p class="normal">\n	○WPI Apartment Finder System:\n</p>\n<p class="normal">\n	<a href="http://www.wpi.edu/offices/rso/aptfinder.html">http://www.wpi.edu/offices/rso/aptfinder.html</a>\n</p>\n<p class="normal">\n	○Craigslist网站Worcester地区WPI附近:\n</p>\n<p class="normal">\n	<a href="http://worcester.craigslist.org/search/apa?query=WPI">http://worcester.craigslist.org/search/apa?query=WPI</a> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	前者信息更新较慢,但是集中,都是针对WPI的。后者更新极其迅速,但是未必有很近的房子,而且很多重复的。在使用后面这个叫做craigslist的网站的时候,注意在搜索里打WPI,这样你不至于找到走一天也到不了WPI的房子了。\n</p>\n<p class="normal">\n	总而言之,不能简单比较房租,要比较加上各种因素以后的价钱和综合性能。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal" style="margin-left:24.0pt;text-indent:-24.0pt;">\n	<span><span>○</span>推荐一个与</span>CSSA<span>合作房产商：</span>Micozzi Management, Inc:\n</p>\n<p class="normal" style="margin-left:24.0pt;text-indent:-24.0pt;">\n	<a href="http://www.micozzimanagement.com/office_worcester.htm">http://www.micozzimanagement.com/office_worcester.htm</a> \n</p>\n<p class="MsoNormal" align="center" style="text-align:center;">\n	<b><span style="color:#E53333;">联系方式</span></b><b></b> \n</p>\n<p class="MsoNormal" align="center" style="text-align:center;">\n	<strong>5O Elm Street</strong><br />\n<strong> Worcester, MA 01609</strong> \n</p>\n<p class="MsoNormal" align="center" style="text-align:center;">\n	<strong>tel.- 508.798.8406</strong><br />\n<strong> fax.- 508.798.8988</strong><br />\n<strong> Email: </strong><a href="mailto:worcester@micozzimanagement.com"><strong>worcester@micozzimanagement.com</strong></a> \n</p>\n<p class="MsoNormal" align="center" style="text-align:center;">\n	<br />\n</p>\n<p class="normal" style="margin-left:24.0pt;">\n	<span>该房产由</span>owner<span>所有，不属于中介性质，不含中介费用。房产遍布</span>WPI<span>附近的街区，包括</span>West st. Bowdoin st. John st. Elm st <span>等等。具体地址见上面的链接，网页左栏的</span>Properties\n</p>\n<p class="normal" style="margin-left:24.0pt;">\n	<span>同时，该房产还立足于新英格兰地区，包括波士顿，罗德岛在内，方便毕业后找工作的同学在相应的地区找房子，房产地址详见：</span><a href="http://www.micozzimanagement.com/">http://www.micozzimanagement.com/</a> \n</p>\n<p class="normal" style="text-align:center;margin-left:24pt;">\n	<img src="/kindeditor/attached/image/20140421/20140421224500_48955.png" alt="" />\n</p>\n<h2 id="行李">\n	6.行李\n</h2>\n<p class="normal">\n	a.限重及规定\n</p>\n<p class="normal">\n	每个航空公司的限重是不同的,所以不在这里一一列出。所有情况可以在航空公司的官方网站找到。之前很多航空公司可以免费托运2个23KG的箱子;好像现在有规定只能带一个箱子了;托运箱子一般是30寸的。由于大家顶的航空公司都不一样,而且是新规定,所以具体要求请同学们自行与航空公司确认。\n</p>\n<p class="normal">\n	绝对不要超重。一般超过1-2KG不算超重。超重的话国内会罚500RMB。不要带任何肉类食品、土壤,植物,种子。真空包装的肉类(如烤鸭,临武鸭,绝味......怎么全都是鸭......)之类通常也会被没收。带太多的话,可能罚款;听说过罚款300美元的,但不确定罚款会不会视情况而定。进入美国的托运行李是不能上锁的,除非是TSA(transit security authority,美国国土安全部下面的一个部门)同意的锁子。这些锁淘宝上有卖,不过建议一点都不锁。由于有开箱检查的可能性,因此这种情况下上了锁可能会被直接撬开。可以用打包带捆好箱子,上面贴上个人信息。贵重物品请务必随身携带,谨防丢失。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	b.书本\n</p>\n<p class="normal">\n	教材可以通过以下链接找到,因为每门课每一届用的书可能不一样,请务必先查证后再买:\n</p>\n<p class="normal">\n	<a href="http://wpi.bncollege.com/webapp/wcs/stores/servlet/TBWizardView?catalogId=10001&storeId=32554&langId=-1">http://wpi.bncollege.com/webapp/wcs/stores/servlet/TBWizardView?catalogId=10001&amp;storeId=32554&amp;langId=-1</a> \n</p>\n<p class="normal">\n	来之前问问这边的师兄师姐需要什么教科书,看看国内是否有影印版。否则这边教材很贵,国内人民币76元的书,这里可以卖122美元。不过如果你的行李超重就算了,还有其他办法省教材费。非要带的话,可以通过海运提前一两个月把一些你觉得很有用的但是又不能托运的书寄过来,让这边的师兄姐们代为接收。也可以在国内的当当网订购直接海运过来,每本书的运费是书价的一半\n</p>\n<p class="normal">\n	常用买书网址:\n</p>\n<p class="normal">\n	○<a href="http://www.bestwebbuys.com/books/index.html">www.bestwebbuys.com/books/index.html</a> \n</p>\n<p class="normal">\n	○<a href="http://www.half.com/">www.half.com</a> \n</p>\n<p class="normal">\n	○<a href="http://www.thecheapestbook.com/">www.thecheapestbook.com</a> \n</p>\n<p class="normal">\n	○<a href="http://www.amazon.com/">www.amazon.com</a> \n</p>\n<p class="normal">\n	○<a href="http://www.weikeg.com.tw/">www.weikeg.com.tw/</a> \n</p>\n<p class="normal">\n	○<a href="http://www.fetchbook.info/">www.fetchbook.info</a> \n</p>\n<p class="normal">\n	○<a href="http://www.dangdang.com.cn/">www.dangdang.com.cn</a> \n</p>\n<p class="normal">\n	○<a href="http://www.docin.com/">www.docin.com</a> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	c.衣物服饰\n</p>\n<p class="normal">\n	如果是夏天过来,T恤要多带一些,因为会换的比较勤快。但是T恤这边卖的很便宜,所以也要酌量携带。这里的夏天相对来说凉快一点,不过也有三十几度高温的日子。另外,需要带一些常用的大衣和外套;这里冬天经常下雪,室内外温差又大,可以买比较长,可以把膝盖都包住的羽绒服,这样在外面走的时候就不会太冷。不过羽绒服也可以在这儿买,价格可以接受,到了第二年打折也非常多,买了屯着很划算。只是可能款式没有很好看。太长的羽绒服男生穿有点奇怪,不太建议。女生或者买比较好的长大衣;这边也比较普遍,国内的样式就是稍微好看一些。总之,原则就是外面要够厚,里面可以少穿一些,到了屋里把外套脱了也不会太热。另外对于女生来说,可以考虑在国内买一些小饰品,比较便宜好看,比如围巾,手套,毛袜什么的。然后就是这边都是人字拖比较多,喜欢传统拖鞋滴同学们可以从国内带过来。最后,衣服鞋子等在过节的时候打折很厉害,可以很便宜的价格买到不错的。例如感恩节,圣诞节和独立日等。总之,不建议带太多的衣物过来。不过这边穿衣服的风格跟国内不一样,喜欢日韩系的同学就多带几件喜欢的吧;喜欢T-shirt,牛仔,欧美风的就随意啦。\n</p>\n<p class="normal">\n	<b>正装:</b>对于男生,带几件好点的衬衫加一套完整的西服西裤领带就好了。女生除了上述西装(西裤可由西装裙代替),还要1-2件中/西式晚礼服。西装人手一套一定要的,参加各种面试没有正装是不会有开始的。有时会有什么晚宴之类的,或者有比较正式的场合,这种时候男生很简单,继续西装就可以了,女生就要穿礼服了。嫌麻烦的也可以来这边再买,美国正装礼服很多的,知名品牌也不会太贵。\n</p>\n<p class="normal">\n	Business casual:指的是衬衫或者polo式样的有领tshirt+高尔夫球裤。\n</p>\n<p class="normal">\n	Business attire:指的是一整套西装,但是有时候也可以衬衫+西裤。\n</p>\n<p class="normal">\n	<b>泳装</b>:喜欢游泳的人可以买了带过来,国内式样花纹都漂亮很多,我指的是女式。<b>男式的要买肥大,裤腿长一点的,紧身的那种老美会觉得你怪怪的。</b>游泳眼镜最好也从国内带,特别是需要近视的那种的。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	d.居家用品\n</p>\n<p class="normal">\n	对于某些对被子要求比较高的,可以带上一条国内高档被褥,比如蚕丝被,鸭绒被,确实不用太厚,室内都挺暖和的。倒是这边的被子又贵又很普通。还有这边的被单也是非 常丑,质量平平,价格昂贵,喜欢漂亮的同学建议自己从国内带过来。另外可以带一些对你个人意义比较大的东西,比如男女朋友照片,各类定情信物,父母照片等等。\n</p>\n<p class="normal">\n	Worcester有半年是冬天,所以保暖很重要。不过北方的同学应该知道,北方的冬天虽然冷,但是暖气一开,屋 子里还是很暖和的。同样, Worcester的冬天虽然有时会达到零下二十度的低温,但在房 间里还是够暖和的。除非你不幸地碰到了一个吝啬的房东,而你们家暖气的控制开关又掌 握在房东手里。非常怕冷的同学 可以带一个电热毯过来。(电热毯美国也有卖,不知道好不好用,叫heated pad。打算住在学校公寓的就不用 担心了,暖气都很足的。\n</p>\n<p class="normal">\n	衣架、洗发水、各种护肤品啊,在美国都是很便宜的;但这边配眼镜很贵,所 以最好在国内配个两副带过来。 最好再带些常用感冒药,止痛药(牙疼,智齿),退烧药,消炎药,抗生素,胃药等,自己吃习惯了的药。女生的卫生用品这边都有卖,只是样式不多;月经止疼药也可以带一点,红糖这边买得到。<span style="line-height:1.5;">中成药可能含有违禁成分，如果带的量大，请一定确核它是否能通过海关。</span> \n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	e.电子产品\n</p>\n<p class="normal">\n	1)笔记本电脑:\n</p>\n<p class="normal">\n	个人建议是,如果还没买的话就来美国买。这种电子产品美国的价格 一般会比国内便宜很多。如果自己已经有了笔记本,配置又还可以的话可以带过来,毕竟刚来的时候家里没有电脑可以上网,还是会有不少不方便的地方。\n</p>\n<p class="normal">\n	2)手机:\n</p>\n<p class="normal">\n	国内的手机也可以带过来,来之前确认一下你的那款手机可不可以在美国用。来这边新版一个手机也不贵,美国电话公司一般可以签两年合同免费拿手机。相对于这边的消费水平,这里手机话费是比较便宜的。很多人用包月服务随便打电话;短信偏贵,包月也不如国内划算。办了手机以后可以买国际电话卡,从美国达到中国一两美分一分钟;比如一种叫ecallchina的卡(www.ecallchina.com), 20刀能打1200分钟。\n</p>\n<p class="normal">\n	3)相机,优盘和移动硬盘\n</p>\n<p class="normal">\n	:一般都是来了这边再买。网上有便宜的Deal,例如<a href="http://www.dealsea.com/">www.dealsea.com</a>。国内有了就自己带过来吧。(小提示,买了Mac PRO的同学们,苹果的移动硬盘和Windows不兼容,需要装一个APP,不需要重新买一个Apple的移动硬盘。)\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	f.家用电器\n</p>\n<p class="normal">\n	只要是电器,大部分都不用带,包括插座,一是电压和频率不一样,上面提到的电热毯,因为是电阻丝发热。倒是影响不太大,功率低点而已。 二是只要你想得到的,在国内看到过的,这边基本都有,而且都很便宜!例如男生的刮胡刀,甚至包括女生用的卷头发器和直发器......满店都是。特别的,就是有人带国内的豆浆机过来,这个记得要和厂家说好换成美式的电插头。不过现在豆浆机这边也有卖。变压器记得带一个,如果是带自己在中国买的电脑来,一般需要变压器。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	g.厨房用品\n</p>\n<p class="normal">\n	1)锅:\n</p>\n<p class="normal">\n	基本有都有,就是换成RMB贵点。高压锅是个累赘不用带,这边在Wal-Mart和亚马逊可以买得到,比较便宜。还要根据住处的炉子情况来决定用什么锅,比如电炉子,用平底锅比较好。美国的火都不是很旺。这边煮牛肉要去血水,肉很难煮软。有了高压锅就 方便很多了,红烧肉20分钟柔软无比。还可以压土豆泥~凹形铁锅这边的没有国内的好,不怕麻烦的可以带一只不粘锅过来。但其实这边也有卖。电饭锅,千万不用带,这边又便宜又好用,网购店购皆可。\n</p>\n<p class="normal">\n	2)菜刀:\n</p>\n<p class="normal">\n	好的大菜刀和砍 骨头的刀可以带。这边很少卖宽刀的,有也不好用。买把好的过来。案板不用带。带个两三块钱的小磨刀石,可能有用。\n</p>\n<p class="normal">\n	3)餐具:\n</p>\n<p class="normal">\n	如果对碗有偏好,可以带一两只自己很喜欢的碗过来。还有筷子,可以带几根。没有要求的话,中国/亚洲超市一般也都买得到。\n</p>\n<p class="normal">\n	4)友情提示:\n</p>\n<p class="normal">\n	压蒜器,刨皮刀这种小东西可以考虑带一个好用的。这边有卖就是不太好用。\n</p>\n<p class="normal">\n	5)调料:\n</p>\n<p class="normal">\n	这边中国店调料还是很全的,基本应有尽有不用自带调料。\n</p>\n<p class="normal">\n	h.护肤用品\n</p>\n<p class="normal">\n	关于平时的生活用品卫生用品,比如,洗发水、沐浴露之类的就别带了,这里超市里 卖得很便宜。喜欢护肤品的,那你来到美国就来对地方了,就算没有sale的时候,价格也 比国内便宜很多,所以你的瓶瓶罐罐甚至都不用带了。这边只是亚洲牌子的比较少,不过 也可以网购。而如果你喜欢的是欧洲的牌子,比如Clarins啊Nuxe之类的,美国价格和国 内差不多,但是如果你喜欢Clinique, EsteeLauder或者Lancome等的话,那你完全可以把 现在用的东西送人了,一身轻松地来到美国开始新的shopping历程吧,这边真是既便宜小 样又多。\n</p>\n<p class="normal">\n	i.文具\n</p>\n<p class="normal">\n	美国人用黑色圆珠笔和铅笔的比较多,习惯用水性笔的同学可以自己带几只;带自动铅笔的记得多带几盒笔芯。美国人习惯用大本子,A4纸那么大的,喜欢小本子的同学也请自备。然后,剪刀,美工刀,尺子等等都是有的,只是不漂亮,价格比起国内稍微贵一点点。文具这些其实用的不多,现在基本都电子化了,所以按自己喜欢带吧。\n</p>\n<p class="normal">\n	j.小礼品\n</p>\n<p class="normal">\n	可以带一点中国结之类由中国特色的小礼物,可以送给喜欢的朋友和老师。7.手机/电话卡国内手机卡有两种选择,一是停机,二是开国际漫游。建议至少开一个月的国际漫游,这样到了美国之后方便与接机的人联络,也便于给家人报平安。彻底停掉手机的同学可以先买Prepaid电话卡(淘宝上有卖),过来之后可以用别人的手机或者公用电话联络.\n</p>', 0),
(4, '签证', 3, '', 0),
(5, '订机票', 3, '', 0),
(6, '找飞友&订limo', 3, '', 0),
(7, '体检和疫苗', 3, '', 0),
(8, '住房', 3, '', 0),
(9, '行李', 3, '', 0),
(10, '从中国到美国', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;从中国到美国</span> \n</h1>\n<h2 id="登机前准备">\n	<hr />\n	1.登机前准备\n</h2>\n<p class="normal">\n	确保护照,i-20,钱,手机(联络工具)务必带好,其他关系不大。\n</p>\n<h2 id="飞行及过境">\n	2.飞行及过境\n</h2>\n<p class="normal">\n	从起飞机场开始,流程是这样的:\n</p>\n<p class="normal">\n	a.国内机场换票托运登机\n</p>\n<p class="normal">\n	b.在飞行途中填i-94\n</p>\n<p class="normal">\n	c.到美国后第一个降落点下飞机,过海关交i-94;取行李,行李抽查,交行李\n</p>\n<p class="normal">\n	d.到达或继续飞往目的地\n</p>\n<p class="normal">\n	在飞机上面空姐会分发进入美国移民局的I-94表格(十分重要)和美国海关的申报表格。如果大家有什么不会填,也可以找空姐MM们帮忙。对于美国公民、持美国绿卡的居民和美国护照的居民,可以不用填写I-94表格。按照美国规定,任何人通过飞机进入美国境内,其第一个降落点就是入境处。比如,从北京飞西雅图再转机到波士顿,西雅图就是入境口岸。下了飞机便是美国移民局(好像还有国土安全局)的检查点,就是边防。在这里他们会对你的I-94、护照、签证、I-20(对学生)进行检查。在排队的时候,会有一个人来检查你的文件,看东西填好没,还要填什 么。这个地方的人很多,如果你搭乘下一班航班的时间很紧,你可以跟前面的人说,然后 先走。过边检的时候,移民局的人会问你一些问题,比如说你叫什么?来美国干什么?去哪个学校?专业是什么?为什么学这个专业?之类的问题。有点类似于签证的时候签证官的 问题。因为这个不是签证,基本不会影响你入境。所以不需要回答的特别详细,大概一两 句就好了。只要你不是在移民局的黑名单或者不受欢迎的人名单里面的人,大概10-15分 钟就可以过去。然后是照相,按手印。在护照、签证、I-20、I-94上面盖章。然后会把I-94用订书机订在护照上面。I-94很重要,因为你出境要上缴I-94。而且上面也明确写着,如果 你丢失了I-94,会对你下次进入美国造成一定的麻烦。还有,要注意在你的护照还有I20上写的留美时间是不是D/S。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	下面就是提行李了。无论你是否转机,都要自己带着行李过海关。在海关的时候,和 国内一样,有两条通道。绿色的无申报通道和红色的申报通道。只要你说没有食物(主要是不要有肉)、土壤、植物,就有40%的几率不被打开行李。但是如果你说你没有以上东西在行李里面,却碰到了那60%的几率被要求打开行李,被发现了是要罚款的。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	出来海关,就有专门的工 作人员负责转运行李。交了行李就轻松了。然后进入转机大厅,要安检这里。脱鞋、脱皮带、从电脑包/书包拿出电脑(电脑要单独放一个小篮)。如果时间很急,可以跟保安说,然后走优 先通道。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	如果你带的现金或者汇票(银行卡不算)价值超过1W美金,需要在海关填个表,然后就能过。希望大家在填写报关单的时候尽量实事求是,不懂可以问。美国的法制比国内健全,如果发现瞒报或者漏报,查出来会很麻烦的。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	TIPs: 随身带1-2支笔一路填表会方便很多。护照和I-20一定要放在容易拿出来的地方以便于入关检查。推荐立式的行李箱,这样可以一手拉两个另一手拉随身行李。到达波士顿以后手推车是收费的(小的5 USD,大的10 USD,最好身上备有零钱),只有在入境过海关的时候手推车免费。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	出来海关,就有专门的工作人员负责转运行李。交了行李就轻松了。然后进入转机大厅,要安检这里。脱鞋、脱皮 带、打开电脑(只是打开翻开,不用开电源)。如果时间很急,可以跟保安说,然后走优 先通道。\n</p>\n<p class="normal">\n	然后就是转航班了。如果在加拿大转机,不在机场过夜不需要办理过境签证,不需要自己拿行李转机。建议大家都带上航程票,以免出现意外。如果你误机了,航空公司会为你免费安排一架新航班。(这个貌似是在买机票的时候要买误机保险的)不要着急。如果出现紧急情况当场无法处理,请与中国学生会联系。\n</p>\n<p class="normal">\n	祝大家飞行顺利!\n</p>\n<h2 id="中转站">\n	3.中转站\n</h2>\n<p class="normal">\n	由于大家机票中转站遍布各地,大家出发之前可以稍微查一下各个机场的地图,方便自己转机。这里列几个大的国际机场:\n</p>\n<p class="normal">\n	a. Chicago O’Hare International Airport\n</p>\n<p class="normal">\n	<a href="http://www.ohare.com/PassengerInformation/AirportMaps.aspx">http://www.ohare.com/PassengerInformation/AirportMaps.aspx</a> \n</p>\n<p class="normal">\n	b. Los Angeles World Airports (LAX)\n</p>\n<p class="normal">\n	<a href="http://www.lawa.org/welcome_lax.aspx?id=256">http://www.lawa.org/welcome_lax.aspx?id=256</a> \n</p>\n<p class="normal">\n	c. San Francisco International Airport\n</p>\n<p class="normal">\n	<a href="http://www.flysfo.com/web/page/atsfo/airport-maps/#">http://www.flysfo.com/web/page/atsfo/airport-maps/#</a> \n</p>\n<p class="normal">\n	d. Boston Logan International Airport\n</p>\n<p class="normal">\n	<a href="http://www.massport.com/logan-airport/Pages/LoganAirportMaps.aspx">http://www.massport.com/logan-airport/Pages/LoganAirportMaps.aspx</a> \n</p>\n<p class="normal">\n	e. New York John F. Kennedy International Airport\n</p>\n<p class="normal">\n	<a href="http://www.panynj.gov/airports/jfk-airport-map.html">http://www.panynj.gov/airports/jfk-airport-map.html</a> \n</p>\n<h2 id="到达">\n	4.到达\n</h2>\n<p class="normal">\n	订了limo的联系limo,或到指定地方等待;订了学长姐接送的联系学长姐,或到指定地方等待。突发情况请联系CSSA。\n</p>\n<p class="normal">\n	如果是到波士顿Logan机场的同学可以打开无线,上网联系家人朋友。Logan机场的无线是免费的;一般美国机场没有免费无线。\n</p>', 0),
(11, '登机前准备', 10, '', 0),
(12, '飞行及过境', 10, '', 0),
(13, '中转站', 10, '', 0),
(14, '到达', 10, '', 0);
INSERT INTO `suvival_guide` (`id`, `index`, `parent_id`, `content`, `sort`) VALUES
(15, '开学前', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 开学前</span> \n</h1>\n<h2 id="注册&amp;选课">\n	<hr />\n	1.注册&amp;选课\n</h2>\n<p class="normal">\n	○新生的I-20或者DS2019表格上会有明确的开学日期。 到WPI后请务必尽快到International House的Janice处报道,见Tom。\n</p>\n<p class="normal">\n	○去Health Center交体检表,工作人员会检查一下你填的表,她说ok你就可以走了;或者她会告诉你等邮件通知,也许需要补充资料。\n</p>\n<p class="normal">\n	○去East Hall一楼ID Office办ID。去之前可以洗漱打扮一下,美国都是当场拍照制卡的。所以想要ID照片美丽帅气,请打扮一下。\n</p>\n<p class="normal">\n	○去图书馆Help Desk(二楼进门右侧)注册电脑,否则你的电脑将无法连接学校无线网络。\n</p>\n<p class="normal">\n	○开通WPI邮箱:\n</p>\n<p class="normal">\n	<a href="http://www.wpi.edu/Academics/CCC/Help/Audiences/incomingstudents.html">http://www.wpi.edu/Academics/CCC/Help/Audiences/incomingstudents.html</a> \n</p>\n<p class="normal">\n	○去自己系里报道,跟项目主管报个到,拿一张Degree/Study Plan,上面有学校官方推荐的选课目录。你可以根据自己的想法选课,但正式注课之前记得和项目主管或者到时讨论一下,咨询一下意见。\n</p>\n<p class="normal">\n	○注课有两种方式,去Registrar填表;网上注册。有些课程还必须亲自到学校的Registry (在Denials Hall)手动选,例如PhD的research学分。其他研究生课程网上注册就好,注册Banner地址:<br />\n<a href="https://banner-as4.admin.wpi.edu/pls/prod/twbkwbis.P_WWWLogin">https://banner-as4.admin.wpi.edu/pls/prod/twbkwbis.P_WWWLogin</a> \n</p>\n<p class="normal">\n	另外,如果有些课程已经选满,需要直接联系教授,请他亲自把你加到他的课程里。<span style="line-height:18px;">这个每个系的热门课不一样,可以先咨询一下到时或者老生们。</span> \n</p>\n<h2 id="ESL(English as Second Language)">\n	2. ESL (English as Second Language)\n</h2>\n<p class="normal">\n	ESL好像不是每个院系都要上的,大家可以咨询一下老生。一般考试应该会在录取通知书上写。\n</p>\n<p class="normal">\n	需要参加语言测试,特别是有GA,TA工作的同学。去International House报道的时候,Janice会让你登记什么时候考试;记得准时去考试。\n</p>\n<h2 id="保险&amp;SSN">\n	3.保险&amp;SSN\n</h2>\n<p class="normal">\n	A.保险\n</p>\n<p class="normal">\n	保险有两种:(1)学校统一办的保险;(2)纽约大使馆旗下的保险。\n</p>\n<p class="normal">\n	学校的保险好处在于出问题之后兑付有保障,速度比较快;不过比较贵。2011年秋季大约是1,100美元一年。大使馆的保险就比较便宜一点;不过可能因为中间隔着一个大使馆,程序上多一\n</p>\n<p class="normal">\n	步对付速度就慢一点。大使馆的保险因为是近两年才出现的,所以暂时不确定到底他与学校保险\n</p>\n<p class="normal">\n	的区别。我们在此也只是提供两种选择,请同学们自己斟酌购买。\n</p>\n<p class="normal">\n	B. SSN\n</p>\n<p class="normal">\n	凡是有GA,TA的同学都需要办SSN。刚开学的时候International House开一个SSN介绍会,教你怎么填申请表。之后需要你自己去SSA楼(Main Street附近)办理。\n</p>\n<h2 id="银行开户">\n	4.银行开户\n</h2>\n<p class="normal">\n	Worcester这边主要的储蓄银行有Bank of America, Citi Bank, TD bank north, Sovereign Bank,Chase Bank等。储蓄利息稍有差别,不过由于金融危机,存款利率现在几乎为零。美国的银行一般分为全国性银行(如Bank of America,Citi Bank和chase bank)和地方性银行(TD bank north,Sovereign Bank等)。TD bank north,Sovereign Bank主要服务于美国东北部,办理他们的帐户和debit card一般只能在东北部使用。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	新生一般都去Park Ave上那家Bank of America开户(255 Park Ave, Worcester, MA),办借记卡(Debit Card,暂时也只能办借记卡);带着I-20,护照,学生ID就可以了。进去找客户经理办理,一人在一个小单间里的;Assistant manager相当热情,会给你把业务介绍个遍。然后BOA的卡你可以选择要不要把自己的照片放在借记卡上。填写收卡地址的时候如果还没有找到房子的同学,可以填学长学姐的地址,留好联系方式。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	BOA不收服务费有两种选择,一是永远保证savings account里面有300刀;第二种就是每个月在你指定的那一天从Checking Account转25美元刀Savings Account(你可以选择自动转,比较省心)。没满足这两点之一的话,服务费好像是6美元一个月;你下个月又满足条件了,服务费也不会收了。<span style="line-height:1.5;">然后就是借记卡不要透支,透支一次扣至少35美元服务费。</span> \n</p>\n<p class="normal">\n	<span style="line-height:1.5;"><br />\n</span> \n</p>\n<p class="normal">\n	办卡整个过程非常轻松愉悦,就是时间有点长;过程中你只要输入密码和签名就可以了,申请材料什么的你就让他们填写。当没收到卡之前她会提供一个Temporary card,记住这个卡一样要个带VISA功能的,这样就不用每次都输入密码而是签名了(可以用中文签名,一样没问题)。祝大家办卡办得开心。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	刚刚办好的借记卡一般由eBanking Checking Account和Regular Saving Account组成,这是两种最初级的BOA账户.存款超过2000刀的还可以要求升级为Enhanced Checking Account,可以向银行免费要支票,方便付房租和学费.超过2500刀可以升级为Money Market Saving Account,每个月可以免费转账提款6次.\n</p>\n<h2 id="汇款&amp;工资">\n	5.汇款&amp;工资\n</h2>\n<p class="normal">\n	A.汇款\n</p>\n<p class="normal">\n	开好银行账户之后就可以汇款交学费了。首先,你需要提供给家人的信息有(以上面说的\n</p>\n<p class="normal">\n	BOA, Park Ave为例):\n</p>\n<p class="normal">\n	○银行名:Park View, Bank of America\n</p>\n<p class="normal">\n	○开户地:255 Park Avenue, Worcester, MA, 01609\n</p>\n<p class="normal">\n	○户主:San Zhang (张三)\n</p>\n<p class="normal">\n	○账号:1234 5678 9012(你的Checking或Savings的16位账号)\n</p>\n<p class="normal">\n	○户主地址:900 West St, Worcester, MA 01609(你开户时的地址)\n</p>\n<p class="normal">\n	○ Routing number: 123 456 789(这个问银行要)\n</p>\n<p class="normal">\n	○ Swift Code:xxxxxxxx (问银行要)\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	交学费的时候这样交就可以了。今年学校信息有所更新,请提交表单的时候拿着学校网站上的汇款帮助信息向银行确认。(注意,表单上的学校地址也不正确,要以学校网站上的信息为准)学校网站可以提供电子支票的支付方式,当你来到美国,办理了借记卡后,可以通过美国银行的电子支票进行支付,也可以买银行的纸质支票进行支付。钱可以自己带一部分,然后从国内汇款到你在美国的银行账户里,也可以在国内银行开好汇票,带过来给银行,一般当天会到账一小部分,剩下的部分5个工作日左右到账,好处就是万一汇票丢失的话可以挂失。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	据我们所知,可以办建设银行的龙卡,好像是无年费的。中国建设银行是和美国银行(Bank ofAmerica)有友好关系的,于是建行用户如果向BOA电汇(wireless transfer)是免手续费的。这种方法需要你先有美国BOA的账户,因此此法可能不适用于第一次交学费。请不要小看手续费。两头都扣个百分之几是会造成很大的损失的。这种汇款之迅速, 1天之内就可以收到。缺点就是每天汇不能大于2000美元,所以可以分几天汇,然后写一张支票交到Accounting Office,或者网上填写电子支票就可以教学费了。除此之外,建行龙卡在BOA的提款机提款500美金一下是无手续费的,必要时可以应急。据说成都建行没有汇款服务,但是有龙卡提款政策。所以各地同学请务必咨询当地建行政策。如果没有免收手续费政策,请不要在建设银行汇款而在中国 银行。因为中国银行的汇率通常比建行低$0.005-0.006。\n</p>\n<p class="normal">\n	各大城市建行都有这个服务,问一下建行网点就行了,也不必要非得龙卡,具体是每个月每个BOA账号可汇4,000美元,每笔上限2,000美元,如果用钱多的可以让家长一人开一个建行再拿自己身份证开个一共三个账号,12,000美元怎么都够用了。<span style="line-height:1.5;">为了保险,各位同学请亲自打电话或者去建行分行核实以上信息!!!</span>\n</p>\n<p class="normal">\n	B.工资\n</p>\n<p class="normal">\n	有Graduate Assistant, Teaching Assistant的同学,带上I-20,学生ID,SSN,和银行账号去\n</p>\n<p class="normal">\n	Human Resource(Boynton Hall二楼)填表,建立工资账户。记得添一张Direct Deposit的单子,这样以后学校发的工资就可以之家打到你的银行账户里了。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	C. <span>税表</span>\n</p>\n<p class="normal">\n	<span style="line-height:1.5;">所有国际学生，如果在当年没有任何应申报收入，则只需要在</span><span style="line-height:1.5;">6</span><span style="line-height:1.5;">月</span><span style="line-height:1.5;">15</span><span style="line-height:1.5;">日</span><span style="line-height:1.5;">(the due date (including extensions) for filing Form 1040NR\nor Form 1040NR-EZ)</span><span style="line-height:1.5;">之前邮寄填写</span><span style="line-height:1.5;">Form 8843</span><span style="line-height:1.5;">到以下地址。</span>\n</p>\n<p class="normal" style="margin-left:60.0pt;text-indent:-24.0pt;">\n	Department of the Treasury,\n</p>\n<p class="normal" style="margin-left:60.0pt;text-indent:-24.0pt;">\n	<span style="line-height:1.5;">Internal Revenue Service Center,</span> \n</p>\n<p class="normal" style="margin-left:60.0pt;text-indent:-24.0pt;">\n	Austin, TX 73301-0215\n</p>\n<p class="normal" style="text-indent:36.0pt;">\n	<span>如果当年有收入，根据不同的情况需要填写不同的表格，</span>Form 1040NR or Form 1040NR-EZ<span>，需在每年</span>4<span>月</span>15<span>日前填好相应税表寄出。有收入情况的税表比较复杂，每年</span>Tax\nseason<span>，</span>International House<span>都会有关于税表的</span>workshop<span>，请留意</span>IH<span>网站。但这个</span>workshop<span>不教怎么填税表，只普及税表相关知识。具体税表怎么填可以到</span>IH<span>凭学生证号购买</span>6<span>刀的税表填写软件。这个软件会问你一些问题，然后你根据你的回答自动生成填好的表格，接下来只要签名就好啦。</span> \n</p>\n<p>\n	<br />\n</p>\n<h2 id="手机入网及电话">\n	6.手机入网及电话\n</h2>\n<p class="normal">\n	千里传佳音,打电话是必不可少的。美国有AT&amp;T, Verizon, T-Mobile, Sprint等几家大的 电信运营商。具体资费少有不同。对于酷爱旅游的同学们来说,外出游玩时一个可以上网的手机是十分必要的,以上几大运营商都提供可以上网的手机和plan,可以自行选择。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	选好了公司下一步是选择plan。新来的同学通常没有SSN和信用记录,如果新开一个 帐户的话,要交比较高的deposit,大概每个人500美元。不过开手机帐户可以增加信用记录,这是一个好处。如果为了省钱,那么最好的办法就是加入老生的Family Plan。Family Plan的意思是,老生作为户主拥有账户,然后多申请一个号码给新生。Family Plan的费用大概是20-30美元/人(用智能手机的话大概40-50美元/人);新开账户的话要40-50美元/人。不过具体也要看你办的Family Plan里面人越多约便宜。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	办好了手机就可以享受美国无比自由的通信了。美国没有漫游,所以在全国各地打电 话是一样的。 另外,大部分手机的plan,在晚上9点以后到第二天早上6点之前是免费的,周 六周日也是免费。所以用手机,可以在晚间和周末跟美国其他地方的朋友煲电话粥,联络感 情。\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	要打电话到国内的话,一般都是买电话卡,在<a href="http://www.firstphonecard.com/">www.firstphonecard.com</a>,<a href="http://www.ecallchina.com/">www.ecallchina.com</a>,<a href="http://abcalling.com/">http://abcalling.com</a>,<a href="http://www.88card.com/">www.88card.com</a>,<a href="http://www.loudclear.com/">www.loudclear.com</a>上都可以 买到。也可以到Worcester城区的一个中国超市—family 88(Clark U附近)店(877 Main St, Worcester, MA - (508) 753-9988)去买一种俗称“小红卡”的电话卡,用该卡向国内打电 话,一分钟1cent,相当便宜。联系国内最常用的还是QQ,Skype视频;相比起来Skype会更流畅一些。\n</p>\n<h2 id="信用卡">\n	7.信用卡\n</h2>\n<p class="normal">\n	美国的消费基本是用信用卡结算的,先刷卡,再还款。这样做的好处有几点:\n</p>\n<p class="normal">\n	A.安全。因为你并没有把钱存在信用卡里,所以一旦有人盗用,你可以通知银行,waive掉 不属于你的花费。如果借记卡被盗用,就会损失很大了。\n</p>\n<p class="normal">\n	B.信用卡通常有很多种优惠措施,有的会有折扣,比如有些学生信用卡开始六个月有5%的折扣,cash back,还有的可以积分换东西等等。\n</p>\n<p class="normal">\n	C.积攒信用值,方便自己以后在美国贷款买东西(笔记本电脑,车,房子等)。\n</p>\n<p class="normal">\n	当然信用卡也有问题,就是不容易控制自己的购买欲望。因为刷卡和支付现金的感觉 很不一样,\n</p>\n<p class="normal">\n	通常有了高额度的信用卡之后,花钱的速度会变快很多。\n</p>\n<p class="normal">\n	言归正传,美国的信用卡种类实在太多,很难总结出最适合的一种,通常每个人有两 三张卡,一张有购物优惠,一张有加油或者吃饭优惠(一般会有1%-5%的cash back)等 等。大多数好的信用卡要等到有SSN之后,甚至要积累一定信用记录之后才可以申请的到。\n</p>\n<p class="normal">\n	刚拿到SSN的同学可以去申请Bank of America的学生信用卡,在Park Ave上的那家支行就可以办理,这张信用卡申请的门槛比较低,限额不高。\n</p>\n<p class="normal">\n	当自己的信用值逐渐积累起来后,可以申请一些比较好的信用卡,比如American Express的Bluecash,Discover的More card等,这些信用卡除了cash back外,一般还有 一些其他服务,比如说垫付航空保险,部分租车保险或者积分赠送机票等\n</p>\n<p class="normal">\n	但是要注意的是American Express和Discover的卡好多地方不收,所以申请一张master或者visa卡是很有必要的。\n</p>\n<p class="normal">\n	美国的金融体系十分发达,有很多理财的技巧,比如申请不同的信用卡组合使用。我 推荐MITBBS的Money板,里面有不少有用的信息,<a href="http://www.mitbbs.com/bbsdoc/Money.html">http://www.mitbbs.com/bbsdoc/Money.html</a> \n</p>', 0),
(16, '注册&选课', 15, '', 0),
(17, 'ESL(English as Second Language)', 15, '', 0),
(18, '保险&SSN', 15, '', 0),
(19, '银行开户', 15, '', 0),
(20, '汇款&工资', 15, '', 0),
(21, '手机入网及电话', 15, '', 0),
(22, '信用卡', 15, '', 0);
INSERT INTO `suvival_guide` (`id`, `index`, `parent_id`, `content`, `sort`) VALUES
(23, '生活', 0, '<h1>\r\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;生活</span> \r\n</h1>\r\n<h2 id="学校设施">\r\n	<hr />\r\n	1.学校设施\r\n</h2>\r\n<p class="normal">\r\n	a) SNAP\r\n</p>\r\n<p class="normal">\r\n	SNAP全称Security Night Assistance Patrol,是由学生驾驶学校汽车,在晚间提供住处 和学校之间通行的免费服务。简单的说,就是免费出租车。这项服务可以提供学校范围内1英里内任意住宅区和学校的接送服务。通常不提供包含商业地点(比如餐厅超市商场)的接送。除了1英里内的住宅区和学校内,还可以从Union Station接你回来,也可以送你 去那里。他们的工作时间是,冬季16点到凌晨4点,夏季18点到凌晨6点,具体时间会 可能有所变化,学校放假期间基本不工作。具体安排注意查收邮件,WPI邮箱。\r\n</p>\r\n<p class="normal">\r\n	在校园内的紧急电话终端、校内分机上拨打6111或者用手机拨打508-831-6111,可以联通他们的“总台”。通常你会听到:”SNAP, your call has been recorded.”这时候你可以 说”Hi, I need a ride from Union Station to Founder’s Hall”\r\n</p>\r\n<p class="normal">\r\n	b)餐厅\r\n</p>\r\n<p class="normal">\r\n	研究生一般会在campus center解决:二楼有Dunkin’ Donuts,主要吃甜甜圈,咖啡饮料;一楼有一些自助的西式餐饮。本科生餐厅在Morgan Hall,也是吃自助大约10刀一个人。最后Founder’s Hall有一个学校的Pub,提供美式dishes.\r\n</p>\r\n<p class="normal">\r\n	c)体育健身\r\n</p>\r\n<p class="normal">\r\n	学校体育设施开放时间:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://wpi.prestosports.com/navbar_white/facilities/11_12_Facility_Hours_C_and_D_Terms.pdf">http://wpi.prestosports.com/navbar_white/facilities/11_12_Facility_Hours_C_and_D_Terms.pdf</a> \r\n</p>\r\n<p class="normal">\r\n	学校体育馆有时会有校队练习以及各个社团的预约,比如校篮球队预约了场地的话,我们是不能在那个时间段打篮球的。CSSA每学期会预约Harrington Court,届时会以群邮件形式通知大家。\r\n</p>\r\n<p class="normal">\r\n	学校体育设施预约查询:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://wpi.prestosports.com/navbar_white/facilities/index%20">http://wpi.prestosports.com/navbar_white/facilities/index</a> \r\n</p>\r\n<p class="normal">\r\n	<i>To view the scheduled events</i>底下的四个选项就是各个场馆的具体预约信息。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	Harrington Auditorium内有:\r\n</p>\r\n<p class="normal">\r\n	○乒乓球台四个(篮球场的一侧,移动看台后面)\r\n</p>\r\n<p class="normal">\r\n	○羽毛球场四个(在篮球场两侧,羽毛球网在移动看台后面,得自己搬运和架设)○壁球馆一个(从篮球馆侧面可以下去)\r\n</p>\r\n<p class="normal">\r\n	○健身房在Alumni Gym下面,半地下然门口写着请出示id,其实没人管。你要是真给他秀一下学生ID,那小孩还会特受宠若惊。 气氛跟国内健身房差不多 。\r\n</p>\r\n<p class="normal">\r\n	常用句式:\r\n</p>\r\n<p class="normal">\r\n	Could you spot me?给我保护一下?\r\n</p>\r\n<p class="normal">\r\n	Are you still using this?\r\n</p>\r\n<p class="normal">\r\n	I have one last set.我还有一组?\r\n</p>\r\n<p class="normal">\r\n	○游泳池在健身房对面,也可以从更衣室进。更衣室在健身房楼上对面。游泳池只有四道,长度60英尺 。游泳池旁边的有用板,脚蹼等都可以随便用。\r\n</p>\r\n<p class="normal">\r\n	○网球场 。Salisbury St北面有一块,三片场子,地裂网塌。Park Ave西面,就是学校体育场的对面再往右一点有一块,六片场,地平网挺,而且这块场子是属于WPI,门口写着WPI学生教师优先 。网<span style="line-height:1.5;">球场有小半年都不开,因为下雪 。A/D term下午会有WPI网球课占用场地</span> \r\n</p>\r\n<p class="normal">\r\n	○保龄球馆Gompei''s Gutters。在体育馆背面,朝着Campus Center,一个小门。好像可以要免费券更衣室和浴室 。更衣室的衣橱(locker)可以申请,要一个密码锁(Combination Lock)。申请的地方就在更衣室的Harrington Auditorium那面的出口附近,不太好找。研究生申请得等一阵子才有消息。 浴室有冷热水,有浴液。(最好自己带浴液,这里的浴液不太好用)\r\n</p>\r\n<p class="normal">\r\n	d)学生社团\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.wpi.edu/campuslife/clubs.html">http://www.wpi.edu/campuslife/clubs.html</a> \r\n</p>\r\n<p class="normal">\r\n	e)学生活动\r\n</p>\r\n<p class="normal">\r\n	○ Student Government Association (SGA)活动表:\r\n</p>\r\n<p class="normal">\r\n	<a href="https://scheduling.wpi.edu/wv3/wv3_servlet/urd/run/wv_event.DayList?evdt=20130509,evfilter=%0d%0a737296,ebdviewmode=list">https://scheduling.wpi.edu/wv3/wv3_servlet/urd/run/wv_event.DayList?evdt=20130509,evfilter=</a> \r\n</p>\r\n<p class="normal">\r\n	<a href="https://scheduling.wpi.edu/wv3/wv3_servlet/urd/run/wv_event.DayList?evdt=20130509,evfilter=%0d%0a737296,ebdviewmode=list">737296,ebdviewmode=list</a> \r\n</p>\r\n<p class="normal">\r\n	○ Graduate Student Government (GSG)活动表:\r\n</p>\r\n<p class="normal">\r\n	<a href="https://orgsync.com/43823/events">https://orgsync.com/43823/events</a> \r\n</p>\r\n<p class="normal">\r\n	f)关于WPI邮箱\r\n</p>\r\n<p class="normal">\r\n	美国的习惯是用电子邮件联络,所以大家要养成查看自己邮箱的习惯。老师的通知,学校的活动,小组项目的进程可能都在你邮箱里;不要错过了!!!另外,收到重要邮件尽量回复一下,以表示你收到了。\r\n</p>\r\n<h2 id="饮食">\r\n	2.饮食\r\n</h2>\r\n<p class="normal">\r\n	WPI附近唯一的中餐馆——龙升(dragon dynasty)是大家经常去吃饭的地方。Highland上Boynton是美式餐厅,Soul是吃海鲜的,这两家都算是高级一点的。沿街还有一家披萨店,West Street上也有一家。然后还有Subway,很健康哦。校园北边一点Park Ave上有一家西餐馆Boston Market,价格也比较便宜。这是学校周围步行可到达的区域内大家比较常去的餐馆。南边920 main street上有新华灯,老 板和服务员会说普通话,感觉比较亲切,而且有许多克拉克大学的女生会去那里吃饭。另外新华灯接受外卖(龙升没有),10美元起送;最好提前一小时订,因为会等很久。另外位于1083 Main Street的red pepper分店和位于301 Park Ave的Chuan-Shabu都是在附近不错的中餐馆，价格也比龙升和新华灯贵一些。中餐想吃过瘾,还有imperial buffet 之类的中餐自助。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	如果认识有车的学长或者自己以后有车,可以偶尔去比较远的地方吃饭,会有一些质 量不错的中餐馆,例如老四川,重庆食府,韩国烧烤店,越南米线店,Boston和Quincy还 有唐人街的各种餐馆等等。\r\n</p>\r\n<p class="normal">\r\n	&nbsp; 另外,另外,<span>日韩餐饮和西餐也有不错的。</span> \r\n</p>\r\n<img src="/kindeditor/attached/image/20130821/20130821132352_27841.png" width="192" height="532" align="left" alt="" /> \r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;papa sushi<span>可谓是伍村人民最值得骄傲的一家寿司店了，都能完爆波士顿 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;绝大部分的日料店。这家店荣登全美最佳餐厅</span>top100<span>之列。店铺小巧而 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;有情调，食材非常新鲜，三文鱼金枪鱼刺身肉质很赞，各种花式寿司口感 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;搭配也很好。这家的日料都很精致，当然啦，人均消费也算比较高的。</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 推荐菜品：各式好吃的sushi<span>和三文鱼刺身</span>~\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 地址：</span>309 Park Ave\r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Worcester,&nbsp;MA&nbsp;01609\r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Minado<span>是一家非常著名的日本料理自助店，向胃口大的朋友们极力推 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;荐</span>~<span>！虽然是日料自助，但是每道菜的品质也绝不低。这间店主要分为两 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;个时段供餐。中午比较便宜，晚上稍贵。主要是在晚上供餐不光有寿司以 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;及各种日料餐物，还有三文鱼刺身，生蚝以及蟹脚供应，无限制的哦</span>~<span>难 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;得的是，这家店里有抹茶冰激凌，相信这是妹子们的最爱吧</span>~<span>具体价格是 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;中午一人</span>21<span>刀左右，晚上一人</span>40<span>刀。不过，吃有所值是觉得可以保证的！</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;地址：1282 Worcester\r\nRd<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Natick,&nbsp;MA&nbsp;01760&nbsp;\r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a href="http://www.yelp.com/biz/westborough-korean-restaurant-westborough">Westborough&nbsp;Korean&nbsp;Restaurant</a><span>据说是伍村周边最好吃的韩式料理店。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;所以如果你来到这边仍然怀念辣酱，泡菜，石锅拌饭以及各种韩式汤泡饭 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 的味道的话，那么请你务必来这家店尝一尝。这家店每晚</span>6<span>点多都是爆满 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;状态。石锅拌饭 &nbsp; 正宗得没的说，烤鱿鱼，海鲜饼都超级地道。海鲜火 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;锅、牛肉火锅也都是这家店 &nbsp; 的招牌菜品。</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;推荐菜品：烤鱿鱼，海鲜饼，参鸡汤，石锅拌饭，海鲜火锅\r\n</p>\r\n<p class="MsoNormal">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;地址：</span>7 E Main St\r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Westborough,&nbsp;MA&nbsp;01581\r\n</p>\r\n<p class="MsoNormal">\r\n	<span style="line-height:1.5;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Texas Roadhouse</span><span style="line-height:1.5;">来美国怎么能不吃地道的牛排呢？吃牛排怎么能不吃德 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 州牛排呢？很庆幸，在</span><span style="line-height:1.5;">WPI</span><span style="line-height:1.5;">北面不远就有一家</span><span style="line-height:1.5;">Texas Roadhouse</span><span style="line-height:1.5;">！一进门，你就能感受到德州人民的热情和豪放，服务员和店内音乐把所有顾客的节奏都能带</span><span style="line-height:1.5;">来。</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	<span style="line-height:1.5;">想要豪爽的吃一次牛排？请来份</span><span style="line-height:1.5;">20</span><span style="line-height:1.5;">盎司三分熟的牛排吧！另外，这家店的</span><span style="line-height:1.5;">sides</span><span style="line-height:1.5;">也很好，土豆和沙拉都很好吃哦</span><span style="line-height:1.5;">~</span><span style="line-height:1.5;"></span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	<span style="line-height:1.5;">地址：535 Lincoln\r\nStreet, Unit F</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;">\r\n	&nbsp;Worcester,&nbsp;MA&nbsp;1605\r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	Friday<span>也是一家特色美式牛排店，它家在中国也有分店哦，想必大家并不陌生吧</span>~Friday<span>的牛排也很正宗，有特色的</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	Jack&nbsp;<span style="line-height:1.5;">Daniel</span><span style="line-height:1.5;">牛排。具体是</span><span style="line-height:1.5;">Daniel</span><span style="line-height:1.5;">还是</span><span style="line-height:1.5;">Dennis</span><span style="line-height:1.5;">小编也记不大清了，不过总之是强烈推荐那款吧</span><span style="line-height:1.5;">~</span><span style="line-height:1.5;">另外，他家的</span><span style="line-height:1.5;">whisky cake</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	<span style="line-height:1.5;">真的</span><span style="line-height:1.5;">超级好吃！建议过去一定要点个甜点来尝尝。</span> \r\n</p>\r\n<p class="MsoNormal" style="margin-left:24.0pt;">\r\n	地址：70\r\nWorcester-Providence Tpke<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Millbury, MA 01527\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	下面是其他附近一些常去的餐馆的地址。\r\n</p>\r\n<p class="normal">\r\n	◇老四川: 271 Worcester RD. Framingham, MA\r\n</p>\r\n<p class="normal">\r\n	◇重庆食府: 17 Edgell Road, Framingham, MA\r\n</p>\r\n<p class="normal">\r\n	◇韩国料理(Korean restaurant Westborough): 5 E Main St. # A, Westborough, MA\r\n</p>\r\n<p class="normal">\r\n	◇越南米线(Pho Dako):\r\n</p>\r\n<p class="normal">\r\n	◇ Ruby Tuesday:537 Lincoln St, Worcester, MA\r\n</p>\r\n<p class="normal">\r\n	◇ Boston market :14 Park Avenue, Worcester, MA 01605\r\n</p>\r\n<p class="normal">\r\n	Boston的中餐馆参见:<a href="http://www.mitbbs.com/article1/Boston/12569286_0_1.html">http://www.mitbbs.com/article1/Boston/12569286_0_1.html</a> \r\n</p>\r\n<p class="normal">\r\n	特别推荐:美国中餐馆分布图<a href="http://chinesefoodmap.com/">http://chinesefoodmap.com/</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	*<span>结束语</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	先为大家推荐以上这些餐厅啦！希望大家也能喜欢。也许以后有机会会陆陆续续在wpilife<span>上更新的吧</span>~<span>当然，最好吃的菜品莫过于亲人朋友跟我们分享的食物啦，希望大家在美帝也能吃出幸福感来</span>~\r\n</p>\r\n<h2 id="购物">\r\n	3.购物\r\n</h2>\r\n<p class="normal">\r\n	(1)家具及日常用品\r\n</p>\r\n<p class="normal">\r\n	A.床:美国这边的床一般由Frame,Box和Mattress三部分组成,可以单独买,大小分为twin、\r\n</p>\r\n<p class="normal">\r\n	full、queen和king size四种。Twin size为单人床;queen为双人床,full介于twin和queen size之间,king size最大(差不多就是Twin的一米一,Full的一米三,queen的一米五,king的一米八)。床这边卖的比较贵,一套queen size的床在Giant Mattress一般会买到1000刀左右。在Ikea会买到比较便宜的床,大概100-200刀之间。 运费一般在50-100刀之间。\r\n</p>\r\n<p class="normal">\r\n	在giant mattress有时候也可以买到比较便宜的床,而且那的床比较好,250-350的床是可以买到的,在blackstone和不经常去的那个沃尔玛有这家店,但是建议去不经常去的沃尔玛那,因为那个收货员原来在伍斯特工作,可以和她砍砍价,家具target有时候也有免费送货的,而且质量还不错,建议到target的官网上看看。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	B.家具:家具一般在专门的家具超市Ikea购买。Wal-Mart和Target这样的综合超市也有便宜的家具出售。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	C.日常用品:其他一些日常用品,比如厨房用具、洗衣用具、卫生间用具、卧室用具、体育用具等 等都在可以在Wal-Mart和Target这样的综合超市买到;或者网购。一些五金器具之类的Home Depot和Wal-Mart也可以买到。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	D.二手货:如果想找价廉物美的二手家具和日常用品,可以去yard sale或者moving sale看看,\r\n</p>\r\n<p class="normal">\r\n	会比店里便宜不少。或者去上面的那个craigslist上去淘,经常能遇见比较便宜的,\r\n</p>\r\n<p class="normal">\r\n	worcester.craigslist.org。有时候WPI的老生搬家也会卖家具,请加入我们的mail list并时刻 注意这方面的信息。旧家具还可以去25 Park Ave的Good Will 508 752 4042,和166 Chandler Street 508 795&nbsp;<span style="line-height:1.5;">7400上面的旧家具店买。</span> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	E.附近超市:\r\n</p>\r\n<p class="normal">\r\n	○IKEA:IKEA Way, Stoughton, MA 02072\r\n</p>\r\n<p class="normal">\r\n	○Wal-Mart:11 Jungle Rd, Leominster, MA 01453\r\n</p>\r\n<p class="normal">\r\n	○Target:529 Lincoln St, Worcester, MA 01605\r\n</p>\r\n<p class="normal">\r\n	○Home Depot:130 Gold Star Blvd, Worcester, MA 01606\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(2)买菜\r\n</p>\r\n<p class="normal">\r\n	○Price Chopper:离学校最近的美式超市 在美国常见的蔬菜水果之类都能在这里找到。肉类鱼类 鸡蛋面包牛奶还有各种熟食也不错。主要面向美国人 但是最近也开始有一些诸如 方便面豆腐 大白菜之类的中式食品出现。质量好但是价格较高。优点是24小时营业,且质量不错。 地址:221 Park Ave, Worcester, MA -\r\n</p>\r\n<p class="normal">\r\n	(508) 798-5178\r\n</p>\r\n<p class="normal">\r\n	○Price Rite:大型美式超市距离稍远但是尚可步行达到商品种类较Chopper更多 以西方以及南美消费习惯为主。价格十分厚道,由于销售量挺大,所以十分新鲜。在这里主要买些蔬菜、肉类、水果、饮料和牛奶 等。此外还有一些廉价衣物鞋帽出售。\r\n</p>\r\n<p class="normal">\r\n	地址:117 Gold Star Blvd, Worcester, MA (508) 853-7443\r\n</p>\r\n<p class="normal">\r\n	○Mekong Supermarket:越南超市。以亚洲顾客为主,常见的中餐用料可以在这里找 到:泰国香米、普通稻米、苋菜、白菜等美式超市难见到的这里都有。此外还有牛杂、鸡杂、肝、猪蹄等亚洲特色肉制品。店内有新鲜海鱼出售。此外还有一些诸如脸盆、暖壶 、 中式菜刀、 砂锅等生活用具。店内还提供配钥匙的服务。价格中等。火锅用品在这里基本上都可以找得到。晚上8点关门。\r\n</p>\r\n<p class="normal">\r\n	地址:747 Main St, Worcester, MA - (508) 304-1437\r\n</p>\r\n<p class="normal">\r\n	○Family 88:中国超市。经营范围和Mekong类似规模较小。老板是中国人很热情。如果有什么酱汁调料别处找不见可以在这里碰碰运气。店内还有便宜的IP电话卡出售。虽然店面小,但是东西齐全,还有一些淡水鱼虾都买得到。买鱼的话还会帮你剖开洗净,十分厚道。许多东西比Mekong便宜,晚上9点半左右关门。\r\n</p>\r\n<p class="normal">\r\n	地址:877 Main St, Worcester, MA - (508) 753-9988\r\n</p>\r\n<p class="normal">\r\n	○亚洲超市:在Westborough,距离较远,约20分钟车程。中日韩三国的调味品这里十分 齐全。火锅料火锅用的薄片牛羊肉也很不错。此外还有一些药膳食材,对食疗有研究的同学可以去找找。\r\n</p>\r\n<p class="normal">\r\n	地址:229 Turnpike Rd,\r\n</p>\r\n<p class="normal">\r\n	Westborough, MA - (508) 898-0066\r\n</p>\r\n<p class="normal">\r\n	○Twin''s Oriental Market:韩国超市。知道的人不 是很多;有日韩风格的零食出售 还有一些装饰\r\n</p>\r\n<p class="normal">\r\n	用品。此外也有著名的韩国泡菜。旁边有一 家小的韩国餐厅 但是似乎评价一般。\r\n</p>\r\n<p class="normal">\r\n	地址:118 Cambridge St # 5, Worcester, MA\r\n</p>\r\n<p class="normal">\r\n	○金门超市:在Boston Quincy地区 开车1.5小时左右。Boston Area最大最齐全的中国超市。只要国内有的这里差不多都有。还能买到新鲜的淡水鱼类。有中式熟食出售。\r\n</p>\r\n<p class="normal">\r\n	地址: 219 Quincy Ave., Quincy, MA - (617) 328-1533\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(3)买衣服及化妆品\r\n</p>\r\n<p class="normal">\r\n	○Greendale Mall有TJ.MAX, TJ.MAX有的时候能淘到比较好的大牌。但是大多 数时候都是一些中低档的衣服 装饰品 以及简单的化妆品(EA最多,有时会有EL)。Best Buy就不用细说了,电子产品专卖店。此外Greendale Mall还有一些中低端的品牌如old navy,AE,RUE21等,东西比较便宜,有时候会有大的折扣。<a href="http://www.simon.com/mall/default.aspx?id=336">http://www.simon.com/mall/default.aspx?id=336</a> \r\n</p>\r\n<p class="normal">\r\n	○Solomon Pond驾车20分钟左右,档次比Geendale Mall好,内有MACY’S百货和一些 常见品牌:FOREVER21,AF,AE,VS,EXPRESS, FINISH LINE, FOOT LOCKER等。附近也有Best buy。Food count还不错。有电影院。<a href="http://www.simon.com/mall/default.aspx?id=339">http://www.simon.com/mall/default.aspx?ID=339</a> \r\n</p>\r\n<p class="normal">\r\n	○Wrentham Village Premium Outlets, MA最大的outlet。 服装鞋帽装饰品家具食品等各大品 牌应有尽有,重大节日常常有大的deal凭学生证可以去custom service center拿到VIP member折扣单。有很多大牌比如GUCII,DIOR,PRADA之类常年有折扣,black friday折扣很多不过人也是不一般的多。学校International House每年秋季开学还会组织去采购。<a href="http://www.premiumoutlets.com/outlets/outlet.asp?id=10">http://www.premiumoutlets.com/outlets/outlet.asp?id=10</a> \r\n</p>\r\n<p class="normal">\r\n	○Natick Mall在Natick,离Worcester大概30分钟车程 比较好的mall。服饰化妆品家具 用品品牌多档次好 当然价格也不一般。具体的品牌列表也请参考网站。留心关注各种折扣信息的话会物超所值 附近还有Dick''s,Staples,cheese cake factory等店面。Minado Restaurant就在对面。是一家比较大的日式自助,晚餐还会有生蚝,刺身。<a href="http://www.natickcollection.com/">www.natickcollection.com</a> \r\n</p>\r\n<p class="normal">\r\n	○Newbury Street ,Boston: Boston的奢侈品牌一条街,有一些比较贵的牌子比如Armani,Ernenegildo Zegna, Chanel, Cartier, Loro Piana等。<a href="http://www.newbury-st.com/">www.newbury-st.com</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	◇购物指导网\r\n</p>\r\n<p class="normal">\r\n	○<a href="http://www.huaren.us/">www.huaren.us</a> \r\n</p>\r\n<p class="normal">\r\n	○<a href="http://www.dealsea.com/">www.dealsea.com</a> \r\n</p>\r\n<p class="normal">\r\n	○<a href="http://www.dealslist.com/">www.dealslist.com</a> \r\n</p>\r\n<p class="normal">\r\n	○可以关注 北美省钱快报 的官方微博,有很多折扣提供。<a href="http://www.dealmoon.com/">www.dealmoon.com</a> \r\n</p>\r\n<p class="normal">\r\n	◇品牌官方网站:\r\n</p>\r\n<p class="normal">\r\n	○AE: American Eagle Outfitters,<a href="http://www.ae.com/">www.ae.com</a>,休闲装为主\r\n</p>\r\n<p class="normal">\r\n	○AF: Abercrombie&amp;Fitch,<a href="http://www.abercrombie.com%20/">www.abercrombie.com</a>(Abercrombie是其junior品牌,更加年轻海滩风情的Hollister和更高端一些的RUEHL no.928也是这家公司的) ,休闲装为主,香水也不错。\r\n</p>\r\n<p class="normal">\r\n	○AN/安家:Anthropologie,<a href="http://www.anthropologie.com/">www.anthropologie.com</a>(a retailer of high-end casual clothing andother merchandise run by Urban Outfitters)\r\n</p>\r\n<p class="normal">\r\n	○AT / ATloft: Ann Taylor/Ann Taylor Loft,<a href="http://www.anntaylor.com/">www.anntaylor.com</a>,<a href="http://www.anntaylorloft.com/">www.anntaylorloft.com</a> \r\n</p>\r\n<p class="normal">\r\n	○AX: Amarniexchange,<a href="http://www.amarniexchange.com/">www.amarniexchange.com</a> \r\n</p>\r\n<p class="normal">\r\n	○BR/香蕉/香蕉共和国: Banana Republic。与其低端old navy和中低端gap是一家公司)<a href="http://www.amarniexchange.com/">www.bananarepublic.com</a>,<a href="http://www.gap.com/">www.gap.com</a>,<a href="http://www.gap.com/">www.oldnavy.com</a> \r\n</p>\r\n<p class="normal">\r\n	○BBB: Bed, Bath &amp; Beyond,<a href="http://www.bedbathandbeyond.com/">www.bedbathandbeyond.com</a>,居家用品\r\n</p>\r\n<p class="normal">\r\n	○BBW: Bath&amp; Body Works,<a href="http://www.bathandbodyworks.com/">www.bathandbodyworks.com</a>,护肤用品\r\n</p>\r\n<p class="normal">\r\n	○Bloomies: bloomingdales (中高档百货店)<a href="http://www.bloomingdales.com/">www.bloomingdales.com</a> \r\n</p>\r\n<p class="normal">\r\n	○CC: Casual Corner,<a href="http://www.casualcorner.com/">www.casualcorner.com</a>(See PS,一家的,不同size)\r\n</p>\r\n<p class="normal">\r\n	○CK: Calvin Klein<a href="http://www.calvinklein.com/">www.calvinklein.com</a>,各种休闲装为主,也有西装,男女用香水也不错\r\n</p>\r\n<p class="normal">\r\n	○CD: Christian Dior,<a href="http://www.dior.com/">www.dior.com</a>,高档品牌\r\n</p>\r\n<p class="normal">\r\n	○D&amp;G:<a href="http://www.dkny.com/">http://www.dkny.com/</a> \r\n</p>\r\n<p class="normal">\r\n	○Diesel:<a href="http://store.diesel.com/">http://store.diesel.com</a>,意大利休闲装\r\n</p>\r\n<p class="normal">\r\n	○DKNY/DKNY Jeans:<a href="http://www.dkny.com/">http://www.dkny.com/</a> \r\n</p>\r\n<p class="normal">\r\n	○CM: Club Monaco<a href="http://www.clubmonaco.com/">www.clubmonaco.com</a> \r\n</p>\r\n<p class="normal">\r\n	○FB: Filenes’ basement (较高档的折价店)<a href="http://www.filenesbasement.com/">www.filenesbasement.com</a> \r\n</p>\r\n<p class="normal">\r\n	○FCUK: French Connection UK,<a href="http://www.fcuk.com/">www.fcuk.com</a> \r\n</p>\r\n<p class="normal">\r\n	○FP: Free people,<a href="http://www.freepeople.com/">www.freepeople.com</a> \r\n</p>\r\n<p class="normal">\r\n	○F21/21: Forever21,<a href="http://www.forever21.com/">www.forever21.com</a> \r\n</p>\r\n<p class="normal">\r\n	○HM: H&amp;M,<a href="http://www.hm.com/">www.hm.com</a>,欧洲品牌\r\n</p>\r\n<p class="normal">\r\n	○贼酷/XX:Jcrew,<a href="http://www.jcrew.com/">www.jcrew.com</a>他家的衬衣质量很不错\r\n</p>\r\n<p class="normal">\r\n	○JC: Juicy Couture,<a href="http://www.juicycouture.com/">www.juicycouture.com</a> \r\n</p>\r\n<p class="normal">\r\n	○Liz: Liz Clairborne,<a href="http://www.lizclairborne.com/">www.lizclairborne.com</a> \r\n</p>\r\n<p class="normal">\r\n	○捞面:loehmann''s(中高档的折价店),<a href="http://www.smartbargains.com/">www.smartbargains.com</a> \r\n</p>\r\n<p class="normal">\r\n	○马哨/马勺:Marshall''s,<a href="http://www.marshalls.com/">www.marshalls.com</a> \r\n</p>\r\n<p class="normal">\r\n	○MJ: Marc Jacobs,<a href="http://www.marcjacobs.com/">www.marcjacobs.com</a> \r\n</p>\r\n<p class="normal">\r\n	○MS/60: Miss Sixty(与energie一家公司),<a href="http://www.misssixty.com/">www.misssixty.com</a>(也可指Max Studio啊好像,呵呵,<a href="http://www.maxstudio.com/">www.maxstudio.com</a>) Nautica:<a href="http://www.nautica.com/">www.nautica.com</a> \r\n</p>\r\n<p class="normal">\r\n	○NM: Neiman Marcus(高级百货店,其折价店为neiman marcus last call),<a href="http://www.neimanmarcus.com/">www.neimanmarcus.com</a> \r\n</p>\r\n<p class="normal">\r\n	○NW: Nine West,<a href="http://www.ninewest.com/">www.ninewest.com</a> \r\n</p>\r\n<p class="normal">\r\n	○Nordie: nordstrom (中高档百货店,折价店为nordstrom rack)<a href="http://www.nordstrom.com/">www.nordstrom.com</a> \r\n</p>\r\n<p class="normal">\r\n	○老海军:Old Navy,<a href="http://www.oldnavy.com/">www.oldnavy.com</a>,比较便宜的牌子\r\n</p>\r\n<p class="normal">\r\n	○PF: Paul Frank,<a href="http://www.paulfrank.com/">www.paulfrank.com</a>,<a href="http://www.juliusandfriends.com/">www.juliusandfriends.com</a> \r\n</p>\r\n<p class="normal">\r\n	○PS: Petite Sophisticate,<a href="http://www.petitesophisticate.com%20/">www.petitesophisticate.com</a>(See CC)\r\n</p>\r\n<p class="normal">\r\n	○Saks: Saks Fifth Avenue,<a href="http://www.saksfifthavenue.com/">www.saksfifthavenue.com</a>,各种高档品牌的集中销售商\r\n</p>\r\n<p class="normal">\r\n	○Off 5th (off 5th avenue,高级百货店saks 5th avenue的折价店)<a href="http://www.saks.com/">www.saks.com</a> \r\n</p>\r\n<p class="normal">\r\n	○seven for all mankind: (较高档牛仔裤品牌,裤兜和纽扣均有标志。express出的一款牛仔裤只叫seven,又混淆视听之嫌)<a href="http://www.sevenforallmankind.com/">www.sevenforallmankind.com</a> \r\n</p>\r\n<p class="normal">\r\n	○Tommy Hilfiger:<a href="http://www.shoptommy.com/tommy/">http://www.shoptommy.com/tommy/</a> \r\n</p>\r\n<p class="normal">\r\n	○UO: Urban Outfitters(学生品牌为主杂货店,和年龄层更大些的anthropologie,纯女装的free people是一家),<a href="http://www.urbanoutfitters.com/">www.urbanoutfitters.com</a> \r\n</p>\r\n<p class="normal">\r\n	○VS: Victoria''s Secret(和express, the limited, new york &amp; co.是一家公司) ,主营女士内衣<a href="http://www.victoriassecret.com/">www.victoriassecret.com</a> \r\n</p>\r\n<p class="normal">\r\n	○Zegna:<a href="http://www.zegna.com/">http://www.zegna.com/</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(4)买药\r\n</p>\r\n<p class="normal">\r\n	一些常见的非处方药,如感冒药、止疼药、治过敏药、维生素营养品、眼药水等等,可以在一些药品超市买到,比如CVS和Walgreen。WPI附近Park Ave上有一家CVS和一 家Walgreen,都是24小时营业。地址为\r\n</p>\r\n<p class="normal">\r\n	○ CVS:283 Park Avenue, Worcester, MA - (508) 792-3866\r\n</p>\r\n<p class="normal">\r\n	○ Walgreen:320 Park Ave, Worcester, MA - (508) 767-1732\r\n</p>\r\n<h2 id="出行">\r\n	4.出行\r\n</h2>\r\n<p class="normal">\r\n	a)本地\r\n</p>\r\n<p class="normal">\r\n	Worcester市内内公交车极为稀少,不方便。一个小时一趟。出租车也不多,有两个 出租车公司,一个red cab和yellow cab.出租车都要打电话预约,大约5-10分钟后会有车 到你的地址。如果提前预订的话,一般会准时到你指定的地方。从学校到火车站的话要大概8块钱,加小费。到Boston可以坐火车,一趟单程也是7.75美元,灰狗或者彼得潘的大巴单程需要10美元左右。火车和大巴一般都有wifi可以使用。火车和大巴均到boston的south station站,该站就在boston chinatown附 近。大巴上下车地点可能不同,大家注意查网站。\r\n</p>\r\n<p class="normal">\r\n	如需到walmart购物或者去price rite或者越南店/中国店买菜,可以几个人一起,请 有车的学长们帮忙。\r\n</p>\r\n<p class="normal">\r\n	○麻州公共交通:上面可以找到往返麻州各大城市的火车时刻表,波士顿地 区的 地铁图,还有波士顿地区的公共汽车线路图。<a href="http://www.mbta.com/">http://www.mbta.com/</a> \r\n</p>\r\n<p class="normal">\r\n	○Peterpan:上面可以找到peterpan的往返全美各个城市的时刻表还有在全美各个 城市的车站地址。同时,你还可以在上面直接订票。有时会有打折,订的早也会有优惠。<a href="http://www.peterpanbus.com/">http://www.peterpanbus.com/</a> \r\n</p>\r\n<p class="normal">\r\n	○往返波士顿和纽约的大巴:往返波士顿和纽约的中国城大巴主要有两家,一家是 风华(Fung\r\n</p>\r\n<p class="normal">\r\n	Wah Bus)还有一家是Lucky Star。因为和peterpan比,两家的价格较低,单 程只要$15(2.00am是25刀),所以是去纽约的主要选择。请注意,Peterpan和Feng Wah Bus在波士顿都是从south station的busterminal上车。但是到纽约不是在同一个地 方下车,Feng Wah是在Chinatown下车,Peterpan是在downtown附近的PABT(曼哈顿 岛上)。上下车地点可能不同,请在出发前了解清楚。\r\n</p>\r\n<p class="normal">\r\n	Feng Wah(风华):<a href="https://www.fungwahbus.com/default.aspx">https://www.fungwahbus.com/default.aspx</a>;\r\n</p>\r\n<p class="normal">\r\n	Lucky Star:<a href="http://www.luckystarbus.com/">http://www.luckystarbus.com/</a> \r\n</p>\r\n<p class="normal">\r\n	○再介绍一个很好的大巴,叫做MegaBus.网上订票地址是http://www.megabus.com/us/这大巴定得越早,价格越便宜,够早的话还有免费的甚至1块钱的。还有一个好处,就是 这大巴上不出意外有无线网络(WiFi),速度还算很可以,不过也不是每次都能用的。但 是看在早买票比中国大巴还便宜的面子上,在这里还是很推荐大家用这个大巴。还有一个是boltbus,跟megabus一样。而且上车的地方在south station .\r\n</p>\r\n<p class="normal">\r\n	○波士顿机场到学校的limo:以下是各个service的网站:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.massport.com/Logan/getti_typeo_share.html">http://www.massport.com/Logan/getti_typeo_share.html</a> \r\n</p>\r\n<p class="normal">\r\n	其中包括了所有的limo和shared van.非常全。建议大家及早预订并且做好准备。\r\n</p>\r\n<p class="normal">\r\n	○两个比较受欢迎的limo公司:\r\n</p>\r\n<p class="normal">\r\n	(1)<a href="http://knightlimo.com/">http://knightlimo.com</a>对WPI的学生有优惠。\r\n</p>\r\n<p class="normal">\r\n	(2)<a href="http://www.wlimo.com/">http://www.wlimo.com</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	b)美国其他地区旅游\r\n</p>\r\n<p class="normal">\r\n	国外的学习生活有时候会让人觉得有些单调,外出旅游不失为放松心情的好方法,尤其对于喜\r\n</p>\r\n<p class="normal">\r\n	欢背包旅行的人来说更是如此。美国国土广大,地貌丰富,各种自然人文历史经 典可以说应有尽有,\r\n</p>\r\n<p class="normal">\r\n	尤其是自然风光。中国地理学会编撰的一本书《世界上最美丽的100个地方》,其中有18处位于\r\n</p>\r\n<p class="normal">\r\n	美国。黄石公园、大峡谷、尼亚加拉瀑布等都是我们耳熟能 详的名字。这里我们主要集中介绍一下Worcester周围比较有名的景点。对于新生来说,这些地 方自己有了车之后基本上都可以去,或者可以和老生一起拼车去,一起摊点油费过路费啥 的。美国这边出行非常方便,景点基本上不收费,宾馆机票的预订也非常方便。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(1)城市游\r\n</p>\r\n<p class="normal">\r\n	A.纽约:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约4小时车程。美国最繁华的城市,主要景点有自由女神像(Statue of Liberty),华尔街(Wall Street),帝国大厦(Empire State Building),时代广场(Times Square),洛克菲勒中心(Rockefeller Center),大都会博物馆(Metropolitan Museum),中央公园(Central Park),第五大道(the FifthAve),哥伦比亚大学(Columbia University),杜莎夫人蜡像馆(Madame Tussaud''s Wax Museum)、布鲁克林大桥(Brooklyn Bridge)等等。也可以到Flushing中国城吃非常正宗的中国菜和各种小吃:油条、豆腐脑、贵州米粉、兰州拉面、羊肉泡馍等应有尽有。\r\n</p>\r\n<p class="normal">\r\n	想要观光的同学可以到<a href="http://www.citypass.com/new-york%20">http://www.citypass.com/new-york</a>买city pass;有点类似游乐园通票,\r\n</p>\r\n<p class="normal">\r\n	以折扣价买N个景点的票(景点中有一些是自选的)。这个好像是要在1周内用完,所以不想一次\r\n</p>\r\n<p class="normal">\r\n	去很多经典的同学就单独买票吧。\r\n</p>\r\n<p class="normal">\r\n	B.波士顿:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大概一小时车程。麻州首府,美国最古老的城市之一,有很多殖民地时期古老的建筑。主要景点有Freedom Trail(沿途经过波士顿的一些古老建筑),Boston Museum of Fine\r\n</p>\r\n<p class="normal">\r\n	Art,Charles River等。当然,哈佛大学和MIT是一定要去看看的。每年的 独立日(7月4号),波士顿都会举行一场大型的音乐会和焰火表演,这个也不要错过。\r\n</p>\r\n<p class="normal">\r\n	C. Salem:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester约1.5小时。Salem是波士顿北边非常美丽的一个海滨小镇,有一个巫 师博物馆,每年的万圣节(Halloween)小镇热闹非凡。室内的Peabody and Essex Museum保存了一栋完整的徽南民居,是Boston附近不多的中国元素。\r\n</p>\r\n<p class="normal">\r\n	D.费城:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约5小时车程。费城是美国的发源地,《独立宣言》和美国第一部 联邦《宪法》的诞生地。市区内与之有关的相关景点有Liberty Bell,Independence Hall等。\r\n</p>\r\n<p class="normal">\r\n	E.普林斯顿:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约4小时车程,介于费城和纽约城之间,Princeton University所在 地。Princeton University的校园非常古老幽静,是美国最美丽的校园之一。\r\n</p>\r\n<p class="normal">\r\n	F.华盛顿\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约8小时车程,美国首都。主要景点有白宫(White House)、国会山(CapitolHill)、林肯纪念堂(Lincoln Memorial)、华盛顿纪念碑(Washington Monument)、富兰克林罗斯福主题公园(Franklin D Roosevelt Memorial),National Mall及两边的很多博物馆等。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(2)自然风光\r\n</p>\r\n<p class="normal">\r\n	A. Acadia National Park:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约5小时车程。美国东北部唯一的国家公园,位于Maine州境内,依山傍海。公园内海岸、悬崖、沙滩、港湾、高山、湖泊、森林、海岛交相辉映,还可以 品尝Maine龙虾。<a href="http://www.acadiamagic.com/">http://www.acadiamagic.com/</a> \r\n</p>\r\n<p class="normal">\r\n	B. Niagara Falls(尼亚加拉瀑布):\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约7小时车程。世界上最著名的瀑布之一,位于美加边境,瀑布水量充沛,气势\r\n</p>\r\n<p class="normal">\r\n	宏大。<a href="http://www.tourismniagara.com/">http://www.tourismniagara.com/</a> \r\n</p>\r\n<p class="normal">\r\n	C. Cape Cod海滩:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester大约2小时车程。夏天的避暑胜地,以海滩而闻名。<a href="http://www.capecodtravel.com/">http://www.capecodtravel.com/</a> \r\n</p>\r\n<p class="normal">\r\n	D. White Mountains:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester约4小时车程,由多个山峰组成,其中Mt Washington为美国东北部最高的山峰,海拔近2000米,是hiking的理想去处。也非常适合秋天(11月中下旬)去 看枫叶。<a href="http://www.visitwhitemountains.com/">www.visitwhitemountains.com</a> \r\n</p>\r\n<p class="normal">\r\n	E.佛蒙特森林(Vermont Forest):\r\n</p>\r\n<p class="normal">\r\n	Vermont是美国东北部一个州,距离Worcester最近约2小时车程。全州95%地域为森林所覆盖,以秋天的红叶最为出名,为世界上最美丽的地方之一。每年的11月里,枫 树叶子逐渐由绿转黄、再变橙黄、鲜 红、深红,最后变成褐红才掉落。北部靠近加拿大边 境的地方,气温低,海拔高,枫叶最早变红,此后,红色差不多每天向南延伸10英里。 因此人们就有幸看到这番人间的奇景:北方的枫叶已然红透,南方还是全黄,南北交界处 的色彩最为丰富,从最深的紫红,到火把一样的赤红,明明暗暗的金黄,点缀着松树的 绿、木屋的白,这满山遍野的锦绣,浓烈得象最华丽的印象派画布,一派如火如荼的生机 勃勃,所谓悲秋之气荡然无存。佛蒙特除了枫叶,还有红色谷仓,白色尖顶小教堂,廊 桥,奶牛场,小镇,丘陵„„青山山脉如同脊骨,贯穿整个州,不是很高,缓缓起伏连绵 不止,处处是最典型的美国田园风光\r\n</p>\r\n<p class="normal">\r\n	F. Wachusett Mountain:\r\n</p>\r\n<p class="normal">\r\n	距离Worcester最近的一座山,大约20分钟车程,可以hiking,冬天也可以滑雪。\r\n</p>\r\n<p class="normal">\r\n	G. Marthas Vineyland Island:\r\n</p>\r\n<p class="normal">\r\n	麻州cape cod外海的一小岛,只能乘船或飞机抵达,为美国最著名的夏日度假胜地之 一(summercolony)。<a href="http://www.marthas-vineyard-vacation-tips.com/">http://www.marthas-vineyard-vacation-tips.com/</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(3)人文景观及其他\r\n</p>\r\n<p class="normal">\r\n	A. Newport Mansion:\r\n</p>\r\n<p class="normal">\r\n	Newport距离Worcester大约1.5小时车程。市区内有很多幢100-250年前修建的豪宅,从中可以了解到美国以及欧洲上流贵族社会的奢侈生活。另外,Newport每年的七月 或八月份会有飞行表演。<a href="http://www.newportmansions.org/%20">http://www.newportmansions.org/</a> \r\n</p>\r\n<p class="normal">\r\n	B. Six Flags (六旗公园)\r\n</p>\r\n<p class="normal">\r\n	美国最著名的全国连锁游乐园,以各种刺激的过山车和水上乐园而闻名。 距离Worcester最近的six flags在麻州的springfield,大约1小时车程。New Jersey的six flags最为出名,有世界上最高的过山车。<a href="http://www.sixflags.com/">http://www.sixflags.com</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	(4)订宾馆\r\n</p>\r\n<p class="normal">\r\n	这里强烈推荐大家使用priceline:<a href="http://www.priceline.com/">www.priceline.com</a>。通过该网站可以竞价Bid到非 常便宜的星级宾馆。方法是:点击hotel—bid now,然后输入你的各种信息(入住时间,天数,房间数,宾馆星级,区域等)并出价(比如40刀),然后系统会制动搜寻符合条 件的宾馆,看有没有哪家宾馆愿意按照你的出价提供房间。使用这个网站经常可以得到70%以上的折扣。注意:这个方法也有风险,最后可能订到的酒店不完全如意。\r\n</p>\r\n<h2 id="买车">\r\n	5.买车\r\n</h2>\r\n<p class="normal">\r\n	有些同学会买新车,当然更多的同学可能会选择买二手车。这里重点说说如何买二手车:二手车一般比较便宜,当然,根据 车的不同价格差别很大。常用的一个买二手车的地方是一个叫Craigslist的网站:<a href="http://www.craigslist.org/cta/">http://www.craigslist.org/cta/</a>(这个网站,请大家小心,因为是person toperson的交易,有些人品不怎么样的卖家时不时刊登卖车信息,劝大家联系懂车的学长学姐去亲自试驾和商量价钱。。。);www.cars.com这里有很多二手车的信息,有些是private owner posted,也有 些是dealer posted。大家可以在Worcester版选择,但是一般车源数目较少,也可以到Boston版选择,那里的车源比较多。\r\n</p>\r\n<p class="normal">\r\n	买二手车的一般程序:\r\n</p>\r\n<p class="normal">\r\n	a)看到你觉得满意的车型信息后,到一个被普遍认可的查询车子参考价格的网站kbb.com的usedcar里输入车子的信息: year,model,mileage等等\r\n</p>\r\n<p class="normal">\r\n	(<a href="http://www.kbb.com/kbb/UsedCars/default.aspx">http://www.kbb.com/kbb/UsedCars/default.aspx</a>)。 选择condition后,网站会给出这个 车子的参考价格,人称KBB value。如果对方要价跟这个车子的KBB value基本吻合,说明 这个车子可以作为考虑的对象;如果要价高于KBB值很多,可能不合算;如果低于KBB值 很多,你也要当心,可能这个车子是有什么问题,或者出过车祸之类的,总之,没有掉下 来的馅饼,不要贪便宜!\r\n</p>\r\n<p class="normal">\r\n	b)看好KBB值以后,觉得不错,就也可以发email或者打电话给卖主,索要这个车子的VINnumber, VIN number相当于这个车子的“身份证号”,是官方注册用的不变的一个号 码(好像17位),有了这个VIN number,你就可以到carfax.com上去查这个车子的所有history了,在这个history里面,可以看到,这个车子前面有过几任车主,有没有车祸等 的记录,还有每个车主对车做的保养service等等,都能看到。 当然,这个carfax上查history是要买一个账号的,一般是一个账号$40,以前是一个月内有效,可以查无限次,据 说现在只能查5次。很多同学share一个账号,也有不少同学直接到mit bbs的汽车版 上,请求专人帮忙查carfax,那里好像是有一个管理员专门管一个carfax账号,为大家服务,你查完以后,如果想表示感谢,可以给mitbbs donate一点小费,用于下一个账号的购买,为后来者服务。\r\n</p>\r\n<p class="normal">\r\n	Carfax好像也就6美元查一个VIN,自己买一下也非常方便。\r\n</p>\r\n<p class="normal">\r\n	c)查完carfax以后,觉得不错,就可以联系到现场看车了,可以请一个比较懂车的同学一 起去看看,测试那个车子。如果不错,再谈价格啊,条件啊,等等。如果都还不错,最后 把车子开过去做一个mechanic check, $70~$100,如果没有检查出大的毛病,就可以拍板买 了。\r\n</p>\r\n<p class="normal">\r\n	d)付完钱以后,就是要做车子的title transfer了,卖主会把车子的title签字以后给你,让 你到RMV去办理过户手续。\r\n</p>\r\n<p class="normal">\r\n	e)在办理title transfer之前,你要为这个车子买保险,二手车一般买半保险,每半年购买 一次,保险费根据你的驾龄、年龄、车况等有些不同,但一般在每半年几百美元左右。保 险公司有好多家,如果是一辆二手车,买保险的原则通常是挑选最便宜的。可以先在不同 的保险公司网站,如<a href="http://www.geico.com/">http://www.geico.com/</a>上做一个Quote,比较价格。需要注意的是,如果在买车的时候还没有拿到正式的驾照,只有Learner Permit的话,有些保险公司是不提供保险的。网上买保险,当天能拿到,print出来以后,直接拿到RMV,去办理title transfer。需要的证件:passport,卖主签过字的title, SSN,insurance等。\r\n</p>\r\n<p class="normal">\r\n	f)在办完title transfer以后,同时车子的registration应该就有了,RMV会给你两个车牌car plate。他们会告诉你,在registration以后的10天内,local还需要在Auto Servicedealer的任何一家 或者 处做一个car safety inspection。找一个好一点的dealer,不 会让你换这换那的,省心一些。 过了safetyinspection,你就成为有车族了!\r\n</p>\r\n<p class="normal">\r\n	g)同私人买二手车是一件麻烦的事情,有些时候可能看了好几辆却总是无法满意。购买二 手车还可以在localdealer的 处购买,优点是通常会提供一定时间的保修,并且车在卖出之 前都会保养得dealer比较好,也会将所有的手续办理好。缺点是dealer的二手车通常比 私人卖出的价格高一些。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="normal" style="margin-left:24.0pt;text-indent:-24.0pt;">\r\n	<span>在这里给大家推荐一家有中文服务的</span>dealer\r\n</p>\r\n<p class="normal" style="text-align:left;margin-left:24pt;text-indent:-24pt;">\r\n	<img src="/kindeditor/attached/image/20140422/20140422162024_68887.png" alt="" /><img src="/kindeditor/attached/image/20140422/20140422162036_10475.png" alt="" /> \r\n</p>\r\n<p class="normal" style="text-align:left;margin-left:24pt;text-indent:-24pt;">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	有需要买车的同学们可以考虑下这家与CSSA合作的dealer：Herb Chambers Honda of Westborough。店里有中文服\r\n</p>\r\n<p class="MsoNormal">\r\n	务，沟通零障碍，售后更轻松。车是个复杂的大件，与同胞交流真的方便放心很多。\r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	Herb Chambers是新英格兰地区最大车行，拥有56家连锁，品质绝对有保证。他家在购得二手车后会做完整的检查和\r\n</p>\r\n<p class="MsoNormal">\r\n	必要的修整保养再出售，因此车况都蛮好的。Herb\r\nChambers还提供完整的售后服务，包括5-day money back&nbsp;\r\n</p>\r\n<p class="MsoNormal">\r\n	guarantee &amp; 30-day/1500 mile exchange policy，并且有专业的维修部门。\r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	店里有大量不同型号的新车和二手车，主要是本田，也会有客户trade-in的其他品牌车辆。同学们有任何关于购车的疑\r\n</p>\r\n<p class="MsoNormal">\r\n	问都可以咨询杨先生。\r\n</p>\r\n<p class="MsoNormal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	联系人：David\r\nYang（杨佳兴）\r\n</p>\r\n<p class="MsoNormal">\r\n	公司：774-760-0500\r\n</p>\r\n<p class="MsoNormal">\r\n	手机：774-272-5312\r\n</p>\r\n<p class="MsoNormal">\r\n	邮箱：DYang@herbchambers.com\r\n</p>\r\n<p class="MsoNormal">\r\n	地址：350\r\nTurnpike Road, Route 9, Westborough, MA 01581\r\n</p>\r\n<p class="MsoNormal">\r\n	&nbsp;&nbsp;&nbsp;&nbsp; （临近9号/20号公路交会口，距离学校7.7迈。）\r\n</p>\r\n<p class="MsoNormal">\r\n	网站：http://www.herbchambershondaofwestborough.com/index.htm\r\n</p>\r\n<p class="MsoNormal">\r\n	<span style="line-height:1.5;"><img src="/kindeditor/attached/image/20140421/20140421231031_22955.jpg" alt="" /></span> \r\n</p>\r\n<h2 id="考驾照">\r\n	6.考驾照\r\n</h2>\r\n<p class="MsoNormal">\r\n	<b>一．驾照所需材料：</b> \r\n</p>\r\n<p class="MsoNormal">\r\n	<span style="line-height:1.5;">驾照在美国是相当于国内身份证一样重要的证件，上飞机啥的不用还掏出极其重要的护照了，另外美国驾照国际通用，可以给旅游租车等带来便利。所以，就算不准备买车开车租车，拥有一个美国驾照也是极其方便的。</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	<span style="line-height:1.5;">最为重要的是：美国学车考驾照真的不难！</span> \r\n</p>\r\n<p>\r\n	先阅读交通法规手册后至RMV(Registry of Motor Vehicles)考笔试,地址是611 Main Street,Worcester, MA。笔试通过后即可取得学习驾照(learner’spermit),之后和RMV约时间考路考。考前请教有经验人士会有所帮助。\r\n</p>\r\n<p class="normal">\r\n	笔试时需带上以下证件:\r\n</p>\r\n<p class="normal">\r\n	i. Passport;\r\n</p>\r\n<p class="normal">\r\n	ii. I-20;\r\n</p>\r\n<p class="normal">\r\n	iii. Bank Statement;\r\n</p>\r\n<p class="normal">\r\n	iv.租房的Lease或者任何寄到你当前住址的账单(银行,水电),以证明自己是MA resident\r\n</p>\r\n<p class="normal">\r\n	v. SSN(没有SSN的同学 需要到SSN管理处办理SSN denial letter来证明你不具备申领SSN的条件,考驾照时需一 并出示。)) 具体的地址可以去International House 里面要一张指路的地图 。或者在GOOGLE MAP搜索下Social Security Administration worcester&nbsp;那边的地址都可以的<br />\r\n<!--[if !supportLineBreakNewLine]--><img src="/kindeditor/attached/image/20140421/20140421231222_12723.png" alt="" /><span style="line-height:1.5;color:#337FE5;">US&nbsp;</span><b><span style="color:#337FE5;">Social Security\r\nAdministration</span></b><span style="line-height:1.5;color:#337FE5;">&nbsp;</span> \r\n</p>\r\n<p class="normal">\r\n	51 MYRTLE ST WORCESTER, MA 01608\r\n</p>\r\n<p class="normal" style="margin-left:10.5pt;">\r\n	<b></b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class="normal">\r\n	vi.近视的同学记得带眼镜或者隐形\r\n</p>\r\n<p class="normal">\r\n	路考的地点一般选择在Worcester的RMV,其他常去的考点包括Southbridge的RMV以及Framingham的RMV。\r\n</p>\r\n<p class="normal">\r\n	RMV的URL:<a href="http://www.mass.gov/rmv/">http://www.mass.gov/rmv/</a>。 可查到各RMV的地址、电话、下载申请表 和读交通法规。RMV网上服务一般只能让拥有SSN的人员使用,而且仅在正常工作时间 才会开通。\r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal">\r\n	<b>二</b><b>. <span>复习笔试</span></b><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>准备齐了这些资料后，接下来就是复习笔试啦．最权威的复习资料是官网上权威的驾使手册</span>（<a href="http://www.mass.gov/rmv/dmanual/">http://www.mass.gov/rmv/dmanual/</a>）。包括从准备资料，到考试，到路试注意事项等等资料。有时间最好通读．考试费用30<span>刀，并且可以预付正式驾照费用。</span> \r\n</p>\r\n<p class="MsoNormal">\r\n	<span style="color:#E53333;">注意，RMV已经不提供中文版试题了。</span><br />\r\n<!--[endif]-->\r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>要交完资料的当天就可以马上参加笔试如果通过当场拿学车证。鉴于</span>RMV<span>办公室一般排长队，所以还是准备周全，一不要漏带文件，二要笔试保过，三不要忘带钱。到时候可以现金和刷卡。</span> \r\n</p>\r\n<p class="normal" style="text-indent:36.0pt;">\r\n	<span>路考的地点一般选择在</span> Worcester <span>的</span> RMV,<span>其他常去的考点包括</span> Southbridge <span>的</span> RMV <span>以及</span>Framingham <span>的</span> RMV<span>。</span> \r\n</p>\r\n<p class="normal" style="text-indent:36.0pt;">\r\n	RMV <span>的</span> URL: <a href="http://www.mass.gov/rmv/">http://www.mass.gov/rmv/</a> <span>。 可查到各</span> RMV <span>的地址、电话、下载申请表 和读交通法规。</span>RMV <span>网上服务一般只能让拥有</span> SSN <span>的人员使用</span>,<span>而且仅在正常工作时间 才会开通。</span><img src="/kindeditor/attached/image/20140421/20140421231556_90269.png" alt="" /> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">（伍斯特RMV地址）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	笔试通过后你就会拿到这张<b>PERMIT</b>了\r\n</p>\r\n<p>\r\n	<img src="/kindeditor/attached/image/20140421/20140421233322_57421.jpg" alt="" /> \r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	如果在一天里交完资料，考完笔试又通过了，就可以开始联系学车了。<br />\r\n<b>&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><b><span style="background-color:#FFFFFF;color:#FFE500;">只要拿到了学车证就可以在一个有一年驾龄以上，又超过２１岁的持驾照者的陪同下开车了</span><span style="background-color:#FFFFFF;color:#FFE500;">。</span></b>学车途径因人而异。有人喜欢朋友教，有人也喜欢去驾校。一般来说如果在国内如果有驾龄的话，主要就是熟悉交通规则。\r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	最最重要的也是和国内最大不同的其实就是两条：\r\n</p>\r\n<ol>\r\n	<li class="MsoNormalCxSpMiddle" style="text-align:left;vertical-align:baseline;">\r\n		<b><span style="background-color:#FFFFFF;color:#E53333;">STOP</span></b> 标志一定要停车，是完全停下来！！考试的时候要停够三秒，平时要停下看车，因为主道的车是不会减速通过的。\r\n	</li>\r\n	<li class="MsoNormalCxSpMiddle" style="text-align:left;vertical-align:baseline;">\r\n		任何时候，注意，是任何时候，礼让行人。\r\n	</li>\r\n</ol>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	其它的细节当然还有不少，但是基本在考完Permit<span>之后也就了解了，但上述两条请刻在心里。</span> \r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	<br />\r\n<span> </span> \r\n</p>\r\n<p class="MsoNormal">\r\n	<b>三</b><b>. <span>路考</span></b> \r\n</p>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>当学成后，就可以开始约路考了。</span><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>路考可以通过几种方式．</span><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>一种是通过驾校约，一种是自己约．这里就比较有学问了。自己约的话，得提供这么几样东西：一位有一年驾龄以上的监督人（</span>sponsor<span>），自己备车，完成申请。这个程序对于美国当地人来说不是难事：一般可能丈夫就是</span>sponsor<span>，然后提供私车让刚会开车的妻子去考试。但对于国际学生来说比较的麻烦。通过驾校来约考试的话，</span><b><span style="background-color:#FFFFFF;color:#FFE500;">驾校可以提供考试用车以及sponsor，当然这会需要额外的费用。记着路考当天要带着学车证。</span></b><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果自己约路考的话，下面有一些联系的信息<b><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#E53333;">800-858-3926</span><br />\r\n<span style="color:#E53333;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; •From all other\r\nMassachusetts area codes not listed above</span></b><br />\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过了路考后，就可以拿着考官签了名的学车证再次去RMV办公室办理临时驾照，并支付正式驾照费用如果笔试时没有预付凭着临时驾照就可以上路开车了。正式的驾照会在几个星期里寄到提供的住址处。\r\n</p>\r\n<p>\r\n	<img src="/kindeditor/attached/image/20140421/20140421233406_51569.jpg" alt="" /> \r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	<span> </span> \r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	这就是真正的麻州的驾照，出来了，有效期是<span style="color:#E53333;">5</span>年。\r\n</p>\r\n<p class="MsoNormal" align="left" style="vertical-align:baseline;">\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	<b><i>路考的一些小提示</i></b><b><i>:</i></b> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	1.<span>坐上车后</span>,<span>先系好安全带</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	2.<span>考官会要求你把车钥匙转到</span> ON,<span>但是不启动车</span>,<span>检查你的刹车、转向灯、雨刷、除雾器、 大灯、喇叭等。如果你的车上有的部件不能正常工作的话</span>,<span>考官是不会让你路考的。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	3.<span>路考前</span>,<span>把座位调大点空间</span>,<span>美国人比较胖</span>,<span>让考官坐得舒服了</span>,<span>考试时也会心情好些。 考官坐上车后</span>,<span>等他发指令你再启动车。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	4.Stop sign<span>一定要停满三秒。遇到红灯一定要停</span>,<span>如果你在红灯要右转</span>,<span>一定要先</span>full stop <span>了</span>,<span>再逐渐向前挪动车子</span>,<span>挑合适的机会转弯。看见行人一定要让。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	5.<span>过四叉路口一定要动作夸张地左右张望一下</span>(<span>当然也是真的要看清楚一些</span>),<span>不然考官会 认为你没有注意路况</span>,<span>会扣分的。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	6.<span>右转时一定要以明显动作回头过肩看右后方</span>,<span>不然会被扣分的。</span> 7.<span>绝对不能超速</span>,<span>不然立马就</span> fail <span>了。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	8.<span>路边停车时</span>,<span>一定要打右转灯。从路边出来时</span>,<span>一定要打左转灯。换道、上高速</span> merge <span>主 车流都要打转向灯。下高速也要打右转灯</span>,<span>否则都会扣分的。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	9.<span>在自己不确定可以安全换道时</span>,<span>就不要勉强</span>,<span>考官还是要命的</span>,<span>不会勉强你的</span>,<span>最多给你 换条路线。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	10.<span>路边停车时</span>,<span>如果在有坡度的路上</span>,<span>要注意轮子的方向。</span> 11.<span>任何时候都不要和有行路权的车抢道</span>,<span>就算你抢成功了</span>,<span>考官也会认为你是危险驾驶</span>,\r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	把你 fail <span>掉的。 </span>12.<span>考前最好去</span> DMV <span>门口跟几辆考试的车</span>,<span>摸摸路线</span>,<span>踩踩点</span>,<span>考试时就会顺利许多。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	13.<span>对于考官的指令如果没有听清楚</span>,<span>可以再问一遍确认一下</span>,<span>千万不要紧张。有一个笑话</span>, <span>有一人很紧张</span>,<span>考官让他</span> left turn,<span>他怕自己没听清楚</span>,<span>就问</span>“left turn?”,<span>考官答曰</span>“Right.” <span>此人一拨方向盘就右转去了</span>,<span>于是</span> fail <span>掉了。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	14.<span>开车的时候尽量开得平滑一些</span>,<span>按照路标速度开</span>,<span>不要超速</span>,<span>也不能太慢</span>,<span>太慢是阻碍 交通</span>,<span>也会</span> fail <span>掉的。刹车不要急刹</span>,<span>这样考官坐得舒服</span>,<span>一些小毛病也就让你混过去了。</span> \r\n</p>\r\n<p class="MsoNormal" align="left">\r\n	总而言之,<span>路考没有什么可怕的</span>,<span>安全第一</span>,<span>这次考不出</span>,<span>下次还有机会</span>,<span>反正考起来也不 贵</span>,<span>学起来也不难。</span> \r\n</p>\r\n<h2 id="美国国内国际机票">\r\n	7.美国国内国际机票\r\n</h2>\r\n<p>\r\n	在美国,很多同学要出门旅游,订机票是一个经常碰到的事情。如果是在美国国内旅 行,机票一般在网上定比较方便,电子票e-ticket,一般提前一个月左右便宜,提前越早越 便宜。订机票的网站一般有:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.orbitz.com/">www.orbitz.com</a>,<a href="http://www.priceline.com/">www.priceline.com</a>,<a href="http://www.expedia.com%20/">www.expedia.com</a>,<a href="http://flyithaca.com/">http://flyithaca.com/</a> \r\n</p>\r\n<p class="normal">\r\n	如果你想回国,一般找代理订机票会比网上买便宜100~200美元。可以在<a href="http://www.iflychina.net/airfare/agents/us">www.iflychina.net/airfare/agents/us</a>上找一些代理的电话,一个一个询问,比较价格等等,很多都是讲中文的代理。\r\n</p>\r\n<p class="normal">\r\n	还有几个比较有用的网站,可以比较或者直接购买回国的机票。\r\n</p>\r\n<p class="normal">\r\n	<a href="http://backchina.travelsuperlink.com/">http://backchina.travelsuperlink.com/</a> \r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.studentuniverse.com/">http://www.studentuniverse.com/</a> \r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.kingsvacation.com/result.aspx">http://www.kingsvacation.com/result.aspx</a> \r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.iflychina.net/">http://www.iflychina.net/</a> \r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.travelsuperlink.com/index_cn.php">http://www.travelsuperlink.com/index_cn.php</a> \r\n</p>\r\n<p class="normal">\r\n	我之前用过studentuniverse,这个网站需要注册用户,还需要就读学校的一些信息,具 体不记得了,价钱比较便宜。最后的网站travelsuperlink聚集了很多代理,在特价消息 栏,罗列着最新的特价机票。信息,可以去寻找符合自己情况的信息并联系相关的代理;在 讨论论坛,先注册一个账户,然后就可以在上面发布自己的信息,比如从哪里到哪里几号 的飞机,各个代理的人看到后就会给你发邮件提供他们符合要求的最低报价。\r\n</p>\r\n<h2 id="体育健身">\r\n	8.体育健身\r\n</h2>\r\n<p class="normal">\r\n	学校周围体育设施\r\n</p>\r\n<p class="normal">\r\n	○滑冰\r\n</p>\r\n<p class="normal">\r\n	网址:<a href="http://www.fmcicesports.com/public/locations/worcester/index.htm">http://www.fmcicesports.com/public/locations/worcester/index.htm</a>这个是在Worcester的,开车15分钟。稍微远点Auburn也有一个,\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.fmcicesports.com/public/locations/auburn/index.htm">http://www.fmcicesports.com/public/locations/auburn/index.htm</a>,差不多大,开车25分钟。看网页上的Public Sessions Schedule有开放时间。看网页上Public Skating一栏有租鞋费和入场费。都是$4,一场两个小时。 。周五晚上那场有DJ放歌,所以人很多,去晚了会没有冰鞋租。\r\n</p>\r\n<p class="normal">\r\n	○划船\r\n</p>\r\n<p class="normal">\r\n	在route 9和N Lake Ave交叉口那里有个Regatta Point Park,可以租船网址:<a href="http://www.regattapoint.org/rentals.html">http://www.regattapoint.org/rentals.html</a>。还有在Hopkinton State Park也可以租船网址:<a href="http://www.outdoorrec.com/hopkinton-state-park.html">http://www.outdoorrec.com/hopkinton-state-park.html</a> \r\n</p>\r\n<p class="normal">\r\n	○滑雪\r\n</p>\r\n<p class="normal">\r\n	最近的是Wachusett Mountain,网址:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.wachusett.com/MountainsideSkiSports/tabid/176/Default.aspx">http://www.wachusett.com/MountainsideSkiSports/tabid/176/Default.aspx</a>。有吃有喝有租装备有缆车(Lift),雪道难度有绿道有蓝道有Black Diamond道缆车票价:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.wachusett.com/TicketsPasses/DailyPackages/LiftTicketRates/tabid/101/Default.aspx">http://www.wachusett.com/TicketsPasses/DailyPackages/LiftTicketRates/tabid/101/Default.aspx</a> \r\n</p>\r\n<p class="normal">\r\n	租装备价格:<a href="https://www.wachusett.com/TicketsPasses/DailyPasses/Rentals/tabid/167/Default.aspx">https://www.wachusett.com/TicketsPasses/DailyPasses/Rentals/tabid/167/Default.aspx</a> \r\n</p>\r\n<p class="normal">\r\n	滑雪请注意安全 学校周围也有些其他的网球场篮球场,可以用google map找找\r\n</p>\r\n<p class="normal">\r\n	○ Hiking\r\n</p>\r\n<p class="normal">\r\n	Wachusett Mountain State Reservation。网址:<a href="http://www.mass.gov/dcr/parks/central/wach.htm">http://www.mass.gov/dcr/parks/central/wach.htm</a>。\r\n</p>\r\n<p class="normal">\r\n	上面这个网页里有Trail Map。Purgatory Chasm State Reservation。网址:\r\n</p>\r\n<p class="normal">\r\n	<a href="http://www.mass.gov/dcr/parks/central/purg.htm">http://www.mass.gov/dcr/parks/central/purg.htm</a> \r\n</p>\r\n<p class="normal">\r\n	<br />\r\n</p>\r\n<h2>\r\n	9. <span>网络资源</span> \r\n</h2>\r\n<p class="MsoNormal" style="margin-left:21.25pt;text-indent:-21.25pt;">\r\n	1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n好用的微博推荐：@北美省钱快报, @Lobsboston 【这是上届学长学姐的推荐，但是冥冥之中我觉得应该是个学姐】\r\n</p>\r\n<p class="MsoNormal" style="margin-left:21.25pt" </p>', 0);
INSERT INTO `suvival_guide` (`id`, `index`, `parent_id`, `content`, `sort`) VALUES
(24, '学校设施', 23, '', 0),
(25, '饮食', 23, '', 0),
(26, '购物', 23, '', 0),
(27, '出行', 23, '', 0),
(28, '买车', 23, '', 0),
(29, '考驾照', 23, '', 0),
(30, '美国国内国际机票', 23, '', 0),
(31, '体育健身', 23, '', 0),
(32, '网络资源', 23, '', 0),
(33, '消费', 23, '', 0),
(34, '诈骗，安全及法律', 23, '', 0),
(35, '回国', 0, '<h1 style="text-align:right;">\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;回国</span> \n</h1>\n<h2 id="订机票">\n	<hr />\n	1.订机票\n</h2>\n<p class="normal">\n	请见上一章,7.美国国内国际机票。\n</p>\n<h2 id="返签准备">\n	2.返签准备\n</h2>\n<p class="normal">\n	回国之前(1)拿I-20去IH签字;(2)跟IH要一份“Certificate of Attendance”,(这个要申请两天后才能拿到);(3)去Registrar申请要官方成绩单(official transcript)。\n</p>\n<h2 id="返签">\n	3.返签\n</h2>\n<p class="normal">\n	续签的同学可以找中信银行代办签证,其实就是你把资料都给他,钱都交好,他帮你寄去大使馆。办好了就寄给你,省了你去排队了。\n</p>', 0),
(36, '订机票', 35, '', 0),
(37, '返签准备', 35, '', 0),
(38, '返签', 35, '', 0),
(39, '后记', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;后记</span> \n</h1>\n<hr />\n首先,再次恭喜大家千辛万苦终于即将开始梦寐以求美国生活!美国没有电视电影里的那 么奢华,也不至于像某些人描述的那么苦不堪言。远离家人朋友,自己的文化以及熟悉的环境,陌生害怕寂寞总还是有的;同时也伴随着新鲜激动,一些常常在电视电影小说里出现的场景也将 真实的重现在你眼前,怎会不有趣呢。\n<p>\n	<br />\n</p>\n<p class="normal">\n	然后,WPI可能不是中国人民眼中的世界名校,但基于美国的教育方式和整体教育质量水 平比较高,只要你愿意学习,一定可以受益匪浅。伍斯特虽然不是纽约洛杉矶那样的大城市,但 他绝对不是真的美国农村(美国的小镇真的只有一个沃尔玛,几千的人口和大片的牛羊)。所以 大家大可不必抱怨。\n</p>\n<p class="normal">\n	最后,看到大片大片的华人,你可能也觉得不爽,但别忘了正是因为华人多,你才能得到 很多帮助。我们才有资源来帮助大家适应新环境。现在CSSA工作人员并不多,如有不足之处,希 望大家提出意见和建议,我们将做得更好!如果有想和我们一样为其他华人同学提供帮助的同学,欢迎加入我们!\n</p>\n<p class="normal">\n	<br />\n</p>\n<p class="normal">\n	2014-2015新生手册编译完毕,CSSA祝大家在伍村儿生活愉快!!!\n</p>\n<p class="normal">\n	CSSA敬上2014年\n</p>', 0),
(40, '附录', 0, '<h1>\n	<span style="color:#E53333;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;附录</span> \n</h1>\n<p class="normal">\n	<br />\n</p>\n<hr />\n<h2>\n	附录一 体检表格指南\n</h2>\n<p>\n	<br />\n</p>\n<h3>\n	一 、下载\n</h3>\n<p class="normal">\n	学校要求填写的体检表格可以在<a href="http://www.wpi.edu/Admin/Health/forms.html">http://www.wpi.edu/Admin/Health/forms.html</a>中下载到。\n</p>\n<p class="normal">\n	打开网页以后可以发现7张pdf格式的文件。\n</p>\n<h3>\n	二 、填写:\n</h3>\n<p class="normal">\n	第一张“Health Form Letter”和第七张“Health Report and Deadlines”文件均为通知。\n</p>\n<p class="normal">\n	第二张“Request for Immunization Exemption”是说如果你对某种要求接种的疫苗是过敏等不能接 种的,要填写此表格,一般不会用到。\n</p>\n<p class="normal">\n	第三张表格“TB Risk Questionnaire”是关于肺结核的,非常容易填写,而且貌似不是必填的表格,在此不做赘述。\n</p>\n<p class="normal">\n	第四章表格“Information &amp; Waiver”是说脑膜炎疫苗的,如果你是在学校宿舍住的话,按照麻省 法律建议你注射脑膜炎疫苗。而这张表格的用途是,你决定不注射次疫苗的话,就要签写这张表 格。\n</p>\n<p class="normal">\n	第五,第六张表格为必填表格,非常重要。在此做详细介绍:\n</p>\n<p class="normal">\n	第五张表格“Immunizations Form”上面列举了各种WPI要求注射的疫苗。\n</p>\n<p class="normal">\n	第六张表格“Demographics, Confidential Health Record, and Physical Exam”则是各种健康信息。\n</p>\n<h3>\n	三、 表单\n</h3>\n<p class="normal">\n	1.<a href="http://www.wpi.edu/Images/CMS/Health/Immunizationupdate.pdf">Immunizations Form</a> \n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821133558_88763.png" alt="" /> \n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821133612_90547.png" alt="" /> \n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821133627_47984.png" alt="" /> \n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821133636_99480.png" alt="" /> \n</p>\n<p class="normal">\n	<img src="/kindeditor/attached/image/20130821/20130821133648_20970.png" alt="" /> \n</p>\n<p class="normal">\n	◇友情提示:\n</p>\n<p class="normal">\n	1.上述两张表格都能带去体检处让医生填,但是,因为每个学校要求不一样,那里的医生也不可 能全都懂,所以你们自己还是得先看一下,毕竟是自己的事情。\n</p>\n<p class="normal">\n	2.乙肝3针要打一年,推荐把以前的记录带着,让那里的医生转抄;另外有些疫苗不是同时能打 的,要错开时间,所以请大家尽量早去体检。\n</p>\n<p class="normal">\n	3.关于7月1号之前要把这些表格寄给WPI的规定可以无视,你什么时候到伍村,什么时候给就 行,但是不能太晚,一定要在开学前。\n</p>', 0),
(41, '鸣谢', 0, '<h1 align="center">\n	<span style="color:#E53333;">鸣 谢</span> \n</h1>\n<p class="normal" align="center">\n	(感谢各届为新生手册出力的同学们,排名不分先后)\n</p>\n<p class="normal" align="center">\n	<br />\n</p>\n<p class="normal" align="center" style="text-align:center;">\n	黄哲&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>徐玮</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp; &nbsp;<span>周浩</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>赖舒圆</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp; &nbsp;<span>夏阳 &nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>张亚菲</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp;&nbsp;&nbsp;<span>郑嬗&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span>王霄阳</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp;<span>孟津锋 </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span>金枘&nbsp;</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	<span>魏天宇 </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span>郑阳</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp; &nbsp;<span>林赟</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>温常淘</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	<span>柯亮</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>蔡薇</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp;&nbsp;&nbsp;<span>林秋坤</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span>任运东</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp; &nbsp;苟鹏宇&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>杨理涵</span> \n</p>\n<p class="normal" align="center" style="text-align:center;">\n	&nbsp; &nbsp;<span>陈丝雨 </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span>王克寒</span> \n</p>\n<p>\n	<br />\n</p>\n<p class="normal" align="center">\n	<br />\n</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_residence`
--

CREATE TABLE IF NOT EXISTS `temp_residence` (
  `temp_residence_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `move_in_time` date NOT NULL,
  `move_out_time` date NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`temp_residence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_gender` char(1) NOT NULL DEFAULT '',
  `users_firstname` varchar(32) NOT NULL DEFAULT 'member',
  `users_lastname` varchar(32) NOT NULL DEFAULT 'WPILIFE',
  `users_photo` varchar(128) NOT NULL DEFAULT '1_120.jpg',
  `users_educational_background` varchar(32) NOT NULL,
  `users_major` varchar(32) NOT NULL DEFAULT '',
  `users_graduate_university` varchar(64) NOT NULL,
  `users_status` varchar(32) NOT NULL DEFAULT '',
  `users_address` varchar(100) NOT NULL DEFAULT '',
  `users_country` varchar(32) NOT NULL DEFAULT 'China',
  `users_province` varchar(32) NOT NULL,
  `users_city` varchar(32) NOT NULL,
  `users_county` varchar(32) NOT NULL,
  `users_dob` varchar(11) NOT NULL DEFAULT '0001-01-01',
  `users_email_address` varchar(96) NOT NULL DEFAULT '',
  `users_nick` varchar(96) NOT NULL DEFAULT '',
  `users_telephone` varchar(32) NOT NULL DEFAULT '',
  `users_qq` varchar(24) NOT NULL,
  `users_password` varchar(32) NOT NULL,
  `users_description` varchar(500) NOT NULL,
  `users_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `users_activated` tinyint(1) DEFAULT '1',
  `recent_login` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `extra_field` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`users_id`),
  UNIQUE KEY `users_email_address` (`users_email_address`),
  KEY `users_province` (`users_province`,`users_city`,`users_county`),
  KEY `users_graduate_university` (`users_graduate_university`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_gender`, `users_firstname`, `users_lastname`, `users_photo`, `users_educational_background`, `users_major`, `users_graduate_university`, `users_status`, `users_address`, `users_country`, `users_province`, `users_city`, `users_county`, `users_dob`, `users_email_address`, `users_nick`, `users_telephone`, `users_qq`, `users_password`, `users_description`, `users_newsletter`, `users_activated`, `recent_login`, `extra_field`) VALUES
(1, 'm', 'CSSA', 'WPI', '', '', 'CS', 'China', '', '100 Institute Rode, Worcester, MA', '', '', 'China', '', '0001-01-01 ', 'wpilife@gmail.com', 'WPILIFE', '', '0', 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', ' Just Do It!', 0, 1, '2014-04-24 12:58:40', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bbs`
--
ALTER TABLE `bbs`
  ADD CONSTRAINT `bbs_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `bbs_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bbs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_opportunity`
--
ALTER TABLE `job_opportunity`
  ADD CONSTRAINT `job_opportunity_ibfk_1` FOREIGN KEY (`poster`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_opportunity_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `job_opportunity_type` (`id`);

--
-- Constraints for table `recs`
--
ALTER TABLE `recs`
  ADD CONSTRAINT `recs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`),
  ADD CONSTRAINT `recs_ibfk_2` FOREIGN KEY (`recs_type_id`) REFERENCES `recs_type` (`id`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
