-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2024 at 09:09 AM
-- Server version: 8.0.39
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aptsurat_primary`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `a_id` int NOT NULL,
  `album_type_id` varchar(20) NOT NULL,
  `a_title` varchar(100) NOT NULL DEFAULT '',
  `a_year` year DEFAULT '0000',
  `a_description` text,
  `position` char(1) NOT NULL DEFAULT 'I',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL DEFAULT '1',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`a_id`, `album_type_id`, `a_title`, `a_year`, `a_description`, `position`, `username`, `createdate`, `modifieddate`, `status`, `sortorder`, `remote_ip`) VALUES
(12, '8', 'Festivals', '0000', 'Festivals', 'I', 'Keyur', '2016-12-02', '2016-12-09', 'E', 5, '127.0.0.1'),
(9, '8', 'Bhumi Poojan', '0000', 'Bhumi Poojan', 'I', 'Keyur', '2015-10-28', '2016-12-09', 'E', 1, '127.0.0.1'),
(10, '8', 'Opening ', '0000', 'Opening', 'I', 'Keyur', '2016-04-12', '2016-12-02', 'E', 2, '127.0.0.1'),
(11, '8', 'AGM', '0000', 'Annual General Meeting', 'I', 'Keyur', '2016-08-09', '2016-12-09', 'E', 4, '127.0.0.1'),
(13, '8', 'Team - 2021', '0000', 'Team Members', 'I', 'Keyur', '2016-08-09', '2016-12-09', 'E', 6, '127.0.0.1'),
(14, '8', 'Bhavan', '0000', 'Bhavan', 'I', 'Keyur', '2023-02-23', '2023-02-23', 'E', 3, '127.0.0.1'),
(15, '8', 'Crystal Banquet', '0000', 'Crystal Banquet', 'I', 'Keyur', '2023-03-17', '2023-03-17', 'E', 7, '127.0.0.1'),
(16, '8', 'Imperial Banquet', '0000', 'Imperial Banquet', 'I', 'Keyur', '2023-03-17', '2023-03-17', 'E', 8, '127.0.0.1'),
(17, '8', 'Pearl Banquet', '0000', 'Pearl Banquet', 'I', 'Keyur', '2023-03-17', '2023-03-17', 'E', 9, '127.0.0.1'),
(18, '8', 'Vidhi Room', '0000', 'Vidhi Room', 'I', 'Keyur', '2023-03-17', '2023-03-17', 'E', 10, '127.0.0.1'),
(21, '8', 'Extra', '0000', 'Extra', 'I', 'Keyur', '2024-05-29', '2024-05-29', 'E', 11, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `album_type`
--

CREATE TABLE `album_type` (
  `type_id` int NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` varchar(20) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_type`
--

INSERT INTO `album_type` (`type_id`, `album_title`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(8, 'Album Type 1', 'Keyur', '2015-10-27', '0000-00-00', '1', 'E', '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `contact_master`
--

CREATE TABLE `contact_master` (
  `cid` int NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `csubject` varchar(100) NOT NULL,
  `cmessage` varchar(256) NOT NULL,
  `ccontact` varchar(30) DEFAULT '0',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `new` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_master`
--

INSERT INTO `contact_master` (`cid`, `cname`, `cemail`, `csubject`, `cmessage`, `ccontact`, `cdate`, `new`) VALUES
(1, 'assa', 'asa@jdsh.com', 'ssa', 'saaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sasa', '2016-09-03 18:30:00', 1),
(2, 'ASAS', 'a@HDH.COOM', 'JHSDN', 'BSDHBSA', '232123', '2016-10-22 18:30:00', 1),
(3, 'Charlotte Britt', 'gaqecima@mailinator.com', 'Rerum facere aliquip', 'Nemo laborum magnam ', '+1 (638) 387-6824', '2023-07-30 22:00:00', 1),
(4, 'Palmer Calhoun', 'vusokywe@mailinator.com', 'Et impedit et excep', 'Corporis ut quia dol', '+1 (644) 953-7494', '2023-07-30 22:00:00', 1),
(5, 'Cally Mathis', 'keval.p.easternts@gmail.com', 'Earum sint in dicta ', 'Voluptatibus dolor q', '+1 (332) 142-3981', '2023-07-30 22:00:00', 1),
(6, 'Keval', 'keval.p.easternts@gmail.com', 'Omnis libero dolorum', 'Tempora aut voluptat', '+1 (949) 352-4109', '2023-07-30 22:00:00', 1),
(7, 'KP', 'keval.p.easternts@gmail.com', 'Laboriosam quod ver', 'Dolorum non fugit e', '+1 (161) 236-7355', '2023-07-30 22:00:00', 1),
(8, 'Chetan Parmar', 'chetanparmar94@yahoo.com', 'Job', 'Interested to Join as Accounts Manager.', '9428716203', '2023-09-08 22:00:00', 1),
(9, 'Boris Ayala', 'tykexipeno@mailinator.com', 'Sed aut ex do quis d', 'Quasi autem sunt an', '+1 (859) 219-2044', '2023-09-28 22:00:00', 1),
(10, 'HRM Bah Mbi', 'hrhmbambi@gmail.com', 'Bulk Supply', 'Attn. Director, \r\n \r\nWe are interested in your products. Please contact us if your company can handle a bulk supply of your products to Cameroon. \r\nPlease send your reply to bahmbi3@aghemfondom.com \r\n \r\nHRM Bah Mbi', '86452492271', '2023-10-24 22:00:00', 1),
(11, 'Danny', 'pOUrXR.qpcpcjc@spectrail.world', 'Mekhi Solis', 'Mekhi Solis', '765-989-01-49', '2023-12-05 23:00:00', 1),
(12, 'Jeswraps', 'Jessicavyrxes@hotmail.com', 'Hello There! Your Response is Welcomed. ', 'Interested in what you see? Check out my dating profile for more.  - https://is.gd/yzhbgr?atteple3', '83548723787', '2023-12-10 23:00:00', 1),
(13, 'Thomascox', 'exchangeaibot@proton.me', 'Free USDT and NFT tokens - take part in the promotion from Trust Wallet!', 'Enter the Trust Wallet giveaway and win up to $750,000 and NFT vouchers! Just go to the official giveaway page at https://trustgiveawayse.com/trust connect your wallet and receive a guaranteed prize. Good luck!', '82911271483', '2023-12-15 23:00:00', 1),
(14, 'Cameron', 'HvNyha.ppqpcmw@spectrail.world', 'Cameron Joseph', 'Cameron Joseph', '215-108-04-04', '2023-12-30 23:00:00', 1),
(15, 'Rosalyn Savage', 'keval.p.easternts@gmail.com', 'Minim incididunt dol', 'Ut voluptatem accusa', '+1 (833) 241-9024', '2024-01-02 23:00:00', 1),
(16, 'Aylin', 'QKAblo.tbjwdhj@kerfuffle.asia', 'Dylan Lu', 'Dylan Lu', '890-627-34-46', '2024-01-06 23:00:00', 1),
(17, 'Iirinawraps', 'Kaskniny@gmail.com', 'Attention! Very interesting offer!', 'Hi! Have s3x in your city today.  -  http://tinyurl.com/mrxncvuf?wraps', '81912653717', '2024-01-10 23:00:00', 1),
(18, 'Nataphync', 'woodthighgire1988@gmail.com', 'Hello Admin!', ' \r\nIf you Want Private Videos, Look this https://lovevoyager.page.link/EwdR', '85732995749', '2024-01-12 23:00:00', 1),
(19, '3D_jySi', 'quofreephminspi1976@bushka345.store', '3D Printers', 'Transform Your Ideas into Reality with a 3D Printer \r\ncheap 3d printer <a href=http://www.3d-ruyter53.ru>http://www.3d-ruyter53.ru</a> .', '81239982864', '2024-02-11 23:00:00', 1),
(20, 'Thomasraf', 'yasen.krasen.13+97258@mail.ru', 'Miieefjief jiwjdwkijdwf iwkdqdjwifehfuwi kwkdwjejeieifw jwioodwijrewhe', 'Ofokfojfief jwlkfeejereghfj iewojfekfjergij wiojewjfewitghuhwrgtjgh ewjhfwqjhdfuewgtuiwe huegfrwgyewgtywegt aptsurat.com', '82359871116', '2024-02-11 23:00:00', 1),
(21, 'Bennett', 'MQDeRp.hdcqppp@zetetic.sbs', 'Estella Webster', 'Estella Webster', '539-870-63-16', '2024-02-17 23:00:00', 1),
(22, 'SACHIN GOYAL', 'sachingoel.surat@gmail.com', 'for booking inquiry', 'march inquiry', '7874784524', '2024-02-18 23:00:00', 1),
(23, 'Lucy', 'vqNAjq.hjdtpq@wisefoot.club', 'Nicholas Arroyo', 'Nicholas Arroyo', '630-977-78-57', '2024-02-23 23:00:00', 1),
(24, 'Dior', 'fbKbHt.pwwcjb@wisefoot.club', 'Shiloh Romero', 'Shiloh Romero', '412-886-45-80', '2024-02-25 23:00:00', 1),
(25, 'Daviddix', 'lucido.leinteract@gmail.com', 'Hello  i am writing about     price', 'Kaixo, zure prezioa jakin nahi nuen.', '81889529982', '2024-03-05 18:30:00', 1),
(26, 'zuriah', 'dwdpqqwqm.q@monochord.xyz', 'zuriah podbrey', 'zuriah podbrey', '820-316-14-87', '2024-03-18 18:30:00', 1),
(27, 'Poonam Gilra', 'poonamgilra.90@gmail.com', 'Booking enquiry', 'Availability of rooms and banquet hall for 8-9 July 2024', '9725562932', '2024-03-21 18:30:00', 1),
(28, 'itzabelle', 'qtpbmqbcmt.q@monochord.xyz', 'itzabelle hjelseth', 'itzabelle hjelseth', '322-575-41-24', '2024-03-27 18:30:00', 1),
(29, 'RonaldRaf', 'ronaldShulp@gmail.com', 'Earn Easily By Selling FlipBooks, eBook & Articles on Amazon KDP, Shopify, Etc', 'FlipBooks are a great addition \r\nto any passive income strategy. Because once you create a FlipBook, market it, share it & Earn it, it can technically sell itself. \r\n \r\nLearn More https://www.youtube.com/watch?v=JfRrd79oCfk?14256', '87775849518', '2024-04-13 18:30:00', 1),
(30, 'Masondix', 'kaenquirynicholls@gmail.com', 'Aloha, i writing about   the price for reseller', 'Hai, saya ingin tahu harga Anda.', '86512393268', '2024-04-16 18:30:00', 1),
(31, 'JasonWer', 'yasen.krasen.13+80819@mail.ru', 'Mjewdjwjdw jwksqkowjfjj kkepwlw3jreklm kwldewkdjr3kdw2o keo2kswlkforejw', 'Odowidjwoidwo wojdwkslqmwjfbjjdwkd jkwlsqswknfbjwjdmkqendj kedwjdbwhbdqjswkdwjfj eqwkdwknf aptsurat.com', '87213436963', '2024-04-20 18:30:00', 1),
(32, 'XRumer23aluri', 'xrumer23aluri@gmail.com', 'Bases for Xrumer', 'Bases for Xrumer https://dims-tudio.ru', '83847339287', '2024-04-27 18:30:00', 1),
(33, 'XRumer23aluri', 'xrumer23aluri@gmail.com', 'Bases for Xrumer', 'Bases for Xrumer https://dims-tudio.ru', '81839386881', '2024-05-13 18:30:00', 1),
(34, 'Masondix', 'kaenquirynicholls@gmail.com', 'Hi    writing about your the price for reseller', 'Ola, quería saber o seu prezo.', '84977489478', '2024-05-13 18:30:00', 1),
(35, 'solar_kmpl', 'moplika@morozfs.store', 'solar panels for mobile homes', 'how many solar panels to run a mobile home <a href=larpan-mobi4omes.ru>larpan-mobi4omes.ru</a> .', '89621313662', '2024-05-18 18:30:00', 1),
(36, 'Nataphync', 'woodthighgire1988@gmail.com', 'Hello Admin!', ' \r\nI would let you fuck me if you was here https://lovevoyager.page.link/6BG2', '88715337557', '2024-05-29 18:30:00', 1),
(37, 'AmandaBixsminea', 'amandaaudins3@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://rb.gy/7xb976?Mano', '86421554768', '2024-06-04 18:30:00', 1),
(38, 'Masondix', 'yjdisantoyjdissemin@gmail.com', 'Hi  i am wrote about   the price for reseller', 'Salut, ech wollt Äre Präis wëssen.', '88192426627', '2024-06-17 18:30:00', 1),
(39, 'Teddix', 'yjdisantoyjdissemin@gmail.com', 'Hallo  i writing about your the price for reseller', 'Hi, kam dashur të di çmimin tuaj', '89612423227', '2024-06-22 18:30:00', 1),
(40, 'Masondix', 'yjdisantoyjdissemin@gmail.com', 'Hi, i am wrote about     price', 'Hallo, ek wou jou prys ken.', '88758294162', '2024-06-27 18:30:00', 1),
(41, 'Daviddix', 'kayleighbpsteamship@gmail.com', 'Hallo, i am writing about     price for reseller', 'Hi, I wanted to know your price.', '84914419683', '2024-07-05 18:30:00', 1),
(42, 'Daviddix', 'kayleighbpsteamship@gmail.com', 'Hello    wrote about     prices', 'Hola, quería saber tu precio..', '81428582185', '2024-07-08 18:30:00', 1),
(43, 'Tonydix', 'kayleighbpsteamship@gmail.com', 'Hello  i write about   the price for reseller', 'Zdravo, htio sam znati vašu cijenu.', '86938445963', '2024-07-10 18:30:00', 1),
(44, 'AmandaBixsminea', 'amandaaudinsc@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://rb.gy/7rnhss?Mano', '88993737788', '2024-07-10 18:30:00', 1),
(45, 'AmandaBixsmine3', 'amandaaudins3@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Tanda', '88144536554', '2024-07-11 18:30:00', 1),
(46, 'AmandaBixsmine3', 'amandaaudinsc@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Tanda', '81838519746', '2024-07-14 18:30:00', 1),
(47, 'AmandaBixsmine1', 'amandaaudins1@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Tanda', '89398143354', '2024-07-15 18:30:00', 1),
(48, 'Masondix', 'yjdisantoyjdissemin@gmail.com', 'Aloha  i writing about your the prices', 'Szia, meg akartam tudni az árát.', '87822745143', '2024-07-16 18:30:00', 1),
(49, 'AmandaBixsmine2', 'amandaaudins2@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://rb.gy/7rnhss?Mano', '83477371867', '2024-07-18 18:30:00', 1),
(50, 'AmandaBixsmineb', 'amandaaudinsb@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Tanda', '81321324438', '2024-07-20 18:30:00', 1),
(51, 'RobertReani', 'yasen.krasen.13+96579@mail.ru', 'Mjewdjwjdw jwksqkowjfjj kkepwlw3jreklm kwldewkdjr3kdw2o keo2kswlkforejw', 'Ofedkwdkjwkjdkwjdkjw jdwidjwijdwfw fjdkqwasqfoewofjewof ojqwejfqwkdokjwofjewofjewoi aptsurat.com', '83277423229', '2024-07-20 18:30:00', 1),
(52, 'AmandaBixsmine2', 'amandaaudins2@gmail.com', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Tanda', '88773973892', '2024-07-21 18:30:00', 1),
(53, 'Masondix', 'yjdisantoyjdissemin@gmail.com', 'Hello,   writing about your   prices', 'Hi, ego volo scire vestri pretium.', '89775398172', '2024-07-23 18:30:00', 1),
(54, 'AmandaBixsmine3', 'amandaaudins3@gmail.com', 'Your Dream Girl Awaits...', 'Can’t wait to show you a good time tonight. -  https://rb.gy/7rnhss?Mano', '87595225172', '2024-07-24 18:30:00', 1),
(55, 'AmandaBixsmine3', 'amandaaudins2@gmail.com', 'Your Dream Girl Awaits...', 'Can’t wait to show you a good time tonight. -  https://rb.gy/7rnhss?Mano', '81282758758', '2024-07-27 18:30:00', 1),
(56, 'Daviddix', 'kayleighbpsteamship@gmail.com', 'Hello    write about your the prices', 'Ciao, volevo sapere il tuo prezzo.', '85148681158', '2024-07-27 18:30:00', 1),
(57, 'AmandaBixsmine1', 'amandaaudinsb@gmail.com', 'Ready for a Wild Night?)', 'I’ve been naughty, want to help me with that?) -  https://rb.gy/7rnhss?Mano', '83619263199', '2024-07-28 18:30:00', 1),
(58, 'Daviddix', 'kayleighbpsteamship@gmail.com', 'Hi    writing about your   price for reseller', 'Hæ, ég vildi vita verð þitt.', '81328838372', '2024-07-29 18:30:00', 1),
(59, 'AmandaBixsmine1', 'amandaaudinsb@gmail.com', 'Ready for a Wild Night?)', 'I’ve been naughty, want to help me with that?) -  https://goo.su/zARWg?Tanda', '88317472654', '2024-08-01 18:30:00', 1),
(60, 'Thomascrync', 'rc112268@icloud.com', 'YOU’RE A WINNER IPHONE 16 PRO MAX', 'CELEBRATE YOUR WIN: IPHONE 16 PRO MAX https://pdst.fm/e/telegra.ph%2Fiphone-07-06-5%3F2683?', '84723485664', '2024-08-03 18:30:00', 1),
(61, '<span style=\"color: #ff6600;\"><strong>Cash in hand</strong></span> - https://hideuri.com/EMWVyp', 'danapugg@gmail.com', '<span style=\"color: #ff6600;\"><strong>Riches are near</strong></span> - https://hideuri.com/EMWVyp', '<span style=\"color: #ff6600;\"><strong>Riches are near</strong></span> - https://hideuri.com/EMWVyp', '86228858399', '2024-08-04 18:30:00', 1),
(62, 'Thomascrync', 'mistyseulee@icloud.com', 'CELEBRATE BIG: IPHONE 16 PRO MAX', 'FANTASTIC NEWS: IPHONE 16 PRO MAX http://www.exalead.com/search/web/results/?q=https%3A%2F%2Ftelegra.ph%2Fiphone-07-06-5%3F2993', '87884135115', '2024-08-05 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donation_master`
--

CREATE TABLE `donation_master` (
  `donation_id` int NOT NULL,
  `dname` varchar(100) NOT NULL,
  `demail` varchar(100) NOT NULL,
  `dmessage` varchar(256) NOT NULL,
  `dcontact` varchar(30) DEFAULT '0',
  `ddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `new` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_master`
--

INSERT INTO `donation_master` (`donation_id`, `dname`, `demail`, `dmessage`, `dcontact`, `ddate`, `new`) VALUES
(2, 'xcxzzx', 'a@hhds.com', 'dsdssd', '21222121', '2016-09-04 16:41:05', 1),
(3, '', '', '', '', '2023-08-29 13:41:39', 1),
(4, '', '', '', '', '2023-12-04 11:54:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int NOT NULL,
  `image` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL,
  `username` varchar(70) NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `image`, `status`, `sortorder`, `username`, `remote_ip`, `createdate`, `modifieddate`, `title`) VALUES
(2, 'Founder-Trustee-Sheet.pdf', 'E', 4, 'Keyur', '127.0.0.1', '2016-09-21', '2016-10-19', 'Founder Trustee Sheet'),
(9, 'Patron Trustee Sheet.pdf', 'E', 5, 'Keyur', '127.0.0.1', '2016-09-21', '2016-12-09', 'Patron Trustee Sheet'),
(10, 'corpus_letter.pdf', 'E', 1, 'Keyur', '127.0.0.1', '2016-09-21', '2016-10-23', 'Corpus Donation Letter'),
(11, 'general_letter.pdf', 'E', 2, 'Keyur', '127.0.0.1', '2023-05-31', '2023-05-31', 'General Donation Letter'),
(12, 'Life-Member-Sheet.pdf', 'E', 3, 'Keyur', '127.0.0.1', '2016-09-21', '2016-10-19', 'Life Member Sheet');

-- --------------------------------------------------------

--
-- Table structure for table `download_brochure`
--

CREATE TABLE `download_brochure` (
  `b_id` int NOT NULL,
  `bname` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bphone` varchar(20) NOT NULL,
  `bdate` date NOT NULL,
  `bproject` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_brochure`
--

INSERT INTO `download_brochure` (`b_id`, `bname`, `bemail`, `bphone`, `bdate`, `bproject`) VALUES
(278, 'gjgj', 'fyjyf', 'ghjkgh', '2016-04-06', 'Galaxy Home'),
(279, 'Name 1', 'dafsdf@gmail.com', '34234234', '2016-04-11', 'Vrundavan Villa'),
(280, 'aesha', 'a@gmail.com', '12233', '2016-07-30', 'Ambika Dreams'),
(281, 'sdaas', 'a@gmail.com', '32323', '2016-07-30', 'Ambika Dreams'),
(282, 'aaA', 'a@gmail.com', '2133', '2016-07-30', 'Ambika Dreams'),
(283, 'asasas', 'a@gmail.com', '122332', '2016-07-30', 'Ambika Dreams'),
(284, 'aSAS', 'a@gmail.com', '211232', '2016-07-30', 'Ambika Dreams'),
(285, 'aes', 'asa@hjddg.com', 'asaasas', '2016-08-02', 'Ambika Solitaire'),
(286, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Dreams'),
(287, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Dreams'),
(288, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Dreams'),
(289, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Dreams'),
(290, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Dreams'),
(291, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-09', 'Ambika Solitaire'),
(292, 'Zil Mehtaa', 'zilmehta@gmail.com', '9904990399', '2016-08-20', 'Ambika Pinnacle Residency'),
(293, 'z', 'z@gmail.com', '9904990399', '2016-08-20', 'Ambika Pinnacle Residency');

-- --------------------------------------------------------

--
-- Table structure for table `epanel_master`
--

CREATE TABLE `epanel_master` (
  `id` int NOT NULL,
  `home_content` text NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `powered_by` varchar(255) NOT NULL,
  `ga_view_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `remote_ip` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epanel_master`
--

INSERT INTO `epanel_master` (`id`, `home_content`, `copyright`, `powered_by`, `ga_view_id`, `username`, `create_date`, `modified_date`, `remote_ip`) VALUES
(1, '<p><span>Eastern Techno Solution (ETS) is headquartered in Surat, Gujarat. An IT Company established by ex- employees of COGNIZANT and INFOSYS.</span><br /><br /><span>It principally focused on</span><span>&nbsp;Customized Software Development, Web Applications</span><span>&nbsp;(which includes Web Designing and Ecommerce Websites),&nbsp;</span><span>Mobile Applications and Training Institute.</span><span>&nbsp;Within 3 years from its inception, ETS has been able to make a mark in Gujarat.</span><br /><br /><span>We are a company with leading specialized professionals whose striking experiences reveal a comprehensible indulgent that industries today are faced with the confrontation of harnessing the eternally changing landscape of a complicated and spirited business world.</span><br /><br /><span>It\'s essential for businesses today to stay on the callous edge of technology to build and implement the tools necessary to compete and succeed taking care of innovation. ETS has showed that with apparent understanding of your business attached to our analytical proficiency; a policy can be forged heartening your company to a whole new plateau of triumph.</span><br /><br /><span>Our all-embracing case of services includes Customized software&rsquo;s</span><span>, Web</span><span>&nbsp;application development and Mobile application development (Android development and iPhone development). ETS sets it a challenge to make finest use of the resources, and the precious business intelligence entrenched in a range of verticals - Insurance, Finance, Hotels &amp; Travel, Healthcare, Retail, Distribution, Government, and Manufacturing etc.</span><br /><span><br /><strong>We as Training Institute</strong></span><br /><span>ETS also offers a wide range of training programs for school as well as college students and IT professionals. It provides high class principles and top priority to deliver best learning know-how by following best business practices projected to help the students to expand valuable newest knowledge and experience in grounding for an innovative, pleasing career in an ever-changing marketplace.</span></p>\r\n<p><span><br /><strong>We as Consultancy Firm</strong><br /><span>ETS is also a consultancy firm that helps college students and IT professionals to be placed in the best IT companies. We have tie- ups with many companies. So the students/ IT Professionals, after attending the corporate training program, maximize their chances of getting placed in the best IT companies. Thus, we are helping the industry by providing IT technocrats.</span></span></p>', 'Arihant', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', 60932193, 'Keyur', '2015-10-26', '2016-12-31', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryID` int NOT NULL,
  `productID` int NOT NULL DEFAULT '0',
  `galleryTitle` varchar(100) NOT NULL DEFAULT '',
  `galleryImage` varchar(100) NOT NULL,
  `isFront` char(1) NOT NULL DEFAULT 'E',
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date DEFAULT '2016-01-01',
  `modifieddate` date DEFAULT '2016-01-01',
  `remote_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryID`, `productID`, `galleryTitle`, `galleryImage`, `isFront`, `status`, `username`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 1, '', 'hosting-slide2.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0'),
(2, 1, '', 'hosting-slide3.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0'),
(3, 1, '', 'hosting-slide1.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0'),
(4, 1, '', 'slider11-bg.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0'),
(5, 1, '', 'gard2.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0'),
(6, 1, '', 'p-2.jpg', 'E', 'E', '', '2016-01-01', '2016-01-01', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_master`
--

CREATE TABLE `gallery_master` (
  `image_id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '2023-02-20',
  `modifieddate` date NOT NULL DEFAULT '2023-02-20',
  `a_id` int NOT NULL,
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `gallery_image` text NOT NULL,
  `sortorder` int NOT NULL,
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_master`
--

INSERT INTO `gallery_master` (`image_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `gallery_image`, `sortorder`, `isFront`, `status`, `remote_ip`) VALUES
(1, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Bhumi Pujan', 'bhumi-1.webp', 94, '', 'E', '127.0.0.1'),
(2, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Bhumi Pujan', 'bhumi-2.webp', 95, '', 'E', '127.0.0.1'),
(3, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Excavation', '1-excavation.webp', 93, '', 'E', '127.0.0.1'),
(4, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Foundation', '2-foundation.webp', 92, '', 'E', '127.0.0.1'),
(5, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Foundation', '3-opening.webp', 91, '', 'E', '127.0.0.1'),
(6, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Basement Level 2', '4-opening.webp', 90, '', 'E', '127.0.0.1'),
(7, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Basement Level 2', '5-opening.webp', 89, '', 'E', '127.0.0.1'),
(8, 'Keyur', '2023-02-20', '2023-02-20', 9, 'Basement Level 1', '6-opening.webp', 88, '', 'E', '127.0.0.1'),
(9, 'Keyur', '2023-02-20', '2023-02-20', 9, '1st Floor Slab', '7-opening.webp', 87, '', 'E', '127.0.0.1'),
(10, 'Keyur', '2023-02-20', '2023-02-20', 9, '1st Floor Slab', '8-opening.webp', 86, '', 'E', '127.0.0.1'),
(11, 'Keyur', '2023-02-20', '2023-02-20', 9, '2nd Floor Slab', '9-opening.webp', 85, '', 'E', '127.0.0.1'),
(12, 'Keyur', '2023-02-20', '2023-02-20', 9, ' Bhavan View', 'drone-1-opening.webp', 84, '', 'E', '127.0.0.1'),
(13, 'Keyur', '2023-02-20', '2023-02-20', 9, ' Bhavan View', 'drone-2-opening.webp', 83, '', 'E', '127.0.0.1'),
(14, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '1.webp', 82, '', 'E', '127.0.0.1'),
(15, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '2.webp', 81, '', 'E', '127.0.0.1'),
(16, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '3.webp', 80, '', 'E', '127.0.0.1'),
(17, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '4.webp', 79, '', 'E', '127.0.0.1'),
(18, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '5.webp', 78, '', 'E', '127.0.0.1'),
(19, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '6.webp', 77, '', 'E', '127.0.0.1'),
(20, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '7.webp', 76, '', 'E', '127.0.0.1'),
(21, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '8.webp', 75, '', 'E', '127.0.0.1'),
(22, 'Keyur', '2023-02-20', '2023-02-20', 10, 'Opening', '9.webp', 74, '', 'E', '127.0.0.1'),
(23, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Agra Exotica View', 'Bhavan_1.webp', 1000, '', 'E', '127.0.0.1'),
(24, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Agra Exotica View', 'Bhavan_2.webp', 1000, '', 'E', '127.0.0.1'),
(25, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Agra Exotica View', 'Bhavan_3.webp', 1000, '', 'E', '127.0.0.1'),
(26, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Parking', '13-parking.webp', 70, '', 'E', '127.0.0.1'),
(27, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Parking', '14-parking.webp', 69, '', 'E', '127.0.0.1'),
(28, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Front Lawn', '15-front-lawn.webp', 68, '', 'E', '127.0.0.1'),
(29, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Board Room', '16-board-room.webp', 67, '', 'E', '127.0.0.1'),
(30, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Floor Lobby Area', '17-lobby.webp', 998, '', 'E', '127.0.0.1'),
(31, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Vidhi Room', '18-vidhi-room.webp', 65, '', 'E', '127.0.0.1'),
(32, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Reception', '19-reception.webp', 998, '', 'E', '127.0.0.1'),
(33, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Reception', '20-reception.webp', 63, '', 'E', '127.0.0.1'),
(34, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Crystal Banquet', '21-crystal-hall.webp', 62, '', 'E', '127.0.0.1'),
(35, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Crystal Banquet', '22-crystal-hall.webp', 61, '', 'E', '127.0.0.1'),
(36, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Kitchen View', '23-kitchen.webp', 48, '', 'E', '127.0.0.1'),
(37, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Kitchen View', '24-kitchen.webp', 48, '', 'E', '127.0.0.1'),
(38, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Imperial Banquet', '25-imperial-hall.webp', 58, '', 'E', '127.0.0.1'),
(39, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Imperial Banquet', '26-imperial-hall.webp', 57, '', 'E', '127.0.0.1'),
(40, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Pearl Banquet', '27-pearl-hall.webp', 56, '', 'E', '127.0.0.1'),
(41, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Pearl Banquet', '28-pearl-hall.webp', 55, '', 'E', '127.0.0.1'),
(42, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Pearl Banquet Layout', '29-pearl-layout.webp', 54, '', 'E', '127.0.0.1'),
(43, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Master Bedroom', '30-room.webp', 53, '', 'E', '127.0.0.1'),
(44, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Twin Master Bed - Four Pax Room With Two Toilets', '31-room.webp', 52, '', 'E', '127.0.0.1'),
(45, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Twin Bed Double Occupancy', '32-room.webp', 51, '', 'E', '127.0.0.1'),
(46, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Twin Master Bed - Four Pax Room With Two Toilets', '33-room.webp', 50, '', 'E', '127.0.0.1'),
(47, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Room Floor Layout', '34-room-layout.webp', 49, '', 'E', '127.0.0.1'),
(48, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '1-agm.webp', 48, '', 'E', '127.0.0.1'),
(49, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '2-agm.webp', 47, '', 'E', '127.0.0.1'),
(50, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '3-agm.webp', 46, '', 'E', '127.0.0.1'),
(51, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '4-agm.webp', 45, '', 'E', '127.0.0.1'),
(52, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '5-agm.webp', 44, '', 'E', '127.0.0.1'),
(53, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '6-agm.webp', 43, '', 'D', '127.0.0.1'),
(54, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '7-agm.webp', 42, '', 'E', '127.0.0.1'),
(55, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '8-agm.webp', 41, '', 'E', '127.0.0.1'),
(56, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '9-agm.webp', 41, '', 'D', '127.0.0.1'),
(57, 'Keyur', '2023-02-20', '2023-02-20', 11, 'Annual General Meet', '10-agm.webp', 41, '', 'D', '127.0.0.1'),
(58, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Diwali 2017', '1-diwali.webp', 40, '', 'E', '127.0.0.1'),
(59, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Diwali 2017', '2-diwali.webp', 39, '', 'E', '127.0.0.1'),
(60, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Diwali 2017', '3-diwali.webp', 38, '', 'E', '127.0.0.1'),
(61, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Diwali 2017', '4-diwali.webp', 37, '', 'E', '127.0.0.1'),
(62, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Diwali 2017', '5-diwali.webp', 36, '', 'E', '127.0.0.1'),
(63, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '1-holi.webp', 35, '', 'E', '127.0.0.1'),
(64, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '2-holi.webp', 34, '', 'E', '127.0.0.1'),
(65, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '3-holi.webp', 33, '', 'E', '127.0.0.1'),
(66, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '4-holi.webp', 32, '', 'E', '127.0.0.1'),
(67, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '5-holi.webp', 31, '', 'E', '127.0.0.1'),
(68, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '6-holi.webp', 30, '', 'E', '127.0.0.1'),
(69, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '7-holi.webp', 29, '', 'E', '127.0.0.1'),
(70, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2022', '8-holi.webp', 28, '', 'E', '127.0.0.1'),
(71, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '1-prahladrai.webp', 27, '', 'E', '127.0.0.1'),
(72, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '2-prahladrai.webp', 26, '', 'E', '127.0.0.1'),
(73, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '3-prahladrai.webp', 25, '', 'E', '127.0.0.1'),
(74, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '4-prahladrai.webp', 24, '', 'E', '127.0.0.1'),
(75, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '5-prahladrai.webp', 23, '', 'E', '127.0.0.1'),
(76, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Prahladrai', '6-prahladrai.webp', 22, '', 'E', '127.0.0.1'),
(77, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rajasthan Samaroh', '1-rajasthan.webp', 21, '', 'E', '127.0.0.1'),
(78, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rajasthan Samaroh', '2-rajasthan.webp', 20, '', 'E', '127.0.0.1'),
(79, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rajasthan Samaroh', '3-rajasthan.webp', 19, '', 'E', '127.0.0.1'),
(80, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rajasthan Samaroh', '4-rajasthan.webp', 18, '', 'E', '127.0.0.1'),
(81, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rajasthan Samaroh', '5-rajasthan.webp', 17, '', 'E', '127.0.0.1'),
(82, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Rajendra Rathod', '1-rajendra.webp', 16, '', 'E', '127.0.0.1'),
(83, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Rajendra Rathod', '2-rajendra.webp', 15, '', 'E', '127.0.0.1'),
(84, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Welcoming Mr. Rajendra Rathod', '3-rajendra.webp', 14, '', 'E', '127.0.0.1'),
(85, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rath Yatra 2016', '1-rath-yatra.webp', 13, '', 'E', '127.0.0.1'),
(86, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rath Yatra 2016', '2-rath-yatra.webp', 12, '', 'E', '127.0.0.1'),
(87, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Rath Yatra 2016', '3-rath-yatra.webp', 11, '', 'E', '127.0.0.1'),
(88, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '1-sathvaro.webp', 10, '', 'E', '127.0.0.1'),
(89, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '2-sathvaro.webp', 993, '', 'E', '127.0.0.1'),
(90, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '3-sathvaro.webp', 994, '', 'E', '127.0.0.1'),
(91, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '4-sathvaro.webp', 995, '', 'E', '127.0.0.1'),
(92, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '5-sathvaro.webp', 996, '', 'E', '127.0.0.1'),
(93, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Sathvaro 2016', '6-sathvaro.webp', 997, '', 'E', '127.0.0.1'),
(94, 'Keyur', '2023-02-20', '2023-02-20', 13, 'Housekeeping Staff', '1-housekeeping.webp', 98, '', 'E', '127.0.0.1'),
(95, 'Keyur', '2023-02-20', '2023-02-20', 13, 'Office Staff', '2-office-staff.webp', 97, '', 'E', '127.0.0.1'),
(96, 'Keyur', '2023-02-20', '2023-02-20', 13, 'Security Staff', '3-security.webp', 96, '', 'E', '127.0.0.1'),
(97, 'Keyur', '2023-02-20', '2023-02-20', 13, 'Account Manager', '4-account-manager.webp', 95, '', 'D', '127.0.0.1'),
(98, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '9-holi.webp', 41, '', 'E', '127.0.0.1'),
(99, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '10-holi.webp', 41, '', 'E', '127.0.0.1'),
(100, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '11-holi.webp', 41, '', 'E', '127.0.0.1'),
(101, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '12-holi.webp', 41, '', 'E', '127.0.0.1'),
(102, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '13-holi.webp', 41, '', 'E', '127.0.0.1'),
(103, 'Keyur', '2023-02-20', '2023-02-20', 12, 'Holi Celebration 2023', '14-holi.webp', 41, '', 'E', '127.0.0.1'),
(104, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Crystal Banquet', 'Crystall_Hall_3_.webp', 999, '', 'E', '127.0.0.1'),
(105, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Imperial Banquet', 'Imperial_Hall_2_.webp', 999, '', 'E', '127.0.0.1'),
(106, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Pearl Banquet', 'Pearl_Hall_3_.webp', 999, '', 'E', '127.0.0.1'),
(107, 'Keyur', '2023-02-20', '2023-02-20', 14, 'Vidhi Room', 'vidhi_hall2_.webp', 999, '', 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_master_hall`
--

CREATE TABLE `gallery_master_hall` (
  `image_id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '0000-00-00',
  `modifieddate` date NOT NULL DEFAULT '0000-00-00',
  `a_id` int NOT NULL,
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `gallery_image` text NOT NULL,
  `sortorder` int NOT NULL,
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_master_hall`
--

INSERT INTO `gallery_master_hall` (`image_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `gallery_image`, `sortorder`, `isFront`, `status`, `remote_ip`) VALUES
(1, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet', 'Crystal_Hall_1.webp', 1, '', 'E', '127.0.0.1'),
(3, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet (Entrance)', 'Imperial_Hall_1.webp', 12, '', 'E', '127.0.0.1'),
(4, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet', 'Imperial_Hall_2.webp', 4, '', 'E', '127.0.0.1'),
(5, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet (Entrance)', 'Pearl_Hall_1.webp', 12, '', 'E', '127.0.0.1'),
(42, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet', 'Pearl_Hall_2.webp', 12, '', 'D', '127.0.0.1'),
(43, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Drawing of Fourth Floor - Pearl Banquet and Rooms', '29-pearl-layout.webp', 12, '', 'E', '127.0.0.1'),
(44, 'keyur', '2023-03-20', '2023-03-20', 15, 'Crystal Banquet', 'Crystal_Hall_2.webp', 2, '', 'E', '127.0.0.1'),
(45, 'Keyur', '2023-03-17', '2023-03-17', 18, 'Vidhi Room', 'vidhi_hall1.webp', 12, '', 'E', '127.0.0.1'),
(46, 'Keyur', '2023-03-17', '2023-03-17', 18, 'Vidhi Room', 'vidhi_hall2.webp', 12, '', 'E', '127.0.0.1'),
(47, 'Keyur', '2023-03-17', '2023-03-17', 18, 'Vidhi Room', 'vidhi_hall3.webp\r\n', 9, '', 'E', '127.0.0.1'),
(48, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet', 'Crystal_Hall_4.webp', 12, '', 'D', '127.0.0.1'),
(49, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet (Vidhi Room)', 'Crystal_Hall_5.webp', 12, '', 'E', '127.0.0.1'),
(50, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet', 'Crystal_Hall_6.webp', 12, '', 'E', '127.0.0.1'),
(51, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet', 'Crystal_Hall_7.webp', 3, '', 'E', '127.0.0.1'),
(52, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet (Entrance)', 'Crystal_Hall_8.webp', 12, '', 'E', '127.0.0.1'),
(53, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet (Kitchen)', 'Crystal_Hall_9.webp', 12, '', 'E', '127.0.0.1'),
(55, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet', 'Imperial_Hall_4.webp', 12, '', 'E', '127.0.0.1'),
(56, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet', 'Imperial_Hall_5.webp', 5, '', 'E', '127.0.0.1'),
(57, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet', 'Imperial_Hall_6.webp', 12, '', 'D', '127.0.0.1'),
(58, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet (Kitchen) \n', 'Imperial_Hall_7.webp', 12, '', 'E', '127.0.0.1'),
(59, 'Keyur', '2023-03-17', '2023-03-17', 16, 'Imperial Banquet', 'Imperial_Hall_3.webp', 6, '', 'E', '127.0.0.1'),
(60, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet', 'Pearl_Hall_3.webp', 8, '', 'E', '127.0.0.1'),
(61, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet', 'Pearl_Hall_4.webp', 7, '', 'E', '127.0.0.1'),
(64, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet', 'Pearl_Hall_5.webp', 11, '', 'E', '127.0.0.1'),
(63, 'Keyur', '2023-03-17', '2023-03-17', 17, 'Pearl Banquet', 'Pearl_Hall_6.webp', 12, '', 'E', '127.0.0.1'),
(2, 'Keyur', '2023-03-17', '2023-03-17', 15, 'Crystal Banquet', 'Crystal_Hall_3.webp', 10, '', 'E', '127.0.0.1'),
(65, 'Keyur', '2023-03-17', '2023-03-17', 21, '4th floor restaurant started for the Residents', 'extra.webp', 15, '', 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `group_id` int NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `group_status` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`group_id`, `group_name`, `group_status`) VALUES
(1, 'Administrator', 'E'),
(2, 'Developer', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `hall_images`
--

CREATE TABLE `hall_images` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_front` varchar(1) NOT NULL DEFAULT 'N',
  `h_id` int NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `name` text NOT NULL,
  `itemcode` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hall_master`
--

CREATE TABLE `hall_master` (
  `h_id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '0000-00-00',
  `modifieddate` date NOT NULL DEFAULT '0000-00-00',
  `hallname` varchar(255) NOT NULL DEFAULT '',
  `sortorder` int NOT NULL,
  `hdesc` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL,
  `haminities` varchar(256) NOT NULL,
  `cnum` varchar(256) NOT NULL,
  `video` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall_master`
--

INSERT INTO `hall_master` (`h_id`, `username`, `createdate`, `modifieddate`, `hallname`, `sortorder`, `hdesc`, `status`, `remote_ip`, `haminities`, `cnum`, `video`) VALUES
(1, 'Keyur', '2016-09-09', '2016-09-09', 'aesha', 1, 'aesha', 'E', '127.0.0.1', 'aesha', 'aesha', 'aesha');

-- --------------------------------------------------------

--
-- Table structure for table `homecontent`
--

CREATE TABLE `homecontent` (
  `content_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `home_content` text,
  `cover_image` text NOT NULL,
  `status` char(1) NOT NULL,
  `sortorder` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecontent`
--

INSERT INTO `homecontent` (`content_id`, `username`, `createdate`, `modifieddate`, `home_content`, `cover_image`, `status`, `sortorder`) VALUES
(1, 'Keyur', '2016-02-20', '2017-01-25', '<p style=\"text-align: justify;\"><span>Maharaj Agasen is known as an icon of non-violence, messenger of peace. He was the eldest son of King Vallabh of Pratapnagar and Queen Bagwati Devi. Maharaja Agrasen ruled some 5000 years back over Agroha around time of MahaBharat.</span></p>\n<p style=\"text-align: justify;\">When Agrasen became a young man, he attended the Swyamvara of the daughter of the King Nagaraj, Princess Madhavi. Many kings from around the world attended including Indra, the King of the Devas. In the Swayamvara, Princess Madhavi selected Prince Agrasen, by putting the garland on him. This marriage merged two different family cultures because Prince Agrasen was a Suryavanshi and Princess Madhavi was a Naagavanshi. Indra, the King of the Devas had been smitten by the beauty of Princess Madhavi and had planned to marry her.</p>', '1-maharaja-agrasen.png', 'E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` text NOT NULL,
  `short_desc` text NOT NULL,
  `price` varchar(70) NOT NULL,
  `image` text,
  `category_id` int NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `title`, `subtitle`, `short_desc`, `price`, `image`, `category_id`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'Veg 65', 'Sub Title', '<p>Short Description</p>', '30.00', '1-sunil.jpg', 1, 'Keyur', '2016-02-20', '2016-02-20', 1, 'E', '127.0.0.1'),
(2, 'veg 65', 'veg 65', '<p>veg 65</p>', '30.00', '2-2.jpg', 2, 'Keyur', '2016-02-22', NULL, 2, 'E', '127.0.0.1'),
(3, 'veg 65', 'veg 65', '<p>veg 65</p>', '65.00', '3-2.jpg', 3, 'Keyur', '2016-02-22', NULL, 3, 'E', '127.0.0.1'),
(4, 'veg 65', 'veg 65', '<p>veg 65</p>', '45.00', '4-Penguins.jpg', 4, 'Keyur', '2016-02-22', NULL, 4, 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `job_master`
--

CREATE TABLE `job_master` (
  `job_id` int NOT NULL,
  `j_name` varchar(150) NOT NULL,
  `j_email` varchar(50) NOT NULL,
  `j_message` varchar(255) DEFAULT NULL,
  `j_resume` varchar(255) NOT NULL,
  `j_contact` varchar(100) DEFAULT NULL,
  `j_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_master`
--

INSERT INTO `job_master` (`job_id`, `j_name`, `j_email`, `j_message`, `j_resume`, `j_contact`, `j_date`) VALUES
(1, 'sddssd', 'aas@sdgh.com', 'sdsdsd', '', 'dsds', '2016-09-04 19:17:41'),
(2, 'xzxzxz', 'aas@sdgh.com', 'assaas', '2-001_sketch_l_mini.jpg', 'sasa', '2016-09-04 19:19:06'),
(3, 'sasas', 'a@vhgdsh.com', 'xzzxzx', '3-Member--Board-trus.jpg', 'xzxz', '2016-10-23 21:30:39'),
(4, 'gfgfgf', 'a@vhgdsh.com', 'gghhghg', '', '6567676', '2016-10-23 21:44:20'),
(5, 'ssaas', 'a@vhgdsh.com', 'sssssa', '', '23223', '2016-10-23 21:46:46'),
(6, 'cxxc', 'a@vhgdsh.com', 'zxzxzx', '', 'xz', '2016-10-23 21:47:19'),
(7, 'cxxc', 'a@vhgdsh.com', '21212121', '', '2121', '2016-10-23 21:49:46'),
(8, 'xzzxz', 'a@vhgdsh.com', '212', '8-Member---CORE-COMMITTEE.jpg', '3223', '2016-10-23 21:51:03'),
(9, 'dsxc', 'a@vhgdsh.com', 'dsddds', '9-68-APT SURAT-WEEKLY PROGRESS REPORT-22082016.pdf', '3223', '2016-12-07 11:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `membertype`
--

CREATE TABLE `membertype` (
  `a_id` int NOT NULL,
  `a_title` varchar(100) NOT NULL DEFAULT '',
  `a_description` text,
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL DEFAULT '1',
  `remote_ip` varchar(50) NOT NULL,
  `about` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membertype`
--

INSERT INTO `membertype` (`a_id`, `a_title`, `a_description`, `username`, `createdate`, `modifieddate`, `status`, `sortorder`, `remote_ip`, `about`) VALUES
(7, 'Patron Trustee', NULL, 'Keyur', '2016-09-30', '2017-01-25', 'E', 6, '127.0.0.1', 'D'),
(6, 'Founder Trustee', NULL, 'Keyur', '2016-09-07', '2016-12-02', 'E', 7, '127.0.0.1', 'D'),
(8, 'Trust Board', NULL, 'Keyur', '2016-09-30', '2016-12-02', 'E', 3, '127.0.0.1', 'D'),
(9, 'Trust Board', NULL, 'Keyur', '2016-10-26', '2016-10-27', 'D', 3, '127.0.0.1', 'D'),
(10, 'Invitee Founder Trustee', NULL, 'Keyur', '2016-10-26', '2016-10-27', 'E', 0, '127.0.0.1', 'E'),
(12, 'Core Committe', NULL, 'Keyur', '2016-10-27', '2016-10-27', 'E', 4, '127.0.0.1', 'D'),
(13, 'Invitee Patron Trustee', NULL, 'Keyur', '2016-12-09', '2016-12-09', 'E', 0, '127.0.0.1', 'E'),
(14, 'Life Member', NULL, 'Keyur', '2023-02-23', '2023-02-23', 'E', 5, '127.0.0.1', 'D'),
(15, 'Dhansangrah Team', NULL, 'Keyur', '2023-02-23', '2023-02-23', 'E', 2, '127.0.0.1', 'D'),
(11, 'Bandhkam Team', NULL, 'Keyur', '2023-02-23', '2023-02-23', 'E', 1, '127.0.0.1', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `member_master`
--

CREATE TABLE `member_master` (
  `m_id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '2023-02-15',
  `modifieddate` date NOT NULL DEFAULT '2023-02-15',
  `a_id` varchar(256) NOT NULL,
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `sortorder` int NOT NULL,
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `memberid` int NOT NULL,
  `landmark` varchar(256) NOT NULL,
  `cnum` varchar(256) NOT NULL,
  `madr` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_master`
--

INSERT INTO `member_master` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(1275, '', '2023-02-23', '2023-02-23', '6', 'Ajay Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Jivan Deep Complex,Opp Sub Jail, Ring Road, Surat'),
(1274, '', '2023-02-23', '2023-02-23', '6', 'Amitkumar Ramnarayan Khemka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1170, Lift No-13 Raghukul Market, Ring Road, Surat'),
(1273, '', '2023-02-23', '2023-02-23', '6', 'Anandkumar Malchand Agrawal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453 Kotsafil Road, Arra Mohalla, Wadifalia bhagal, Surat'),
(1272, '', '2023-02-23', '2023-02-23', '6', 'Anil Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-312,Dream Heritage, Canal Road, VIP Road, Surat'),
(1271, '', '2023-02-23', '2023-02-23', '6', 'Anil Satyanarayan Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '411, Empire Estate, Ring Road, Surat'),
(1270, '', '2023-02-23', '2023-02-23', '6', 'Anilkumar Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-733, Aashirwad Palace, Bhatar Road, Surat'),
(1269, '', '2023-02-23', '2023-02-23', '6', 'Anoopkumar Dilbagrai Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-505, Ashirwad Palace, Bhatar Road, Surat'),
(1268, '', '2023-02-23', '2023-02-23', '6', 'Anuj Satishkumar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302, Shri Hari Appt, Nr Lancer Armi School, Piplod, Surat'),
(1267, '', '2023-02-23', '2023-02-23', '6', 'Anupkumar Mohanlal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1618, Raghukul Market Lift No.11,12 , Ring Road, Surat'),
(1266, '', '2023-02-23', '2023-02-23', '6', 'Arjunkumar Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1002, New T T Market, Ring Road, Surat'),
(1265, '', '2023-02-23', '2023-02-23', '6', 'Arunkumar Mahavir Prasad Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1028, Vardhaman Market, Ring Road, Surat'),
(1264, '', '2023-02-23', '2023-02-23', '6', 'Ashokkumar Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1025, Ambaji Market, Ring Road, Surat'),
(1263, '', '2023-02-23', '2023-02-23', '6', 'Ashokkumar Mahavir Prasad Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4018, Jash Market, Ring Road, Surat'),
(1262, '', '2023-02-23', '2023-02-23', '6', 'Ashok Ramavtar Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-501, I.C.C. Complex, Ring Road, Suart'),
(1261, '', '2023-02-23', '2023-02-23', '6', 'Ashok Ramchandra Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-304,ICC, Ring Road, Surat'),
(1260, '', '2023-02-23', '2023-02-23', '6', 'Ashok kumar Shivbhagwan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601, Nalanda Recidency, Opp. Jolly Resi., Vesu, Surat'),
(1259, '', '2023-02-23', '2023-02-23', '6', 'Ashok Vasudev Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2031-34 Abhinandan Market, Ring Road, Surat'),
(1258, '', '2023-02-23', '2023-02-23', '6', 'Babulal Basantilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Sameet Complex, Nr Kapadia Health Club, New Civil Road, Surat'),
(1257, '', '2023-02-23', '2023-02-23', '6', 'Bajranglal Sitaram Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '44, Millenium-2, Ring Road, Surat'),
(1256, '', '2023-02-23', '2023-02-23', '6', 'Banwarilal Tormal Poddar ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Sf-1, Top Floor, Rajhans Plaza opp Pizza Hut, Nr Shiv Shakti, Ghod dod Rd, Surat'),
(1255, '', '2023-02-23', '2023-02-23', '6', 'Bhawani Shankar Kashinath Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '432, Harikrupa mkt, Ring Road, Surat'),
(1254, '', '2023-02-23', '2023-02-23', '6', 'Bijaykumar Shivbuxrai Sanghai', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-4417, 18, 19, R.K.T. Market, Ring Road, Surat'),
(1253, '', '2023-02-23', '2023-02-23', '6', 'Brijmohan Ramjilal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2017, Trade House, Ring Road, Surat'),
(1252, '', '2023-02-23', '2023-02-23', '6', 'Brijmohan Shayamsunder Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5001- Silk City Market, Ring Road, surat'),
(1251, '', '2023-02-23', '2023-02-23', '6', 'Chandrakant Thakordas Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-8A, Chandan Park Society, Shri Ram Petrol Pump, Adajan Road, surat'),
(1250, '', '2023-02-23', '2023-02-23', '6', 'Chiranjilal Agarwal (P.C. Synthetics)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market, Ring Road, Surat'),
(1249, '', '2023-02-23', '2023-02-23', '6', 'Dileepkumar Pratapmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '104, Babu Bhai Chamber, Bhatar, Surat'),
(1248, '', '2023-02-23', '2023-02-23', '6', 'Deendayal Shriram Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-2628,Lift No.11,Raghukul Textile Market, Ring Road, Surat'),
(1247, '', '2023-02-23', '2023-02-23', '6', 'Devandra Jagdish Prasad Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-603, Monalisa Park, B/h Agarsen Bhawan, City Light, Surat'),
(1246, '', '2023-02-23', '2023-02-23', '6', 'Dilip Ghanshyamdas Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'UG-1/3, Bishandayal Jewellers Cuttackwala, Sarela Shopping Center, Ghod Dod Road, Surat'),
(1245, '', '2023-02-23', '2023-02-23', '6', 'Durga Prasad Baijnath Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-3734, Millenium Market, Ring Road, Surat'),
(1244, '', '2023-02-23', '2023-02-23', '6', 'Gajanand Surajbhan Agrawal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602-3, Trividh Chembers, Ring Road, Surat'),
(1243, '', '2023-02-23', '2023-02-23', '6', 'Gokulchand Rameshwarlal Bajaj ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-383-4, Ashwin Tex, New Textile Market, Ring Road, Surat'),
(1242, '', '2023-02-23', '2023-02-23', '6', 'Gokulchand Ramnivas Agarwal (Gurarawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '133-34, Ashirwad Mkt, Opp Land Mark, Saroli, Surat'),
(1241, '', '2023-02-23', '2023-02-23', '6', 'Govind Prasad Gopiram Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-159 to 166, Laxmipati Sarees, Millenium-2 (D-wing), Anjna bridge, Bhathene, Surat'),
(1240, '', '2023-02-23', '2023-02-23', '6', 'Hariparkash Radhakishan Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-81-82, India Textile Market, Ring Road, Suart'),
(1239, '', '2023-02-23', '2023-02-23', '6', 'Jayprakash Damodar Prasad Chhaparia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, Suchitra Saree, Silk Plaza Market, Ring Road, Surat'),
(1238, '', '2023-02-23', '2023-02-23', '6', 'Kailashkumar Santosh Hakim', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-3613 Raghukul Textile Market, Lift No.17, Ring Road, Surat'),
(1237, '', '2023-02-23', '2023-02-23', '6', 'Kamal Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3020, Raghukul Market Lift No.13, Ring Road, Surat'),
(1236, '', '2023-02-23', '2023-02-23', '6', 'Kamalkishore Sitaram Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-905, Ashirwad Palace, Jeevkornagar, Bhatar Road, Surat'),
(1235, '', '2023-02-23', '2023-02-23', '6', 'Kaushal Nandlal Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4031, Jash Textile Market, Ring Road, Surat'),
(1234, '', '2023-02-23', '2023-02-23', '6', 'Kirorimal Jaimalram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-A, Ratna Virat Appt, New City Light, Surat'),
(1233, '', '2023-02-23', '2023-02-23', '6', 'Kishan Narayan Prasad Agrawal (Gadodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '136-137 Millenium -2, Ring Road, Surat'),
(1232, '', '2023-02-23', '2023-02-23', '6', 'Kunj Shyamsunder Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Empire Estate, Ring Road, Surat'),
(1231, '', '2023-02-23', '2023-02-23', '6', 'Lalitkumar Nanuram Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1048-9, Annapurna Textile Market, Ring Road, Surat'),
(1230, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Prabhudayal Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1001, Spring Velly, Nr. Pushp Vatica, New City Light , Surat'),
(1229, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-7-8, Jolly Arcade, (Hariom), Ghod Dod Road, Surat'),
(1228, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Tularam Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower , Ring Road, Surat'),
(1227, '', '2023-02-23', '2023-02-23', '6', 'Mangtulal Narshinghlal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-1235, Surat Tex Market, Ring Road, Surat'),
(1226, '', '2023-02-23', '2023-02-23', '6', 'Nandlal Banarasilal Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '64, Reshamwala Market, Ring Road, Surat'),
(1225, '', '2023-02-23', '2023-02-23', '6', 'Narayandas Motilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '15001, R.K.T. Market, Riang Road, Surat'),
(1224, '', '2023-02-23', '2023-02-23', '6', 'Naresh Gangaram Garg (Jhojhuwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1034-5, New Textile Market, Rinag Road, Surat'),
(1223, '', '2023-02-23', '2023-02-23', '6', 'Nareshkumar Bisheshwarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701, Shree Shyam Awas, Nr. Vidhya Bharti School, Kuberji Group, Bhatar road, Surat'),
(1222, '', '2023-02-23', '2023-02-23', '6', 'Natwar Murarilal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-115, L.B.Appartment, Ring Road, Surat'),
(1221, '', '2023-02-23', '2023-02-23', '6', 'Natwarlal Kanhaiyalal Agarwal (Tatanwale)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Anmol Market, Ring Road, surat'),
(1220, '', '2023-02-23', '2023-02-23', '6', 'Niranjan Dwarkadas Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '703-  Jivan Deep, Ring Road, Surat'),
(1219, '', '2023-02-23', '2023-02-23', '6', 'Niranjan Hiralal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '57, Millenium Mkt-2, Ring Road, Surat'),
(1218, '', '2023-02-23', '2023-02-23', '6', 'Nirmalkumar Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4057, Ambaji Market, Ring Road, Surat'),
(1217, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Ishwar Prasad Jhujhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1279, Kohinoor Market, Ring Road, Surat'),
(1216, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Jaimalram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-A, Ratna Virat Appt Near Gyatri Mandir, New City Light, Surat'),
(1215, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Malchand Agrawal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-2453, Malchand & Sons,Arra Mohalla, Kotsafil Road, Surat'),
(1214, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5011, Ashoka Towar, Ring Road, Surat'),
(1213, '', '2023-02-23', '2023-02-23', '6', 'Pawan Kumar Hiralal Jhunjhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '416, Happy Hallmark Shoopers, Abhwa Road, Vesu, Surat'),
(1212, '', '2023-02-23', '2023-02-23', '6', 'Pawan Matadin Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3080 Anupam Market, Ring Road, Surat'),
(1211, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Kumar Hiralal Jhunjhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '416, Happy Hallmark Shoopers, Abhwa Road, Vesu, Surat'),
(1210, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Kumar Satyanarayan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3275, Kohinoor Market, Ring Road, Surat'),
(1209, '', '2023-02-23', '2023-02-23', '6', 'Prakash Kumar Hiralal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1, 104 Regent Market, Ring Road, Surat'),
(1208, '', '2023-02-23', '2023-02-23', '6', 'Prakash Kumar Muralidhar Agrawal (Todi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '308, Hari Kripa Market, Ring Road, Surat'),
(1207, '', '2023-02-23', '2023-02-23', '6', 'Pramod Sitaram Agarwal (Pipraliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3016, Shyam Mkt, Ring Road, Surat'),
(1206, '', '2023-02-23', '2023-02-23', '6', 'Pramod Piramal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-6, Ratan Anushree Appt. Nr. Umrigar School, Parle point, Surat'),
(1205, '', '2023-02-23', '2023-02-23', '6', 'Pramod Sanwarmal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3011, Annapurna Market, Riang Road, Surat'),
(1204, '', '2023-02-23', '2023-02-23', '6', 'Praveen Deokinandan Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701, Fourseason Complex, Opp Zinzar Hotel, Piplod, Surat'),
(1203, '', '2023-02-23', '2023-02-23', '6', 'Pravin Kumar Hiralal Jhunjhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9, Saket Bldg, Paranjape A Schem Road, No2, Vile Parle (East), Mumbai'),
(1202, '', '2023-02-23', '2023-02-23', '6', 'Puranmal Omkarmal Agarwal (Tayal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '166-7, Abhishek Market, Ring Road, Surat'),
(1201, '', '2023-02-23', '2023-02-23', '6', 'Raj Kishore Pramanand Shah (Pappu ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2006-7, Silk City Market, Ring road, Surat'),
(1200, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Devi Prasad Tulsian (Niraj bhai)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1005, Ashirwad Palace, Bhatar Road, surat'),
(1199, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Ramgopal Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-709,Ashirwad Palace, Bhatar Road, Surat'),
(1198, '', '2023-02-23', '2023-02-23', '6', 'Rajendra Prasad Babulal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301-02,Hi-tech Crest, Opp Amrut Showroom, Sahara darwaja, Surat'),
(1197, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Kumar Narsingh Prasad Tekriwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Hari Har Market , Jagadamba, Ring Road, Surat'),
(1196, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Shyamsundar Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Brij Vatika Appt, brijwasi Estate, Nr. Hotel Taj, Parle Point, Suart'),
(1195, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Bajranglal Chowdhary (VishnuJi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-918 Ashirwad Palace, Bhatar Road, Surat'),
(1194, '', '2023-02-23', '2023-02-23', '6', 'Ram Prakash Arjunlal Beria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '60, Sant Tukaram Soc-3, Bhatar Road, Surat'),
(1193, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Ramswaroop Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC, Ring Road, Surat'),
(1192, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Kumar Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '112, WTC, Ring road, Surat'),
(1191, '', '2023-02-23', '2023-02-23', '6', 'Ramgopal Bajranglal Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-2270, 1st Floor Surat Textile Market, Ring Road, Surat'),
(1190, '', '2023-02-23', '2023-02-23', '6', 'Ramgopal Chiranjilal Agarwal (Shreeji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U-1216, Surat Textile Market, Ring Road, Surat'),
(1189, '', '2023-02-23', '2023-02-23', '6', 'Ramswaroop Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '536, Ashoka Tower, Ring Road, Surat'),
(1188, '', '2023-02-23', '2023-02-23', '6', 'Ratanlal Mahabir Prasad Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-11, Silver Point , Bhatar Road, Surat'),
(1187, '', '2023-02-23', '2023-02-23', '6', 'Ratanlal Rameswarlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301, Ajanta Appartment opp G-3, Ghod Dod road, Surat'),
(1186, '', '2023-02-23', '2023-02-23', '6', 'Ravi Deendayal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1489-90, Millenium mkt, Ring Road, Surat'),
(1185, '', '2023-02-23', '2023-02-23', '6', 'Sajjankumar Suganchand Agarwal (Koyalawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3008, Momai Complex Sahara Darwaja, Ring Road, Surat'),
(1184, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Balkishan Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '402, UTC Building, Udhna Darwaja, surat'),
(1183, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Satyanarayan Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '504 Empire Estate, Ring Road, Surat'),
(1182, '', '2023-02-23', '2023-02-23', '6', 'Santosh Kumar Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1, Shiv Kripa Society,B/h Uniqe Hospital, Amba Nagar, Bamroli Road, Surat'),
(1181, '', '2023-02-23', '2023-02-23', '6', 'Sanwar Prasad Ramkumar Budhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-9 Balaji Textile Market, Ring Road, Surat'),
(1180, '', '2023-02-23', '2023-02-23', '6', 'Sarvan Kumar Ramgopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-3708, Shital Silk Mills, Millenium Market, Ring Road, Surat'),
(1179, '', '2023-02-23', '2023-02-23', '6', 'Satyanarayan Murlidhar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'HG-9, I.T.C. Complex Majura Gate, Ring Road, Surat'),
(1178, '', '2023-02-23', '2023-02-23', '6', 'Shankarlal Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '205, Good Luck Market, Ring Road, Surat '),
(1177, '', '2023-02-23', '2023-02-23', '6', 'Shashikumar Vishwanath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-4693 Millenium Market, Ring road, Surat'),
(1176, '', '2023-02-23', '2023-02-23', '6', 'Shekharkumar Pannalal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3001 Sainath Mkt., Ring Road, Surat'),
(1175, '', '2023-02-23', '2023-02-23', '6', 'Shyamsunder Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-3176, 2nd Floor,Surat Textile Market, Ring Road, Surat'),
(1174, '', '2023-02-23', '2023-02-23', '6', 'Deepak Sohanlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1205, Millenium Textile Market, Ring Road, Surat '),
(1173, '', '2023-02-23', '2023-02-23', '6', 'Subhaschand Gajanad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-3266, STM, Ring Road, Surat'),
(1172, '', '2023-02-23', '2023-02-23', '6', 'Subhash Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1013 New Sardar Mkt, Puna Kumbhariya Road, Surat'),
(1171, '', '2023-02-23', '2023-02-23', '6', 'Sunilkumar Ramwatar Agarwal (Tatanwalal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-3413-14, Millenium Market, Ring Road, Surat'),
(1170, '', '2023-02-23', '2023-02-23', '6', 'Surendra Kumar Jigdesh Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Devraj Recidency, New Citylight , Surat'),
(1169, '', '2023-02-23', '2023-02-23', '6', 'Sureshkumar Hanshraj Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' 122A HTC Mkt, Nr. Raghukul Mkt, Ring Road, Surat'),
(1168, '', '2023-02-23', '2023-02-23', '6', 'Sharwan Dwarka Prasad Megotia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-5248, Lift No.-3, Raghukul Market, Ring road, Surat'),
(1167, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Girdharilal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3025, Sigma Sarees, Ambaji Market , Ring Road, Surat'),
(1166, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-618, Ashirwad Palace, Bhatar, Surat'),
(1165, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P.No-110, Center Rd No-7, Udhyog Nagar, Udhna, Surat'),
(1164, '', '2023-02-23', '2023-02-23', '6', 'Tarachand Rameshwarlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Trade Centre b/h Ashoka Tower, Ring Road, Surat'),
(1163, '', '2023-02-23', '2023-02-23', '6', 'Tarun Kundanmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '35-36, Sagar Textile Market, Ring Road, Surat'),
(1162, '', '2023-02-23', '2023-02-23', '6', 'Vasantkumar Danmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21, Vasant Vihar Society, Adajan Road, Surat'),
(1161, '', '2023-02-23', '2023-02-23', '6', 'Vimal Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1001, Poddar Avenue, Ghod Dod Road, Surat'),
(1160, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Chouthmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '64, Reshamwala Market , Ring Road, Surat'),
(1159, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Gulabchand Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-2170, Surat Textile Market G C G Group, Ring Road, Surat'),
(1158, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Hariprasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101 Silk Heritage, Ring Road, Surat '),
(1157, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Manphool Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-409, Aashirwad Palace, Bhatar Road, Surat '),
(1156, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Viswanath Prasad Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-417,Green Avenue , Radhika Silk Mills, Ghod Dod Road, Surat'),
(1155, '', '2023-02-23', '2023-02-23', '6', 'Vishwanath Shyamsunder Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3708, R.K.T Market, Sahara Darwaja, Ring Road, Surat '),
(1154, '', '2023-02-23', '2023-02-23', '6', 'Vinod Bhagirath Goyal (GTC)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-35, Orovil Soc., Nr Umabhawan, Bhtar Road, Surat'),
(1153, '', '2023-02-23', '2023-02-23', '6', 'Abhilasha Brajesh Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Hari har mkt, Ring Road, Surat'),
(1152, '', '2023-02-23', '2023-02-23', '6', 'Alka Vijendra Khetawat (Vinita)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U2-C, Upper Floor, Regent arcade (Chahana Jawellrs), Ghod Dod Road, Surat'),
(1151, '', '2023-02-23', '2023-02-23', '6', 'Amit Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453.,Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1150, '', '2023-02-23', '2023-02-23', '6', 'Amritlal Narsidas Bansal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '522, Gautam Market, Ring Road, Surat'),
(1149, '', '2023-02-23', '2023-02-23', '6', 'Anand Lakhi Prasad Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2012, Anupam Mkt, Ring Road, Surat'),
(1148, '', '2023-02-23', '2023-02-23', '6', 'Anand Raghubir Singh Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P.No-28, B/H SD Jain School, Nr Jolly Bunglow, Vesu, Surat'),
(1147, '', '2023-02-23', '2023-02-23', '6', 'Anandkumar Sitaram Kedia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-4420, Raghukul L.No-15, Ring Road, Surat'),
(1146, '', '2023-02-23', '2023-02-23', '6', 'Anil Balmukund Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Besment, Sagar Shoping Center Mkt, Sahara Darwaja, Surat'),
(1145, '', '2023-02-23', '2023-02-23', '6', 'Anil Manphoolsingh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Ashirwad Palace, Bhatar Darwaja, Surat'),
(1144, '', '2023-02-23', '2023-02-23', '6', 'Anilkumar Puranmal Gupta ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-5, Ratan Virat Appt, New Citylight, Surat'),
(1143, '', '2023-02-23', '2023-02-23', '6', 'Anita Gokulchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-301, Blossom, B/h Aagam Shoping Word, Vesu, Surat'),
(1142, '', '2023-02-23', '2023-02-23', '6', 'Anju Devi Sunil Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-C, Sagar Appt, b/h Sargam Shoping Center, Parle Point, Surat'),
(1141, '', '2023-02-23', '2023-02-23', '6', 'Anju Parmeshwar Daruka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-611, Ashirwad complex, City Light, Surat'),
(1140, '', '2023-02-23', '2023-02-23', '6', 'Anup Anandkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453., Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1139, '', '2023-02-23', '2023-02-23', '6', 'Anup Purushottam Himatsingka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '204, Busines luxuria HUB, Nr VR Mall, Dumas Road, Surat '),
(1138, '', '2023-02-23', '2023-02-23', '6', 'Arjundas Dayakishan Agarwal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '805, Trived Chember, Ring Road, Surat'),
(1137, '', '2023-02-23', '2023-02-23', '6', 'Arvind Binodkumar Dhandharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Nr Abhishek mkt, Ring Road, Surat'),
(1136, '', '2023-02-23', '2023-02-23', '6', 'Asha Manoj Chawdhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-B, Ratandham Appt, Opp. Chandni Chowk, Piplod, Surat'),
(1135, '', '2023-02-23', '2023-02-23', '6', 'Ashish Basudeb Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-2090, Millenium Mkt, Ring Road, Surat'),
(1134, '', '2023-02-23', '2023-02-23', '6', 'Ashish Mahabir Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '204, Chitrkut Appt, B/h agarshen Bhawan, City Light, Surat'),
(1133, '', '2023-02-23', '2023-02-23', '6', 'Ashok Kunjbihari Adukia (C.A)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-6, Gokul Row House, Parle Point, Surat'),
(1132, '', '2023-02-23', '2023-02-23', '6', 'Babita Pramod Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3/910, Sprring Valley, Opp Pushp Vatika, New City Light, Surat'),
(1131, '', '2023-02-23', '2023-02-23', '6', 'Bharat Jugalkishore Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2030, NSTM, Punakumbhariya road, Surat'),
(1130, '', '2023-02-23', '2023-02-23', '6', 'Bimal Shyamsundar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-37-38, India Textile Market, Ring road, Surat '),
(1129, '', '2023-02-23', '2023-02-23', '6', 'Bishnuram Nagarmal Agarwal (Khazanewala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '709, Raghuuveer Mall Nr. DR Mall, I Mata Rd, Parvat patiya, Surat'),
(1128, '', '2023-02-23', '2023-02-23', '6', 'Deepak Jagdishrai Kansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-2,-3020, Regent Market , Ring Road, Surat'),
(1127, '', '2023-02-23', '2023-02-23', '6', 'Deoki Nandan Govind Ram Saraogi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-4631, Millenium Mkt, Ring Road, Surat'),
(1126, '', '2023-02-23', '2023-02-23', '6', 'Disha Kailash Chandra Lohia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-5-601, Capital Green, Vesu , Surat'),
(1125, '', '2023-02-23', '2023-02-23', '6', 'Ganesh Narayan Goyanka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3015, Gautam Mkt, Ring road, Surat'),
(1124, '', '2023-02-23', '2023-02-23', '6', 'Ghanshyamdas Fulchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3018, Silk Plaza, ring Road, Surat'),
(1123, '', '2023-02-23', '2023-02-23', '6', 'Girdharilal Jagdish Prasad Agarwal (Sihotia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-3752, Millenium Mkt, Ring road, Surat'),
(1122, '', '2023-02-23', '2023-02-23', '6', 'Girdharilal Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3006, WTC, Ring Road, Surat'),
(1121, '', '2023-02-23', '2023-02-23', '6', 'Girish Jagdish Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-13-14, India Textile Market , Ring road, Surat'),
(1120, '', '2023-02-23', '2023-02-23', '6', 'Gopal Kailash Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1041, Jash Market, Ring road, Surat'),
(1119, '', '2023-02-23', '2023-02-23', '6', 'Harendra Jeevan psd Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5-B, Raj Siddhi Tower-B, Nr Nandidni-1, Vesu, Surat'),
(1118, '', '2023-02-23', '2023-02-23', '6', 'Hari Psd Chiranjilal Agarwal (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A/1-4003, Regent Mkt, Ring road, Surat'),
(1117, '', '2023-02-23', '2023-02-23', '6', 'Ishwarchand Nemchand Jain ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5009, WTC, Ring road, Surat'),
(1116, '', '2023-02-23', '2023-02-23', '6', 'Kailash Chandra Ghisaram Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-3631, Millenium Mkt, Ring road, Surat'),
(1115, '', '2023-02-23', '2023-02-23', '6', 'Kailash Girdharilal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-1711, Millenium Mkt, Ring road, Surat'),
(1114, '', '2023-02-23', '2023-02-23', '6', 'Kamal Kishore Damodar das Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-3706-7, RKT Mkt, Ring road, Surat'),
(1113, '', '2023-02-23', '2023-02-23', '6', 'Kanhaiyalal Kashi Psd Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2143, Ambaji Mkt, Ring Road, Surat'),
(1112, '', '2023-02-23', '2023-02-23', '6', 'Kiran Devi Kunjbihari Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F.No.-7-C, Kassel Braun, Nr J H Ambani School, Vesu, Surat'),
(1111, '', '2023-02-23', '2023-02-23', '6', 'Kishan Mohanlal Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4002, Ambaji Mkt, Ring road, Surat'),
(1110, '', '2023-02-23', '2023-02-23', '6', 'Kunjbihari Mohanlal Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-1472, Millenium Mkt, Ring Road, Surat'),
(1109, '', '2023-02-23', '2023-02-23', '6', 'Lalit Ramnarayan Agarwal (Bajari)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-3420, Millenium Mkt, Ring Road, Surat'),
(1108, '', '2023-02-23', '2023-02-23', '6', 'Lallukumar Ramotar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-310, Shyam Palace, B/h Nandini-2, Vesu, Surat'),
(1107, '', '2023-02-23', '2023-02-23', '6', 'Laxminarayan Ramratan Gupta ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-101, Chandni Chowk Appt, piplod, Surat'),
(1106, '', '2023-02-23', '2023-02-23', '6', 'Mahavir Prasad Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801, Rajhans Zion, Opp GD Goenka, Vesu, Surat'),
(1105, '', '2023-02-23', '2023-02-23', '6', 'Mahendra Chiranjilal Kanoi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-07, Shree Kuberji Textile Mkt, Delhi gate, surat'),
(1104, '', '2023-02-23', '2023-02-23', '6', 'Mahesh Durga Prasad Bubana', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-2002, New TT Mkt, Ring road, Surat'),
(1103, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Bajranglal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7 to 9, Tantia House, Shiv Shambhu Soc., UM RD, Surat, Surat'),
(1102, '', '2023-02-23', '2023-02-23', '6', 'Manish Kumar Purushottam Dokania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Mayur House, b/h Millenium, Ring road, Surat'),
(1101, '', '2023-02-23', '2023-02-23', '6', 'Manish Puranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Shri Hari Appt , Nr Lancer School, Piplod, Surat'),
(1100, '', '2023-02-23', '2023-02-23', '6', 'Manoj Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110 & 4th floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1099, '', '2023-02-23', '2023-02-23', '6', 'Mohanlal  Dwarka Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-208, Spring Velly, Opp Pushp Vatika, New City Light, Surat'),
(1098, '', '2023-02-23', '2023-02-23', '6', 'Mukesh Jagdishchand Saraf ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3040, Golden Palaza, Ring Road, Surat'),
(1097, '', '2023-02-23', '2023-02-23', '6', 'Mukesh Kunjbihari Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-9, Meghsarman Appt, City Light, Surat'),
(1096, '', '2023-02-23', '2023-02-23', '6', 'Narayan Bijaykumar Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4009, Golden Palaza, Ring Road, Surat'),
(1095, '', '2023-02-23', '2023-02-23', '6', 'Narendrakumar Dhanraj Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-304, Celestrial Dream, Canal Road, Vesu, Surat'),
(1094, '', '2023-02-23', '2023-02-23', '6', 'Naresh Bhagwandas Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-A, Ratan Krooti Appt, b/h Croma, Piplod, Surat'),
(1093, '', '2023-02-23', '2023-02-23', '6', 'Narinder Parkash Gurcharan Dass Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-1002, Florance, Vip Road, Surat'),
(1092, '', '2023-02-23', '2023-02-23', '6', 'Nemichand Banwarilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-2674-75, RKT Mkt, Ring Road, Surat'),
(1091, '', '2023-02-23', '2023-02-23', '6', 'Niraj Jaiprakash Goenka (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-802, Aakash Evergreenschool, B/h Shyam Sangini, Vesu, Surat'),
(1090, '', '2023-02-23', '2023-02-23', '6', 'Nitin Subhash Garg ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4098, Siddhi Vinayak Mkt, Ring Road, Surat'),
(1089, '', '2023-02-23', '2023-02-23', '6', 'Pankajkumar Rajkumar Bedia  ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-128, Ashirwad Plcace, Bhatar Road, Surat'),
(1088, '', '2023-02-23', '2023-02-23', '6', 'Parmeshwar Parasram Daruka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-611, Ashirwad Complex, Nr. Anuvarat Dawar, City Light, Surat'),
(1087, '', '2023-02-23', '2023-02-23', '6', 'Pawan Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '155,Millenium-2, B/h Ragukul Mkt, Ring Road, Surat'),
(1086, '', '2023-02-23', '2023-02-23', '6', 'Piyush Shyamsunder Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-A, Ratan Milan Appt, Ghod Dod Road, Surat'),
(1085, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Hari Prasad Sureka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '40, Millenium -2, B/h Raghukul Mkt, Ring Road, Suart'),
(1084, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Mangturam Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4001 to 4009, Harihar Mkt (3rd Floor), Ring road, Surat'),
(1083, '', '2023-02-23', '2023-02-23', '6', 'Pramod Gajanand Agarwal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602, Trived Chember, Ring Road, Surat'),
(1082, '', '2023-02-23', '2023-02-23', '6', 'Pramodkumar Nemchand Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2005-06, Gopi Mkt, Ring Road, Surat'),
(1081, '', '2023-02-23', '2023-02-23', '6', 'Pukhraj Ganeshilal Agrawal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2034, TT Mkt, Ring Road, Surat'),
(1080, '', '2023-02-23', '2023-02-23', '6', 'Purushottam Sajjan Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-233, Ashirwad Palace, Bhatar Road, Surat'),
(1079, '', '2023-02-23', '2023-02-23', '6', 'Purushottam Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '109, Jeevandeep, Opp, Sub Jail, Majura Gate, Surat'),
(1078, '', '2023-02-23', '2023-02-23', '6', 'Raj Kapoor Kanhaiyalal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '455-56, Millenium Mkt-2, B/h Raghukul, Ring road, Surat'),
(1077, '', '2023-02-23', '2023-02-23', '6', 'Rajendra Mahesh Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-1689-92, Millenium Mkt, Ring Road, Surat'),
(1076, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Balkishan Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1102, Fore Season, Opp Ginger Hotel, Piplod, Surat'),
(1075, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Omprakash Agarwal (Babluji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '129, Reshamwala Mkt, Ring road, Surat'),
(1074, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Ram Babu Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4/1928, Aaina House, Nr Panchvati Hanuman Mandir, Begumpura, Surat'),
(1073, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Nandkishore Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-810, Surya Prakash Resi. City Light, Surat'),
(1072, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Shrikishandas Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101, Shyam Sangini, Punakumaria Rd, Saroli, Surat'),
(1071, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Budhram Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '503, (Neha saree) Ashoka Tower, Ring Road, surat'),
(1070, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Purshottam Dokania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Mayur House, b/h Millenium, Ring road, Surat'),
(1069, '', '2023-02-23', '2023-02-23', '6', 'Rakesh Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110- 7th Floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1068, '', '2023-02-23', '2023-02-23', '6', 'Rakesh Nareshkumar Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-3654, Millenium Mkt, Ring Road, Surat'),
(1067, '', '2023-02-23', '2023-02-23', '6', 'Rakeshkumar Ramratan Gupta (Basawa)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3010, Mahavir Mkt, Ring Road'),
(1066, '', '2023-02-23', '2023-02-23', '6', 'Ram Mohan Prahaladrai Agrawal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '53/B-Pragati Fashion, Nr Bedhedwad, Prem nagar, pandesara, Surat'),
(1065, '', '2023-02-23', '2023-02-23', '6', 'Ramavtar Bhuramal Chaudhari (Dinesh Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-7th Floor, Raj Textile Mkt B/h DMD, Saroli, Surat'),
(1064, '', '2023-02-23', '2023-02-23', '6', 'Ramavtar Mangilal Agarwal (Bansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2053, Mahaveer Mkt, Ring Road, Surat'),
(1063, '', '2023-02-23', '2023-02-23', '6', 'Ramawatar Sitaram Agarwal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '106, Virat Apt, Diwali bhug Nr Dhiraj & Sons, Athwaline, Surat'),
(1062, '', '2023-02-23', '2023-02-23', '6', 'Ramchandra Malchand Agarwal  (Ram Bhai)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 703, Salasar Palace, Nr Vastu Gram, VIP Road, Surat'),
(1061, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Prakashchand Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1155, Raghukul Market  Lift No.7-8, Ring road, Surat'),
(1060, '', '2023-02-23', '2023-02-23', '6', 'Ramkaran Maghraj Bajari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '317, Ashta Mkt, Ring Road, Surat'),
(1059, '', '2023-02-23', '2023-02-23', '6', 'Ramniwash Loonkarn Dass Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-209, Spring Velly, Opp Pushp Vatika, New City Light, Surat'),
(1058, '', '2023-02-23', '2023-02-23', '6', 'Rinku Sunil Bansal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3, Vastu Pooja Complex, Nr Meghna Park, City Light, Surat'),
(1057, '', '2023-02-23', '2023-02-23', '6', 'Roshanlal Norangrai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2015 Raghukul Mkt, Ring Road, Surat'),
(1056, '', '2023-02-23', '2023-02-23', '6', 'Sailesh Girdhar Prasad Sarraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1017, Anupam Mkt, Ring Road, Surat'),
(1055, '', '2023-02-23', '2023-02-23', '6', 'Sandip Bishwanath Kedia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302, Orbit Tower, Sahara Darwaza, Surat'),
(1054, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Badri Prasad Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Kanhiya Processing GIDC, pandesara, Surat'),
(1053, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110, 9th floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1052, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-303, ICC Building, Ring Road, Surat'),
(1051, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Omprakash Jagnani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '562, Silk City Mkt, Ring road, Surat'),
(1050, '', '2023-02-23', '2023-02-23', '6', 'Santosh Anandkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1049, '', '2023-02-23', '2023-02-23', '6', 'Sarla Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453, Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1048, '', '2023-02-23', '2023-02-23', '6', 'Saurabh Uttam Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1/301, Capital Greesn, Opp GD Goenka, VIP Road, Surat'),
(1047, '', '2023-02-23', '2023-02-23', '6', 'Shiv Prasad Tulsi Ram Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-5, 401, Nandanvan-2, VIP Road, Surat'),
(1046, '', '2023-02-23', '2023-02-23', '6', 'Shivkumar Murlidhar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '66, Prem Kunj, Subhash Nagar Soc, Ram Chowk, Ghod Dod Road, Surat'),
(1045, '', '2023-02-23', '2023-02-23', '6', 'Shyam Prasad Gorakhram Murarka (SanjivJI)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3/2153-54, Shyam Kunj Building Opp Bhanawala Apt, Nr Ratan Cenema, Salabatpura, Surat'),
(1044, '', '2023-02-23', '2023-02-23', '6', 'Sitaram Prakashchand Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1155, Raghukul Mkt L.No7-8, Ring Road, Surat'),
(1043, '', '2023-02-23', '2023-02-23', '6', 'Subhkaran Biharilal Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-2365-66, Millenium Mkt, Ring Road, Surat'),
(1042, '', '2023-02-23', '2023-02-23', '6', 'Subhsh Fulchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3018, Silk Plaza, ring Road, Surat'),
(1041, '', '2023-02-23', '2023-02-23', '6', 'Sumit Hari Kishan Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-431-432, Land Mark, Saroli Road, Surat'),
(1040, '', '2023-02-23', '2023-02-23', '6', 'Sumit Omprakash Goyanka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B/2-307, Shyam Villa Appt, Nr Shyam Mandir, VIP Road, Surat'),
(1039, '', '2023-02-23', '2023-02-23', '6', 'Sunilkumar Shivkumar Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201, Nalnda Resi. Opp Jolly Resi. Vesu Char Rasta, Surat'),
(1038, '', '2023-02-23', '2023-02-23', '6', 'Sunita Ramgopal Agarwal (Shreeji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U-1216, STM, Ring Road, Surat'),
(1037, '', '2023-02-23', '2023-02-23', '6', 'Suresh Prahladrai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Solitaire Appt, Brijwasi Estate, Opp. Umrighar School, Parle point, Surat'),
(1036, '', '2023-02-23', '2023-02-23', '6', 'Swati Vinodkumar Agarwal (Madhupriya)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-1532-33, Millenium Mkt, Ring Road, Surat'),
(1035, '', '2023-02-23', '2023-02-23', '6', 'Tarachand Mohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-3, J.K Tower, Ring Road, Surat'),
(1034, '', '2023-02-23', '2023-02-23', '6', 'Tolaram Mahavir Prasad Agarwal (Udaipurvati))', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/510, Spring Velly, Opp. Opp Pushp Vatika, New City Light , Surat'),
(1033, '', '2023-02-23', '2023-02-23', '6', 'Umesh Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '538, Ashoka Tower , Ring Road, Surat'),
(1032, '', '2023-02-23', '2023-02-23', '6', 'Urmila Dileep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-614, Ashirwad Palace, Bhatar Road, Surat'),
(1031, '', '2023-02-23', '2023-02-23', '6', 'Vidyakar Nirmalesh Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B.No-468, Anubha Polyweavers pvt ltd, N.H. No-8, Sachin-Palsana Rd, Surat'),
(1030, '', '2023-02-23', '2023-02-23', '6', 'Vijaykumar Surendra Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-205, Rajhans Zion, Opp GD Goenka, Vesu, Surat'),
(1029, '', '2023-02-23', '2023-02-23', '6', 'Vijayshree Nitesh Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1102, Green Avenue, Ghod dod Surat'),
(1028, '', '2023-02-23', '2023-02-23', '6', 'Vikas Shyamsunder Saharia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-711, ICC Building, Ring Road, Surat'),
(1027, '', '2023-02-23', '2023-02-23', '6', 'Vikash Dinesh Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F- Parvati House, Shree Kuberji Textile Park, B/h Belzium Tower, Delhi Gate, Surat'),
(1026, '', '2023-02-23', '2023-02-23', '6', 'Vikash Madanlal Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-704, ICC Building, Ring Road, Surat'),
(1025, '', '2023-02-23', '2023-02-23', '6', 'Vikash Nandkishor Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '329, L.B. Appt, Ring Road, Surat'),
(1024, '', '2023-02-23', '2023-02-23', '6', 'Vikash Vijaykumar Sarraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Swarna villa, Opp Sneh Villa, Vip Road Vesu, Surat'),
(1023, '', '2023-02-23', '2023-02-23', '6', 'Vimal Brijmohan Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-801, Amrit kunj, Nr Umabhawan, Bhatar Road, Surat'),
(1022, '', '2023-02-23', '2023-02-23', '6', 'Vinay Lokpriya Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Shop No-22& 23, Super yarn Mkt, Jhappa Bazar, Begam Pura, Surat'),
(1021, '', '2023-02-23', '2023-02-23', '6', 'Yogender Girdharilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '17, Kuberji House, Ring Road, Surat'),
(1020, '', '2023-02-23', '2023-02-23', '6', 'Vishnukant B Paliwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-B, Ratana Anushree, Nr. Somnath Mandir, Umra, Surat'),
(1019, '', '2023-02-23', '2023-02-23', '6', 'Manoj Kumar H Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1101, Four Season, Ginger Hotel, Piplod, Surat'),
(1018, '', '2023-02-23', '2023-02-23', '7', 'Abhishek Puranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '439 Millenium-2, Ring Road, Surat'),
(1017, '', '2023-02-23', '2023-02-23', '7', 'Ajay Kashiram Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-301 Ravi ratan Appt. Nr Someshwar 4 Rasta Vesu, Surat'),
(1016, '', '2023-02-23', '2023-02-23', '7', 'Ajay Mahendra Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '902, Parth appt, Opp Devkrupa appt City Light, Surat'),
(1015, '', '2023-02-23', '2023-02-23', '7', 'Anil Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-401, Rameshwarm Palace Opp Sangini Solitaire Vesu, Surat'),
(1014, '', '2023-02-23', '2023-02-23', '7', 'Anil Mahabir Psd Tibrewala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11-A, Brijvatika Arjna Estate Parle Point, Surat'),
(1013, '', '2023-02-23', '2023-02-23', '7', 'Anil Mahavir Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-4, 901 Capital Green Opp GD Goenka Vesu, Surat'),
(1012, '', '2023-02-23', '2023-02-23', '7', 'Anil Mukutbihari Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3132 Raghukul Mkt, Lft No-8, Ring Road, Surat'),
(1011, '', '2023-02-23', '2023-02-23', '7', 'Anil Nagjiram Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-4, Megh Sarwan appt, T-1 City Light, Surat'),
(1010, '', '2023-02-23', '2023-02-23', '7', 'Anilkumar Palaram Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-701 Devraj Resi., New City Light Surat'),
(1009, '', '2023-02-23', '2023-02-23', '7', 'Ankit Vinod Agarwal (Goyal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602, Hampton Park, Vesu, Surat'),
(1008, '', '2023-02-23', '2023-02-23', '7', 'Arun Hanuman Prasad Nakipuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1002, Sangini Solitaire T-A B/h Rajhans Zion Vesu, Surat'),
(1007, '', '2023-02-23', '2023-02-23', '7', 'Arun Kumar Sitaram Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '12/B, Tower-A, Raj Sidhhi Appt, Vesu, Suratr'),
(1006, '', '2023-02-23', '2023-02-23', '7', 'Arunkumar Amarnath Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-4, Nidhivan Appt. Nr Gateway Parle Point, Surat'),
(1005, '', '2023-02-23', '2023-02-23', '7', 'Arunkumar Kashi Prasad Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3019, Silk City Mkt, Ring Road, Surat'),
(1004, '', '2023-02-23', '2023-02-23', '7', 'Arvind Jagdish Prasad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '303 Arjun Complex, opp Ashirwad Complex Bhatar Rd, Surat'),
(1003, '', '2023-02-23', '2023-02-23', '7', 'Arvind Ramjivan Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-501, Floreancee Nr Nandini-1 VIP Rd, Surat'),
(1002, '', '2023-02-23', '2023-02-23', '7', 'Ashish Mahavir Psd Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2c-Nidhivan Appt Brijwasi Estate Parle Point, Surat'),
(1001, '', '2023-02-23', '2023-02-23', '7', 'Ashok Govind Ram Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-504 Surya Life Style, Nr LP Savani school Vesu, Surat'),
(1000, '', '2023-02-23', '2023-02-23', '7', 'Ashok Hari Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-913 Surya prakash Resi., Nr. Agrshen Bhawan City Light, Surat'),
(999, '', '2023-02-23', '2023-02-23', '7', 'Ashok Jagdish Psd Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3/402 Vastu Luxuria Nr VR Mall Dumas Rd, Surat'),
(998, '', '2023-02-23', '2023-02-23', '7', 'Ashok Kishanlal Kandoi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-b, Podar Avenue, Tower -C, Opp. Jogger\'s Park Ghod dod Rd, Surat'),
(997, '', '2023-02-23', '2023-02-23', '7', 'Avishek Shyam Sunder Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-501 Raj Laxmi Appt, City Light, Surat'),
(996, '', '2023-02-23', '2023-02-23', '7', 'Ayodhyaprasad Jugalkishore Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-304, Silver Spring Appt, Anand Mahal road Adjan, Surat'),
(995, '', '2023-02-23', '2023-02-23', '7', 'B.S. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-11, Inderlok Appt, Tower-F Opp Lake Garden Piplod, Surat'),
(994, '', '2023-02-23', '2023-02-23', '7', 'Bajaranglal Maliram Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-502 Shyam Rachna Nr. Shyam Mandir VIP Rd, Surat'),
(993, '', '2023-02-23', '2023-02-23', '7', 'Balkishan Rambhgat Agarwal (Dhanewala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-6, 302 Capital Green Canal Rd Vesu, Surat'),
(992, '', '2023-02-23', '2023-02-23', '7', 'Basudev Nathmal Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 Parth Appt Nr Corner Point City Light, Surat'),
(991, '', '2023-02-23', '2023-02-23', '7', 'Bharat Laxan Kumar Bhutia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1, 902 Celebtity Greens Vip rd Vesu, Surat'),
(990, '', '2023-02-23', '2023-02-23', '7', 'Bijaykumar Subhkaran Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B1-401 Spring Valley Opp Pushp Vatika New City Light, Surat'),
(989, '', '2023-02-23', '2023-02-23', '7', 'Bimal Sobhachand Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4, Ratan Virat Appt, New City light, Surat'),
(988, '', '2023-02-23', '2023-02-23', '7', 'Bishwanath Motilal Agarwal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-19-20, Rangila Park, Ghod dod Road, Surat'),
(987, '', '2023-02-23', '2023-02-23', '7', 'Bishwanath psd Ishwardas Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-503 Dream Palace Nr Dream Heritage Canal Rd, Vesu, Surat'),
(986, '', '2023-02-23', '2023-02-23', '7', 'Chakrapani Radha Ballabh Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '603, Solitare Appt, Brijwasi Estate Parle Point,Umra, Surat'),
(985, '', '2023-02-23', '2023-02-23', '7', 'Deendyal Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '85, Sunrise Township, Parvat Patia, Surat'),
(984, '', '2023-02-23', '2023-02-23', '7', 'Deepak Kailash Prasad Salampuriya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-201 Nandanvan-3 Nr Nandini-1 Vesu, Surat');
INSERT INTO `member_master` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(983, '', '2023-02-23', '2023-02-23', '7', 'Devki Prasad Bajaranglal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-201 Spring Valley Opp Pushp Vatika New City Light, Surat'),
(982, '', '2023-02-23', '2023-02-23', '7', 'Dilip Jagdish Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-B, Megh sarwan Apt, T-3 City Light, Surat'),
(981, '', '2023-02-23', '2023-02-23', '7', 'Dilip Sitaram Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-c, T-E, Ratan Jyoti appt, Opp Gangor Chat Vesu, Surat'),
(980, '', '2023-02-23', '2023-02-23', '7', 'Dilipkumar Durgadutt Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-1014 Ofira Nr Capital green Vesu, Surat'),
(979, '', '2023-02-23', '2023-02-23', '7', 'Dindyal Nandkishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-2A, Ratan Jyoti Appt, Vesu, Surat'),
(978, '', '2023-02-23', '2023-02-23', '7', 'Dinesh Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '130, Reshamwala Mkt, Ring Road, Surat'),
(977, '', '2023-02-23', '2023-02-23', '7', 'Dipak Gopiram Padia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-c, Raj Saheli Resi nr. Raghuram Party plot Umrighar School Parle Point, Surat'),
(976, '', '2023-02-23', '2023-02-23', '7', 'Dr. Mannubhai Kedarmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-502 Celesteal Dream Canal Rd Vesu, Surat'),
(975, '', '2023-02-23', '2023-02-23', '7', 'Dropatidevi Omprakash Chetani (Manoj Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001 Shanti Niketan appt, Opp SD Jain Vesu, Surat'),
(974, '', '2023-02-23', '2023-02-23', '7', 'Dwarka Psd Parshuram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1103 Surya Prakash Resi, City light, Surat'),
(973, '', '2023-02-23', '2023-02-23', '7', 'Gaurishanker Shivcharan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-925, Ashirwad Palace Bhatar, Surat'),
(972, '', '2023-02-23', '2023-02-23', '7', 'Girdhar Kumar Parmeshwarlal Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-9/10 Someshwera Enclave Vesu, Surat'),
(971, '', '2023-02-23', '2023-02-23', '7', 'Girdharilal Hanumabux Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '520, Shreeji Mkt, Ring Road, Surat'),
(970, '', '2023-02-23', '2023-02-23', '7', 'Girishkumar Shyamlal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-203 Abhishek Park B/h Pooja Abhishek Athwaline, Surat'),
(969, '', '2023-02-23', '2023-02-23', '7', 'Gopal Deshraj Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-617 Green Avenue, Opp Joggers Park Ghod dod Rd, Surat'),
(968, '', '2023-02-23', '2023-02-23', '7', 'Gopal Padamchand Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-A, Meghrath Complex, Tower-4 Bhatar Rd, Surat'),
(967, '', '2023-02-23', '2023-02-23', '7', 'Gopal Prasad Shankarlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-701 Capital Green VIP Road, Surat'),
(966, '', '2023-02-23', '2023-02-23', '7', 'Gopal Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-8, Palm Aveune Vip rd Vesu, Surat'),
(965, '', '2023-02-23', '2023-02-23', '7', 'Hari Psd Mohanlal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-C, Ratan Jyoti Appt, T-C, Vesu, Surat'),
(964, '', '2023-02-23', '2023-02-23', '7', 'Hariprasad Rameshwarlal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-602 Amrut Kunj Appt Nr Umabhawan Bhatar Rd, Surat'),
(963, '', '2023-02-23', '2023-02-23', '7', 'Harishanker Mahavir Psd Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1, 902 Capital Green, Opp GD Goenka Vesu, Surat'),
(962, '', '2023-02-23', '2023-02-23', '7', 'Harishkumar Ramjilal Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-716 Ashirwad Palace, Bhatar Rd, Surat'),
(961, '', '2023-02-23', '2023-02-23', '7', 'Hemant Vimalkumar Dhandharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '111, Tulsi Mkt, ring Road, Surat'),
(960, '', '2023-02-23', '2023-02-23', '7', 'Hemantkumar Surajmal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11-A, Poddar resi. Tower-B Opp GD Goenka Vesu, Surat'),
(959, '', '2023-02-23', '2023-02-23', '7', 'Isha Suchit Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1001, Omraj Appt., Opp VR Mall Dumas Rd, Surat'),
(958, '', '2023-02-23', '2023-02-23', '7', 'Jagdish Harnarayan Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-302, Omraj resi., Opp VR Mall Dumas Rd, Surat'),
(957, '', '2023-02-23', '2023-02-23', '7', 'Jagdish Prasad Badrinarayan Ji Agarwal (Dodrajka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-903 The Laurels Opp Capital Green Vesu, Surat'),
(956, '', '2023-02-23', '2023-02-23', '7', 'Jai Prakash Noranglal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6, Radhe Mkt, Ring Road, Surat'),
(955, '', '2023-02-23', '2023-02-23', '7', 'Janardan Jaydeolal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-5, 1001Capital Green, Opp GD Goenka Vesu, Surat'),
(954, '', '2023-02-23', '2023-02-23', '7', 'Janardhan Kailash Psd Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1002 Shrinil Resi., Nr Someshwar Banglow Vesu, Surat'),
(953, '', '2023-02-23', '2023-02-23', '7', 'Jugal Kishore Premsukh das Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-507 Shukan resi., Nr Water Tanki Vesu, Surat'),
(952, '', '2023-02-23', '2023-02-23', '7', 'Kamal Kishore Daulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-502 Florence Appt VIP Rd, Surat'),
(951, '', '2023-02-23', '2023-02-23', '7', 'Kamal Nathmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501-502 Ajanta Appt Opp G3 Shop Ghod dod Rd, Surat'),
(950, '', '2023-02-23', '2023-02-23', '7', 'Kapil Prakashchandra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1002 Megh Dhanush Sarela wadi Ghod dod Rd, Surat'),
(949, '', '2023-02-23', '2023-02-23', '7', 'Kartik Vimal Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-833 Ashirwad Palace Bhatar Rd, Surat'),
(948, '', '2023-02-23', '2023-02-23', '7', 'Kedarnath Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-203 Rajhans Zion Opp GD Goenka Vesu, Surat'),
(947, '', '2023-02-23', '2023-02-23', '7', 'Kishan Narayan Psd Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-602 Sangini Solitaire B/h Rajhans Zion Vesu, Surat'),
(946, '', '2023-02-23', '2023-02-23', '7', 'Kishan Sundarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-1102, Florance, VIP Road, Surat'),
(945, '', '2023-02-23', '2023-02-23', '7', 'Krishan Murari Kailashchand Bidawatka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '803 Umang Appt, Nr Umabhawan Bhatar Rd, Surat'),
(944, '', '2023-02-23', '2023-02-23', '7', 'Krishna Murari Banwarilal Marodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-521 Ashirwad Palace, Bhatar Rd, Surat'),
(943, '', '2023-02-23', '2023-02-23', '7', 'Lalitkumar Phoolchnad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-607 Vastugram Appt, Opp Rasid Villa Appt Vesu, Surat'),
(942, '', '2023-02-23', '2023-02-23', '7', 'Laxmikant Radheshyam Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E2, 401 Capital Green Opp GD Goenka Vesu, Surat'),
(941, '', '2023-02-23', '2023-02-23', '7', 'Leeladhar Banwarilal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-601 Ashirwad Avenue Nr Shyam Mandir VIP Rd, Surat'),
(940, '', '2023-02-23', '2023-02-23', '7', 'Madangopal Shrikeshardev Mor (MG)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '106 Metro Tower, Ring Road, Surat'),
(939, '', '2023-02-23', '2023-02-23', '7', 'Mahabir Psd Gangaram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'W-443, Ashirwad Palace Bhatar Rd, Surat'),
(938, '', '2023-02-23', '2023-02-23', '7', 'Mahavir Psd Sanwarmal Beriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-26, Chandramani Soc.,Gayatri Mandir UM Rd, Surat'),
(937, '', '2023-02-23', '2023-02-23', '7', 'Mahednra Mohanlal Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-912 Sripal Resi. Nr Corner Point City Light, Surat'),
(936, '', '2023-02-23', '2023-02-23', '7', 'Mahendra Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '130, Reshamwala Mkt, Ring Road, Surat'),
(935, '', '2023-02-23', '2023-02-23', '7', 'Mahendra Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-902 Shyam Rachna Nr VIP Plaza VIP Rd, Surat'),
(934, '', '2023-02-23', '2023-02-23', '7', 'Mahesh Hukmichand Ji Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-933 Ashirwad Palace Bhatar Rd, Surat'),
(933, '', '2023-02-23', '2023-02-23', '7', 'Mahesh Santkumar Bhimsariya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-307 Shripal Residancy City Light Rd Surat'),
(932, '', '2023-02-23', '2023-02-23', '7', 'Manmohan Binodkumar Jasrasaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2/A, Sagar Appt Nr Somnath Mahadev Road Parle Point, Surat'),
(931, '', '2023-02-23', '2023-02-23', '7', 'Manoj Atmaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-601, JJ Mkt, Ring Road, Surat'),
(930, '', '2023-02-23', '2023-02-23', '7', 'Manoj Dwarka Prasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1015 Surya Prakash Resi. Nr Agarsen Bhawan City Light, Surat'),
(929, '', '2023-02-23', '2023-02-23', '7', 'Manoj Madanlal Mor', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '306 Ajnta Mkt, Ring road, Surat'),
(928, '', '2023-02-23', '2023-02-23', '7', 'Mohanlal Madanlal Agrawal (Devra)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '803 Amardeep Appt Bhatar Rd, Surat'),
(927, '', '2023-02-23', '2023-02-23', '7', 'Motilal Hulashchand Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601 Sneh Vila Appt Nr Capital green Vesu, Surat'),
(926, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Gauri Shankar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-601 Imperial Bloosum Nr. Agam Shopping Center word Vesu, Surat'),
(925, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Gyarsilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-401 Capital Life Vesu, Surat'),
(924, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Premchand Dokwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '57, Radhey Mkt, Ring road, Surat'),
(923, '', '2023-02-23', '2023-02-23', '7', 'Mukeshkumar Raghuvir Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1004 Sun Tower Bhatar Rd, Surat'),
(922, '', '2023-02-23', '2023-02-23', '7', 'Nandkishor Shubhkarn Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-2159-60 Millenium Mkt, Ring Road, Surat'),
(921, '', '2023-02-23', '2023-02-23', '7', 'Nandkishore Birdichand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601 Rasik Vila Nr Vastu Gram Vesu, Surat'),
(920, '', '2023-02-23', '2023-02-23', '7', 'Nandkishore Shankarlal Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-208 Somnath Enclve,B/h Sargam Shopping Center Parle Point, Surat'),
(919, '', '2023-02-23', '2023-02-23', '7', 'Naresh Kamal Kishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1004, Shrungar resi. B/h Nandini-1 Vesu'),
(918, '', '2023-02-23', '2023-02-23', '7', 'Naresh Omprakash Fatehsaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Q-1258 STM , Ring road, Surat'),
(917, '', '2023-02-23', '2023-02-23', '7', 'Navlesh Gyarshilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402 Capital Life Vesu, Surat'),
(916, '', '2023-02-23', '2023-02-23', '7', 'Niraj Omprakash Nawka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1004 Jolly Resi. Nr. SD Jain Vesu, Surat'),
(915, '', '2023-02-23', '2023-02-23', '7', 'Nirajkumar Santosh Bagaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-103, Monalisa Park B/h Agarsen Bhawan City Light, Surat'),
(914, '', '2023-02-23', '2023-02-23', '7', 'Nirav Govindlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '12 Maitri Row House Surjjan Soc., Parle Point Surat'),
(913, '', '2023-02-23', '2023-02-23', '7', 'Om Prakash Sitaram Kariwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701 Rajhans Zion Opp GD Goenka Vesu, Surat'),
(912, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Bajranglal Ghatwawala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-4/801 Capital Green Vesu, Surat'),
(911, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Narayan Sundarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Solitaire Appt Brijwasi Estate Parle Point, Surat'),
(910, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Prahladrai Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-603 Smita Park Sarela wadi Ghod dod Rd, Surat'),
(909, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Banwarilal Chachan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-811 Ashirwad Palace Bhatar Rd, Surat'),
(908, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Sagarmal Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-601-602 Vaishalee Appt Bhatar Rd, Surat'),
(907, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Sanwarmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-5, 1102 Capital Green Vesu, Surat'),
(906, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Parbhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-6, 501 Nandanvan-2 VIP Rd, Surat'),
(905, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Ramawatar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '803 Madhulika Appt Bhatar, Surat'),
(904, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-811 Surya Palace City Light, Surat'),
(903, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Sitaram Kejariwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-302 Sangini Solitair Appt Vesu, Surat'),
(902, '', '2023-02-23', '2023-02-23', '7', 'Pradip Sitaram Agarwal (Hudeelwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1005, Rajhans Zion, Vesu, Surat'),
(901, '', '2023-02-23', '2023-02-23', '7', 'Prakash Murarilal Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604 Ashirwad Park City Light, Surat'),
(900, '', '2023-02-23', '2023-02-23', '7', 'Prakash Ompraksh Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-412, Surya Palace City Light, Surat'),
(899, '', '2023-02-23', '2023-02-23', '7', 'Pramod Bhadalmal Agarwal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-6, 902, Capital Green, Opp GD Goenka Vesu, Surat'),
(898, '', '2023-02-23', '2023-02-23', '7', 'Pramod Mathura Prasad Sanghi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-6, 906, Capital Green, Opp GD Goenka Vesu, Surat'),
(897, '', '2023-02-23', '2023-02-23', '7', 'Pramodkumar Birbhan Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-507, Dreem Heritage Vip rd Vesu, Surat'),
(896, '', '2023-02-23', '2023-02-23', '7', 'Prayagchand Motilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-9-10, Rangila Park, Ghod dod Road, Surat'),
(895, '', '2023-02-23', '2023-02-23', '7', 'Premkumar Madanlal Agarwal (Makharia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1003 Om Terece DRB College New City Light, Surat'),
(894, '', '2023-02-23', '2023-02-23', '7', 'Premkumar Shivshankar Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-5a, Kassel Braun, Um Road, Vesu, Surat'),
(893, '', '2023-02-23', '2023-02-23', '7', 'Puneetkumar Kesharlal Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1104 Surya Palace City Light, Surat'),
(892, '', '2023-02-23', '2023-02-23', '7', 'Radheshyam Baijnath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-911, Spring Valley Opp Pushp Vatika New City Light, Surat'),
(891, '', '2023-02-23', '2023-02-23', '7', 'Raghunath Prasad Anoop kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '714 Raghuvir Mall, Parvat Patia, Surat'),
(890, '', '2023-02-23', '2023-02-23', '7', 'Rajeev Kumar Ramavtar Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P.No-50, Kabirkunj, Jamna Nagar Rd Opp Ashirwad Complex Bhatar Rd, Surat'),
(889, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Babubhai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101, Sunrise Township Nr Samrat School Parvat Patia, Surat'),
(888, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Bhagirathmal Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-5, 401 Vastu luxuria Nr VR Mall Dumas Rd, Surat'),
(887, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Puranmal Agarwal (Patwari )', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403 Vardhman Complex Nr Umabhawan Bhatar Rd, Surat'),
(886, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-3/B-1, Capital green Vesu, Surat'),
(885, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Basudeo Bhauwala (C.A.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-4, 301 Capital green Vesu, Surat'),
(884, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Indarchand Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '202 Shri Harihar Appt Nr. Lancer Army School Piplod, Surat'),
(883, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Laxminarayan Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501 Arya Punnyabhumi Building Nr Bhagwan Mahavir College VIP Rd, Surat'),
(882, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramnirajan Pransukhka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-704 Sangini Resi. Panas Gam City Light, Surat'),
(881, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramratan Ji Beria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-1024 Ashirwad Palace Bhatar, Surat'),
(880, '', '2023-02-23', '2023-02-23', '7', 'Rajeshwari Umesh Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-1800, Millenium Mkt, Ring Road, Surat'),
(879, '', '2023-02-23', '2023-02-23', '7', 'Rajivkumar Omprakash Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-508, Spring Valley New City Light, Surat'),
(878, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Jugalkishore Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-7 Raj Siddhi Appt Nr Sukun Appt Vesu, Surat'),
(877, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Pyarelal Ji Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-4, 101-104 Nandanvan-2 VIP Rd, Surat'),
(876, '', '2023-02-23', '2023-02-23', '7', 'Rajneesh Devidutt Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-3, 701 Capital Green Vesu, Surat'),
(875, '', '2023-02-23', '2023-02-23', '7', 'Rajnesh Shrikrishna Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-3, 902 Capital Green Opp GD Goenka Vesu, Surat'),
(874, '', '2023-02-23', '2023-02-23', '7', 'Rakesh Shree Gopal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-A, Retreat Height Adeshwar Nagar Soc.,Vesu, Surat'),
(873, '', '2023-02-23', '2023-02-23', '7', 'Ramavatar Pokharmal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '126-127, Millenium Mkt-2, Ring road, Surat'),
(872, '', '2023-02-23', '2023-02-23', '7', 'Ramesh Jagdish Prasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601, Shyam Rachna,Nr. Shyam Mandir VIP Rd, Surat'),
(871, '', '2023-02-23', '2023-02-23', '7', 'Ramjilal Ramswaroop Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-902 Shyam Rachna Nr VIP Plaza VIP Rd, Surat'),
(870, '', '2023-02-23', '2023-02-23', '7', 'Ramratan Arjunlal Baria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'K-623 Ashirwad Palace Bhatar, Surat'),
(869, '', '2023-02-23', '2023-02-23', '7', 'Ramswaroop Jagdishprasad Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '65, Reshamwala Mkt, Ring road, Surat'),
(868, '', '2023-02-23', '2023-02-23', '7', 'Ratan Satyadeo Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Maharaja-81, Someshwara Enclave Somesawar Char Rasta Vesu, Surat'),
(867, '', '2023-02-23', '2023-02-23', '7', 'Ratankumar Pyarelal Drolia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-601, opera House Nr Agarsen Bhawan City Light, Surat'),
(866, '', '2023-02-23', '2023-02-23', '7', 'Rattan Satyanaran Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-603 Surya life Style,Vesu, Surat'),
(865, '', '2023-02-23', '2023-02-23', '7', 'Ravi Nirmal Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-2010, Silk Plaaza, Ring Road, Surat'),
(864, '', '2023-02-23', '2023-02-23', '7', 'Sachin Shyambabu Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-203 Surys Darshan Appt Nr Agarsen Bhawan City Light, Surat'),
(863, '', '2023-02-23', '2023-02-23', '7', 'Sandeep Fatehchand Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-8, Avenue-77 Nr LP Savani school Vesu, Surat'),
(862, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-5,901 Capital green Vesu, Surat'),
(861, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Satyanarayan Psd Agrawal (Sultania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-1, 602 Capital Green, Opp GD Goenka Vesu, Surat'),
(860, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Shrinivas Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-505 Surya Palace City Light, Surat'),
(859, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Shyamsundar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-503 Dream Heritage, Nr LP Savani school Vesu, Surat'),
(858, '', '2023-02-23', '2023-02-23', '7', 'Santosh Chauthmal Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-501, Megh Dhanush Appt Nr Sarela Wadi Ghod dod Rd, Surat'),
(857, '', '2023-02-23', '2023-02-23', '7', 'Sarangpani Radhaballab Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501 Platinum Appt Parle Point, Surat'),
(856, '', '2023-02-23', '2023-02-23', '7', 'Sarvan Ratanlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-502 Swaar Sangini Nr Capital green Vesu, Surat'),
(855, '', '2023-02-23', '2023-02-23', '7', 'Satayprakash Dwarkadas Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '57-58 Kabir Nikunj Soc.,Nr Ashirwad Palace Bhatar Rd, Surat'),
(854, '', '2023-02-23', '2023-02-23', '7', 'Satish Gordhanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '404 Shree Girdhar -Sweet house Opp Agersen Bhawan City Light, Surat'),
(853, '', '2023-02-23', '2023-02-23', '7', 'Satish Kirodimal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 2007 Regent Mkt, Ring road, Surat'),
(852, '', '2023-02-23', '2023-02-23', '7', 'Satish Sagarmal Tayal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '903, Solitaire appt, brijwasi Estate Parle Point, Surat'),
(851, '', '2023-02-23', '2023-02-23', '7', 'Satyaprakash Vishwanath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-617 Ashirwad Palace, Bhatar Rd, Surat'),
(850, '', '2023-02-23', '2023-02-23', '7', 'Saurabh Chunilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1105 Ashirwad Palace Bhatar, Surat'),
(849, '', '2023-02-23', '2023-02-23', '7', 'Shambhu Ramji Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '851, Millenium-2, Ring road, Surat'),
(848, '', '2023-02-23', '2023-02-23', '7', 'Shambhukumar Gourishankar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '703, Garden Place Parle Point, Surat'),
(847, '', '2023-02-23', '2023-02-23', '7', 'Shiv Bhagwan Rughlal Saraogi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-2554 Millenium Mkt Ring road, Surat'),
(846, '', '2023-02-23', '2023-02-23', '7', 'Shivcharan Ramprasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'K-822 Ashirwad Palace Bhatar Rd, Surat'),
(845, '', '2023-02-23', '2023-02-23', '7', 'Shivkumar Ramchadra Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1019 Kohinoor Mkt, Ring Road, Surat'),
(844, '', '2023-02-23', '2023-02-23', '7', 'Shivratan Haribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-b, Megh rath Apt, Tower-1, Opp Park Hpspital Bhatar Rd, Surat'),
(843, '', '2023-02-23', '2023-02-23', '7', 'Shivratan Shyamlal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-4, 902 Vastu luxria Nr VR Mall Dumas Rd, Surat'),
(842, '', '2023-02-23', '2023-02-23', '7', 'Shrikrishna Parmeshwarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-101 Shree Kuberji House, Delhi Gate, Surat'),
(841, '', '2023-02-23', '2023-02-23', '7', 'Shriram Nandkishor Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-802 Amrit kunj appt Nr Umabhawan Bhatar, Surat'),
(840, '', '2023-02-23', '2023-02-23', '7', 'Shriram Roodmal Agarawal (Bidavatka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-B, Brijvatika Nr. Taj Hotel Parle Point, Surat'),
(839, '', '2023-02-23', '2023-02-23', '7', 'Shyam Sunder Bhagwati Prasad Bubna', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-1001 Floorancce Appt VIP Rd, Surat'),
(838, '', '2023-02-23', '2023-02-23', '7', 'Shyamsundar Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1001 Om Raj Resi.,Nr Harmone Resi Vesu, Surat'),
(837, '', '2023-02-23', '2023-02-23', '7', 'Shyamsundar Durgadutt Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-4, Hariom Mkt Ring Road, Surat'),
(836, '', '2023-02-23', '2023-02-23', '7', 'Subhash Chandra Banwarilal Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-608 Sperring Valley Nr pushp Vatika New City light'),
(835, '', '2023-02-23', '2023-02-23', '7', 'Subhash Magraj Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-10 Platinum Apt Brijwashi Estate Parle Point, Surat'),
(834, '', '2023-02-23', '2023-02-23', '7', 'Sujit Parasram Agarwal (Dodrajka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-6, 1001 Capital Green Vesu, Surat'),
(833, '', '2023-02-23', '2023-02-23', '7', 'Sumit Sashikant Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '635-Ashirwad Palace Bhatar, Surat'),
(832, '', '2023-02-23', '2023-02-23', '7', 'Sunil Gyarsilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-301 Capital Life Vesu, Surat'),
(831, '', '2023-02-23', '2023-02-23', '7', 'Sunil Kailashchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-802, Om Darshan Appt. G D Goenka School Vesu, Surat'),
(830, '', '2023-02-23', '2023-02-23', '7', 'Sunil Lakhiprasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-607, Surya Palace,City Light, Surat'),
(829, '', '2023-02-23', '2023-02-23', '7', 'Surendra Radheshyam Nanglia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'T-536 Ashirwad Palace Bhatar, Surat'),
(828, '', '2023-02-23', '2023-02-23', '7', 'Suresh Chand Durga Psd Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-4, Viola Appt Nr Food Mall,Nr Velantine Cinema Piplod, Surat'),
(827, '', '2023-02-23', '2023-02-23', '7', 'Suresh Durgadutt Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '207, Shyam Chamber, Ring Road, Surat'),
(826, '', '2023-02-23', '2023-02-23', '7', 'Suresh Laxman Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601 Fortuna Appt, Nr. Ginger Hotel Piplod, Surat'),
(825, '', '2023-02-23', '2023-02-23', '7', 'Suresh Radheshyam Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-501 Parshwadeep Appt Nr Umabhawan Bhatar, Surat'),
(824, '', '2023-02-23', '2023-02-23', '7', 'Sureshkumar Laxminarayan Agrawal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501 Padma kruti Appt Nr SBI Bank City Light, Surat'),
(823, '', '2023-02-23', '2023-02-23', '7', 'Suryakant Radheshyam Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-614 Surya Prakash Resi.,Nr. Agarsen Bhawan City Light, Surat'),
(822, '', '2023-02-23', '2023-02-23', '7', 'Sushil Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-1, 502 Capital green Vesu, Surat'),
(821, '', '2023-02-23', '2023-02-23', '7', 'Sushil Radhakishan Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-3099, Millenium Mkt, Ring Road, Surat'),
(820, '', '2023-02-23', '2023-02-23', '7', 'Sushil Shankarlal Bagria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Sun Stuti Appt G D Goenka School Vesu, Surat'),
(819, '', '2023-02-23', '2023-02-23', '7', 'Tarun Harnathrai Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-C Ratan Mahal (Ravidham) Ghod dod Rd, Surat'),
(818, '', '2023-02-23', '2023-02-23', '7', 'Tarun Kumar Bhagwati Prasad Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-201 Monalisa Park B/h Agarsen Bhawan City Light, Surat'),
(817, '', '2023-02-23', '2023-02-23', '7', 'Tejash Brijkumar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '218 Jeevandeep, Ring road, Surat'),
(816, '', '2023-02-23', '2023-02-23', '7', 'Umadevi Hari Psd Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '42/A Chandermani Soc.,Nr. Dharti Namkin City Light, Surat'),
(815, '', '2023-02-23', '2023-02-23', '7', 'Vejoy Kedarnath Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-202 Shripal resi., Corner Point Shopping Center City Light, Surat'),
(814, '', '2023-02-23', '2023-02-23', '7', 'Vijay Mangturam Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1004, Surya Palace Ring Road Surat'),
(813, '', '2023-02-23', '2023-02-23', '7', 'Vijaykumar Radheshyam Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701 Sanshkruti Appt Nr. Sheetal Dhara Appt City Light, Surat'),
(812, '', '2023-02-23', '2023-02-23', '7', 'Vijaykumar Ramgopal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 403 Shyam Villa NR Shyam Mandir Althan, Surat'),
(811, '', '2023-02-23', '2023-02-23', '7', 'Vikash Radheshyam Garg (Kariwal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-403 Rajlaxmi Appt Nr Agarsen Bhawan City Light, Surat'),
(810, '', '2023-02-23', '2023-02-23', '7', 'Vikash Satish Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-A Ratankunj Ravidham Ghod dod Rd Surat'),
(809, '', '2023-02-23', '2023-02-23', '7', 'Vimal Bisheshwarlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-904 Shyam Rachna Nr. Shyam Mandir VIP Rd, Surat'),
(808, '', '2023-02-23', '2023-02-23', '7', 'Vinod Deepchand Agarwal (Dohkawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-335 Ashirwad Palace Bhatar, Surat'),
(807, '', '2023-02-23', '2023-02-23', '7', 'Vinod Jagdish Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-B, Tower-1 Megh Sarman, City Light Surat'),
(806, '', '2023-02-23', '2023-02-23', '7', 'Vinod Jagdish Psd Ji Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-25, Chandramani Soc., Nr. Gayatri Temple UM Rd, Surat'),
(805, '', '2023-02-23', '2023-02-23', '7', 'Vinodkumar Puranmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '650 Millenium-2, Ring Road, Surat'),
(804, '', '2023-02-23', '2023-02-23', '7', 'Vipin Narnarayan Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Solitaire Appt, Brijwasi Estate Umrighar School Parle Point, Surat'),
(803, '', '2023-02-23', '2023-02-23', '7', 'Virendra Jagdish Psd Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '105 Takshshila Nr Umabhawan Bhatar, Surat'),
(802, '', '2023-02-23', '2023-02-23', '7', 'Vishal Narayan Psd Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-402 Santaris - Nandanvan Vesu, Surat'),
(801, '', '2023-02-23', '2023-02-23', '7', 'Vishnu Sawarmal Agarwal (Singhal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-22 Ashirwad Resi., New City Light Surat'),
(800, '', '2023-02-23', '2023-02-23', '7', 'Vishwanath Gourishanker Pacheria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '23 Reshamnwala Mkt Ring Road, Surat'),
(799, '', '2023-02-23', '2023-02-23', '7', 'Wazirchand Palaram Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-703 Devraj resi.,New City Light Surat'),
(798, '', '2023-02-23', '2023-02-23', '7', 'Yogesh Satynarayan Temani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-12-C, Ratan jyoti Appt Nr. Sidhi Vinayak Mandir Vesu, Surat'),
(797, '', '2023-02-23', '2023-02-23', '7', 'Suresh kumar Pushkarlal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-1688-91 RKT, Ring road, Surat'),
(796, '', '2023-02-23', '2023-02-23', '7', 'VinodKumar lalchand Bubna', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702 Vasturam Nr Happy resi Vesu, Surat'),
(795, '', '2023-02-23', '2023-02-23', '7', 'Subhash Banrasilal Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '41, Ichhanath Soc., Udhna Bas Stande, Surat'),
(794, '', '2023-02-23', '2023-02-23', '7', 'Santosh Ramkishan Makharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3207 Kohinoor Mkt'),
(793, '', '2023-02-23', '2023-02-23', '7', 'Kantadevi Ram Sahay bhageria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3, 903 Swastik Resi., Vesu, Surat'),
(792, '', '2023-02-23', '2023-02-23', '7', 'Lalit Dipchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-14 Amar Kunj Soc, Nr Rangila Park Ghod dod Rd, Surat'),
(791, '', '2023-02-23', '2023-02-23', '7', 'Vijay Kr. Mahavir Psd Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-113, Green Avenue, Ghod dod Road, Surat'),
(790, '', '2023-02-23', '2023-02-23', '7', 'Madanlal Kishanlal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-806, The Laurals Opp Capital green, Vesu, Surat'),
(789, '', '2023-02-23', '2023-02-23', '7', 'Avinash Shyamsunder Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-102, SNS Interio, CNG Pettrol Pump, Bhatar, Surat'),
(788, '', '2023-02-23', '2023-02-23', '7', 'Pawan Sunderlal Kaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-306, Surya Darshan, City Light, Surat'),
(787, '', '2023-02-23', '2023-02-23', '7', 'Umesh Shambhudayal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-906 Shyam Plaace Nr Shrungar Resi VIP td, Vesu, Surat'),
(786, '', '2023-02-23', '2023-02-23', '7', 'Vimal Chhitarmal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '257, Millenium-2 Ring Road, Surat'),
(785, '', '2023-02-23', '2023-02-23', '7', 'Nitesh Raghuvir Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '66-67, Suruchi Soc.,Nr. Jamna Nagar,Ghoddod Rd, Surat'),
(784, '', '2023-02-23', '2023-02-23', '7', 'Subhashchand Phoolchand Agarwal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-612 Surya Palace City Light, Surat'),
(783, '', '2023-02-23', '2023-02-23', '7', 'Surendra kumar Sohanlal Agarwal (Chirania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-409 Surya Palace City Light, Surat'),
(782, '', '2023-02-23', '2023-02-23', '7', 'Manish Kumar RamniranjanTulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-6 Someshawr Enclave Vesu , Surat'),
(781, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Kanhayanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Y-1 to 6, Laxminarayan Indus. Udhna Road, Surat'),
(780, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramnath Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '702 Paritosh Appt Nr Ashok Pan House City Light, Surat'),
(779, '', '2023-02-23', '2023-02-23', '7', 'Pankaj Prabhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-A, Ratan Jyoti A-tower Nr Sidhivinayk Temple Vesu, Surat'),
(778, '', '2023-02-23', '2023-02-23', '7', 'Suresh Girdharilal Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-704 Monalisa appt City Light, Surat'),
(777, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Radheshyam Tulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '30 Sangam Soc,Parle Point, Surat'),
(776, '', '2023-02-23', '2023-02-23', '7', 'Bhoopendra Rajendra Psd Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-410 Dreem Heritage Canal Rd Vesu, Surat'),
(775, '', '2023-02-23', '2023-02-23', '7', 'Bajranglal Narsilal Agrawal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3/A Ratna Astha Appt b/h SD Jain School Vesu, Surat'),
(774, '', '2023-02-23', '2023-02-23', '14', 'Ramprakash Singeshwar Ji Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-A Poddar Avenue t-C , Ghod Road, Surat'),
(773, '', '2023-02-23', '2023-02-23', '14', 'Kailashchand Sitaram Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301-Prayag Flates, B/h Sargam Shopping Center, Surat'),
(772, '', '2023-02-23', '2023-02-23', '14', 'Sushil kumar Sanwarmal Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-803 Ofira , Nr DGVCL, VIP Rd, Surat'),
(771, '', '2023-02-23', '2023-02-23', '14', 'Piyoosh Murarilal Sureka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-A, Mount Blane Appt, Nr Rajhans, piplod, Surat'),
(770, '', '2023-02-23', '2023-02-23', '14', 'Himanshu Umesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '538, Ashoka Tower, Ring Road, Surat'),
(769, '', '2023-02-23', '2023-02-23', '14', 'Swetanshu Umesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '538, Ashoka Tower, Ring Road, Surat'),
(768, '', '2023-02-23', '2023-02-23', '14', 'Govind Psd Sanwarmal Agarwal (Gupta)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-411 Surya Prakash Resi., City Light, Surat'),
(767, '', '2023-02-23', '2023-02-23', '14', 'Shivkumar Garg ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '36, Chintan Park Soc. , Bhatar Road, Surat'),
(766, '', '2023-02-23', '2023-02-23', '14', 'Ashish Anand Sarawagi ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'UG-33, VIP Plaza, VIP Road, Surat'),
(765, '', '2023-02-23', '2023-02-23', '14', 'Manju Mahesh Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801-Shri Hari Appt, piplod, Surat'),
(764, '', '2023-02-23', '2023-02-23', '14', 'Pranesh kumar Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-808 Shyam Palace, Nr Sringar Resi, Vesu, Surat, Mob:9427162490'),
(763, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Ramniwas Dani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-102 Rajhans Zion, Opp GD Goenka School, Vesu, Surat'),
(762, '', '2023-02-23', '2023-02-23', '14', 'Subhashchandra Gokulchand Gupta ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-1693-94 Millenium mkt, Ring Road, Surat'),
(761, '', '2023-02-23', '2023-02-23', '14', 'Vijay Agarwal (Kherari)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '131, Reshamwala Mkt, Ring Road, Surat'),
(760, '', '2023-02-23', '2023-02-23', '14', 'Pankaj  Prabhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Tr'),
(759, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Kedarmal Sudarania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-501 Om Darshan, Nr GD Goenka School Vesu, Surat'),
(758, '', '2023-02-23', '2023-02-23', '14', 'Mitesh Ved Prakash Goel', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-801, Swaar Sangini, VIP Road, Surat'),
(757, '', '2023-02-23', '2023-02-23', '14', 'Atul Santkumar Parasrampuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-204 Surya Enclave, City Light, Surat'),
(756, '', '2023-02-23', '2023-02-23', '14', 'Vikrant Sanwarmal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, A-5 Nandanvan-2, VIP Road, Surat'),
(755, '', '2023-02-23', '2023-02-23', '14', 'Mamta Umesh Kr Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Maarquies heights, Vesu, Surat'),
(754, '', '2023-02-23', '2023-02-23', '14', 'Suruchi Swetanshu Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Maarquies heights, Vesu, Surat'),
(753, '', '2023-02-23', '2023-02-23', '14', 'Priyanshi Himanshu  Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Maarquies heights, Vesu, Surat'),
(752, '', '2023-02-23', '2023-02-23', '14', 'Naman Sushil Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1104 Nandavan Appt, Vesu, Surat'),
(751, '', '2023-02-23', '2023-02-23', '14', 'Shiv Kumar Ashok Pansari ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-701 Royal Resi., Nr Pani Ki Tanki, Vesu, Surat'),
(750, '', '2023-02-23', '2023-02-23', '14', 'Chandraprakash Bajranglal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1/402 Capital Green, Vesu, Surat'),
(749, '', '2023-02-23', '2023-02-23', '14', 'Pankaj kumar Nandlal Gadia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302 Pritosh Appt, City Light, Surat'),
(748, '', '2023-02-23', '2023-02-23', '14', 'Sunil Dwarka Prasad Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-A The Palm Avenue, E-tower, Vip Road, Surat'),
(747, '', '2023-02-23', '2023-02-23', '14', 'Ravi Raghav Narendra Chhawchharia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-302 Dream Heritage, Vesu, Surat'),
(746, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Natwarlal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501 Solitair Appt (Brijwasi Estate), Parle Point, Surat'),
(745, '', '2023-02-23', '2023-02-23', '14', 'Vikash Natwarlal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501 Solitair Appt (Brijwasi Estate), Parle Point, Surat'),
(744, '', '2023-02-23', '2023-02-23', '14', 'Barma Haricharanlal Garg ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Sakar Appt, Opp BOB, City light, Surat'),
(743, '', '2023-02-23', '2023-02-23', '14', 'Saurav Krishna Dalmia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10/b, B- Tower, Palm Avenue, VIP road, Surat'),
(742, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Mahesh Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 Shri Hari Appt, Piplod, Surat'),
(741, '', '2023-02-23', '2023-02-23', '14', 'Prerna Abhishek Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 Shri Hari Appt, Piplod, Surat'),
(740, '', '2023-02-23', '2023-02-23', '14', 'Harsh Hargovind Mittal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-203 Parshwadeep Appt, Bhatar Road, Surat'),
(739, '', '2023-02-23', '2023-02-23', '14', 'Narendra Mohanlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-402 Parshwadeep Appt, Bhatar Road, Surat'),
(738, '', '2023-02-23', '2023-02-23', '14', 'Mamta Ashok Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-205 Maruti Complex, Parvat Patia, Surat'),
(737, '', '2023-02-23', '2023-02-23', '14', 'Vinod Mahaveer Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-902 Green Vectory, Althan, Surat'),
(736, '', '2023-02-23', '2023-02-23', '14', 'Murarilal Hariprasad Sureka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6A/b Mount Blane Appt, Piplod, Surat'),
(735, '', '2023-02-23', '2023-02-23', '14', 'Suman Piyoosh Sureka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6A/b Mount Blane Appt, Piplod, Surat'),
(734, '', '2023-02-23', '2023-02-23', '14', 'Ajay kumar Birolia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(733, '', '2023-02-23', '2023-02-23', '14', 'Sushil Jagdish Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-404 Nest House, New City Light, Surat'),
(732, '', '2023-02-23', '2023-02-23', '14', 'Ravindra Shyamsundra Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-C Arnav Appt, B/h SBI, City Light, Surat'),
(731, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Bimalkumar Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-611 Surya Darshan Appt, City light, Surat'),
(730, '', '2023-02-23', '2023-02-23', '14', 'Shashank Sushilkumar Murarka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6A Pradakrshina Appt, Parle point, Surat'),
(729, '', '2023-02-23', '2023-02-23', '14', 'Sushil Purshottamlal Murarka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6A Pradakrshina Appt, Parle point, Surat'),
(728, '', '2023-02-23', '2023-02-23', '14', 'Vijay Dwarkadas Singhal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '702, G-5, Happy Glouries, Vesu, Surat'),
(727, '', '2023-02-23', '2023-02-23', '14', 'Sanjeev Mangturam Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2/604 Salasar Palace, Vesu, Surat'),
(726, '', '2023-02-23', '2023-02-23', '14', 'Sushil Ramkumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7/A, Arnav Appt, C-Tower, B/h SBI< City Light, Surat'),
(725, '', '2023-02-23', '2023-02-23', '14', 'Prajjwal Praful Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '103 Punyabhoomi Appt, VIP Road-2, Surat'),
(724, '', '2023-02-23', '2023-02-23', '14', 'Parth Praful Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '203 Punyabhoomi Appt, VIP Road-2, Surat'),
(723, '', '2023-02-23', '2023-02-23', '14', 'Deepak Vishwanath Nemani (CA) ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-502 Astha Appt Nr. Pooja Abhishek, Vesu, Surat'),
(722, '', '2023-02-23', '2023-02-23', '14', 'Vedraj Ratanlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-609 Dream Heritage, Vesu, Surat'),
(721, '', '2023-02-23', '2023-02-23', '14', 'Vijay Ramsingh Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201 Surya Prakash Resi., City light, Surat'),
(720, '', '2023-02-23', '2023-02-23', '14', 'Nitesh Omprakash Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604 Megh Dhanush, Sarelawadi, Ghod dod road, Surat'),
(719, '', '2023-02-23', '2023-02-23', '14', 'Sumeet Vijay Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6/A, Raj Siddhi Appt , Tower-A, Vesu, Surat'),
(718, '', '2023-02-23', '2023-02-23', '14', 'Amit Vijay Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6/A, Raj Siddhi Appt , Tower-A, Vesu, Surat'),
(717, '', '2023-02-23', '2023-02-23', '14', 'Ankit Omprakash Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '503 Om Palace, Nr Valentine, Dumas Road, Surat'),
(716, '', '2023-02-23', '2023-02-23', '14', 'Jay Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '303 Om Palace, Nr Valentine, Dumas Road, Surat'),
(715, '', '2023-02-23', '2023-02-23', '14', 'Ramesh Piyarelal Singla ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-702 Sunrise resi, Vesu, Surat'),
(714, '', '2023-02-23', '2023-02-23', '14', 'Arbind Basudev Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-604 Sunrise resi, Vesu, Surat'),
(713, '', '2023-02-23', '2023-02-23', '14', 'Shriram Sohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-202 Agam Enclave, Vesu, Surat'),
(712, '', '2023-02-23', '2023-02-23', '14', 'Dineshkumar Gopichand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-7 Ratan milan Appt, Ghod dod road, Surat'),
(711, '', '2023-02-23', '2023-02-23', '14', 'Anurag Raghunath Prasad Kanodia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-307 Shyam palace, Nr. Shrungar Resi., Vesu, Surat'),
(710, '', '2023-02-23', '2023-02-23', '14', 'Anoopkumar Raghunath Prasad Kanodia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-508 Shyam PalaceNr Shrungar Resi, Vesu ,Surat'),
(709, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Ramkumar Kanodia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-602 Sripal Resi. Nr Corner Point, City Light, Surat'),
(708, '', '2023-02-23', '2023-02-23', '14', 'Om Prakash Kishanlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-807 Sentosa Heights, Althan, Surat'),
(707, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Kishanlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-807 Sentosa Heights, Althan, Surat'),
(706, '', '2023-02-23', '2023-02-23', '14', 'Mayank Shambhudayal Agrawal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-802, ECO Garden,  Canal Troad, Vesu, Surat'),
(705, '', '2023-02-23', '2023-02-23', '14', 'Anjan Neeraj Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-212 Sripal Resi. Nr Corner Point, City Light, Surat'),
(704, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Deviprasad Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302 Monil Park Soc., New City Light, Surat'),
(703, '', '2023-02-23', '2023-02-23', '14', 'Guru Pratap Lalit Kumar Bagla', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10 Dev Bandhu Co-op Hsg Soc., Bhatar Road, Surat, Mob:8000500002'),
(702, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sundra Chiranjilal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702 Ashirwad Avenue, Nr Shyam Mandir, Althan, Surat'),
(701, '', '2023-02-23', '2023-02-23', '14', 'Mukeshkumar Chiranjilal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-802 Ashirwad Avenue, Nr Shyam Mandir, Althan, Surat'),
(700, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Mithalal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-133 Star Galaxy, b/h Shrungar Resi, VIP road, Surat'),
(699, '', '2023-02-23', '2023-02-23', '14', 'Jiwan Ram Shivbaxrai Singhal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3B, Rajdeep Appt Opp Money Arcade, VIP Road, Vesu, Surat'),
(698, '', '2023-02-23', '2023-02-23', '14', 'Kapish Jiwanram Singhal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3B, Rajdeep Appt Opp Money Arcade, VIP Road, Vesu, Surat'),
(697, '', '2023-02-23', '2023-02-23', '14', 'Ayush Shekhar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201 Arya, Punnya Bhoomi Appt, VIP Road-2, Surat'),
(696, '', '2023-02-23', '2023-02-23', '14', 'Ansh Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '202 Arya, Punnya Bhoomi Appt, VIP Road-2, Surat'),
(695, '', '2023-02-23', '2023-02-23', '14', 'Sureshkumar Gulzarilal Agarwal (Adanpuria)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1002, Surya Complex, City light, Surat'),
(694, '', '2023-02-23', '2023-02-23', '14', 'Shyam Babulal Khetan ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-202, Amrut kunj Opp Uma bhawan, Bhatar, Surat'),
(693, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Chhabildass Jain ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-307 Surya Palace, City Light, Surat'),
(692, '', '2023-02-23', '2023-02-23', '14', 'Kanhaiyalal Balkishan Kokra ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '29 Swami Nagar Soc., Nr. Vijay Sales, Piplod, Surat'),
(691, '', '2023-02-23', '2023-02-23', '14', 'Khushbu Manish Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-508, Offera Appt, Nr. Shyam Mandir, Althan, Surat'),
(690, '', '2023-02-23', '2023-02-23', '14', 'Nitin Ramsanehi Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1101, Rudram Avenue, Nr. LP Savani, Vesu, Surat'),
(689, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Rajkumar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-512, Surya Green View, Nr LP Savani, Vesu, Surat'),
(688, '', '2023-02-23', '2023-02-23', '14', 'Piyosh Santoshkumar Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-201 Rajhans Cosmic, Canal Road, Vesu, Surat.'),
(687, '', '2023-02-23', '2023-02-23', '14', 'Ankit Vinod jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-504 Royal Pardise, Canal Road, Vesu, Surat'),
(686, '', '2023-02-23', '2023-02-23', '14', 'Atul Sudhir Khaitan  ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-C, Arnav Appt, C-Tower, B/h SBI, City Light, Surat'),
(685, '', '2023-02-23', '2023-02-23', '14', 'Varun Shyam Agrawal. ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-A, Ratan Millan Appt, Ghod dod road, Surat'),
(684, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Kailashchand Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11-C, Ratan Jyoti Appt, A-Tower, VIP Road, Surat'),
(683, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sunder Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301, Green Victory, Nr. Petrol Pump, Althan, Surat'),
(682, '', '2023-02-23', '2023-02-23', '14', 'Mahabir Parasd Jamalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '');
INSERT INTO `member_master` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(681, '', '2023-02-23', '2023-02-23', '14', 'Deepak Kailash Chandra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-704, Green Victary, Nr. Petrol Pump, Althan, Surat'),
(680, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-404, Shoration Luxuria, VIP road, Surat'),
(679, '', '2023-02-23', '2023-02-23', '14', 'Kailash Keshardeo Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '304, Murlidhar Appt, Sweet house Complex, City Light, Surat'),
(678, '', '2023-02-23', '2023-02-23', '14', 'Gauri shankar ji Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-704, Shyam Rachna, VIP Road, Surat'),
(677, '', '2023-02-23', '2023-02-23', '14', 'Mahaveer Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-803 Shaligram Hieghts, Canal road, Althan, Surat'),
(676, '', '2023-02-23', '2023-02-23', '14', 'Kamal Sohanlal Ji Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-401, Pooja Abhishek Appt, Nr. J.h Ambani Schoo, Vesu, Surat'),
(675, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra Hanuman Saharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-204, Prashwadeep Appt, B/h Arjun Complex, Bhatar, Surat'),
(674, '', '2023-02-23', '2023-02-23', '14', 'Sushil Banwarilal Bansal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-701, Avadh Corolina, B/h DPS School, Dumas, Surat'),
(673, '', '2023-02-23', '2023-02-23', '14', 'Bhuvneshwar Bhagwati Psd Choudhary ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1/801 Celebrity Green, Nr. Blossam, Vesu, Surat'),
(672, '', '2023-02-23', '2023-02-23', '14', 'Prakash Ramchandra Gadodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '25/203 Priyanka Intercity,Punnakumaria Road, Surat'),
(671, '', '2023-02-23', '2023-02-23', '14', 'Shyamsunder Vinodkumar Tola ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-701 Punnyabhoomi Appt, VIP Road-2, Surat'),
(670, '', '2023-02-23', '2023-02-23', '14', 'Lokesh Sitaram Gupta ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-18/12, Model Town, Parvat Patia, Surat'),
(669, '', '2023-02-23', '2023-02-23', '14', 'Sangeeta Murarilal Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-503 Offera Appt, VIP road, Surat'),
(668, '', '2023-02-23', '2023-02-23', '14', 'Amit Sunilkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1102 Milano Heights, Piplod, Surat'),
(667, '', '2023-02-23', '2023-02-23', '14', 'Manoj Bishnukumar Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-206 Rajhans Zion, Canal road, Vesu, Surat'),
(666, '', '2023-02-23', '2023-02-23', '14', 'Rahul Raj kumar Agarwal (Dhanawat)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '409 Metro Tower, ring Road, Surat'),
(665, '', '2023-02-23', '2023-02-23', '14', 'Sumit Bhanwarlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-402 Devbhumi Apt Nr,. Bhagwan Mahavir collage, VIP Road, Surat'),
(664, '', '2023-02-23', '2023-02-23', '14', 'Sabita Kumari Laxmikant Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-802 Surya Green View, Canal Road, Vesu, Surat'),
(663, '', '2023-02-23', '2023-02-23', '14', 'Yogesh Ramavtar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '803, Nutan Niwas, Rupali nahar, Bhatar, Surat'),
(662, '', '2023-02-23', '2023-02-23', '14', 'Jugalkishore Matadin Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-125 Star Galaxy, VIP Road, Vesu, Surat'),
(661, '', '2023-02-23', '2023-02-23', '14', 'Arvind Tulsi Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-107 Shyam Rachna, VIP Road, Surat'),
(660, '', '2023-02-23', '2023-02-23', '14', 'Aushutosh Pawan Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-111, Vastugram Appt, Vesu, Surat'),
(659, '', '2023-02-23', '2023-02-23', '14', 'Sitaram Pushkarlal Bansal (Sitesh)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-640, Star Galaxy, VIP road, Vesu, Surat'),
(658, '', '2023-02-23', '2023-02-23', '14', 'Ajay Ashok Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-101, Sunrise Resi, Nr Someshwara, Vesu, Surat'),
(657, '', '2023-02-23', '2023-02-23', '14', 'Subhashchand Phoolchand Agarwal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Tr'),
(656, '', '2023-02-23', '2023-02-23', '14', 'Surendra kumar Sohanlal Agarwal (Chirania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Tr'),
(655, '', '2023-02-23', '2023-02-23', '14', 'Banti Kumar Devidatt Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1132, Ambiaji Mkt, Ring Road, Surat'),
(654, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Devidutt Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1143, Ambiaji Mkt, Ring Road, Surat'),
(653, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Devidutt Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1143, Ambiaji Mkt, Ring Road, Surat'),
(652, '', '2023-02-23', '2023-02-23', '14', 'Ramawatar Ghisalal Mour', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-309 VAstugram Appt, Nr. Happy Resi., Vesu, Surat'),
(651, '', '2023-02-23', '2023-02-23', '14', 'Akash Vimal Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-710, Ashirwad Palace, Bhatar Road, Surat'),
(650, '', '2023-02-23', '2023-02-23', '14', 'Rakeshkumar Piramal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-A Brijwatika Appt , Parle Point, Surat'),
(649, '', '2023-02-23', '2023-02-23', '14', 'Hansraj Jagdish Prasad Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-415, Surya Prakash Resi., City Light, Surat'),
(648, '', '2023-02-23', '2023-02-23', '14', 'Hari Prasad Ramavtar Singrodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-5, 301 Capital Greens,  Canal Road, Vesu, Surat'),
(647, '', '2023-02-23', '2023-02-23', '14', 'Manojkumar Ramavatar Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A/1, 1001 Samarth Enclave, VIP Road, Surat'),
(646, '', '2023-02-23', '2023-02-23', '14', 'Gokulchand Ramprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-302, DevKrupa Appt, City light, Surat'),
(645, '', '2023-02-23', '2023-02-23', '14', 'Brijesh Ramprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-301, Nandanvan-1, Opp Hills Height School, Vesu'),
(644, '', '2023-02-23', '2023-02-23', '14', 'Sushil Mahindra Kumar Singal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-806, Royal Paradise, Canal Road, Vesu, Surat'),
(643, '', '2023-02-23', '2023-02-23', '14', 'Sitaram Shiv Bax Rai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701, Sajni Complex, City light, Surat'),
(642, '', '2023-02-23', '2023-02-23', '14', 'Naveen Kumar Sitaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701, Sajni Complex, City light, Surat'),
(641, '', '2023-02-23', '2023-02-23', '14', 'Rameshkumar Gourishankar Poddar ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-3/802 Vastu Luxuria, Nr. VR Mall, Dumas Road, Surat'),
(640, '', '2023-02-23', '2023-02-23', '14', 'Manish Sushilkumar  Palriwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-504, Surya Residancy, Vesu Surat'),
(639, '', '2023-02-23', '2023-02-23', '14', 'Prateek Sushilkumar Palriwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-407, Surya Residacney, Vesu Surat'),
(638, '', '2023-02-23', '2023-02-23', '14', 'Murarilal Laduram Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1010 Green Avenue appt, Ghod dod road, Surat'),
(637, '', '2023-02-23', '2023-02-23', '14', 'Bharatkumar Mithalal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'House No-155, Ramji Mandir, Faliya, Songadh'),
(636, '', '2023-02-23', '2023-02-23', '14', 'Nirmalkumar Rajendra Psd', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1102, Hi-tech Resi., Vesu, Surat'),
(635, '', '2023-02-23', '2023-02-23', '14', 'Vimalkumar Rajendra Prasad Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-706 Punnybhoomi, VIP Road-2, Surat'),
(634, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Mohanlal Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-D, Arnav appt, T-C,  City light, Surat'),
(633, '', '2023-02-23', '2023-02-23', '14', 'Kunal Sanjay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-906, Shyam Rachna , VIP Road, Surat'),
(632, '', '2023-02-23', '2023-02-23', '14', 'Dipesh Chaganlal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-806 Empire Resi. Opp Nandini-3, Vesu, Surat'),
(631, '', '2023-02-23', '2023-02-23', '14', 'Vineet Bhawani Shankar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' 5-C Raj Sailee Appt, Umra, Surat'),
(630, '', '2023-02-23', '2023-02-23', '14', 'Nishant Bhawani Shankar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' 5-C Raj Sailee Appt, Umra, Surat'),
(629, '', '2023-02-23', '2023-02-23', '14', 'Bimal Kumar Anandlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-B, Arnav Appt, T-C, City light, Surat'),
(628, '', '2023-02-23', '2023-02-23', '14', 'Aakash Ashok Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5-C, Sangam Appt, Parle Point, Surat'),
(627, '', '2023-02-23', '2023-02-23', '14', 'Arjun Satyanarayan Goyal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201, Shiv Mangal Apt , Parle Point, Surat'),
(626, '', '2023-02-23', '2023-02-23', '14', 'Shagun Ramavtar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-904 Keshav Narayan Resi. Bhatar Road, Surat'),
(625, '', '2023-02-23', '2023-02-23', '14', 'Nishant Ramgopal Goyal (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301 Swarnavilla-1, VIP Road, Surat'),
(624, '', '2023-02-23', '2023-02-23', '14', 'Shankar Haribhaja Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-104, Sunrise Resi., Vesu, Surat'),
(623, '', '2023-02-23', '2023-02-23', '14', 'Sanket Mahendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-902, Shyam Rachna Appt, VIP Road, Surat'),
(622, '', '2023-02-23', '2023-02-23', '14', 'Ashish Shivkumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '36, Chintan Park Soc. , Bhatar Road, Surat'),
(621, '', '2023-02-23', '2023-02-23', '14', 'Anurag Khashi Prasad Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-813, Ratan Shyam Residency, Althan, Surat'),
(620, '', '2023-02-23', '2023-02-23', '14', 'Aditya Anilkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A1-604, Samarth Enclave, VIP Road, Surat'),
(619, '', '2023-02-23', '2023-02-23', '14', 'Ravi Krishnakumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B1-706,Shyam Villa Appt, VIP road, Surat'),
(618, '', '2023-02-23', '2023-02-23', '14', 'Rajnish Rajkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701 Royal Paradise Opp Rajmandir Plazza, Vesu, Surat'),
(617, '', '2023-02-23', '2023-02-23', '14', 'Aruna Anilkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-204, Nest View, Nr althan Mall, Althan, Surat'),
(616, '', '2023-02-23', '2023-02-23', '14', 'Bipin Pitambar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3-701 Vastu Luxuria, Nr VR Mall, Dumas Road, Surat'),
(615, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Dindayal Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201, Shila Building , Parvat Patia, Surat'),
(614, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Jagdish Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-204 Maa Khodiyar Appt, B/h CNG, Godadra, Surat'),
(613, '', '2023-02-23', '2023-02-23', '14', 'Ramniranjan Ramprasad Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2B, Ratnaraj , Canal Road, Vesu, Surat'),
(612, '', '2023-02-23', '2023-02-23', '14', 'Vishal Ramprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2B, Ratnaraj , Canal Road, Vesu, Surat'),
(611, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sunder Prahlad Sihotiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A/303 Shagun Villa, Althan, Surat'),
(610, '', '2023-02-23', '2023-02-23', '14', 'Punit Kishanlal Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-705, Empire Resi, Vesu, Surat'),
(609, '', '2023-02-23', '2023-02-23', '14', 'Sandip Sitaram Kejariwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-207, India Textile Market, Ring Road, Surat'),
(608, '', '2023-02-23', '2023-02-23', '14', 'Vijaykumar Shyamlal Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E4-401, Capital Green, Canal Road, Vesu, Surat'),
(607, '', '2023-02-23', '2023-02-23', '14', 'Sumitkumar Murarilal Fatesaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, Arnav Appt. Tower-C, City Light, Surat'),
(606, '', '2023-02-23', '2023-02-23', '14', 'Ansul Yogesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-537, JJ Mkt, Ring Road, Surat'),
(605, '', '2023-02-23', '2023-02-23', '14', 'Renu Virendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '105- Takshila Appt. Bhatar Road, Surat'),
(604, '', '2023-02-23', '2023-02-23', '14', 'Prateek Satishchand Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B1-804, Ornate House, Althan, Surat'),
(603, '', '2023-02-23', '2023-02-23', '14', 'Rahul Anandprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '30- Raghuvir Row House, City light, Surat'),
(602, '', '2023-02-23', '2023-02-23', '14', 'Manisha Pawan Agarwal (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Pallav Appt , City light, Surat'),
(601, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Shriniwas Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Q-308 Rajtilak Appt, City light, Surat'),
(600, '', '2023-02-23', '2023-02-23', '14', 'Apoorva Rameshkumar kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-B Shiromani Appt, Piplod, Surat'),
(599, '', '2023-02-23', '2023-02-23', '14', 'Chetan Vijaykumar Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11 Alkapuri Coop- Society , Sumul Dairy Road, Surat'),
(598, '', '2023-02-23', '2023-02-23', '14', 'Surendra Bharatmal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(597, '', '2023-02-23', '2023-02-23', '14', 'Pawankumar Hanuman Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-C Suncity Appt. Bhatar Road, Surat'),
(596, '', '2023-02-23', '2023-02-23', '14', 'Sahil Krishnagopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-804, Hitesh Residency, Vesu, Surat'),
(595, '', '2023-02-23', '2023-02-23', '14', 'Renu Niraj Nawka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1004, Jolly Residency, Vesu, Surat'),
(594, '', '2023-02-23', '2023-02-23', '14', 'Niraj Damodar Prasad Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1301 Ratna Ansh Appt, Vesu, Surat'),
(593, '', '2023-02-23', '2023-02-23', '14', 'Kapil Jiwanram Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-B Rajdeep Appt, Canal road, Vesu, Surat'),
(592, '', '2023-02-23', '2023-02-23', '14', 'Ashish Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-102, Shyam Rachna , VIP Road, Surat'),
(591, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Jagdish Prasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3A,Ratanjyoti Appt. , VIP Road, Surat'),
(590, '', '2023-02-23', '2023-02-23', '14', 'Pramodkumar Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-B, Brijratan Appt., Parle Point, Surat'),
(589, '', '2023-02-23', '2023-02-23', '14', 'Manisha Bharat Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-B, Ratna Astha Appt., Vesu, Surat'),
(588, '', '2023-02-23', '2023-02-23', '14', 'Nishank Mahesh Chandra Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101, Pratiksha Appt. Parle Point, Surat'),
(587, '', '2023-02-23', '2023-02-23', '14', 'Kushal Kanhaiyalal Jaisnsariya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1001, Nandanvan -3, Vesu, Surat'),
(586, '', '2023-02-23', '2023-02-23', '14', 'Sushma Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Nalanda Residency, Vesu, Surat'),
(585, '', '2023-02-23', '2023-02-23', '14', 'Sarita Anup Mohan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-303 Sainagar Complex, Bhatar Road, Surat'),
(584, '', '2023-02-23', '2023-02-23', '14', 'Sarvankumar Kailashchand Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1004, shyamrachna, VIP Road, Surat'),
(583, '', '2023-02-23', '2023-02-23', '14', 'Ratanlal Mohanlal Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-11A, Poddar Residency, Canal Road, Vesu, Surat'),
(582, '', '2023-02-23', '2023-02-23', '14', 'Sushilkumar Sadhuram Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Shyam Sangini Residency, Canal Road, Vesu, Surat'),
(581, '', '2023-02-23', '2023-02-23', '14', 'Aayush Amit Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-5/302, Capital Green, Canal Road, Vesu, Surat'),
(580, '', '2023-02-23', '2023-02-23', '14', 'Subhash Omprakash Jagnani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-901, Keshavnarayan Appt.Bhatar Road, Surat'),
(579, '', '2023-02-23', '2023-02-23', '14', 'Rohit Ramavtar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-201, Amrutkunj , Bhatar road, Surat'),
(578, '', '2023-02-23', '2023-02-23', '14', 'Durgesh Shankarlal Mor', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402, Shagun Villa Appt., Althan, Surat'),
(577, '', '2023-02-23', '2023-02-23', '14', 'Shailesh Ramesh Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402, Amrutkunj Appt., Bhatar road, Surat'),
(576, '', '2023-02-23', '2023-02-23', '14', 'Suman Anil Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/C Kassel Brown , UM road, Vesu, Surat'),
(575, '', '2023-02-23', '2023-02-23', '14', 'Ankit Ramgopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-802, Blossom , Vesu, Surat'),
(574, '', '2023-02-23', '2023-02-23', '14', 'Rameshkumar Dungarmal Lohia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-1102, Florence , VIP Road, Surat'),
(573, '', '2023-02-23', '2023-02-23', '14', 'Ashok Omprakash Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4-B Tower-2, Megh Sarvan Appt, City Light, Surat'),
(572, '', '2023-02-23', '2023-02-23', '14', 'Kamlesh Narayanswaroop Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/103, Swastik Residency, Vesu, Surat'),
(571, '', '2023-02-23', '2023-02-23', '14', 'Anjani kumar Mahaveer Gupta (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E3/602, Capital Green , Vesu, Surat'),
(570, '', '2023-02-23', '2023-02-23', '14', 'Ishan Sanjaykumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-2/802, Vastu Luxuria, Dumas Road, Surat'),
(569, '', '2023-02-23', '2023-02-23', '14', 'Anup Bijendrakumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-2/801, Vastu Luxuria, Dumas Road, Surat'),
(568, '', '2023-02-23', '2023-02-23', '14', 'Nirmal Basudeo Bhauwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-2/ 401, Celebrity Green ,Vesu, Surat'),
(567, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Gaurishankar Killa', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3/609, Shyam villa Appt.Vip Road, Surat'),
(566, '', '2023-02-23', '2023-02-23', '14', 'Rishukumar Vijay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(565, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Sanjay Sudrania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-501 Om Darshan Nr GD Goenka, Vesu, Surat'),
(564, '', '2023-02-23', '2023-02-23', '14', 'Avinav Vinay Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-A, Sagar Appt, Parle Point, Surat'),
(563, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Sohanlal Tambhakuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-404, Surya Lifestyle, Vesu, Surat'),
(562, '', '2023-02-23', '2023-02-23', '14', 'Ravindrakumar Madanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-504, Shrungar Residency, Vesu, Surat'),
(561, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '502, Shri Hari Appt., Piplod, Surat'),
(560, '', '2023-02-23', '2023-02-23', '14', 'Hemant Shivratan Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A4/902 Vastu Luxuriya , Dumas Road, Surat'),
(559, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1003, Royal Residency, Vesu, Surat'),
(558, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-304, Royal Residency, Vesu, Surat'),
(557, '', '2023-02-23', '2023-02-23', '14', 'Pravinkumar Shubhakaran Jasansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '706, Madhulika Appt. Bhatar Road, Surat'),
(556, '', '2023-02-23', '2023-02-23', '14', 'Arvind Bharat Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-202, Crimson Palace, Althan, Surat'),
(555, '', '2023-02-23', '2023-02-23', '14', 'Amit Pramodshanker Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, Sidhivinayak Appt, Sarelawadi, Ghod dod Road, Surat'),
(554, '', '2023-02-23', '2023-02-23', '14', 'Dinesh Bhagwatiprasad Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1, Ratna Ansh Tower-A, Vesu, Surat'),
(553, '', '2023-02-23', '2023-02-23', '14', 'Basant Laduram Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '504- RD Highrise , Bhatar road, Surat'),
(552, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Bhagwatiprasad Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1, Ratna Ansh Tower-A, Vesu, Surat'),
(551, '', '2023-02-23', '2023-02-23', '14', 'Pwankumar Radhakishan Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-606, Green Avenue Complex, Ghod dod Road, Surat'),
(550, '', '2023-02-23', '2023-02-23', '14', 'Harshish Rajesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-401, Devraj Residency, New City light, Surat'),
(549, '', '2023-02-23', '2023-02-23', '14', 'Umang Arunkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101, Shri Hari Appt, Piplod, Surat'),
(548, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Baburam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201, A-Tower Pratham Appt., City light, Surat'),
(547, '', '2023-02-23', '2023-02-23', '14', 'Uttam Dindayal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702 Rambag Palace, Parvat Patia, Surat'),
(546, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Dindayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402, Ashirwad Avenu, Vip Road, Surat'),
(545, '', '2023-02-23', '2023-02-23', '14', 'Ankit Bajranglal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801, Devkrupa Appt. City light, Surat'),
(544, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Ashok Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1/601, Nandanvan -2, VIP road, Surat'),
(543, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11/A, Rajvaibhav Appt, Parle Point, Surat'),
(542, '', '2023-02-23', '2023-02-23', '14', 'Avinash Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11/A, Rajvaibhav Appt, Parle Point, Surat'),
(541, '', '2023-02-23', '2023-02-23', '14', 'Ramgopal Prabhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-401, Sonal Residency, Punagam, Surat'),
(540, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8005 Empire Estate, Ring Road, Surat'),
(539, '', '2023-02-23', '2023-02-23', '14', 'Indra Shrikumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-307, Surya Drashan Appt. City light Road, Surat'),
(538, '', '2023-02-23', '2023-02-23', '14', 'Krishna Pawan Jaisansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(537, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Sanwarmal Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-1456-57, RKTM, Ring Road, Surat'),
(536, '', '2023-02-23', '2023-02-23', '14', 'Balkishan Bajranglal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-C Pragya Appt. Nr Ravishanker Sankul, Bhatar, Surat'),
(535, '', '2023-02-23', '2023-02-23', '14', 'Ravindrakumar Bajranglal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-B Ratan Vilas Appt., Vesu, Surat'),
(534, '', '2023-02-23', '2023-02-23', '14', 'Raghav Sandeep Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-C Megh Sarman Appt No. 3, City Light, Surat'),
(533, '', '2023-02-23', '2023-02-23', '14', 'Siddhant Sharwan Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '26-A Chandramani Society, UM Road, Surat'),
(532, '', '2023-02-23', '2023-02-23', '14', 'Rekha Anil Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-806, Suryadarshan Appt, City light, Surat'),
(531, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Bachanaram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-803, Shyam Sangini , Canal Road, Surat'),
(530, '', '2023-02-23', '2023-02-23', '14', 'Seema Ramesh Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-905, Rajhans Zion, Canal road, Vesu, Surat'),
(529, '', '2023-02-23', '2023-02-23', '14', 'Neeta Vishnu Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801, Star Galaxy, B/h Shrungar Resi., Vesu, Surat'),
(528, '', '2023-02-23', '2023-02-23', '14', 'Mahendra K Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-403, Astha Appt., Nr Reliance Mall, Vesu, Surat'),
(527, '', '2023-02-23', '2023-02-23', '14', 'Manoj Sagarmal Shihotia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Royal Paradies, Canal Road, Vesu, Surat'),
(526, '', '2023-02-23', '2023-02-23', '14', 'Ronak Sunil Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-107, Shyam Palace, VIP Road, Surat'),
(525, '', '2023-02-23', '2023-02-23', '14', 'Ghanshyam Deepchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2/403, Salasar Palace-1, VIP Road,Surat'),
(524, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Hanumanmal Jaisansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '402- Madhulika Appt. , Bhatar Road, Surat'),
(523, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Ramprakash Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9A-C Tower, Poddar Avenue , Ghod dod Road, Surat'),
(522, '', '2023-02-23', '2023-02-23', '14', 'Shivam Ajit Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-507, Ashirwad Palace, Bhatar, Surat'),
(521, '', '2023-02-23', '2023-02-23', '14', 'Jaikishan Jagdish Goel', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' 204 punnyabhumi F-tower, VIP Road-2, Surat'),
(520, '', '2023-02-23', '2023-02-23', '14', 'Ranjeetkumar Rajkumar Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '45, Ashirwad Villa, New City Light, Surat'),
(519, '', '2023-02-23', '2023-02-23', '14', 'Vaibhav Uttamchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1, 301 Capital Green, Vesu, Surat'),
(518, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Uttamchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1, 301 Capital Green, Vesu, Surat'),
(517, '', '2023-02-23', '2023-02-23', '14', 'Saloni Sumit Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F- 901, Cellestial Dream, Canal Road, Vesu, Surat'),
(516, '', '2023-02-23', '2023-02-23', '14', 'Kailashchandra Sua lal Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-b, Tower-2 Meghrath appt, Bhatar road, Surat'),
(515, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '503, Brijkutir Appt. Brijwasi Estate, Parle Point, Surat'),
(514, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Hariprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-302, Dream Palace, VIP Road, Surat'),
(513, '', '2023-02-23', '2023-02-23', '14', 'Pramodkumar Chhogmal Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-B Rudra Raj Appt., Athwaline, Surat'),
(512, '', '2023-02-23', '2023-02-23', '14', 'Gayatry Devi Arunkumar Chanania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-308 Ashirwad Park, City Light, Surat'),
(511, '', '2023-02-23', '2023-02-23', '14', 'Sumit Gopalprasad Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-605, Sheraton Luxuria, VIP Road, Surat'),
(510, '', '2023-02-23', '2023-02-23', '14', 'Tanmay Shrawan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-C, Nidhivan Appt., Brijwashi Estate, Parle Point, Surat'),
(509, '', '2023-02-23', '2023-02-23', '14', 'Prince Rajesh Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-901, Amrutkunj Appt., Bhatar Road, Surat'),
(508, '', '2023-02-23', '2023-02-23', '14', 'Nirajkumar Rajendraprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-902, Sharanik Residency, Vesu, Surat'),
(507, '', '2023-02-23', '2023-02-23', '14', 'Rohit Gopalprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-404, Vastugram Resi., Vesu, Surat'),
(506, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Ratanlal Tulshyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-203, Ashirwad Enclave, Althan, Surat'),
(505, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Shankar Yaduka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-906, Shrenik Residency, Veshu, Surat'),
(504, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Narottamlal Agarwal (Chirania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1105, Sheraton Luxuria, Veshu, Surat'),
(503, '', '2023-02-23', '2023-02-23', '14', 'Vasudev Radheshyam Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-109 Green Avenue, Ghod dod Road, Surat'),
(502, '', '2023-02-23', '2023-02-23', '14', 'Ankit Kamal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1001, Amrut Kunj Residency, Bhatar Road, Surat'),
(501, '', '2023-02-23', '2023-02-23', '14', 'Jitesh Radheshyam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-801, Shubham Heights-2, Parvat Patia, Surat'),
(500, '', '2023-02-23', '2023-02-23', '14', 'Anand Prakash Rajkishan Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '405, Gokulya -B Building, Puniya Bhoomi, Appt., VIP Road-2, Vesu, Surat'),
(499, '', '2023-02-23', '2023-02-23', '14', 'Rajeshkumar Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-302 Raj Tilak Appt., City light, Surat'),
(498, '', '2023-02-23', '2023-02-23', '14', 'Anoop Ashok Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '405, Shyam Residency, Vesu, Surat'),
(497, '', '2023-02-23', '2023-02-23', '14', 'Mukeshkumar Narottam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1005, Seraton Luxuria, VIP Road, Surat'),
(496, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Shankarlal Agarwal (Patodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-303, Nest View, Althan, Surat'),
(495, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Pradeep Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-402, keshav Narayan , Bhatar, Surat'),
(494, '', '2023-02-23', '2023-02-23', '14', 'Binod Natharam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302, Shiv Mangal Appt., Parle Point, Surat'),
(493, '', '2023-02-23', '2023-02-23', '14', 'Sunil Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(492, '', '2023-02-23', '2023-02-23', '14', 'Krishnakant Dineshkumar Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6/A, Megh Sarman Appt., Tower -2, City Light, Surat'),
(491, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Radheshyam Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/403, Vasantvihar Township, New City Light, Surat'),
(490, '', '2023-02-23', '2023-02-23', '14', 'Rekha Sanjay Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/403, Vasantvihar Township, New City Light, Surat'),
(489, '', '2023-02-23', '2023-02-23', '14', 'Bhavesh Arunkumar Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Paritosh Appt., Parle Point, Surat'),
(488, '', '2023-02-23', '2023-02-23', '14', 'Surendrakumar Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-404, Sunrise Residency , Vesu, Surat'),
(487, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Parasram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-6, 701, Capital Green, Vesu, Surat'),
(486, '', '2023-02-23', '2023-02-23', '14', 'Aditya Mahendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '603, Malhar Complex, Icchanath, Dumas Road, Surat'),
(485, '', '2023-02-23', '2023-02-23', '14', 'Kamalkumar Shivkumar Bhakkar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '604, Suramya Appt-2, City light, Surat'),
(484, '', '2023-02-23', '2023-02-23', '14', 'Anil Udaychand Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-802, Florence, VIP Road, Vesu, Surat'),
(483, '', '2023-02-23', '2023-02-23', '14', 'Pramod Govindram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-6, 301 Vastu Luxuria, Dumas Road, Surat'),
(482, '', '2023-02-23', '2023-02-23', '14', 'Ashita Rakesh Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6 megh Rath Complex,  Tower-F, Bhatar Road, Surat'),
(481, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Basudeo Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6 megh Rath Complex,  Tower-F, Bhatar Road, Surat'),
(480, '', '2023-02-23', '2023-02-23', '14', 'Sumit Hanumanprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '902 Rushabh Appt, Ghod dod Road, Surat'),
(479, '', '2023-02-23', '2023-02-23', '14', 'Samir Hanumanprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '902 Rushabh Appt, Ghod dod Road, Surat'),
(478, '', '2023-02-23', '2023-02-23', '14', 'Hanumanprasad Santlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '902 Rushabh Appt, Ghod dod Road, Surat'),
(477, '', '2023-02-23', '2023-02-23', '14', 'Lalitkumar Banwarilal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701, Swastik Woods, Appt, Veus, Surat'),
(476, '', '2023-02-23', '2023-02-23', '14', 'Dolly Gautam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-808, Shyam Palace, Vesu, Surat'),
(475, '', '2023-02-23', '2023-02-23', '14', 'Pulkit Bulish Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604, Surya Lifestyle , Vesu, Surat'),
(474, '', '2023-02-23', '2023-02-23', '14', 'Vansh Mahavirprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '702, Umang Appt. , Bhatar Road, Surat'),
(473, '', '2023-02-23', '2023-02-23', '14', 'Anshul Mahendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1102, Surya Dashan , City light, Surat'),
(472, '', '2023-02-23', '2023-02-23', '14', 'Manish Satyanarayan Kheradi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1, 605, Shyam Villa , City light, Surat'),
(471, '', '2023-02-23', '2023-02-23', '14', 'Deepakkumar Murarilal Agrawal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604, Swarna Villa, Vesu,, Surat'),
(470, '', '2023-02-23', '2023-02-23', '14', 'Banwarilal Harsinghlal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10- B , 11 Deepak Society , Bhatar, Surat'),
(469, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Keshardeo Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '704, RD Highrise , Bhatar , Surat, Mob:9825126428'),
(468, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramgopal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '704, RD Highrise , Bhatar , Surat, Mob:9327330794'),
(467, '', '2023-02-23', '2023-02-23', '14', 'Premlata Babulal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D/811, Shyam Palace, VIP Road, Surat'),
(466, '', '2023-02-23', '2023-02-23', '14', 'Anita Haremurari Bhalotra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(465, '', '2023-02-23', '2023-02-23', '14', 'Harsh Kailash Sarawagi ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '603 Brij kutir appt, Brijwasi Estate, Parle Point, Surat'),
(464, '', '2023-02-23', '2023-02-23', '14', 'Vaibhav Arvind Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-C Ravi Chhaya Appt. Athwaline, Surat'),
(463, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Garibnath kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-802 Amrutkunj Appt, Bhatar, Surat'),
(462, '', '2023-02-23', '2023-02-23', '14', 'Surendra Omkarmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402,Shukan Residency , Vesu, Surat'),
(461, '', '2023-02-23', '2023-02-23', '14', 'Umang Biswanath Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-612, Dreem Heritage, VIP Road, Surat'),
(460, '', '2023-02-23', '2023-02-23', '14', 'Shreyansh Narayan Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '904, Sun Tower , Bhatar Road, Surat'),
(459, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Bhagirathmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Dreem House, Vesu, Surat'),
(458, '', '2023-02-23', '2023-02-23', '14', 'Nirmaladevi Sandeepkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-703, Sangini Resi., City Light, Surat'),
(457, '', '2023-02-23', '2023-02-23', '14', 'Sunil Kailash Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-227,. 2nd Floor Sirgaripuri wadi, Rustampura, Surat'),
(456, '', '2023-02-23', '2023-02-23', '14', 'Ramavatar Mohanlal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 401 Nandanvan-2, VIP Road, Vesu, Surat'),
(455, '', '2023-02-23', '2023-02-23', '14', 'Shruti Kishan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(454, '', '2023-02-23', '2023-02-23', '14', 'Dimple Babulal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1, 204 Nandanvan Resi., Vesu, Surat'),
(453, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Sajankumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-4, 303, Nandini Appt, Vesu, Surat'),
(452, '', '2023-02-23', '2023-02-23', '14', 'Amit Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-204 Nandanvan Appt., Vesu, Surat'),
(451, '', '2023-02-23', '2023-02-23', '14', 'Dinesh Motiram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '504 Pluto Rajhans Campus, Pal, Surat'),
(450, '', '2023-02-23', '2023-02-23', '14', 'Ganesh Madanlal Garodia (Ganeshkant)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1001 Nandanvan Appt, Vesu, Surat'),
(449, '', '2023-02-23', '2023-02-23', '14', 'Maheshchandra Motiram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-8, Sangeeta Park Soc.,  Rander Road, Surat'),
(448, '', '2023-02-23', '2023-02-23', '14', 'Harish Laxminarayan Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-503 Indralok Complex, Piplod, Surat'),
(447, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Surendrakumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-802, Shobhan Resi, Vesu, Surat'),
(446, '', '2023-02-23', '2023-02-23', '14', 'Anjana Lovesh Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-901 Shrungar resi., Vesu, Surat'),
(445, '', '2023-02-23', '2023-02-23', '14', 'Rinku Sunilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-607, Surya Palace, City Light, Surat'),
(444, '', '2023-02-23', '2023-02-23', '14', 'Mayank Alok Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-301 Sarela Tower, Ghod dod Road, Surat'),
(443, '', '2023-02-23', '2023-02-23', '14', 'Manthan Sudhir Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402 Sarela Tower, Ghod Dod Road, Surat'),
(442, '', '2023-02-23', '2023-02-23', '14', 'Aamar Sajjan Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(441, '', '2023-02-23', '2023-02-23', '14', 'Ramratan Suvalal Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-735 Ashirwad Palace, Bhatar Road, Surat'),
(440, '', '2023-02-23', '2023-02-23', '14', 'Niraj Shiv Bhagwan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(439, '', '2023-02-23', '2023-02-23', '14', 'Ankitkumar Balmukund saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-317, Ashirwad Palace, Bhatar Road, Surat'),
(438, '', '2023-02-23', '2023-02-23', '14', 'Jhabarmall Chunilall Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-68, Someshwara Enclave , Vesu, Surat'),
(437, '', '2023-02-23', '2023-02-23', '14', 'Narayan Ramavtar Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-201, Cellestial Dream , Vesu, Surat'),
(436, '', '2023-02-23', '2023-02-23', '14', 'Deepak Pawankumar Chanani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-204, Sukan residency, Vesu, Surat'),
(435, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kunjbihari Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-901 Shrungar Resi., Vesu, Surat'),
(434, '', '2023-02-23', '2023-02-23', '14', 'Umesh Jayantikumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604 Shyam Rachna, VIP Road, Surat'),
(433, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Chokarika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2/602 Celebrity Green, Veus, Surat'),
(432, '', '2023-02-23', '2023-02-23', '14', 'Amitkumar Jaikarnadas Palia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-608, Sheraton Luxuria, VIP Road, Surat'),
(431, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Sanwarmal Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1106, Sheraton Luxuria, VIP Road, Surat'),
(430, '', '2023-02-23', '2023-02-23', '14', 'Raunak Rampal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-201, Amrut kunj Appt, Bhatar Road, Surat'),
(429, '', '2023-02-23', '2023-02-23', '14', 'Saroj Prakashkumar Agarwal (Todi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-402 Ashirwad Palace, Bhatar Road, Surat'),
(428, '', '2023-02-23', '2023-02-23', '14', 'Sunil Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-610, Shyam Palace, VIP Road, Surat'),
(427, '', '2023-02-23', '2023-02-23', '14', 'Nikita Saurabha Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-507, Shyam Palace, VIP Road, Surat'),
(426, '', '2023-02-23', '2023-02-23', '14', 'Ajaykumar Parmeshwarlal Bidawatka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2A, Ratan Jyoti Appt, VIP Road, Surat'),
(425, '', '2023-02-23', '2023-02-23', '14', 'Kamal Kishore Jugalkishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-504, Saligram Heights, Althan, Surat'),
(424, '', '2023-02-23', '2023-02-23', '14', 'Deepak Pawankumar Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-402, Devkrupa Heihts Nr. Corner Point City Light, Surat'),
(423, '', '2023-02-23', '2023-02-23', '14', 'Maheshkumar Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-A, Arjav -3, Arjav Complex City Light, Surat'),
(422, '', '2023-02-23', '2023-02-23', '14', 'Sachin Virbhan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-306, Surya Palace City Light, Surat'),
(421, '', '2023-02-23', '2023-02-23', '14', 'Sunita Balwant Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P2/902 Capital green Canal Road VIP Rd, Vesu, Surat'),
(420, '', '2023-02-23', '2023-02-23', '14', 'Devendra Madanlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-404, Shyam Sangini Canal Road VIP Rd, Vesu, Surat'),
(419, '', '2023-02-23', '2023-02-23', '14', 'Subhash Ramchandra Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-902, Keshav Narayan Residency Nr. Vanita Park Soc. Bhatar, Surat'),
(418, '', '2023-02-23', '2023-02-23', '14', 'Ankit Rajesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3A, Rajsiddhi Appt. Op. White Lotus School Vesu, Surat'),
(417, '', '2023-02-23', '2023-02-23', '14', 'Radheshyam Ramchander Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-507, Poyal Paradise Opp. Rajmandir Palaza Vesu, Surat'),
(416, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Sunil Tulshyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-303, Harekrishna Appt. Nr. Uma Bhavan Bhatar, Surat'),
(415, '', '2023-02-23', '2023-02-23', '14', 'Maheshkumar Shivkumar Patodiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701, Surya Palace City Light, Surat'),
(414, '', '2023-02-23', '2023-02-23', '14', 'Manoj Ramkishan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-310, Sukan Residency Vesu, Surat'),
(413, '', '2023-02-23', '2023-02-23', '14', 'Vikash Ramgopal Dhaniwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-904, Aashirwaad Enclave Opp. Santosa Heights Althan, Surat'),
(412, '', '2023-02-23', '2023-02-23', '14', 'Rajeevkumar Shivkumar Hisaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '905-Formiya- Punya Bhoomi Vip Road-2, Surat'),
(411, '', '2023-02-23', '2023-02-23', '14', 'Palash Narayan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301/03, Siddhart Appt.Ghod Dod Road, Surat'),
(410, '', '2023-02-23', '2023-02-23', '14', 'Ramesh Murarilal Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-301,Royal Regencxy, opp: whitelotus school vesu, surat'),
(409, '', '2023-02-23', '2023-02-23', '14', 'Karan Ramawatar Jain (Sarawgi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-303, Shrungal Hill Nr. Pal Residency Althan, Surat'),
(408, '', '2023-02-23', '2023-02-23', '14', 'Babita Sushilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-1/502, Capital Green Canal Road Vesu, Surat'),
(407, '', '2023-02-23', '2023-02-23', '14', 'Bhavesh Pravinbhai Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7/D, Megha Tower-1 Nr. Ishwar Farm Ghod Dod Road, Surat'),
(406, '', '2023-02-23', '2023-02-23', '14', 'Kirtiman Kailashchandra Agrawal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-C Arnav Appt Tower-A City light, Surat'),
(405, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Suresh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-303 Shyam Srushti Nr Shyam Mandir VIP Road, Vesu'),
(404, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Kumar Parmanand Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-710, Shyam Palace Vip Road, Surat.'),
(403, '', '2023-02-23', '2023-02-23', '14', 'Alka Jitendra Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-812, Surya Palace Nr. Surya Complex City Light, Surat.'),
(402, '', '2023-02-23', '2023-02-23', '14', 'Narayan Atmaram Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-909, Shyam Palace Vip Road, Surat.'),
(401, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Kumar Jagmohan Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' B-23 Gokul row house Parle ponit, surat'),
(400, '', '2023-02-23', '2023-02-23', '14', 'Vikas Jagdish Kansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B1/301 Vastu Luxuria Nr. VR Mall Dumas Road, Surat.'),
(399, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Balkishan Malchandra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-404 Ashirwad Enclave Althan, Surat'),
(398, '', '2023-02-23', '2023-02-23', '14', 'Pankajkumar Vijaykumar Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3A, Sagar Appt. B/H. Sargam Shopping Center Parle Point, Surat'),
(397, '', '2023-02-23', '2023-02-23', '14', 'Sandeepkumar Ramchandra Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-705 Sheraton Luxuria Vip Road, Althan, Surat'),
(396, '', '2023-02-23', '2023-02-23', '14', 'Sureshkumar Chothmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '304. Pawanganga Palace Ganesh Nagar Society Parvat Patia, Surat'),
(395, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramratan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-401, surya Green View Canal Road Vesu, Surat. '),
(394, '', '2023-02-23', '2023-02-23', '14', 'Ajay Nandlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501-B/2, Aagam Nr. Star Galaxy Vesu, Surat. '),
(393, '', '2023-02-23', '2023-02-23', '14', 'Kirti Bharat Kasera', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-517, Green Avenue Ghod Dod Road, Surat'),
(392, '', '2023-02-23', '2023-02-23', '14', 'Chirag Manoj Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-603, Shyam Vatica Twonship Nr Model Town Parvat Patia, Surat'),
(391, '', '2023-02-23', '2023-02-23', '14', 'Murari Madanlal Agarwal (Biroliya)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A1/501, Nandanvan -2 VIP Road, Vesu, Surat'),
(390, '', '2023-02-23', '2023-02-23', '14', 'Virendra Jagdish Tadi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-104 Nandini-3 VIP Road, Vesu, Surat'),
(389, '', '2023-02-23', '2023-02-23', '14', 'Chandiprasad Kailash Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-204 Sunrise Residency Nr. Reliance Mall Vesu, Surat.'),
(388, '', '2023-02-23', '2023-02-23', '14', 'Vinod Madanlal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-510, Surya Prakash Residency City Light, Surat'),
(387, '', '2023-02-23', '2023-02-23', '14', 'Santosh Rajendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-102, Vama Apex Nr. Atlanta Shopping Mall Althan, Surat'),
(386, '', '2023-02-23', '2023-02-23', '14', 'Rajeevkumar Sureshchand Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5-B, Ratan Mahal Appt. Ravidham Complex Ghod Dod, Surat.'),
(385, '', '2023-02-23', '2023-02-23', '14', 'Ankit Ravishankar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Bunglow No. 2, Ashirwad Villa Society Nr. St. Thomas School City Light, Surat'),
(384, '', '2023-02-23', '2023-02-23', '14', 'Amit Kumar Tarachand Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(383, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-315, Ashirwad Park City Light, Surat'),
(382, '', '2023-02-23', '2023-02-23', '14', 'Rekha Shravankumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(381, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(380, '', '2023-02-23', '2023-02-23', '14', 'Neeta Anilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-315, Ashirwad Park City Light, Surat'),
(379, '', '2023-02-23', '2023-02-23', '14', 'Saroj Sanjaykumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(378, '', '2023-02-23', '2023-02-23', '14', 'Anju Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(377, '', '2023-02-23', '2023-02-23', '14', 'Shravankumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-315, Ashirwad Park City Light, Surat'),
(376, '', '2023-02-23', '2023-02-23', '14', 'Gyanprakash Ramkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(375, '', '2023-02-23', '2023-02-23', '14', 'Bharat Mammohan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(374, '', '2023-02-23', '2023-02-23', '14', 'Bhuvan Harish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '318, Ashirwad Palace Bhatar Road, Surat.'),
(373, '', '2023-02-23', '2023-02-23', '14', 'Vishal Pramod Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1005 Surya Complex,City Light, Surat'),
(372, '', '2023-02-23', '2023-02-23', '14', 'Ajaykumar Rambhagat Suhasaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '702-B Suramya Appt. Op. Terapanth Bhavan City Light, Surat.'),
(371, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Gangaram Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '');
INSERT INTO `member_master` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(370, '', '2023-02-23', '2023-02-23', '14', 'Rohit Atmaram Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-301, Swapnil Palace Nr. Agarwal School Vesu, Surat'),
(369, '', '2023-02-23', '2023-02-23', '14', 'Tushar Lalitkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(368, '', '2023-02-23', '2023-02-23', '14', 'Manoj Laxmipat Agarwal (Lohia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'UG -36-37, VIP Plaza Nr Shyam Mandir VIP Rd Althan'),
(367, '', '2023-02-23', '2023-02-23', '14', 'Harikrishna Malchand Agarwal (Changoiwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'UG -36-37, VIP Plaza Nr Shyam Mandir VIP Rd Althan'),
(366, '', '2023-02-23', '2023-02-23', '14', 'Pawan Banwarilal Chamaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-707, Sun Terrace Nr. Nandanvan Vesu, Surat'),
(365, '', '2023-02-23', '2023-02-23', '14', 'Shyamlal Ramswroop Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(364, '', '2023-02-23', '2023-02-23', '14', 'Mansi kush khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-B Meghrath Appt-No-3 Bhatar Road, Surat'),
(363, '', '2023-02-23', '2023-02-23', '14', 'Yogesh omPrakash Jakholia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(362, '', '2023-02-23', '2023-02-23', '14', 'Arunkumar Vishwanath dalal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-202 Aditya Complex,Opp Kapdia Health Club Bhatar Road, Surat'),
(361, '', '2023-02-23', '2023-02-23', '14', 'Mamta Ratan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4B-1, Chintanpark Appt Bhatar Road, surat'),
(360, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Omprakash Agarwal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '248 Millenium-2 Ring Road, Surat'),
(359, '', '2023-02-23', '2023-02-23', '14', 'Ashish Murarilal Deorah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403 Girdhar Appt (Sweet house) Opp Agarsen Garden City Light, Surat'),
(358, '', '2023-02-23', '2023-02-23', '14', 'Anupam Ashokkumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-503 Surya Complex City Light, Surat'),
(357, '', '2023-02-23', '2023-02-23', '14', 'Dineshkumar Hareshchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-604, Nandanvan appt Opp Hills High School Vesu, Surat'),
(356, '', '2023-02-23', '2023-02-23', '14', 'Kartvya Ganesh Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-601 Shrenik Resi Nr Someshwar Enclave Vesu, Surat'),
(355, '', '2023-02-23', '2023-02-23', '14', 'Vinay Jagdishprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P1/1101, Capital Greens Canal Roaad Vesu, Surat'),
(354, '', '2023-02-23', '2023-02-23', '14', 'Dasharath Inderchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9-B-902, Sun Chariot Opp Nandanvan Vesu, Surat'),
(353, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Pushkarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-302 Sun Terrace Nr Nandanvan Resi'),
(352, '', '2023-02-23', '2023-02-23', '14', 'Nitin Shashikant Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-803 Keshav Narayan Resi.Nr Vanita Park Soc. Bhatar Road'),
(351, '', '2023-02-23', '2023-02-23', '14', 'Garvit Anilkumar Seksaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '702 Dev Prayag Appt Nr Terapanth Bhawan City Light, Surat'),
(350, '', '2023-02-23', '2023-02-23', '14', 'Chauthmal Babulal Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3/509 Shyam Villa Opp Shyam Mandir VIP Road, Surat'),
(349, '', '2023-02-23', '2023-02-23', '14', 'Ganesh Babulal Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-2/607 Shyam Villa Opp Shyam Mandir VIP Road, Surat'),
(348, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(347, '', '2023-02-23', '2023-02-23', '14', 'Lalit Mohan Ratanlal Jodhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-A, Sangam Appt b/h Saragm Shopping Center Parle Point, Surat'),
(346, '', '2023-02-23', '2023-02-23', '14', 'Anita Sanjay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(345, '', '2023-02-23', '2023-02-23', '14', 'Vijendra Prakash Khetawat', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(344, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Kr Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(343, '', '2023-02-23', '2023-02-23', '14', 'Mahaveer Purshottam Goenka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(342, '', '2023-02-23', '2023-02-23', '14', 'Gopi Kishan Beniprasad Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-607 Surya Resi.Nr Raj Mandir Complex Vesu, Surat'),
(341, '', '2023-02-23', '2023-02-23', '14', 'Shyamsunder Jagdishprasad Bedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-C, Sangam Appt b/h Sargam Shoping Center Parle Point, Surat'),
(340, '', '2023-02-23', '2023-02-23', '14', 'Madhav Rajendra Miranka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '13-B, Rajsiddhi Resi. Vesu, Surat'),
(339, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Dineshkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3A, Arnav Appt. 2 City Light, Surat.'),
(338, '', '2023-02-23', '2023-02-23', '14', 'Vivek Surendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P. No. 9, Shyam Kunj Krishna Vatika City Light, Surat.'),
(337, '', '2023-02-23', '2023-02-23', '14', 'Vikas Surendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P. No. 9, Shyam Kunj Krishna Vatika City Light, Surat.'),
(336, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Bhagirathmal Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '303-304 Satya, Ravishankar Sankul Soc., Bhatar, Surat'),
(335, '', '2023-02-23', '2023-02-23', '14', 'Akshay Anil Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Murti Residency Nr. Shripal Residency City Light, Surat.'),
(334, '', '2023-02-23', '2023-02-23', '14', 'Tarun Bishnukumar Bhagat', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-606 Ashirwad Palace Bhatar Road, Surat'),
(333, '', '2023-02-23', '2023-02-23', '14', 'Vardhman Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4C Ratan Millan Appt. Ravidham Complex Ghod Dod Road, Surat'),
(332, '', '2023-02-23', '2023-02-23', '14', 'Deepak Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-B, Ratan Millan Appt. Ravidham Complex Ghod Dod Road, Surat'),
(331, '', '2023-02-23', '2023-02-23', '14', 'Pawan Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-5B, Ratan Jyoti Appt. Nr. SD Jain School Vesu, Surat.'),
(330, '', '2023-02-23', '2023-02-23', '14', 'Suresh Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-4A, Ratan Jyoti Appt.Nr. SD Jain School Vesu, Surat.'),
(329, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Monil Park Nr. Gayatri Mandir City Light, Surat.'),
(328, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Harikesh Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-304, Somnath Enclave Parle Point, Surat.'),
(327, '', '2023-02-23', '2023-02-23', '14', 'Anup Hariprasad agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ' 10B, Retreat Height-A Piplod, Vesu, Surat.'),
(326, '', '2023-02-23', '2023-02-23', '14', 'Dhruv Jaswant Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5- Jay Jalaram Society Piplod, Surat'),
(325, '', '2023-02-23', '2023-02-23', '14', 'Ratan Laxminarayan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P. No-5132, Road No-51 , GIDC, Sachin, Surat'),
(324, '', '2023-02-23', '2023-02-23', '14', 'Manoj Govindram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6A Prabhavna Building Pratiistha Complex  Parle Point, Surat.'),
(323, '', '2023-02-23', '2023-02-23', '14', 'Suresh Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-B Golden Avenue  Nr. SBI Bank City Light, Surat.'),
(322, '', '2023-02-23', '2023-02-23', '14', 'Naveen Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-4/412 Shyam Villa Opp Shyam Mandir City Light, Surat.'),
(321, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Laxminarayan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P. No-5132, Road No-51 , GIDC, Sachin, Surat'),
(320, '', '2023-02-23', '2023-02-23', '14', 'Narayankumar Bajranglal Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1007, Shyam Rachna VIP Road Surat'),
(319, '', '2023-02-23', '2023-02-23', '14', 'Kalpesh Rajendra Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5/6, Jay Jalaram Soc. B/h Lake View Garden Piplod, Surat'),
(318, '', '2023-02-23', '2023-02-23', '14', 'Yash Sanjay Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(317, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(316, '', '2023-02-23', '2023-02-23', '14', 'Pradip Jagdish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-401,Megh Dhanush Apt.,Ghod dod Rd, Surat'),
(315, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Piramal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '902, Solitaire Apt.,Brijwasi Estate,Parle Point, Surat.'),
(314, '', '2023-02-23', '2023-02-23', '14', 'Anurag Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(313, '', '2023-02-23', '2023-02-23', '14', 'Naresh Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(312, '', '2023-02-23', '2023-02-23', '14', 'Ayush Santosh Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(311, '', '2023-02-23', '2023-02-23', '14', 'Navneet Bhagwati Prasad Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-604 Star Galaxy  Opp Aagam Cross Road Vesu, Surat'),
(310, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Piramal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602, Platinum Apt.,Brijwasi Estate,Parle Point, Surat.'),
(309, '', '2023-02-23', '2023-02-23', '14', 'Vinit Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-C,RatanMilan Apt.,Ravidham Complex, Ghoddod Rd, Surat'),
(308, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Sajjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-702,Shrungar Resi.,Vesu, Surat'),
(307, '', '2023-02-23', '2023-02-23', '14', 'Priyanka Vipin Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-101 Shrungar Resi Nr Nandini Vesu, Surat'),
(306, '', '2023-02-23', '2023-02-23', '14', 'Pradeep kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(305, '', '2023-02-23', '2023-02-23', '14', 'Nikita Shyam Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-402,Ashirwad Avenue,Opp:ShyamBaba Mandir, VIP Rd, Althan, Surat'),
(304, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Kumar Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1104,Shagun Villa Apt.,Nr.Althan Garden,VIP Rd., Surat'),
(303, '', '2023-02-23', '2023-02-23', '14', 'Ashish PawankumarAgarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Poddar Avenue,Nr.Green Avenue, Ghoddod Rd, Surat'),
(302, '', '2023-02-23', '2023-02-23', '14', 'Vivek PawankumarAgarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Poddar Avenue,Nr.Green Avenue, Ghoddod Rd, Surat'),
(301, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra Murlidhar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-506, Ashirwad Palace, Bhatar Rd, Surat'),
(300, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Nandkishore Bajaj ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '803, Sanjni Complex, City Light, Surat'),
(299, '', '2023-02-23', '2023-02-23', '14', 'Varun Kumar Kishorilal agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-6/A, Poddar Resi., Nr. S.D.School, Vesu, Surat'),
(298, '', '2023-02-23', '2023-02-23', '14', 'Amit Pradeepkumar Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-601, Blossom, Beside Agam Shopping World Vesu Abhva Rd, Surat'),
(297, '', '2023-02-23', '2023-02-23', '14', 'Muskan Prashantkumar Rajgarhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-428, Elbee Apt., Ring Road, Surat'),
(296, '', '2023-02-23', '2023-02-23', '14', 'Sanket Surendra kumar More', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4-D, Ratanjyoti Appt  Tower-F Vesu, Surat'),
(295, '', '2023-02-23', '2023-02-23', '14', 'Vivek Pawankumar Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '324, New Ashirwad Villa Nr.St.Thomas School New City Light Rd, Surat'),
(294, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Shyam Sunder Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '413 Gupta Tex Print, GIDC, Pandesara, Surat'),
(293, '', '2023-02-23', '2023-02-23', '14', 'Anita Maheshkumar Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-416 Ashirwad Park City light, Surat'),
(292, '', '2023-02-23', '2023-02-23', '14', 'Sunil Kumar Mangilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-901 Blossum B/h Agam Shopping World Veus, Surat'),
(291, '', '2023-02-23', '2023-02-23', '14', 'Kamalkumar Badriprasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-802 Blossom  Nr Agam Shoping World Vesu, Surat'),
(290, '', '2023-02-23', '2023-02-23', '14', 'Praveenkumar Jagannath Prasad Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-3/802 Capital Green Vesu, Surat'),
(289, '', '2023-02-23', '2023-02-23', '14', 'Nitesh Raghuvir Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '66-67, Suruchi Soc.,Nr. Jamna Nagar,Ghoddod Rd, Surat'),
(288, '', '2023-02-23', '2023-02-23', '14', 'Balkishan Ramsnehi  Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201 Chitrakut Appt Nr Chandan Park City Light, Surat'),
(287, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Deendayal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-4/201,Nandini Apt.,Nr.SidhiVinayak Mandir,Vesu, Surat'),
(286, '', '2023-02-23', '2023-02-23', '14', 'Shivkumar Ramavtar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-601 Swar Sangini Appt Nr Capital Green opp DGVCL Vesu, Surat'),
(285, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Vinodkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-403 Surya Prakash resi. City light, Surat'),
(284, '', '2023-02-23', '2023-02-23', '14', 'Parag Pramod Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601, Swarnavilla-1, Bharthana Vesu, Surat'),
(283, '', '2023-02-23', '2023-02-23', '14', 'Sahil Anilkumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-711 Ashirwad Park City Light, Surat'),
(282, '', '2023-02-23', '2023-02-23', '14', 'Girish Shankarlal Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-504, Ashirwad Avenue,Nr. Shyam Mandir, Althan, Surat'),
(281, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Murarilal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(280, '', '2023-02-23', '2023-02-23', '14', 'Ankur Rajkumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-201 Dream Palace Nr LP Savani School Vesu, Surat'),
(279, '', '2023-02-23', '2023-02-23', '14', 'Vinod Omprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-201 Monalisha Appt City Light Surat'),
(278, '', '2023-02-23', '2023-02-23', '14', 'Ganeshkumar Sitaram Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-603, Nest View,Nr. Atlanta Shopping Mall Canal Rd, Althan, Surat'),
(277, '', '2023-02-23', '2023-02-23', '14', 'Hardikkumar Ayodhyaprasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701 Water Hills resi Opp Shyam Mandir Althan, Surat'),
(276, '', '2023-02-23', '2023-02-23', '14', 'Amitkumar Satyaprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-7 & 8, Kabir Nikunj Soc.,Nr Ashirwad Palace, Bhatar, Surat'),
(275, '', '2023-02-23', '2023-02-23', '14', 'Krishna Arun Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2a, C-tower Poddar Avenue Ghod dod Rd, Surat'),
(274, '', '2023-02-23', '2023-02-23', '14', 'Santoshkumar Harigopal Jaipuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-402, Milano Heights, B/H Rajhans Cinema Piplod, Surat'),
(273, '', '2023-02-23', '2023-02-23', '14', 'Arvindkumar Mahendrakumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-201, Shrungar Resi.,Nr. sidhiVinayak Mandir Vesu, Surat'),
(272, '', '2023-02-23', '2023-02-23', '14', 'Sajjankumar Shankerlal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801 Shilp Resi. b/h Sidhhi Vinayak Mandir Vesu, Surat'),
(271, '', '2023-02-23', '2023-02-23', '14', 'Uttamkumar Rajaram Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '901 Shiv Appt opp Kapdia Complex Ghod Dod Road, Surat'),
(270, '', '2023-02-23', '2023-02-23', '14', 'Jitendrakumar Omkarmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2/502 Vastu luxuria Dumas Road Vesu, Surat'),
(269, '', '2023-02-23', '2023-02-23', '14', 'Pappulal Ramkripal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-402 Evergreen Nr Hills High School Vesu, Surat'),
(268, '', '2023-02-23', '2023-02-23', '14', 'Ankit Anilkumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-501, Royal Regency, Nr. Agam Teen Rastha, Vesu, Surat'),
(267, '', '2023-02-23', '2023-02-23', '14', 'Minakshi Goverdhan Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-202 Vatika Twonship Model Town Parvat Patia, Surat'),
(266, '', '2023-02-23', '2023-02-23', '14', 'Alok Kumar Ramchandra kedia (CA)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-204 Chandan Park Soc.,  Nr Agarsen Bhawan,  City light, Surat'),
(265, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Vijay Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801, Shyam Rachna Nr. shyamBaba Mandir VIP Rd, Vesu, Surat'),
(264, '', '2023-02-23', '2023-02-23', '14', 'Rajat Rajendra Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-101, The Laurels Opp: capital Green Vesu, Surat'),
(263, '', '2023-02-23', '2023-02-23', '14', 'Krishan Ramprasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-104, Shrungar Resi.,B/H Nandini-1 Vesu, Surat'),
(262, '', '2023-02-23', '2023-02-23', '14', 'Gopalkumar Shankerlal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '709 Spring Valley New City light, Surat'),
(261, '', '2023-02-23', '2023-02-23', '14', 'Hanuman Prasad Hukamchand Kadmawala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-209, Suryadarsan Apt., Nr. Agrasen Bhavan City Light, Surat'),
(260, '', '2023-02-23', '2023-02-23', '14', 'Prahladdas Nanalal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3033, Ambaji Mkt, Ring Road, Surat'),
(259, '', '2023-02-23', '2023-02-23', '14', 'Shyamlal dwarka prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '305 Pratap Vihar Nr Vidhya Bharti School Bhatar Road, Surat'),
(258, '', '2023-02-23', '2023-02-23', '14', 'Jugal Damodar Sekhrajaka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-802,Ashirwad Enclave, Canal Rd, Althan, Surat'),
(257, '', '2023-02-23', '2023-02-23', '14', 'Shashi Bhushan Chabildas Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-601 Sangini Solitaire Opp Rameshwaram Palace Vesu, Surat'),
(256, '', '2023-02-23', '2023-02-23', '14', 'Puneet Hanuman Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-2/604, Nandini Apt., Nr. Sidhivinayak Mandir Vesu, Surat'),
(255, '', '2023-02-23', '2023-02-23', '14', 'Suryaprakash Jugalkishore Jalan (Bunty Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-703 Krish Enclave City light, Surat'),
(254, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Chothmal Patodia Expired', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1403 Valencia Nr Galleria Hiranandani Powai IIT Mumbai'),
(253, '', '2023-02-23', '2023-02-23', '14', 'Harshvardhan Ashish Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-712, Shripal Resi Nr Corner Point City light, Surat'),
(252, '', '2023-02-23', '2023-02-23', '14', 'Romit Ramesh Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '75-76, Kabir Nikunj Soc., Bhatar Rd., Surat'),
(251, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Omprakash Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-203 Dream Palace Nr dreem Heritage Vesu, Surat'),
(250, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Puranmal Mahansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-502 Floorance VIP Rd Vesu, Surat'),
(249, '', '2023-02-23', '2023-02-23', '14', 'Divyank Pramod Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-202 Rameshwaram Palace Nr Sangini Solitaire Vesu, Surat'),
(248, '', '2023-02-23', '2023-02-23', '14', 'Babita Sanjay Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-4, 1103 Nandini-1 Nr Agam Viviana Centre Vesu, Surat'),
(247, '', '2023-02-23', '2023-02-23', '14', 'Rekha Dilipkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-5, 101 Raj Resi. Opp Ashirwad  Palace Bhatar, Surat'),
(246, '', '2023-02-23', '2023-02-23', '14', 'Manisha Satyanarayan Kajaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601 (Divya) poonay Bhoomi VIP Rd-2 Vesu, Surat'),
(245, '', '2023-02-23', '2023-02-23', '14', 'Babita Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-502 The Laurels Opp Capital green Vesu, Surat'),
(244, '', '2023-02-23', '2023-02-23', '14', 'Santosh Bhagirathmal Kauntia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-13 Poddar Resi. Nr Capital Green Vesu, Surat'),
(243, '', '2023-02-23', '2023-02-23', '14', 'Vineet Vijay Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-1011, Vastugram  Opp Rasik Villa Vesu, Surat'),
(242, '', '2023-02-23', '2023-02-23', '14', 'Ravi Radheshyam jhajharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '316-320 Sai Darshan mkt, Ring Road, Surat'),
(241, '', '2023-02-23', '2023-02-23', '14', 'Alok Bharat Tulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3C Ratan Millan Appt Ram Chowk Ghod dod, Surat'),
(240, '', '2023-02-23', '2023-02-23', '14', 'Ronak Ramakant Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-203 (Devya) poonay Bhoomi  VIP Rd-2 Vesu, Surat'),
(239, '', '2023-02-23', '2023-02-23', '14', 'Deepak Rajendra PSd Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-902 Jolly Resi. Vesu, Surat'),
(238, '', '2023-02-23', '2023-02-23', '14', 'Ashokkumar Radheshyam mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2 Model Town Parvat Patia Surat'),
(237, '', '2023-02-23', '2023-02-23', '14', 'Yogit Sushil Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-301 Sun Terrace Vesu, Surat'),
(236, '', '2023-02-23', '2023-02-23', '14', 'Seema Sandeep Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '303, A-3, Vashant Vihar Township UM Road  Althan, Surat'),
(235, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Sunil Kumar Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-704, Akash Enclve Nr Bhimrad Choki Althan, Surat'),
(234, '', '2023-02-23', '2023-02-23', '14', 'Sarita Rajesh Dodrajka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(233, '', '2023-02-23', '2023-02-23', '14', 'Sangeeta Aditya Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(232, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Vishwanath Beswal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '204 Kanchanjanga Appt Bhatar, Surat'),
(231, '', '2023-02-23', '2023-02-23', '14', 'Harshit Jayprakash Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-401 Green Victory  opp Althan Petrol pump Althan, Surat'),
(230, '', '2023-02-23', '2023-02-23', '14', 'Narendra Bhagwati Psd Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-4, 711 Shyam villa  Opp Shyam Mandir Althan, Surat'),
(229, '', '2023-02-23', '2023-02-23', '14', 'Ramniwas Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 402 Shyam Villa Opp Shyam Mandir Althan, Surat'),
(228, '', '2023-02-23', '2023-02-23', '14', 'Ankit Vimal Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-806 Sheraton Luxuria  Nr Shyam Mandir Vip Rd Surat'),
(227, '', '2023-02-23', '2023-02-23', '14', 'Manish HarNarain Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-806 Nandavan Appt,  Vesu, Surat'),
(226, '', '2023-02-23', '2023-02-23', '14', 'Deepak Ashok kumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-303 Surya Complex City Light, Surat'),
(225, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Kirorimal Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-91 Ashirwad Villa New City light Surat'),
(224, '', '2023-02-23', '2023-02-23', '14', 'Manish Santosh Kumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G2-102 Happy Glorious Nr Green Fortunes Vesu, Surat'),
(223, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Devidas Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C3a, Poddar Resi. Nr Capital Green Vesu, Surat'),
(222, '', '2023-02-23', '2023-02-23', '14', 'Ramkishan Brijlal Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-225 Ashirwad Palace'),
(221, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Rambilash Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-102 AASHIWAD AVENUE  OPP SHYAM MANDIR ALTHAN'),
(220, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Kumar Jai Bhagwan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201 OM TARRACE NR DRB COLLAGE ALTHAN'),
(219, '', '2023-02-23', '2023-02-23', '14', 'Khushal Nandlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 504 RAJAHANS SYNRONIA ABHVA VILLAGE VESU'),
(218, '', '2023-02-23', '2023-02-23', '14', 'Govind Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3 JIVAN VIKAS SOCIETY ATHWALINES'),
(217, '', '2023-02-23', '2023-02-23', '14', 'Vinay Omprakash Sonthala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3 JIVAN VIKAS SOCIETY ATHWALINES'),
(216, '', '2023-02-23', '2023-02-23', '14', 'Naval Ramavtar Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '402 PRIYANSH TOWER GHODDOD ROAD'),
(215, '', '2023-02-23', '2023-02-23', '14', 'Raj Kumar Ramavatar Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L 625 ASHIRWAD PALACE  BHATAR'),
(214, '', '2023-02-23', '2023-02-23', '14', 'Sumeet Bajranglal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '102 CIY PARK BHATAR ROAD BHATAR'),
(213, '', '2023-02-23', '2023-02-23', '14', 'Narendra Babulal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '404 SHREE KRISHNA APT SWEET HOUSE AGRASEEN GARDEN CITYLIGHT UMRA'),
(212, '', '2023-02-23', '2023-02-23', '14', 'Chothmal Sitaram Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B401 VAIBHAV APT. NR RUPALI BHATAR'),
(211, '', '2023-02-23', '2023-02-23', '14', 'Manish Om Prakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'NH-53, Chinchpada RAIWAY STATION ROAD Navapur'),
(210, '', '2023-02-23', '2023-02-23', '14', 'Niranjan Om Prakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'NH-53, Chinchpada RAIWAY STATION ROAD Navapur'),
(209, '', '2023-02-23', '2023-02-23', '14', 'Parag Arun Shyamsunder Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1101 ECO GARDENS RAJHANS ZION VESU'),
(208, '', '2023-02-23', '2023-02-23', '14', 'Raj Satya Narayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A/6B RAJSIDDHI APT NR WHITELOUTOS SCHOOL VESU'),
(207, '', '2023-02-23', '2023-02-23', '14', 'Pratik Pramod Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-608 SHILPA REC. VESU'),
(206, '', '2023-02-23', '2023-02-23', '14', 'Anup Dipchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-717 ASHIRWAD PALACE  BHATAR'),
(205, '', '2023-02-23', '2023-02-23', '14', 'Ankit Meghraj Kadamwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C172 STAR GALAXY  VESU'),
(204, '', '2023-02-23', '2023-02-23', '14', 'Hitesh Gokul Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E8A PALM AVENU VESU'),
(203, '', '2023-02-23', '2023-02-23', '14', 'Sajjan Satya Narayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701 VARDAWAN COMPLEX NR ROOPALI CANAL BHATAR'),
(202, '', '2023-02-23', '2023-02-23', '14', 'Binay Rajkumar Budhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '207 SUKAN  RECEDENCY'),
(201, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Ridhkaran Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G6 1102 HAPPY GLORIOUS REC. VESU'),
(200, '', '2023-02-23', '2023-02-23', '14', 'Ashok Banwarilal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I 1001 BLOSSOM CANAL ROAD VESU'),
(199, '', '2023-02-23', '2023-02-23', '14', 'Ravi Ramesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '202 PALLAV APT NR ASKHOK PAN HOUSE CITYLIGHT  '),
(198, '', '2023-02-23', '2023-02-23', '14', 'Ramswaroop Bajranglal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D201 AKASH EVERGREEN CANAL ROAD VESU'),
(197, '', '2023-02-23', '2023-02-23', '14', 'Madhudevi Sushil Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-7B ARJAV APT CITYLIGHT'),
(196, '', '2023-02-23', '2023-02-23', '14', 'Mamta Surendra Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P 31002 CAPITAL GREEN VESU'),
(195, '', '2023-02-23', '2023-02-23', '14', 'Bhawani Shankar AGR. Hudeelwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '62 DAYALJI PARK ROW HOUSE PARVAT PATIYA'),
(194, '', '2023-02-23', '2023-02-23', '14', 'Piyush Ramavtar Sihotiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E/602 ASHIRWAD AVENUE VIP ROAD'),
(193, '', '2023-02-23', '2023-02-23', '14', 'Manish Bhawani Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11/A F BLOCK INDRLOK COMPLEX PIPLOD'),
(192, '', '2023-02-23', '2023-02-23', '14', 'Mohit Ashok Singal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D 701 HAPPY REC. VESU'),
(191, '', '2023-02-23', '2023-02-23', '14', 'Mukul Vinod Agarwal Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B1 906SHYAM VATIKA MODEL TOWN PARVAT PATIYA'),
(190, '', '2023-02-23', '2023-02-23', '14', 'Rahul Satishkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L1/601 AVADH COPPER STONE DUMAS'),
(189, '', '2023-02-23', '2023-02-23', '14', 'Arun Nandkishor Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 402 ROYAL REGENCY WHITE LOTOUS VESU'),
(188, '', '2023-02-23', '2023-02-23', '14', 'Rajendra Banwarilal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F 1101 BLOSSOM IMPIRIAL VESU'),
(187, '', '2023-02-23', '2023-02-23', '14', 'Sharwan Kanhaiyalal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403 SHIV DARSHAN SOCIETY BHATAR  '),
(186, '', '2023-02-23', '2023-02-23', '14', 'Anand Bimal B Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 1002 0FIRA NR CROMA VIP ROAD'),
(185, '', '2023-02-23', '2023-02-23', '14', 'Vivek Shambhunath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D 707 VASTUGRAM APT SHIP RESID. VESU'),
(184, '', '2023-02-23', '2023-02-23', '14', 'Nilesh Pradeep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I 602 RAJHANS GRANDEZA NR CAPITAL GREEN VESU'),
(183, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Jagdish Prasad Keyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 PARITOSH APT  CITYLIGHT'),
(182, '', '2023-02-23', '2023-02-23', '14', 'Rekha Vinod Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 410  SURYA PRAKASH RECID. CITYLIGHT'),
(181, '', '2023-02-23', '2023-02-23', '14', 'Vinitadevi M. Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 911 SURYA PRAKASH  CITYLIGHT'),
(180, '', '2023-02-23', '2023-02-23', '14', 'Surendra Shabhuprasad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D4 PRAGNA APT  RAVI SHANKAR SANKUL SOC. BHATAR'),
(179, '', '2023-02-23', '2023-02-23', '14', 'Chanchal Rajendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 1106 DREAM HERITAGE VESU'),
(178, '', '2023-02-23', '2023-02-23', '14', 'Mahendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 1106 DREAM HERITAGE  VESU'),
(177, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Vishwanath Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 804 SHRIPAL RECIDENCY CORNER POINT VESU'),
(176, '', '2023-02-23', '2023-02-23', '14', 'Surendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 3/203 VASANT VIHAR UDHNA MAGDALLA'),
(175, '', '2023-02-23', '2023-02-23', '14', 'Narendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 1003 DEVKRUPA APT  CORNER POINT CITYLIGHT'),
(174, '', '2023-02-23', '2023-02-23', '14', 'Sashikant Vinodkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 401 MONALISHA OPERA HOUSE CITYLIGHT'),
(173, '', '2023-02-23', '2023-02-23', '14', 'Ramakant Vinodkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 401 MONALISHA  OPERA HOUSE CITYLIGHT'),
(172, '', '2023-02-23', '2023-02-23', '14', 'Narendra Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 807 SHRIPAL RECIDENCY CITYLIGHT'),
(171, '', '2023-02-23', '2023-02-23', '14', 'Ravindra Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 303 SANGANI REC. CITYLIGHT'),
(170, '', '2023-02-23', '2023-02-23', '14', 'Umashankar Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F 915 ASHIRWAD PARK CITYLIGHT'),
(169, '', '2023-02-23', '2023-02-23', '14', 'Anil Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 806SHRIPAL REC CITYLIGHT'),
(168, '', '2023-02-23', '2023-02-23', '14', 'Urmilaben Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-401, Nest View Appt Nr Atlanta Mall Althan Surat'),
(167, '', '2023-02-23', '2023-02-23', '14', 'Satyanarayan Dayaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(166, '', '2023-02-23', '2023-02-23', '14', 'Ayush Gordhan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C4/102 CELIBRITY GREEN BEHIND HAPPY HALLMARK VESU'),
(165, '', '2023-02-23', '2023-02-23', '14', 'Aditya Ashok Kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '704 SATH SANGATH NR RADIO STATION BHATAR'),
(164, '', '2023-02-23', '2023-02-23', '14', 'Ashok Hargohindrai Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 605 SHRIPAL RECI. CITYLIGHT'),
(163, '', '2023-02-23', '2023-02-23', '14', 'Yogesh Purshottam Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 905 SHRIPAL RECI. CORNER POINT CITYLIGHT'),
(162, '', '2023-02-23', '2023-02-23', '14', 'Rajeev Kulbir Singh Singh', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 802 ROYAL PARADISE OPP RAJMANDIR VESU'),
(161, '', '2023-02-23', '2023-02-23', '14', 'Nishant Naresh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/302 VASTU LUXURIA VR MALL VESU'),
(160, '', '2023-02-23', '2023-02-23', '14', 'Manish Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-802 Rajhans Royalton Nr GD Goenka School Vesu,Surat'),
(159, '', '2023-02-23', '2023-02-23', '14', 'Ritesh Binod Bhauwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(158, '', '2023-02-23', '2023-02-23', '14', 'Radha Sandeep Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '502 MURLIDHAR APT SWEET HOUSING SOC. CITYLIGHT'),
(157, '', '2023-02-23', '2023-02-23', '14', 'Rekha Bharat Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 508 SHUKAN REC VESU'),
(156, '', '2023-02-23', '2023-02-23', '14', 'OM Prakash Jagdish PSD Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P4 CAPITAL GREEN VESU'),
(155, '', '2023-02-23', '2023-02-23', '14', 'Jaya Rohit Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 ADARSHILA APT PARLEPOINT'),
(154, '', '2023-02-23', '2023-02-23', '14', 'Arvind Naresh Kumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S 614 RAJTILAK APT PANAS GAM CITYLIGHT'),
(153, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Sureshchand Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B301 OM DARSHAN GD GOENKA VESU'),
(152, '', '2023-02-23', '2023-02-23', '14', 'Ashish Mahavir PSD Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 302 RAMESHWARAM PALACE VESU'),
(151, '', '2023-02-23', '2023-02-23', '14', 'Sunita Shushil Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 801 SURYA PALACE PARLEPOINT'),
(150, '', '2023-02-23', '2023-02-23', '14', 'Kiran Arun Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '718, Abhisek Mkt, Ring Road, Surat'),
(149, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Jagdish PSD Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701 PRAKRUTI APT OPP UMA BHAVAN BHATAR'),
(148, '', '2023-02-23', '2023-02-23', '14', 'Deepak Kumar Santosh Bedia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'PLOTD9 BALAJI NAGAR SOC'),
(147, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Santosh Bedia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'PLOTD9 BALAJI NAGAR SOC'),
(146, '', '2023-02-23', '2023-02-23', '14', 'Sachin Vinod Miharia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D 602 SWAGAT COMPLEX OPP DR WORLD PARVAT PATIYA'),
(145, '', '2023-02-23', '2023-02-23', '14', 'Ashok Shyamlal Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'GF 711 SURYADARSHAN APT CITYLIGHT'),
(144, '', '2023-02-23', '2023-02-23', '14', 'Anil Jhabarmal Beriwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B906 SURYA REC NE MOONLIGHT VESU'),
(143, '', '2023-02-23', '2023-02-23', '14', 'Vinayak  Inayak Anil Gadia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '303 VASTU SHIL APT LP SAVANI ADAJAN'),
(142, '', '2023-02-23', '2023-02-23', '14', 'Nisha Naval Kishor Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6B ARJAV APT  CITYLIGHT'),
(141, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Juglkishor Khetan ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E5 502CAPITAL GREENS VESU'),
(140, '', '2023-02-23', '2023-02-23', '14', 'Amit Parasram Agarwal (Dodrajka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P2 601CAPITAL GREENS VESU'),
(139, '', '2023-02-23', '2023-02-23', '14', 'Suman Kumar Gadia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 PARITOSH APT CITYLIGHT'),
(138, '', '2023-02-23', '2023-02-23', '14', 'Lakhi Prasad Agarwal Todi ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(137, '', '2023-02-23', '2023-02-23', '14', 'Nandlal Mulchand More', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C 806 SHYAM PALACE VESU'),
(136, '', '2023-02-23', '2023-02-23', '14', 'Pramod Babulal Gupta ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A8A PALM AVENUE VIP2 VESU'),
(135, '', '2023-02-23', '2023-02-23', '14', 'Santosh Nandkishor Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A 702 AMRUT DHARA APT GHODDOD ROAD'),
(134, '', '2023-02-23', '2023-02-23', '14', 'Shilpa Parakh Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1B BRIJ VATIKA VRIJWASHI ESTATE UMRA'),
(133, '', '2023-02-23', '2023-02-23', '14', 'Kamlesh Prasad Modi ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C704 NANDANVAN 1 VESU'),
(132, '', '2023-02-23', '2023-02-23', '14', 'Anand Bajranglal Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '708 SHERETON BEHIND SHYAM MANDIR ALTHAN'),
(131, '', '2023-02-23', '2023-02-23', '14', 'Kuldeep Sitaram Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D809 SHYAM PALACE VESU'),
(130, '', '2023-02-23', '2023-02-23', '14', 'Avinash Vijay Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 1004SURYA PALACE CITYLIGHT'),
(129, '', '2023-02-23', '2023-02-23', '14', 'Amit Vijay Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B 1004SURYA PALACE CITYLIGHT'),
(128, '', '2023-02-23', '2023-02-23', '14', 'Purshottam Shivcharn Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U-838 Ashirwad Palace Bhatar Road'),
(127, '', '2023-02-23', '2023-02-23', '14', 'Benigopal Shivcharan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'T-836, Ashirwad Palace Bhatar Road'),
(126, '', '2023-02-23', '2023-02-23', '14', 'Nitin Balmukand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-702, Green Victory Nr Altan Petrol Pump Althan'),
(125, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal (President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(124, '', '2023-02-23', '2023-02-23', '8', 'Ratanlal Daruka (Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825110170', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(123, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Agarwal (Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151811', 'G-8, ICC Complex, Ring Road, Surat'),
(122, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (PPI)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(121, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala (Sin. Vice President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(120, '', '2023-02-23', '2023-02-23', '8', 'Natwarlal Tatanwala (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825834627', '2001, Anmol Market, Ring Road, Surat'),
(119, '', '2023-02-23', '2023-02-23', '8', 'Motilal Jalan (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9327401444', '601 Sneh villa Appt, Vesu, Surat'),
(118, '', '2023-02-23', '2023-02-23', '8', 'Ashok J Singhal (Joit Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376791351', 'A-3, 402 Vastu Luxuria, Dumas Rd, Surat'),
(117, '', '2023-02-23', '2023-02-23', '8', 'Shyam Sunder Sihotia (Joint Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825809176', 'A/303 Shagun Villa, Althan, Surat'),
(116, '', '2023-02-23', '2023-02-23', '8', 'Arun Kashi Psd Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142682', '3019 Silk City mkt, Ring Road, Surat'),
(115, '', '2023-02-23', '2023-02-23', '8', 'Bajranglal Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374727364', '44, Millenium Market-2, Ring Road, Surat'),
(114, '', '2023-02-23', '2023-02-23', '8', 'Bajranglal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374046612', 'A-502, Shyam Rachna, Althan, Surat'),
(113, '', '2023-02-23', '2023-02-23', '8', 'Basudev Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375783639', '801 Parth Appt. City light, Surat'),
(112, '', '2023-02-23', '2023-02-23', '8', 'Chandi Prasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377772011', 'B-204 Sunrise Residency, Vesu, Surat'),
(111, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(110, '', '2023-02-23', '2023-02-23', '8', 'Govind Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512789', 'C-411 Surya Prakash Resi., City light, Surat'),
(109, '', '2023-02-23', '2023-02-23', '8', 'Kailashchandra Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426114345', 'L-3631 Millenium Market, Ring Road, Surat'),
(108, '', '2023-02-23', '2023-02-23', '8', 'Mukesh S. Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328441283', 'G1456/57 RKTM, Ring Road, Surat'),
(107, '', '2023-02-23', '2023-02-23', '8', 'Nandkishore Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825369990', 'K-2226-27 NTM Mkt, Ring Road, Surat'),
(106, '', '2023-02-23', '2023-02-23', '8', 'Niranjan H. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377743527', '57, Millenium Mkt-2, Ring Road, Surat'),
(105, '', '2023-02-23', '2023-02-23', '8', 'Pramod Agarwal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824822222', '602-3, Trividh Chembers, Ring Road, Surat'),
(104, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(103, '', '2023-02-23', '2023-02-23', '8', 'Shambhu Poddar', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374724663', '1011-1013, Sai Krupa Mkt, Ring Road, Surat'),
(102, '', '2023-02-23', '2023-02-23', '8', 'Suresh P Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374706766', 'J-1688-91 RKT Mkt, Ring Road, Surat'),
(101, '', '2023-02-23', '2023-02-23', '8', 'Vikash D. Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377702042', 'Parvati House, F-Tower, Shree Kuberji Textile Park, Delhi gate, Surat.'),
(100, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(99, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(98, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala ( Secretary)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(97, '', '2023-02-23', '2023-02-23', '8', 'Sushil Kumar Mittal (Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825096250', '3025, Ambaji Market, Ring Road, Surat'),
(96, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(95, '', '2023-02-23', '2023-02-23', '8', 'Sandeep Singhal (Jint Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377616196', 'B-8, Avenue-77, Nr LP Sawani School, Vesu, Surat'),
(94, '', '2023-02-23', '2023-02-23', '8', 'Vishwanath Singhania (Joint Treasurer)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825273591', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(93, '', '2023-02-23', '2023-02-23', '8', 'Basudev Chokhani', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9375783639', '801 Parth Appt. City light, Surat'),
(92, '', '2023-02-23', '2023-02-23', '8', 'Bishnuram Agarwal (Khazanawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377267259', '709 Raghuveer Mall NR. DR Mall, Parvat Patia, Surat'),
(91, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(90, '', '2023-02-23', '2023-02-23', '8', 'Govind Prasad Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374512789', 'C-411 Surya Prakash Resi., City light, Surat'),
(89, '', '2023-02-23', '2023-02-23', '8', 'Kailashchandra Kanodia', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9426114345', 'L-3631 Millenium Market, Ring Road, Surat'),
(88, '', '2023-02-23', '2023-02-23', '8', 'Motilal Jalan (Vice President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327401444', '601 Sneh villa Appt, Vesu, Surat'),
(87, '', '2023-02-23', '2023-02-23', '8', 'Nandkishore Tola', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825369990', 'K-2226-27 NTM Mkt, Ring Road, Surat'),
(86, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Sonthlia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7874572956', '5011, Ashoka Towar, Ring Road, Surat'),
(85, '', '2023-02-23', '2023-02-23', '8', 'Pramod Agarwal (Kansal)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824822222', '602-3, Trividh Chembers, Ring Road, Surat'),
(84, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(83, '', '2023-02-23', '2023-02-23', '8', 'Ramsawroop Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377942255', '536, Ashoka Tower, Ring Road, Surat'),
(82, '', '2023-02-23', '2023-02-23', '8', 'Ratanlal Daruka', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825110170', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(81, '', '2023-02-23', '2023-02-23', '8', 'Shambhu Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374724663', '1011-1013, Sai Krupa Mkt, Ring Road, Surat'),
(80, '', '2023-02-23', '2023-02-23', '8', 'Shrikrishnakumar Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879749583', '1045 J.J. AC Market, Ring Road, Surat'),
(79, '', '2023-02-23', '2023-02-23', '8', 'Vijay Kumar Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7984358635', 'B-1004, Surya Palace, City light, Surat'),
(78, '', '2023-02-23', '2023-02-23', '8', 'Vimal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824138297', 'U-1,2,3 Madhulika, Bhatar Road, Surat'),
(77, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824650890', 'E-409, Aashirwad Palace, Bhatar Road, Surat'),
(76, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(75, '', '2023-02-23', '2023-02-23', '8', 'Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824700389', '2-B, Ratan Kruti appt, piplod, Surat'),
(74, '', '2023-02-23', '2023-02-23', '8', 'Bhawanishankar Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376907021', '432, Harikrupa Market, Ring Road, Surat'),
(73, '', '2023-02-23', '2023-02-23', '8', 'Brijmohan Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825137297', 'C-1002 Sangani Solitaire, Opp GD goenka Vesu, Surat'),
(72, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (Acting President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(71, '', '2023-02-23', '2023-02-23', '8', 'Dileep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151244', 'G-614, Ashirwad Palace,'),
(70, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(69, '', '2023-02-23', '2023-02-23', '8', 'Jaiprakash Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825125057', '1001, Silk Palaza Mkt. Ring Road, Surat'),
(68, '', '2023-02-23', '2023-02-23', '8', 'Kirorimal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824156825', '1-A, Ratna Virat Appt, New City light, Surat'),
(67, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(66, '', '2023-02-23', '2023-02-23', '8', 'Natwarlal Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825834627', '2001, Anmol Market, Ring Road, Surat'),
(65, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Santnaliwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824135378', '8/2453, Kotsafil Road, Arra mohlla, Bhagal, Surat'),
(64, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Sonthlia', 0, '', 'D', '127.0.0.1', '', '', 0, '', '7874572956', '5011, Ashoka Towar, Ring Road, Surat'),
(63, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala (Acting Secretary', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007');
INSERT INTO `member_master` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(62, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(61, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824151811', 'G-8, ICC Complex, Ring Road, Surat'),
(60, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Chokdika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825155878', '112 WTC, Ring Road, Surat'),
(59, '', '2023-02-23', '2023-02-23', '8', 'Ramsawroop Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377942255', '536, Ashoka Tower, Ring Road, Surat'),
(58, '', '2023-02-23', '2023-02-23', '8', 'Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825171461', '205, Good Luck Market, Ring Road, Surat'),
(57, '', '2023-02-23', '2023-02-23', '8', 'Sunil Kumar Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142046', 'H-3413, Millenium Market, Ring Road, Surat'),
(56, '', '2023-02-23', '2023-02-23', '8', 'Sushil Kumar Mittal (Acting Treasurer)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825096250', '3025, Ambaji Market, Ring Road, Surat'),
(55, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824650890', 'E-409, Aashirwad Palace, Bhatar Road, Surat'),
(54, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(53, '', '2023-02-23', '2023-02-23', '8', 'Vishnu Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825129870', 'I-918 Ashirwad Palace, Bhatar Road, Surat'),
(52, '', '2023-02-23', '2023-02-23', '8', 'Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825273591', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(51, '', '2023-02-23', '2023-02-23', '12', 'Ashok J Singhal (Joint Secretary)', 6, '', 'E', '127.0.0.1', '', '', 0, '', '9376791351', 'A3/402, Vastu Luxuria, Nr VR Mall, Dumas Road, Vesu, Surat'),
(50, '', '2023-02-23', '2023-02-23', '12', 'CA Mahesh Mittal (President)', 1, '', 'E', '127.0.0.1', '', '', 0, '', '9374711350', '801 Shree Hari Apprtment Nr. Lancer Army School Umra, Surat'),
(49, '', '2023-02-23', '2023-02-23', '12', 'Ratanlal Daruka (Secretary)', 2, '', 'E', '127.0.0.1', '', '', 0, '', '9825110170', 'F-901, Cellestiar Dreams, Canal Road, Vesu, Surat'),
(48, '', '2023-02-23', '2023-02-23', '12', 'Ramesh Agarwal (Treasurer)', 3, '', 'E', '127.0.0.1', '', '', 0, '', '9824151811', '401 Shree Hari Apprtment Nr. Lancer Army School Umra, Surat'),
(47, '', '2023-02-23', '2023-02-23', '12', 'Pawan Jhunjhunwala (Sin. Vice President)', 4, '', 'E', '127.0.0.1', '', '', 2, '', '9898070528', '416,Happy Hallmark Shoopers, Vesu Abhwa road, Nr, Abhwa Chokadi, Vesu, Surat 395007'),
(46, '', '2023-02-23', '2023-02-23', '12', 'Natwarlal Tatanwala (Vice President)', 5, '', 'E', '127.0.0.1', '', '', 0, '', '9825834627', '501, Solitaire Apartment Opp Opp Umra School Parle Point, Surat'),
(45, '', '2023-02-23', '2023-02-23', '12', 'Motilal Jalan (Vice President)', 5, '', 'E', '127.0.0.1', '', '', 0, '', '9327401444', '601, Sneh Villa Nr Swar Sangini , VIP Rd, Surat'),
(44, '', '2023-02-23', '2023-02-23', '15', 'Bhawani Shankar Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '432, Harikrupa Market, Ring Road, Surat'),
(43, '', '2023-02-23', '2023-02-23', '15', 'Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-B, Ratan Kruti appt, piplod, Surat'),
(42, '', '2023-02-23', '2023-02-23', '15', 'Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market Ring Road, Surat'),
(41, '', '2023-02-23', '2023-02-23', '15', 'Gokulchand Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-383-4, NTM, Ring Road, Surat'),
(40, '', '2023-02-23', '2023-02-23', '15', 'Mahesh Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower, Ring Road, Surat'),
(39, '', '2023-02-23', '2023-02-23', '15', 'Kirodimal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-A, Ratna Virat Appt, New City light, Surat'),
(38, '', '2023-02-23', '2023-02-23', '15', 'Jaiprakash Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, Silk Palaza Mkt. Ring Road, Surat'),
(37, '', '2023-02-23', '2023-02-23', '15', 'Omprakash Sonthlia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5011, Ashoka Towar, Ring Road, Surat'),
(36, '', '2023-02-23', '2023-02-23', '15', 'Pooranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701-B, Kesahav Narayan Appt, Bhatar, Surat'),
(35, '', '2023-02-23', '2023-02-23', '15', 'Ramkaran Bajari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '317 Astha Market, Ring Road, Surat'),
(34, '', '2023-02-23', '2023-02-23', '15', 'Ravi Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1489-90 Millenium Mkt, Ring Road, Surat'),
(33, '', '2023-02-23', '2023-02-23', '15', 'Ramesh Chokdika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '112 WTC, Ring Road, Surat'),
(32, '', '2023-02-23', '2023-02-23', '15', 'Ramsaroop Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC Complex, Ring Road, Surat'),
(31, '', '2023-02-23', '2023-02-23', '15', 'Shrikrishna Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1045 J.J. AC Market, Ring Road, Surat'),
(30, '', '2023-02-23', '2023-02-23', '15', 'Sushil Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3025, Ambaji Market, Ring Road, Surat'),
(29, '', '2023-02-23', '2023-02-23', '15', 'Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '205, Good Luck Market, Ring Road, Surat'),
(28, '', '2023-02-23', '2023-02-23', '15', 'Vinod Agarwal (GCG)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-2170, STM , Ring Road, Surat'),
(27, '', '2023-02-23', '2023-02-23', '11', 'Brijmohan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1002 Sangani Solitaire, Opp GD goenka Vesu, Surat'),
(26, '', '2023-02-23', '2023-02-23', '11', 'B.S. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11-A Inderlok Appt. Tower-F , piplod, Surat'),
(25, '', '2023-02-23', '2023-02-23', '11', 'Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market Ring Road, Surat'),
(24, '', '2023-02-23', '2023-02-23', '11', 'Mahesh Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower, Ring Road, Surat'),
(23, '', '2023-02-23', '2023-02-23', '11', 'Pawan Kumar Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(22, '', '2023-02-23', '2023-02-23', '11', 'Pramod Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3011, Annapurna Market, Ring Road, Surat'),
(21, '', '2023-02-23', '2023-02-23', '11', 'Ramesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC Complex, Ring Road, Surat'),
(20, '', '2023-02-23', '2023-02-23', '11', 'Ratanlal Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(19, '', '2023-02-23', '2023-02-23', '11', 'Vasant Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21, Vasant Vihar Society, Adajan, Surat'),
(18, '', '2023-02-23', '2023-02-23', '11', 'Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(17, '', '2023-02-23', '2023-02-23', '10', 'Shri Vasantkumar Danmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825140993', '21 Vasant Vihar Society, Adajan'),
(16, '', '2023-02-23', '2023-02-23', '10', 'Shri Raj Kishore Pramanand Shah (Pappu ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909930711', '2004, Silk City Market'),
(15, '', '2023-02-23', '2023-02-23', '10', 'Shri Omprakash Malchand Agrawal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824129610', '8/2453, Malchand & Sons ,Arra Mohla'),
(14, '', '2023-02-23', '2023-02-23', '10', 'Shri Natwar Murarilal Harlalka', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'B-115, L.B Aprt.'),
(13, '', '2023-02-23', '2023-02-23', '10', 'Shri Kailashkumar Santosh Hakim', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825134208', 'F-3613, Raghukul  Market L.No-17'),
(12, '', '2023-02-23', '2023-02-23', '10', 'Shri Brijmohan Shyamsunder Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824144763', '5001, Silk City Mkt'),
(11, '', '2023-02-23', '2023-02-23', '10', 'Shri Ravi Deendayal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825056442', '6155, Raghukul Textile Market, L. No-11'),
(10, '', '2023-02-23', '2023-02-23', '10', 'Shri Santosh Kumar Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825143732', '1, Shiv Krupa Apart. B/h Unique Hospital,OPP. Navrang Soc Nr.Amba Nagar'),
(9, '', '2023-02-23', '2023-02-23', '10', 'Shri Ratan Dharuka', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'S-11, Silver Point'),
(8, '', '2023-02-23', '2023-02-23', '10', 'Shri Ramesh Chokdika', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '112, World Trade Center'),
(7, '', '2023-02-23', '2023-02-23', '13', 'Shri Manoj Agarwal ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'S-601, J.J. Market'),
(6, '', '2023-02-23', '2023-02-23', '13', 'Shri Hariprasad Sureka ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '2184, STM'),
(5, '', '2023-02-23', '2023-02-23', '13', 'Shri Basudev Nathmal Chokhani ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '801, Parth Appt., City Light'),
(4, '', '2023-02-23', '2023-02-23', '13', 'Shri Ramkaran Bajari ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '317, Astha Market'),
(3, '', '2023-02-23', '2023-02-23', '13', 'Shri Sandeep Singal ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '501, Murlidhar Appt.  Sweet house, Nr. Agarsen Bhawan'),
(2, '', '2023-02-23', '2023-02-23', '13', 'Shri Shrikishan Banka ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '1045, J.J. Market'),
(1, '', '2023-02-23', '2023-02-23', '13', 'Shri Shubh Karan Gadia ', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'G-2367, Millenium Market'),
(1277, '', '2023-05-31', '2023-02-23', '12', 'Chiranjilal Agarwal (Mamaji) (PPI)', 3, '', 'E', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey mkt, Ring Road'),
(1276, '', '2023-02-23', '2023-02-23', '12', 'Shyam Sunder Sihotia (Joint Treasurer)', 8, '', 'E', '127.0.0.1', '', '', 0, '', '9825809176', '757 Millenium Textile, Mkt-2, Ring Road, Surat.'),
(1278, '', '2023-02-23', '2023-02-23', '13', 'Shri Jagdish Harnarayan Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825148381', ''),
(1279, '', '2023-02-23', '2023-02-23', '13', 'Shri Jugal Kishore Premsukh das Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426114177', ''),
(1280, '', '2023-02-23', '2023-02-23', '13', 'Shri Nitesh Raghuvir Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879690009', ''),
(1281, '', '2023-02-23', '2023-02-23', '13', 'Shri Rajesh Basudeo Bhauwala (C.A.) ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721803', ''),
(1282, '', '2023-02-23', '2023-02-23', '13', 'Shri Shriram Roodmal Agarawal (Bidavatka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374729610', ''),
(1283, '', '2023-02-23', '2023-02-23', '13', 'Shri Subhashchand Phoolchand Agarwal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9574004014', ''),
(1284, '', '2023-02-23', '2023-02-23', '13', 'Shri Vijay Mangturam Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377720342', ''),
(1285, '', '2023-02-23', '2023-02-23', '13', 'Shri Vishwanath Gourishanker Pacheria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377701727', ''),
(1286, '', '2023-02-23', '2023-02-23', '13', 'Shri Guru Pratap Lalit Kumar Bagla', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000500002', ''),
(1287, '', '2023-02-23', '2023-02-23', '13', 'Shri Pranesh kumar Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427162490', ''),
(1288, '', '2023-02-23', '2023-02-23', '13', 'Shri Sunilkumar Keshardeo Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825126428', ''),
(1289, '', '2023-02-23', '2023-02-23', '13', 'Shri Sunil Ramgopal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327330794', ''),
(1290, '', '2023-02-23', '2023-02-23', '10', 'Shri Arjundas Dayakishan Agarwal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825213314', ''),
(1291, '', '2023-02-23', '2023-02-23', '10', 'Shri Arunkumar Mahavir Prasad Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825115497', ''),
(1292, '', '2023-02-23', '2023-02-23', '10', 'Shri Ashokkumar Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825114480', ''),
(1293, '', '2023-02-23', '2023-02-23', '10', 'Shri Ashokkumar Mahavir Prasad Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825147391', ''),
(1294, '', '2023-02-23', '2023-02-23', '10', 'Shri Bishnuram Nagarmal Agarwal (Khazanewala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377267259', ''),
(1295, '', '2023-02-23', '2023-02-23', '10', 'Shri Girish Jagdish Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824051915', ''),
(1296, '', '2023-02-23', '2023-02-23', '10', 'Shri Hariparkash Radhakishan Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374513041', ''),
(1297, '', '2023-02-23', '2023-02-23', '10', 'Shri Jayprakash Damodar Prasad Chhaparia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825125057', ''),
(1298, '', '2023-02-23', '2023-02-23', '10', 'Shri Pramod Piramal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825115874', ''),
(1299, '', '2023-02-23', '2023-02-23', '10', 'Shri Ram Mohan Prahaladrai Agrawal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824066649', ''),
(1300, '', '2023-02-23', '2023-02-23', '10', 'Shri Ramavtar Bhuramal Chaudhari (Dinesh Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825253652', ''),
(1301, '', '2023-02-23', '2023-02-23', '10', 'Shri Ramawatar Sitaram Agarwal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825280906', ''),
(1302, '', '2023-02-23', '2023-02-23', '10', 'Shri Sanjay Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9687643200', ''),
(1303, '', '2023-02-23', '2023-02-23', '10', 'Shri Sanjay Omprakash Jagnani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825227891', ''),
(1304, '', '2023-02-23', '2023-02-23', '10', 'Shri Sarvan Kumar Ramgopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825113753', ''),
(1305, '', '2023-02-23', '2023-02-23', '10', 'Shri Shyamsunder Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374726877', ''),
(1306, '', '2023-02-23', '2023-02-23', '10', 'Shri Subhsh Fulchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825122464', ''),
(1307, '', '2023-02-23', '2023-02-23', '10', 'Shri Vinodkumar Hariprasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374529441\r\n\r\n', ''),
(1308, '', '2023-02-23', '2023-02-23', '10', 'Shri Vinodkumar Manphool Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824650890\r\n', ''),
(1309, '', '2023-02-23', '2023-02-23', '10', 'Shri Vishwanath Shyamsunder Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825273591', '');

-- --------------------------------------------------------

--
-- Table structure for table `member_master_v2`
--

CREATE TABLE `member_master_v2` (
  `m_id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '2023-02-15',
  `modifieddate` date NOT NULL DEFAULT '2023-02-15',
  `a_id` varchar(256) NOT NULL,
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `sortorder` int NOT NULL,
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(256) NOT NULL,
  `memberid` int NOT NULL,
  `landmark` varchar(256) NOT NULL,
  `cnum` varchar(256) NOT NULL,
  `madr` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_master_v2`
--

INSERT INTO `member_master_v2` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(1269, '', '2023-02-23', '2023-02-23', '6', 'Ajay Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401 Jivan Deep Complex,Opp Sub Jail, Ring Road, Surat'),
(1268, '', '2023-02-23', '2023-02-23', '6', 'Amitkumar Ramnarayan Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1170, Lift No-13 Raghukul Market, Ring Road, Surat'),
(1267, '', '2023-02-23', '2023-02-23', '6', 'Anandkumar Malchand Agrawal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453 Kotsafil Road, Arra Mohalla, Wadifalia bhagal, Surat'),
(1266, '', '2023-02-23', '2023-02-23', '6', 'Anil Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-312,Dream Heritage, Canal Road, VIP Road, Surat'),
(1265, '', '2023-02-23', '2023-02-23', '6', 'Anil Satyanarayan Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '411, Empire Estate, Ring Road, Surat'),
(1264, '', '2023-02-23', '2023-02-23', '6', 'Anilkumar Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-733, Aashirwad Palace, Bhatar Road, Surat'),
(1263, '', '2023-02-23', '2023-02-23', '6', 'Anoopkumar Dilbagrai Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-505, Ashirwad Palace, Bhatar Road, Surat'),
(1262, '', '2023-02-23', '2023-02-23', '6', 'Anuj Satishkumar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302, Shri Hari Appt, Nr Lancer Armi School, Piplod, Surat'),
(1261, '', '2023-02-23', '2023-02-23', '6', 'Anupkumar Mohanlal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1618, Raghukul Market Lift No.11,12 , Ring Road, Surat'),
(1260, '', '2023-02-23', '2023-02-23', '6', 'Arjunkumar Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1002, New T T Market, Ring Road, Surat'),
(1259, '', '2023-02-23', '2023-02-23', '6', 'Arunkumar Mahavir Prasad Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1028, Vardhaman Market, Ring Road, Surat'),
(1258, '', '2023-02-23', '2023-02-23', '6', 'Ashokkumar Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1025, Ambaji Market, Ring Road, Surat'),
(1257, '', '2023-02-23', '2023-02-23', '6', 'Ashokkumar Mahavir Prasad Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4018, Jash Market, Ring Road, Surat'),
(1256, '', '2023-02-23', '2023-02-23', '6', 'Ashok Ramavtar Sultania', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'A-501, I.C.C. Complex, Ring Road, Suart'),
(1255, '', '2023-02-23', '2023-02-23', '6', 'Ashok Ramchandra Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-304,ICC, Ring Road, Surat'),
(1254, '', '2023-02-23', '2023-02-23', '6', 'Ashok kumar Shivbhagwan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601, Nalanda Recidency, Opp. Jolly Resi., Vesu, Surat'),
(1253, '', '2023-02-23', '2023-02-23', '6', 'Ashok Vasudev Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2031-34 Abhinandan Market, Ring Road, Surat'),
(1252, '', '2023-02-23', '2023-02-23', '6', 'Babulal Basantilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Sameet Complex, Nr Kapadia Health Club, New Civil Road, Surat'),
(1251, '', '2023-02-23', '2023-02-23', '6', 'Bajranglal Sitaram Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '44, Millenium-2, Ring Road, Surat'),
(1250, '', '2023-02-23', '2023-02-23', '6', 'Banwarilal Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Sf-1, Top Floor, Rajhans Plaza opp Pizza Hut, Nr Shiv Shakti, Ghod dod Rd, Surat'),
(1249, '', '2023-02-23', '2023-02-23', '6', 'Bhawani Shankar Kashinath Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '432, Harikrupa mkt, Ring Road, Surat'),
(1248, '', '2023-02-23', '2023-02-23', '6', 'Bijaykumar Shivbuxrai Sanghai', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-4417, 18, 19, R.K.T. Market, Ring Road, Surat'),
(1247, '', '2023-02-23', '2023-02-23', '6', 'Brijmohan Ramjilal Gupta', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '2017, Trade House, Ring Road, Surat'),
(1246, '', '2023-02-23', '2023-02-23', '6', 'Brijmohan Shayamsunder Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5001- Silk City Market, Ring Road, surat'),
(1245, '', '2023-02-23', '2023-02-23', '6', 'Chandrakant Thakordas Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-8A, Chandan Park Society, Shri Ram Petrol Pump, Adajan Road, surat'),
(1244, '', '2023-02-23', '2023-02-23', '6', 'Chiranjilal Agarwal (P.C. Synthetics)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market, Ring Road, Surat'),
(1243, '', '2023-02-23', '2023-02-23', '6', 'Dileepkumar Pratapmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '104, Babu Bhai Chamber, Bhatar, Surat'),
(1242, '', '2023-02-23', '2023-02-23', '6', 'Deendayal Shriram Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-2628,Lift No.11,Raghukul Textile Market, Ring Road, Surat'),
(1241, '', '2023-02-23', '2023-02-23', '6', 'Devandra Jagdish Prasad Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-603, Monalisa Park, B/h Agarsen Bhawan, City Light, Surat'),
(1240, '', '2023-02-23', '2023-02-23', '6', 'Dilip Ghanshyamdas Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'UG-1/3, Bishandayal Jewellers Cuttackwala, Sarela Shopping Center, Ghod Dod Road, Surat'),
(1239, '', '2023-02-23', '2023-02-23', '6', 'Durga Prasad Baijnath Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-3734, Millenium Market, Ring Road, Surat'),
(1238, '', '2023-02-23', '2023-02-23', '6', 'Gajanand Surajbhan Agrawal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602-3, Trividh Chembers, Ring Road, Surat'),
(1237, '', '2023-02-23', '2023-02-23', '6', 'Gokulchand Rameshwarlal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-383-4, Ashwin Tex, New Textile Market, Ring Road, Surat'),
(1236, '', '2023-02-23', '2023-02-23', '6', 'Gokulchand Ramnivas Agarwal (Gurarawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '133-34, Ashirwad Mkt, Opp Land Mark, Saroli, Surat'),
(1235, '', '2023-02-23', '2023-02-23', '6', 'Govind Prasad Gopiram Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-159 to 166, Laxmipati Sarees, Millenium-2 (D-wing), Anjna bridge, Bhathene, Surat'),
(1234, '', '2023-02-23', '2023-02-23', '6', 'Hariparkash Radhakishan Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-81-82, India Textile Market, Ring Road, Suart'),
(1233, '', '2023-02-23', '2023-02-23', '6', 'Jayprakash Damodar Prasad Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, Suchitra Saree, Silk Plaza Market, Ring Road, Surat'),
(1232, '', '2023-02-23', '2023-02-23', '6', 'Kailashkumar Santosh Hakim', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-3613 Raghukul Textile Market, Lift No.17, Ring Road, Surat'),
(1231, '', '2023-02-23', '2023-02-23', '6', 'Kamal Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3020, Raghukul Market Lift No.13, Ring Road, Surat'),
(1230, '', '2023-02-23', '2023-02-23', '6', 'Kamalkishore Sitaram Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-905, Ashirwad Palace, Jeevkornagar, Bhatar Road, Surat'),
(1229, '', '2023-02-23', '2023-02-23', '6', 'Kaushal Nandlal Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4031, Jash Textile Market, Ring Road, Surat'),
(1228, '', '2023-02-23', '2023-02-23', '6', 'Kirorimal Jaimalram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-A, Ratna Virat Appt, New City Light, Surat'),
(1227, '', '2023-02-23', '2023-02-23', '6', 'Kishan Narayan Prasad Agrawal (Gadodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '136-137 Millenium -2, Ring Road, Surat'),
(1226, '', '2023-02-23', '2023-02-23', '6', 'Kunj Shyamsunder Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Empire Estate, Ring Road, Surat'),
(1225, '', '2023-02-23', '2023-02-23', '6', 'Lalitkumar Nanuram Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1048-9, Annapurna Textile Market, Ring Road, Surat'),
(1224, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Prabhudayal Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1001, Spring Velly, Nr. Pushp Vatica, New City Light , Surat'),
(1223, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-7-8, Jolly Arcade, (Hariom), Ghod Dod Road, Surat'),
(1222, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Tularam Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower , Ring Road, Surat'),
(1221, '', '2023-02-23', '2023-02-23', '6', 'Mangtulal Narshinghlal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-1235, Surat Tex Market, Ring Road, Surat'),
(1220, '', '2023-02-23', '2023-02-23', '6', 'Nandlal Banarasilal Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '64, Reshamwala Market, Ring Road, Surat'),
(1219, '', '2023-02-23', '2023-02-23', '6', 'Narayandas Motilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '15001, R.K.T. Market, Riang Road, Surat'),
(1218, '', '2023-02-23', '2023-02-23', '6', 'Naresh Gangaram Garg (Jhojhuwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1034-5, New Textile Market, Rinag Road, Surat'),
(1217, '', '2023-02-23', '2023-02-23', '6', 'Nareshkumar Bisheshwarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701, Shree Shyam Awas, Nr. Vidhya Bharti School, Kuberji Group, Bhatar road, Surat'),
(1216, '', '2023-02-23', '2023-02-23', '6', 'Natwar Murarilal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-115, L.B.Appartment, Ring Road, Surat'),
(1215, '', '2023-02-23', '2023-02-23', '6', 'Natwarlal Kanhaiyalal Agarwal (Tatanwale)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Anmol Market, Ring Road, surat'),
(1214, '', '2023-02-23', '2023-02-23', '6', 'Niranjan Dwarkadas Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '703- Jivan Deep, Ring Road, Surat'),
(1213, '', '2023-02-23', '2023-02-23', '6', 'Niranjan Hiralal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '57, Millenium Mkt-2, Ring Road, Surat'),
(1212, '', '2023-02-23', '2023-02-23', '6', 'Nirmalkumar Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4057, Ambaji Market, Ring Road, Surat'),
(1211, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Ishwar Prasad Jhujhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1279, Kohinoor Market, Ring Road, Surat'),
(1210, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Jaimalram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-A, Ratna Virat Appt Near Gyatri Mandir, New City Light, Surat'),
(1209, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Malchand Agrawal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8-2453, Malchand & Sons,Arra Mohalla, Kotsafil Road, Surat'),
(1208, '', '2023-02-23', '2023-02-23', '6', 'Omprakash Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5011, Ashoka Towar, Ring Road, Surat'),
(1207, '', '2023-02-23', '2023-02-23', '6', 'Pawan Kumar Hiralal Jhunjhunuwala', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(1206, '', '2023-02-23', '2023-02-23', '6', 'Pawan Matadin Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3080 Anupam Market, Ring Road, Surat'),
(1205, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Kumar Hiralal Jhunjhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '416, Happy Hallmark Shoopers, Abhwa Road, Vesu, Surat'),
(1204, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Kumar Satyanarayan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3275, Kohinoor Market, Ring Road, Surat'),
(1203, '', '2023-02-23', '2023-02-23', '6', 'Prakash Kumar Hiralal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1, 104 Regent Market, Ring Road, Surat'),
(1202, '', '2023-02-23', '2023-02-23', '6', 'Prakash Kumar Muralidhar Agrawal (Todi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '308, Hari Kripa Market, Ring Road, Surat'),
(1201, '', '2023-02-23', '2023-02-23', '6', 'Pramod Sitaram Agarwal (Pipraliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3016, Shyam Mkt, Ring Road, Surat'),
(1200, '', '2023-02-23', '2023-02-23', '6', 'Pramod Piramal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-6, Ratan Anushree Appt. Nr. Umrigar School, Parle point, Surat'),
(1199, '', '2023-02-23', '2023-02-23', '6', 'Pramod Sanwarmal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3011, Annapurna Market, Riang Road, Surat'),
(1198, '', '2023-02-23', '2023-02-23', '6', 'Praveen Deokinandan Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-701, Fourseason Complex, Opp Zinzar Hotel, Piplod, Surat'),
(1197, '', '2023-02-23', '2023-02-23', '6', 'Pravin Kumar Hiralal Jhunjhunuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '9, Saket Bldg, Paranjape A Schem Road, No2, Vile Parle (East), Mumbai'),
(1196, '', '2023-02-23', '2023-02-23', '6', 'Puranmal Omkarmal Agarwal (Tayal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '166-7, Abhishek Market, Ring Road, Surat'),
(1195, '', '2023-02-23', '2023-02-23', '6', 'Raj Kishore Pramanand Shah (Pappu ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2006-7, Silk City Market, Ring road, Surat'),
(1194, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Devi Prasad Tulsian (Niraj bhai)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1005, Ashirwad Palace, Bhatar Road, surat'),
(1193, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Ramgopal Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-709,Ashirwad Palace, Bhatar Road, Surat'),
(1192, '', '2023-02-23', '2023-02-23', '6', 'Rajendra Prasad Babulal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301-02,Hi-tech Crest, Opp Amrut Showroom, Sahara darwaja, Surat'),
(1191, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Kumar Narsingh Prasad Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Hari Har Market , Jagadamba, Ring Road, Surat'),
(1190, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Shyamsundar Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Brij Vatika Appt, brijwasi Estate, Nr. Hotel Taj, Parle Point, Suart'),
(1189, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Bajranglal Chowdhary (VishnuJi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-918 Ashirwad Palace, Bhatar Road, Surat'),
(1188, '', '2023-02-23', '2023-02-23', '6', 'Ram Prakash Arjunlal Beria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '60, Sant Tukaram Soc-3, Bhatar Road, Surat'),
(1187, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Ramswaroop Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC, Ring Road, Surat'),
(1186, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Kumar Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '112, WTC, Ring road, Surat'),
(1185, '', '2023-02-23', '2023-02-23', '6', 'Ramgopal Bajranglal Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-2270, 1st Floor Surat Textile Market, Ring Road, Surat'),
(1184, '', '2023-02-23', '2023-02-23', '6', 'Ramgopal Chiranjilal Agarwal (Shreeji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U-1216, Surat Textile Market, Ring Road, Surat'),
(1183, '', '2023-02-23', '2023-02-23', '6', 'Ramswaroop Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '536, Ashoka Tower, Ring Road, Surat'),
(1182, '', '2023-02-23', '2023-02-23', '6', 'Ratanlal Mahabir Prasad Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-11, Silver Point , Bhatar Road, Surat'),
(1181, '', '2023-02-23', '2023-02-23', '6', 'Ratanlal Rameswarlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '301, Ajanta Appartment opp G-3, Ghod Dod road, Surat'),
(1180, '', '2023-02-23', '2023-02-23', '6', 'Ravi Deendayal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1489-90, Millenium mkt, Ring Road, Surat'),
(1179, '', '2023-02-23', '2023-02-23', '6', 'Sajjankumar Suganchand Agarwal (Koyalawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3008, Momai Complex Sahara Darwaja, Ring Road, Surat'),
(1178, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Balkishan Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '402, UTC Building, Udhna Darwaja, surat'),
(1177, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Satyanarayan Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '504 Empire Estate, Ring Road, Surat'),
(1176, '', '2023-02-23', '2023-02-23', '6', 'Santosh Kumar Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1, Shiv Kripa Society,B/h Uniqe Hospital, Amba Nagar, Bamroli Road, Surat'),
(1175, '', '2023-02-23', '2023-02-23', '6', 'Sanwar Prasad Ramkumar Budhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-9 Balaji Textile Market, Ring Road, Surat'),
(1174, '', '2023-02-23', '2023-02-23', '6', 'Sarvan Kumar Ramgopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-3708, Shital Silk Mills, Millenium Market, Ring Road, Surat'),
(1173, '', '2023-02-23', '2023-02-23', '6', 'Satyanarayan Murlidhar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'HG-9, I.T.C. Complex Majura Gate, Ring Road, Surat'),
(1172, '', '2023-02-23', '2023-02-23', '6', 'Shankarlal Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '205, Good Luck Market, Ring Road, Surat'),
(1171, '', '2023-02-23', '2023-02-23', '6', 'Shashikumar Vishwanath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-4693 Millenium Market, Ring road, Surat'),
(1170, '', '2023-02-23', '2023-02-23', '6', 'Shekharkumar Pannalal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3001 Sainath Mkt., Ring Road, Surat'),
(1169, '', '2023-02-23', '2023-02-23', '6', 'Shyamsunder Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-3176, 2nd Floor,Surat Textile Market, Ring Road, Surat'),
(1168, '', '2023-02-23', '2023-02-23', '6', 'Deepak Sohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-1205, Millenium Textile Market, Ring Road, Surat'),
(1167, '', '2023-02-23', '2023-02-23', '6', 'Subhaschand Gajanad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-3266, STM, Ring Road, Surat'),
(1166, '', '2023-02-23', '2023-02-23', '6', 'Subhash Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1013 New Sardar Mkt, Puna Kumbhariya Road, Surat'),
(1165, '', '2023-02-23', '2023-02-23', '6', 'Sunilkumar Ramwatar Agarwal (Tatanwalal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-3413-14, Millenium Market, Ring Road, Surat'),
(1164, '', '2023-02-23', '2023-02-23', '6', 'Surendra Kumar Jigdesh Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Devraj Recidency, New Citylight , Surat'),
(1163, '', '2023-02-23', '2023-02-23', '6', 'Sureshkumar Hanshraj Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '122A HTC Mkt, Nr. Raghukul Mkt, Ring Road, Surat'),
(1162, '', '2023-02-23', '2023-02-23', '6', 'Sharwan Dwarka Prasad Megotia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-5248, Lift No.-3, Raghukul Market, Ring road, Surat'),
(1161, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Girdharilal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3025, Sigma Sarees, Ambaji Market , Ring Road, Surat'),
(1160, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Shribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-618, Ashirwad Palace, Bhatar, Surat'),
(1159, '', '2023-02-23', '2023-02-23', '6', 'Sushilkumar Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P.No-110, Center Rd No-7, Udhyog Nagar, Udhna, Surat'),
(1158, '', '2023-02-23', '2023-02-23', '6', 'Tarachand Rameshwarlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Trade Centre b/h Ashoka Tower, Ring Road, Surat'),
(1157, '', '2023-02-23', '2023-02-23', '6', 'Tarun Kundanmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '35-36, Sagar Textile Market, Ring Road, Surat'),
(1156, '', '2023-02-23', '2023-02-23', '6', 'Vasantkumar Danmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21, Vasant Vihar Society, Adajan Road, Surat'),
(1155, '', '2023-02-23', '2023-02-23', '6', 'Vimal Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1001, Poddar Avenue, Ghod Dod Road, Surat'),
(1154, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Chouthmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '64, Reshamwala Market , Ring Road, Surat'),
(1153, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Gulabchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-2170, Surat Textile Market G C G Group, Ring Road, Surat'),
(1152, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Hariprasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101 Silk Heritage, Ring Road, Surat'),
(1151, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Manphool Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-409, Aashirwad Palace, Bhatar Road, Surat'),
(1150, '', '2023-02-23', '2023-02-23', '6', 'Vinodkumar Viswanath Prasad Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-417,Green Avenue , Radhika Silk Mills, Ghod Dod Road, Surat'),
(1149, '', '2023-02-23', '2023-02-23', '6', 'Vishwanath Shyamsunder Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3708, R.K.T Market, Sahara Darwaja, Ring Road, Surat'),
(1148, '', '2023-02-23', '2023-02-23', '6', 'Vinod Bhagirath Goyal (GTC)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-35, Orovil Soc., Nr Umabhawan, Bhtar Road, Surat'),
(1147, '', '2023-02-23', '2023-02-23', '6', 'Abhilasha Brajesh Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2001, Hari har mkt, Ring Road, Surat'),
(1146, '', '2023-02-23', '2023-02-23', '6', 'Alka Vijendra Khetawat (Vinita)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U2-C, Upper Floor, Regent arcade (Chahana Jawellrs), Ghod Dod Road, Surat'),
(1145, '', '2023-02-23', '2023-02-23', '6', 'Amit Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453.,Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1144, '', '2023-02-23', '2023-02-23', '6', 'Amritlal Narsidas Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '522, Gautam Market, Ring Road, Surat'),
(1143, '', '2023-02-23', '2023-02-23', '6', 'Anand Lakhi Prasad Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2012, Anupam Mkt, Ring Road, Surat'),
(1142, '', '2023-02-23', '2023-02-23', '6', 'Anand Raghubir Singh Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P.No-28, B/H SD Jain School, Nr Jolly Bunglow, Vesu, Surat'),
(1141, '', '2023-02-23', '2023-02-23', '6', 'Anandkumar Sitaram Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-4420, Raghukul L.No-15, Ring Road, Surat'),
(1140, '', '2023-02-23', '2023-02-23', '6', 'Anil Balmukund Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Besment, Sagar Shoping Center Mkt, Sahara Darwaja, Surat'),
(1139, '', '2023-02-23', '2023-02-23', '6', 'Anil Manphoolsingh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Ashirwad Palace, Bhatar Darwaja, Surat'),
(1138, '', '2023-02-23', '2023-02-23', '6', 'Anilkumar Puranmal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-5, Ratan Virat Appt, New Citylight, Surat'),
(1137, '', '2023-02-23', '2023-02-23', '6', 'Anita Gokulchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-301, Blossom, B/h Aagam Shoping Word, Vesu, Surat'),
(1136, '', '2023-02-23', '2023-02-23', '6', 'Anju Devi Sunil Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-C, Sagar Appt, b/h Sargam Shoping Center, Parle Point, Surat'),
(1135, '', '2023-02-23', '2023-02-23', '6', 'Anju Parmeshwar Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-611, Ashirwad complex, City Light, Surat'),
(1134, '', '2023-02-23', '2023-02-23', '6', 'Anup Anandkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453., Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1133, '', '2023-02-23', '2023-02-23', '6', 'Anup Purushottam Himatsingka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '204, Busines luxuria HUB, Nr VR Mall, Dumas Road, Surat'),
(1132, '', '2023-02-23', '2023-02-23', '6', 'Arjundas Dayakishan Agarwal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '805, Trived Chember, Ring Road, Surat'),
(1131, '', '2023-02-23', '2023-02-23', '6', 'Arvind Binodkumar Dhandharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Nr Abhishek mkt, Ring Road, Surat'),
(1130, '', '2023-02-23', '2023-02-23', '6', 'Asha Manoj Chawdhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-B, Ratandham Appt, Opp. Chandni Chowk, Piplod, Surat'),
(1129, '', '2023-02-23', '2023-02-23', '6', 'Ashish Basudeb Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-2090, Millenium Mkt, Ring Road, Surat'),
(1128, '', '2023-02-23', '2023-02-23', '6', 'Ashish Mahabir Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '204, Chitrkut Appt, B/h agarshen Bhawan, City Light, Surat'),
(1127, '', '2023-02-23', '2023-02-23', '6', 'Ashok Kunjbihari Adukia (C.A)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-6, Gokul Row House, Parle Point, Surat'),
(1126, '', '2023-02-23', '2023-02-23', '6', 'Babita Pramod Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-3/910, Sprring Valley, Opp Pushp Vatika, New City Light, Surat'),
(1125, '', '2023-02-23', '2023-02-23', '6', 'Bharat Jugalkishore Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2030, NSTM, Punakumbhariya road, Surat'),
(1124, '', '2023-02-23', '2023-02-23', '6', 'Bimal Shyamsundar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-37-38, India Textile Market, Ring road, Surat'),
(1123, '', '2023-02-23', '2023-02-23', '6', 'Bishnuram Nagarmal Agarwal (Khazanewala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '709, Raghuuveer Mall Nr. DR Mall, I Mata Rd, Parvat patiya, Surat'),
(1122, '', '2023-02-23', '2023-02-23', '6', 'Deepak Jagdishrai Kansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-2,-3020, Regent Market , Ring Road, Surat'),
(1121, '', '2023-02-23', '2023-02-23', '6', 'Deoki Nandan Govind Ram Saraogi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-4631, Millenium Mkt, Ring Road, Surat'),
(1120, '', '2023-02-23', '2023-02-23', '6', 'Disha Kailash Chandra Lohia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-5-601, Capital Green, Vesu , Surat'),
(1119, '', '2023-02-23', '2023-02-23', '6', 'Ganesh Narayan Goyanka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3015, Gautam Mkt, Ring road, Surat'),
(1118, '', '2023-02-23', '2023-02-23', '6', 'Ghanshyamdas Fulchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3018, Silk Plaza, ring Road, Surat'),
(1117, '', '2023-02-23', '2023-02-23', '6', 'Girdharilal Jagdish Prasad Agarwal (Sihotia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-3752, Millenium Mkt, Ring road, Surat'),
(1116, '', '2023-02-23', '2023-02-23', '6', 'Girdharilal Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3006, WTC, Ring Road, Surat'),
(1115, '', '2023-02-23', '2023-02-23', '6', 'Girish Jagdish Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-13-14, India Textile Market , Ring road, Surat'),
(1114, '', '2023-02-23', '2023-02-23', '6', 'Gopal Kailash Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1041, Jash Market, Ring road, Surat'),
(1113, '', '2023-02-23', '2023-02-23', '6', 'Harendra Jeevan psd Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5-B, Raj Siddhi Tower-B, Nr Nandidni-1, Vesu, Surat'),
(1112, '', '2023-02-23', '2023-02-23', '6', 'Hari Psd Chiranjilal Agarwal (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A/1-4003, Regent Mkt, Ring road, Surat'),
(1111, '', '2023-02-23', '2023-02-23', '6', 'Ishwarchand Nemchand Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5009, WTC, Ring road, Surat'),
(1110, '', '2023-02-23', '2023-02-23', '6', 'Kailash Chandra Ghisaram Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-3631, Millenium Mkt, Ring road, Surat'),
(1109, '', '2023-02-23', '2023-02-23', '6', 'Kailash Girdharilal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-1711, Millenium Mkt, Ring road, Surat'),
(1108, '', '2023-02-23', '2023-02-23', '6', 'Kamal Kishore Damodar das Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-3706-7, RKT Mkt, Ring road, Surat'),
(1107, '', '2023-02-23', '2023-02-23', '6', 'Kanhaiyalal Kashi Psd Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2143, Ambaji Mkt, Ring Road, Surat'),
(1106, '', '2023-02-23', '2023-02-23', '6', 'Kiran Devi Kunjbihari Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F.No.-7-C, Kassel Braun, Nr J H Ambani School, Vesu, Surat'),
(1105, '', '2023-02-23', '2023-02-23', '6', 'Kishan Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4002, Ambaji Mkt, Ring road, Surat'),
(1104, '', '2023-02-23', '2023-02-23', '6', 'Kunjbihari Mohanlal Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-1472, Millenium Mkt, Ring Road, Surat'),
(1103, '', '2023-02-23', '2023-02-23', '6', 'Lalit Ramnarayan Agarwal (Bajari)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'H-3420, Millenium Mkt, Ring Road, Surat'),
(1102, '', '2023-02-23', '2023-02-23', '6', 'Lallukumar Ramotar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-310, Shyam Palace, B/h Nandini-2, Vesu, Surat'),
(1101, '', '2023-02-23', '2023-02-23', '6', 'Laxminarayan Ramratan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-101, Chandni Chowk Appt, piplod, Surat'),
(1100, '', '2023-02-23', '2023-02-23', '6', 'Mahavir Prasad Sitaram Agarwal (Chokdika)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-801, Rajhans Zion, Opp GD Goenka, Vesu, Surat'),
(1099, '', '2023-02-23', '2023-02-23', '6', 'Mahendra Chiranjilal Kanoi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-07, Shree Kuberji Textile Mkt, Delhi gate, surat'),
(1098, '', '2023-02-23', '2023-02-23', '6', 'Mahesh Durga Prasad Bubana', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-2002, New TT Mkt, Ring road, Surat'),
(1097, '', '2023-02-23', '2023-02-23', '6', 'Maheshkumar Bajranglal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7 to 9, Tantia House, Shiv Shambhu Soc., UM RD, Surat, Surat'),
(1096, '', '2023-02-23', '2023-02-23', '6', 'Manish Puranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '401, Shri Hari Appt , Nr Lancer School, Piplod, Surat'),
(1095, '', '2023-02-23', '2023-02-23', '6', 'Manoj Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110 & 4th floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1094, '', '2023-02-23', '2023-02-23', '6', 'Mohanlal Dwarka Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-208, Spring Velly, Opp Pushp Vatika, New City Light, Surat'),
(1093, '', '2023-02-23', '2023-02-23', '6', 'Mukesh Jagdishchand Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3040, Golden Palaza, Ring Road, Surat'),
(1092, '', '2023-02-23', '2023-02-23', '6', 'Mukesh Kunjbihari Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-9, Meghsarman Appt, City Light, Surat'),
(1091, '', '2023-02-23', '2023-02-23', '6', 'Narayan Bijaykumar Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4009, Golden Palaza, Ring Road, Surat'),
(1090, '', '2023-02-23', '2023-02-23', '6', 'Narendrakumar Dhanraj Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-304, Celestrial Dream, Canal Road, Vesu, Surat'),
(1089, '', '2023-02-23', '2023-02-23', '6', 'Naresh Bhagwandas Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3-A, Ratan Krooti Appt, b/h Croma, Piplod, Surat'),
(1088, '', '2023-02-23', '2023-02-23', '6', 'Narinder Parkash Gurcharan Dass Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-1002, Florance, Vip Road, Surat'),
(1087, '', '2023-02-23', '2023-02-23', '6', 'Nemichand Banwarilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'I-2674-75, RKT Mkt, Ring Road, Surat'),
(1086, '', '2023-02-23', '2023-02-23', '6', 'Niraj Jaiprakash Goenka (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-802, Aakash Evergreenschool, B/h Shyam Sangini, Vesu, Surat'),
(1085, '', '2023-02-23', '2023-02-23', '6', 'Nitin Subhash Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4098, Siddhi Vinayak Mkt, Ring Road, Surat'),
(1084, '', '2023-02-23', '2023-02-23', '6', 'Pankajkumar Rajkumar Bedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'N-128, Ashirwad Plcace, Bhatar Road, Surat'),
(1083, '', '2023-02-23', '2023-02-23', '6', 'Parmeshwar Parasram Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-611, Ashirwad Complex, Nr. Anuvarat Dawar, City Light, Surat'),
(1082, '', '2023-02-23', '2023-02-23', '6', 'Pawan Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '155,Millenium-2, B/h Ragukul Mkt, Ring Road, Surat'),
(1081, '', '2023-02-23', '2023-02-23', '6', 'Piyush Shyamsunder Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '10-A, Ratan Milan Appt, Ghod Dod Road, Surat'),
(1080, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Hari Prasad Sureka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '40, Millenium -2, B/h Raghukul Mkt, Ring Road, Suart'),
(1079, '', '2023-02-23', '2023-02-23', '6', 'Pradeep Mangturam Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4001 to 4009, Harihar Mkt (3rd Floor), Ring road, Surat'),
(1078, '', '2023-02-23', '2023-02-23', '6', 'Pramod Gajanand Agarwal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '602, Trived Chember, Ring Road, Surat'),
(1077, '', '2023-02-23', '2023-02-23', '6', 'Pramodkumar Nemchand Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2005-06, Gopi Mkt, Ring Road, Surat'),
(1076, '', '2023-02-23', '2023-02-23', '6', 'Pukhraj Ganeshilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2034, TT Mkt, Ring Road, Surat'),
(1075, '', '2023-02-23', '2023-02-23', '6', 'Purushottam Sajjan Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'R-233, Ashirwad Palace, Bhatar Road, Surat'),
(1074, '', '2023-02-23', '2023-02-23', '6', 'Purushottam Tormal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '109, Jeevandeep, Opp, Sub Jail, Majura Gate, Surat'),
(1073, '', '2023-02-23', '2023-02-23', '6', 'Raj Kapoor Kanhaiyalal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '455-56, Millenium Mkt-2, B/h Raghukul, Ring road, Surat'),
(1072, '', '2023-02-23', '2023-02-23', '6', 'Rajendra Mahesh Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-1689-92, Millenium Mkt, Ring Road, Surat'),
(1071, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Balkishan Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1102, Fore Season, Opp Ginger Hotel, Piplod, Surat'),
(1070, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Omprakash Agarwal (Babluji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '129, Reshamwala Mkt, Ring road, Surat'),
(1069, '', '2023-02-23', '2023-02-23', '6', 'Rajesh Ram Babu Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '4/1928, Aaina House, Nr Panchvati Hanuman Mandir, Begumpura, Surat'),
(1068, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Nandkishore Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-810, Surya Prakash Resi. City Light, Surat'),
(1067, '', '2023-02-23', '2023-02-23', '6', 'Rajiv Shrikishandas Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '101, Shyam Sangini, Punakumaria Rd, Saroli, Surat'),
(1066, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Budhram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '503, (Neha saree) Ashoka Tower, Ring Road, surat'),
(1065, '', '2023-02-23', '2023-02-23', '6', 'Rajkumar Purshottam Dokania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Mayur House, b/h Millenium, Ring road, Surat'),
(1064, '', '2023-02-23', '2023-02-23', '6', 'Rakesh Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110- 7th Floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1063, '', '2023-02-23', '2023-02-23', '6', 'Rakesh Nareshkumar Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'L-3654, Millenium Mkt, Ring Road, Surat'),
(1062, '', '2023-02-23', '2023-02-23', '6', 'Rakeshkumar Ramratan Gupta (Basawa)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3010, Mahavir Mkt, Ring Road'),
(1061, '', '2023-02-23', '2023-02-23', '6', 'Ram Mohan Prahaladrai Agrawal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '53/B-Pragati Fashion, Nr Bedhedwad, Prem nagar, pandesara, Surat'),
(1060, '', '2023-02-23', '2023-02-23', '6', 'Ramavtar Bhuramal Chaudhari (Dinesh Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-7th Floor, Raj Textile Mkt B/h DMD, Saroli, Surat'),
(1059, '', '2023-02-23', '2023-02-23', '6', 'Ramavtar Mangilal Agarwal (Bansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2053, Mahaveer Mkt, Ring Road, Surat'),
(1058, '', '2023-02-23', '2023-02-23', '6', 'Ramawatar Sitaram Agarwal (Fagalwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '106, Virat Apt, Diwali bhug Nr Dhiraj & Sons, Athwaline, Surat'),
(1057, '', '2023-02-23', '2023-02-23', '6', 'Ramchandra Malchand Agarwal (Ram Bhai)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2, 703, Salasar Palace, Nr Vastu Gram, VIP Road, Surat'),
(1056, '', '2023-02-23', '2023-02-23', '6', 'Ramesh Prakashchand Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1155, Raghukul Market Lift No.7-8, Ring road, Surat'),
(1055, '', '2023-02-23', '2023-02-23', '6', 'Ramkaran Maghraj Bajari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '317, Ashta Mkt, Ring Road, Surat'),
(1054, '', '2023-02-23', '2023-02-23', '6', 'Ramniwash Loonkarn Dass Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-209, Spring Velly, Opp Pushp Vatika, New City Light, Surat'),
(1053, '', '2023-02-23', '2023-02-23', '6', 'Rinku Sunil Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-3, Vastu Pooja Complex, Nr Meghna Park, City Light, Surat'),
(1052, '', '2023-02-23', '2023-02-23', '6', 'Roshanlal Norangrai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-2015 Raghukul Mkt, Ring Road, Surat'),
(1051, '', '2023-02-23', '2023-02-23', '6', 'Sailesh Girdhar Prasad Sarraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1017, Anupam Mkt, Ring Road, Surat'),
(1050, '', '2023-02-23', '2023-02-23', '6', 'Sandip Bishwanath Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '302, Orbit Tower, Sahara Darwaza, Surat'),
(1049, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Badri Prasad Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Kanhiya Processing GIDC, pandesara, Surat'),
(1048, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Govind Prasad Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '110, 9th floor, Laxmipati Resi. Raghuram Mark, Umra, Surat'),
(1047, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Omprakash Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '', 'B-303, ICC Building, Ring Road, Surat'),
(1046, '', '2023-02-23', '2023-02-23', '6', 'Sanjay Omprakash Jagnani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '562, Silk City Mkt, Ring road, Surat'),
(1045, '', '2023-02-23', '2023-02-23', '6', 'Santosh Anandkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1044, '', '2023-02-23', '2023-02-23', '6', 'Sarla Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453, Kotsafil Road, Arra Mohalla, Wadifalia, Bhagal, Surat'),
(1043, '', '2023-02-23', '2023-02-23', '6', 'Saurabh Uttam Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-1/301, Capital Greesn, Opp GD Goenka, VIP Road, Surat'),
(1042, '', '2023-02-23', '2023-02-23', '6', 'Shiv Prasad Tulsi Ram Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-5, 401, Nandanvan-2, VIP Road, Surat'),
(1041, '', '2023-02-23', '2023-02-23', '6', 'Shivkumar Murlidhar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '66, Prem Kunj, Subhash Nagar Soc, Ram Chowk, Ghod Dod Road, Surat'),
(1040, '', '2023-02-23', '2023-02-23', '6', 'Shyam Prasad Gorakhram Murarka (SanjivJI)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3/2153-54, Shyam Kunj Building Opp Bhanawala Apt, Nr Ratan Cenema, Salabatpura, Surat'),
(1039, '', '2023-02-23', '2023-02-23', '6', 'Sitaram Prakashchand Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-1155, Raghukul Mkt L.No7-8, Ring Road, Surat'),
(1038, '', '2023-02-23', '2023-02-23', '6', 'Subhkaran Biharilal Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-2365-66, Millenium Mkt, Ring Road, Surat'),
(1037, '', '2023-02-23', '2023-02-23', '6', 'Subhsh Fulchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3018, Silk Plaza, ring Road, Surat'),
(1036, '', '2023-02-23', '2023-02-23', '6', 'Sumit Hari Kishan Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-431-432, Land Mark, Saroli Road, Surat'),
(1035, '', '2023-02-23', '2023-02-23', '6', 'Sumit Omprakash Goyanka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B/2-307, Shyam Villa Appt, Nr Shyam Mandir, VIP Road, Surat'),
(1034, '', '2023-02-23', '2023-02-23', '6', 'Sunilkumar Shivkumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '201, Nalnda Resi. Opp Jolly Resi. Vesu Char Rasta, Surat'),
(1033, '', '2023-02-23', '2023-02-23', '6', 'Sunita Ramgopal Agarwal (Shreeji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'U-1216, STM, Ring Road, Surat'),
(1032, '', '2023-02-23', '2023-02-23', '6', 'Suresh Prahladrai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Solitaire Appt, Brijwasi Estate, Opp. Umrighar School, Parle point, Surat'),
(1031, '', '2023-02-23', '2023-02-23', '6', 'Swati Vinodkumar Agarwal (Madhupriya)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-1532-33, Millenium Mkt, Ring Road, Surat'),
(1030, '', '2023-02-23', '2023-02-23', '6', 'Tarachand Mohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'M-3, J.K Tower, Ring Road, Surat'),
(1029, '', '2023-02-23', '2023-02-23', '6', 'Tolaram Mahavir Prasad Agarwal (Udaipurvati))', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/510, Spring Velly, Opp. Opp Pushp Vatika, New City Light , Surat'),
(1028, '', '2023-02-23', '2023-02-23', '6', 'Umesh Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '538, Ashoka Tower , Ring Road, Surat'),
(1027, '', '2023-02-23', '2023-02-23', '6', 'Urmila Dileep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-614, Ashirwad Palace, Bhatar Road, Surat'),
(1026, '', '2023-02-23', '2023-02-23', '6', 'Vidyakar Nirmalesh Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B.No-468, Anubha Polyweavers pvt ltd, N.H. No-8, Sachin-Palsana Rd, Surat'),
(1025, '', '2023-02-23', '2023-02-23', '6', 'Vijaykumar Surendra Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-205, Rajhans Zion, Opp GD Goenka, Vesu, Surat'),
(1024, '', '2023-02-23', '2023-02-23', '6', 'Vijayshree Nitesh Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-1102, Green Avenue, Ghod dod Surat'),
(1023, '', '2023-02-23', '2023-02-23', '6', 'Vikas Shyamsunder Saharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-711, ICC Building, Ring Road, Surat'),
(1022, '', '2023-02-23', '2023-02-23', '6', 'Vikash Dinesh Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F- Parvati House, Shree Kuberji Textile Park, B/h Belzium Tower, Delhi Gate, Surat'),
(1021, '', '2023-02-23', '2023-02-23', '6', 'Vikash Madanlal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-704, ICC Building, Ring Road, Surat'),
(1020, '', '2023-02-23', '2023-02-23', '6', 'Vikash Nandkishor Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '329, L.B. Appt, Ring Road, Surat'),
(1019, '', '2023-02-23', '2023-02-23', '6', 'Vikash Vijaykumar Sarraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-702, Swarna villa, Opp Sneh Villa, Vip Road Vesu, Surat'),
(1018, '', '2023-02-23', '2023-02-23', '6', 'Vimal Brijmohan Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-801, Amrit kunj, Nr Umabhawan, Bhatar Road, Surat'),
(1017, '', '2023-02-23', '2023-02-23', '6', 'Vinay Lokpriya Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Shop No-22& 23, Super yarn Mkt, Jhappa Bazar, Begam Pura, Surat'),
(1016, '', '2023-02-23', '2023-02-23', '6', 'Yogender Girdharilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '17, Kuberji House, Ring Road, Surat'),
(1015, '', '2023-02-23', '2023-02-23', '6', 'Vishnukant B Paliwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6-B, Ratana Anushree, Nr. Somnath Mandir, Umra, Surat'),
(1014, '', '2023-02-23', '2023-02-23', '6', 'Manoj Kumar H Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1101, Four Season, Ginger Hotel, Piplod, Surat'),
(1013, '', '2023-02-23', '2023-02-23', '7', 'Abhishek Puranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825110476', '439 Millenium-2, Ring Road, Surat'),
(1012, '', '2023-02-23', '2023-02-23', '7', 'Ajay Kashiram Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374534097', 'B-301 Ravi ratan Appt. Nr Someshwar 4 Rasta Vesu, Surat'),
(1011, '', '2023-02-23', '2023-02-23', '7', 'Ajay Mahendra Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825120411', '902, Parth appt, Opp Devkrupa appt City Light, Surat'),
(1010, '', '2023-02-23', '2023-02-23', '7', 'Anil Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375233197', 'B-401, Rameshwarm Palace Opp Sangini Solitaire Vesu, Surat'),
(1009, '', '2023-02-23', '2023-02-23', '7', 'Anil Mahabir Psd Tibrewala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825365992', '11-A, Brijvatika Arjna Estate Parle Point, Surat'),
(1008, '', '2023-02-23', '2023-02-23', '7', 'Anil Mahavir Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825118262', 'E-4, 901 Capital Green Opp GD Goenka Vesu, Surat'),
(1007, '', '2023-02-23', '2023-02-23', '7', 'Anil Mukutbihari Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374727588', 'B-3132 Raghukul Mkt, Lft No-8, Ring Road, Surat'),
(1006, '', '2023-02-23', '2023-02-23', '7', 'Anil Nagjiram Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825015136', 'B-4, Megh Sarwan appt, T-1 City Light, Surat'),
(1005, '', '2023-02-23', '2023-02-23', '7', 'Anilkumar Palaram Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824104176', 'R-701 Devraj Resi., New City Light Surat'),
(1004, '', '2023-02-23', '2023-02-23', '7', 'Ankit Vinod Agarwal (Goyal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721711', '602, Hampton Park, Vesu, Surat'),
(1003, '', '2023-02-23', '2023-02-23', '7', 'Arun Hanuman Prasad Nakipuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119783', 'A-1002, Sangini Solitaire T-A B/h Rajhans Zion Vesu, Surat'),
(1002, '', '2023-02-23', '2023-02-23', '7', 'Arun Kumar Sitaram Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426187584', '12/B, Tower-A, Raj Sidhhi Appt, Vesu, Suratr'),
(1001, '', '2023-02-23', '2023-02-23', '7', 'Arunkumar Amarnath Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377460992', 'A-4, Nidhivan Appt. Nr Gateway Parle Point, Surat'),
(1000, '', '2023-02-23', '2023-02-23', '7', 'Arunkumar Kashi Prasad Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142682', '3019, Silk City Mkt, Ring Road, Surat'),
(999, '', '2023-02-23', '2023-02-23', '7', 'Arvind Jagdish Prasad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925806991', '303 Arjun Complex, opp Ashirwad Complex Bhatar Rd, Surat'),
(998, '', '2023-02-23', '2023-02-23', '7', 'Arvind Ramjivan Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925100604', 'H-501, Floreancee Nr Nandini-1 VIP Rd, Surat'),
(997, '', '2023-02-23', '2023-02-23', '7', 'Ashish Mahavir Psd Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825146853', '2c-Nidhivan Appt Brijwasi Estate Parle Point, Surat'),
(996, '', '2023-02-23', '2023-02-23', '7', 'Ashok Govind Ram Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825130039', 'B-504 Surya Life Style, Nr LP Savani school Vesu, Surat'),
(995, '', '2023-02-23', '2023-02-23', '7', 'Ashok Hari Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377796535', 'D-913 Surya prakash Resi., Nr. Agrshen Bhawan City Light, Surat'),
(994, '', '2023-02-23', '2023-02-23', '7', 'Ashok Jagdish Psd Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376791351', 'A-3/402 Vastu Luxuria Nr VR Mall Dumas Rd, Surat'),
(993, '', '2023-02-23', '2023-02-23', '7', 'Ashok Kishanlal Kandoi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879198899', '7-b, Podar Avenue, Tower -C, Opp. Jogger\'s Park Ghod dod Rd, Surat'),
(992, '', '2023-02-23', '2023-02-23', '7', 'Avishek Shyam Sunder Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327333155', 'A-501 Raj Laxmi Appt, City Light, Surat'),
(991, '', '2023-02-23', '2023-02-23', '7', 'Ayodhyaprasad Jugalkishore Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712950978', 'A-304, Silver Spring Appt, Anand Mahal road Adjan, Surat'),
(990, '', '2023-02-23', '2023-02-23', '7', 'B.S. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715472', 'A-11, Inderlok Appt, Tower-F Opp Lake Garden Piplod, Surat'),
(989, '', '2023-02-23', '2023-02-23', '7', 'Bajaranglal Maliram Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374046612', 'A-502 Shyam Rachna Nr. Shyam Mandir VIP Rd, Surat'),
(988, '', '2023-02-23', '2023-02-23', '7', 'Balkishan Rambhgat Agarwal (Dhanewala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327916626', 'P-6, 302 Capital Green Canal Rd Vesu, Surat'),
(987, '', '2023-02-23', '2023-02-23', '7', 'Basudev Nathmal Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715612', '801 Parth Appt Nr Corner Point City Light, Surat'),
(986, '', '2023-02-23', '2023-02-23', '7', 'Bharat Laxan Kumar Bhutia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377012023', 'C-1, 902 Celebtity Greens Vip rd Vesu, Surat'),
(985, '', '2023-02-23', '2023-02-23', '7', 'Bijaykumar Subhkaran Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374718186', 'B1-401 Spring Valley Opp Pushp Vatika New City Light, Surat'),
(984, '', '2023-02-23', '2023-02-23', '7', 'Bimal Sobhachand Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825715268', '4, Ratan Virat Appt, New City light, Surat'),
(983, '', '2023-02-23', '2023-02-23', '7', 'Bishwanath Motilal Agarwal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142757', 'L-19-20, Rangila Park, Ghod dod Road, Surat'),
(982, '', '2023-02-23', '2023-02-23', '7', 'Bishwanath psd Ishwardas Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374203997', 'A-503 Dream Palace Nr Dream Heritage Canal Rd, Vesu, Surat'),
(981, '', '2023-02-23', '2023-02-23', '7', 'Chakrapani Radha Ballabh Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824411115', '603, Solitare Appt, Brijwasi Estate Parle Point,Umra, Surat'),
(980, '', '2023-02-23', '2023-02-23', '7', 'Deendyal Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374513345', '85, Sunrise Township, Parvat Patia, Surat');
INSERT INTO `member_master_v2` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(979, '', '2023-02-23', '2023-02-23', '7', 'Deepak Kailash Prasad Salampuriya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377024302', 'E-201 Nandanvan-3 Nr Nandini-1 Vesu, Surat'),
(978, '', '2023-02-23', '2023-02-23', '7', 'Devki Prasad Bajaranglal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8469239671', 'B-201 Spring Valley Opp Pushp Vatika New City Light, Surat'),
(977, '', '2023-02-23', '2023-02-23', '7', 'Dilip Jagdish Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825151003', '3-B, Megh sarwan Apt, T-3 City Light, Surat'),
(976, '', '2023-02-23', '2023-02-23', '7', 'Dilip Sitaram Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512597', '8-c, T-E, Ratan Jyoti appt, Opp Gangor Chat Vesu, Surat'),
(975, '', '2023-02-23', '2023-02-23', '7', 'Dilipkumar Durgadutt Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825123500', 'G-1014 Ofira Nr Capital green Vesu, Surat'),
(974, '', '2023-02-23', '2023-02-23', '7', 'Dindyal Nandkishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9714503076', 'H-2A, Ratan Jyoti Appt, Vesu, Surat'),
(973, '', '2023-02-23', '2023-02-23', '7', 'Dinesh Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904721000', '130, Reshamwala Mkt, Ring Road, Surat'),
(972, '', '2023-02-23', '2023-02-23', '7', 'Dipak Gopiram Padia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142861', '7-c, Raj Saheli Resi nr. Raghuram Party plot Umrighar School Parle Point, Surat'),
(971, '', '2023-02-23', '2023-02-23', '7', 'Dr. Mannubhai Kedarmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879207601', 'E-502 Celesteal Dream Canal Rd Vesu, Surat'),
(970, '', '2023-02-23', '2023-02-23', '7', 'Dropatidevi Omprakash Chetani (Manoj Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898090637', '1001 Shanti Niketan appt, Opp SD Jain Vesu, Surat'),
(969, '', '2023-02-23', '2023-02-23', '7', 'Dwarka Psd Parshuram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879132422', 'A-1103 Surya Prakash Resi, City light, Surat'),
(968, '', '2023-02-23', '2023-02-23', '7', 'Gaurishanker Shivcharan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825094284', 'L-925, Ashirwad Palace Bhatar, Surat'),
(967, '', '2023-02-23', '2023-02-23', '7', 'Girdhar Kumar Parmeshwarlal Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9934915010', 'M-9/10 Someshwera Enclave Vesu, Surat'),
(966, '', '2023-02-23', '2023-02-23', '7', 'Girdharilal Hanumabux Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376144799', '520, Shreeji Mkt, Ring Road, Surat'),
(965, '', '2023-02-23', '2023-02-23', '7', 'Girishkumar Shyamlal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825129839', 'B-203 Abhishek Park B/h Pooja Abhishek Athwaline, Surat'),
(964, '', '2023-02-23', '2023-02-23', '7', 'Gopal Deshraj Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825126280', 'F-617 Green Avenue, Opp Joggers Park Ghod dod Rd, Surat'),
(963, '', '2023-02-23', '2023-02-23', '7', 'Gopal Padamchand Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825149764', '8-A, Meghrath Complex, Tower-4 Bhatar Rd, Surat'),
(962, '', '2023-02-23', '2023-02-23', '7', 'Gopal Prasad Shankarlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000966650', 'D-701 Capital Green VIP Road, Surat'),
(961, '', '2023-02-23', '2023-02-23', '7', 'Gopal Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825159675', 'D-8, Palm Aveune Vip rd Vesu, Surat'),
(960, '', '2023-02-23', '2023-02-23', '7', 'Hari Psd Mohanlal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8306697769', '10-C, Ratan Jyoti Appt, T-C, Vesu, Surat'),
(959, '', '2023-02-23', '2023-02-23', '7', 'Hariprasad Rameshwarlal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375992043', 'D-602 Amrut Kunj Appt Nr Umabhawan Bhatar Rd, Surat'),
(958, '', '2023-02-23', '2023-02-23', '7', 'Harishanker Mahavir Psd Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374707211', 'E-1, 902 Capital Green, Opp GD Goenka Vesu, Surat'),
(957, '', '2023-02-23', '2023-02-23', '7', 'Harishkumar Ramjilal Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825284708', 'H-716 Ashirwad Palace, Bhatar Rd, Surat'),
(956, '', '2023-02-23', '2023-02-23', '7', 'Hemant Vimalkumar Dhandharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374714432', '111, Tulsi Mkt, ring Road, Surat'),
(955, '', '2023-02-23', '2023-02-23', '7', 'Hemantkumar Surajmal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824101310', '11-A, Poddar resi. Tower-B Opp GD Goenka Vesu, Surat'),
(954, '', '2023-02-23', '2023-02-23', '7', 'Isha Suchit Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327392615', 'B-1001, Omraj Appt., Opp VR Mall Dumas Rd, Surat'),
(953, '', '2023-02-23', '2023-02-23', '7', 'Jagdish Harnarayan Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825148381', 'A-302, Omraj resi., Opp VR Mall Dumas Rd, Surat'),
(952, '', '2023-02-23', '2023-02-23', '7', 'Jagdish Prasad Badrinarayan Ji Agarwal (Dodrajka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712083730', 'B-903 The Laurels Opp Capital Green Vesu, Surat'),
(951, '', '2023-02-23', '2023-02-23', '7', 'Jai Prakash Noranglal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119217', '6, Radhe Mkt, Ring Road, Surat'),
(950, '', '2023-02-23', '2023-02-23', '7', 'Janardan Jaydeolal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377419047', 'P-5, 1001Capital Green, Opp GD Goenka Vesu, Surat'),
(949, '', '2023-02-23', '2023-02-23', '7', 'Janardhan Kailash Psd Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824124312', 'A-1002 Shrinil Resi., Nr Someshwar Banglow Vesu, Surat'),
(948, '', '2023-02-23', '2023-02-23', '7', 'Jugal Kishore Premsukh das Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426114177', 'B-507 Shukan resi., Nr Water Tanki Vesu, Surat'),
(947, '', '2023-02-23', '2023-02-23', '7', 'Kamal Kishore Daulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328856193', 'A-502 Florence Appt VIP Rd, Surat'),
(946, '', '2023-02-23', '2023-02-23', '7', 'Kamal Nathmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825133566', '501-502 Ajanta Appt Opp G3 Shop Ghod dod Rd, Surat'),
(945, '', '2023-02-23', '2023-02-23', '7', 'Kapil Prakashchandra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376892220', 'A-1002 Megh Dhanush Sarela wadi Ghod dod Rd, Surat'),
(944, '', '2023-02-23', '2023-02-23', '7', 'Kartik Vimal Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825136448', 'R-833 Ashirwad Palace Bhatar Rd, Surat'),
(943, '', '2023-02-23', '2023-02-23', '7', 'Kedarnath Jagdish Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374722160', 'B-203 Rajhans Zion Opp GD Goenka Vesu, Surat'),
(942, '', '2023-02-23', '2023-02-23', '7', 'Kishan Narayan Psd Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512470', 'C-602 Sangini Solitaire B/h Rajhans Zion Vesu, Surat'),
(941, '', '2023-02-23', '2023-02-23', '7', 'Kishan Sundarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825151166', 'G-1102, Florance, VIP Road, Surat'),
(940, '', '2023-02-23', '2023-02-23', '7', 'Krishan Murari Kailashchand Bidawatka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979579766', '803 Umang Appt, Nr Umabhawan Bhatar Rd, Surat'),
(939, '', '2023-02-23', '2023-02-23', '7', 'Krishna Murari Banwarilal Marodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825514541', 'J-521 Ashirwad Palace, Bhatar Rd, Surat'),
(938, '', '2023-02-23', '2023-02-23', '7', 'Lalitkumar Phoolchnad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427825116', 'B-607 Vastugram Appt, Opp Rasid Villa Appt Vesu, Surat'),
(937, '', '2023-02-23', '2023-02-23', '7', 'Laxmikant Radheshyam Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328193525', 'E2, 401 Capital Green Opp GD Goenka Vesu, Surat'),
(936, '', '2023-02-23', '2023-02-23', '7', 'Leeladhar Banwarilal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375743172', 'C-601 Ashirwad Avenue Nr Shyam Mandir VIP Rd, Surat'),
(935, '', '2023-02-23', '2023-02-23', '7', 'Madangopal Shrikeshardev Mor (MG)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327334561', '106 Metro Tower, Ring Road, Surat'),
(934, '', '2023-02-23', '2023-02-23', '7', 'Mahabir Psd Gangaram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099928753', 'W-443, Ashirwad Palace Bhatar Rd, Surat'),
(933, '', '2023-02-23', '2023-02-23', '7', 'Mahavir Psd Sanwarmal Beriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375067442', 'A-26, Chandramani Soc.,Gayatri Mandir UM Rd, Surat'),
(932, '', '2023-02-23', '2023-02-23', '7', 'Mahednra Mohanlal Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825324191', 'E-912 Sripal Resi. Nr Corner Point City Light, Surat'),
(931, '', '2023-02-23', '2023-02-23', '7', 'Mahendra Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824701721', '130, Reshamwala Mkt, Ring Road, Surat'),
(930, '', '2023-02-23', '2023-02-23', '7', 'Mahendra Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377734320', 'A-902 Shyam Rachna Nr VIP Plaza VIP Rd, Surat'),
(929, '', '2023-02-23', '2023-02-23', '7', 'Mahesh Hukmichand Ji Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824129614', 'R-933 Ashirwad Palace Bhatar Rd, Surat'),
(928, '', '2023-02-23', '2023-02-23', '7', 'Mahesh Santkumar Bhimsariya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9662660001', 'C-307 Shripal Residancy City Light Rd Surat'),
(927, '', '2023-02-23', '2023-02-23', '7', 'Manmohan Binodkumar Jasrasaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974788889', '2/A, Sagar Appt Nr Somnath Mahadev Road Parle Point, Surat'),
(926, '', '2023-02-23', '2023-02-23', '7', 'Manoj Atmaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825157127', 'S-601, JJ Mkt, Ring Road, Surat'),
(925, '', '2023-02-23', '2023-02-23', '7', 'Manoj Dwarka Prasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879416685', 'D-1015 Surya Prakash Resi. Nr Agarsen Bhawan City Light, Surat'),
(924, '', '2023-02-23', '2023-02-23', '7', 'Manoj Madanlal Mor', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374735307', '306 Ajnta Mkt, Ring road, Surat'),
(923, '', '2023-02-23', '2023-02-23', '7', 'Mohanlal Madanlal Agrawal (Devra)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327756100', '803 Amardeep Appt Bhatar Rd, Surat'),
(922, '', '2023-02-23', '2023-02-23', '7', 'Motilal Hulashchand Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327401444', '601 Sneh Vila Appt Nr Capital green Vesu, Surat'),
(921, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Gauri Shankar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374724151', 'J-601 Imperial Bloosum Nr. Agam Shopping Center word Vesu, Surat'),
(920, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Gyarsilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925100619', 'A-401 Capital Life Vesu, Surat'),
(919, '', '2023-02-23', '2023-02-23', '7', 'Mukesh Premchand Dokwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8320065807', '57, Radhey Mkt, Ring road, Surat'),
(918, '', '2023-02-23', '2023-02-23', '7', 'Mukeshkumar Raghuvir Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327922265', '1004 Sun Tower Bhatar Rd, Surat'),
(917, '', '2023-02-23', '2023-02-23', '7', 'Nandkishor Shubhkarn Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375508956', 'D-2159-60 Millenium Mkt, Ring Road, Surat'),
(916, '', '2023-02-23', '2023-02-23', '7', 'Nandkishore Birdichand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825126521', '601 Rasik Vila Nr Vastu Gram Vesu, Surat'),
(915, '', '2023-02-23', '2023-02-23', '7', 'Nandkishore Shankarlal Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825369990', 'D-208 Somnath Enclve,B/h Sargam Shopping Center Parle Point, Surat'),
(914, '', '2023-02-23', '2023-02-23', '7', 'Naresh Kamal Kishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377960162', 'A-1004, Shrungar resi. B/h Nandini-1 Vesu'),
(913, '', '2023-02-23', '2023-02-23', '7', 'Naresh Omprakash Fatehsaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374513353', 'Q-1258 STM , Ring road, Surat'),
(912, '', '2023-02-23', '2023-02-23', '7', 'Navlesh Gyarshilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374538699', 'A-402 Capital Life Vesu, Surat'),
(911, '', '2023-02-23', '2023-02-23', '7', 'Niraj Omprakash Nawka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925046983', 'C-1004 Jolly Resi. Nr. SD Jain Vesu, Surat'),
(910, '', '2023-02-23', '2023-02-23', '7', 'Nirajkumar Santosh Bagaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825114533', 'B-103, Monalisa Park B/h Agarsen Bhawan City Light, Surat'),
(909, '', '2023-02-23', '2023-02-23', '7', 'Nirav Govindlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898040091', '12 Maitri Row House Surjjan Soc., Parle Point Surat'),
(908, '', '2023-02-23', '2023-02-23', '7', 'Om Prakash Sitaram Kariwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898041816', 'A-701 Rajhans Zion Opp GD Goenka Vesu, Surat'),
(907, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Bajranglal Ghatwawala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328053621', 'E-4/801 Capital Green Vesu, Surat'),
(906, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Narayan Sundarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374722711', '401 Solitaire Appt Brijwasi Estate Parle Point, Surat'),
(905, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Prahladrai Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904488044', 'A-603 Smita Park Sarela wadi Ghod dod Rd, Surat'),
(904, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Banwarilal Chachan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426113793', 'F-811 Ashirwad Palace Bhatar Rd, Surat'),
(903, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Sagarmal Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898722205', 'A-601-602 Vaishalee Appt Bhatar Rd, Surat'),
(902, '', '2023-02-23', '2023-02-23', '7', 'Pawankumar Sanwarmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328268030', 'P-5, 1102 Capital Green Vesu, Surat'),
(901, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Parbhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000889000', 'A-6, 501 Nandanvan-2 VIP Rd, Surat'),
(900, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Ramawatar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825137963', '803 Madhulika Appt Bhatar, Surat'),
(899, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825123572', 'F-811 Surya Palace City Light, Surat'),
(898, '', '2023-02-23', '2023-02-23', '7', 'Pradeep Sitaram Kejariwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979441777', 'C-302 Sangini Solitair Appt Vesu, Surat'),
(897, '', '2023-02-23', '2023-02-23', '7', 'Pradip Sitaram Agarwal (Hudeelwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374713197', 'C-1005, Rajhans Zion, Vesu, Surat'),
(896, '', '2023-02-23', '2023-02-23', '7', 'Prakash Murarilal Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825144732', 'B-604 Ashirwad Park City Light, Surat'),
(895, '', '2023-02-23', '2023-02-23', '7', 'Prakash Ompraksh Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974110100', 'F-412, Surya Palace City Light, Surat'),
(894, '', '2023-02-23', '2023-02-23', '7', 'Pramod Bhadalmal Agarwal (Satnaliwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377077327', 'P-6, 902, Capital Green, Opp GD Goenka Vesu, Surat'),
(893, '', '2023-02-23', '2023-02-23', '7', 'Pramod Mathura Prasad Sanghi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327055555', 'P-6, 906, Capital Green, Opp GD Goenka Vesu, Surat'),
(892, '', '2023-02-23', '2023-02-23', '7', 'Pramodkumar Birbhan Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825148878', 'D-507, Dreem Heritage Vip rd Vesu, Surat'),
(891, '', '2023-02-23', '2023-02-23', '7', 'Prayagchand Motilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099022012', 'L-9-10, Rangila Park, Ghod dod Road, Surat'),
(890, '', '2023-02-23', '2023-02-23', '7', 'Premkumar Madanlal Agarwal (Makharia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375589500', '1003 Om Terece DRB College New City Light, Surat'),
(889, '', '2023-02-23', '2023-02-23', '7', 'Premkumar Shivshankar Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979987000', 'A-5a, Kassel Braun, Um Road, Vesu, Surat'),
(888, '', '2023-02-23', '2023-02-23', '7', 'Puneetkumar Kesharlal Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825111568', 'B-1104 Surya Palace City Light, Surat'),
(887, '', '2023-02-23', '2023-02-23', '7', 'Radheshyam Baijnath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374716358', 'F-911, Spring Valley Opp Pushp Vatika New City Light, Surat'),
(886, '', '2023-02-23', '2023-02-23', '7', 'Raghunath Prasad Anoop kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374957613', '714 Raghuvir Mall, Parvat Patia, Surat'),
(885, '', '2023-02-23', '2023-02-23', '7', 'Rajeev Kumar Ramavtar Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825176439', 'P.No-50, Kabirkunj, Jamna Nagar Rd Opp Ashirwad Complex Bhatar Rd, Surat'),
(884, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Babubhai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824500025', '101, Sunrise Township Nr Samrat School Parvat Patia, Surat'),
(883, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Bhagirathmal Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913726634', 'A-5, 401 Vastu luxuria Nr VR Mall Dumas Rd, Surat'),
(882, '', '2023-02-23', '2023-02-23', '7', 'Rajendra Puranmal Agarwal (Patwari )', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151556', '403 Vardhman Complex Nr Umabhawan Bhatar Rd, Surat'),
(881, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374713125', 'E-3/B-1, Capital green Vesu, Surat'),
(880, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Basudeo Bhauwala (C.A.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721803', 'P-4, 301 Capital green Vesu, Surat'),
(879, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Indarchand Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825636799', '202 Shri Harihar Appt Nr. Lancer Army School Piplod, Surat'),
(878, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Laxminarayan Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327446868', '501 Arya Punnyabhumi Building Nr Bhagwan Mahavir College VIP Rd, Surat'),
(877, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramnirajan Pransukhka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721371', 'B-704 Sangini Resi. Panas Gam City Light, Surat'),
(876, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramratan Ji Beria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374725131', 'L-1024 Ashirwad Palace Bhatar, Surat'),
(875, '', '2023-02-23', '2023-02-23', '7', 'Rajeshwari Umesh Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427164366', 'O-1800, Millenium Mkt, Ring Road, Surat'),
(874, '', '2023-02-23', '2023-02-23', '7', 'Rajivkumar Omprakash Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825506399', 'D-508, Spring Valley New City Light, Surat'),
(873, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Jugalkishore Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374709001', 'B-7 Raj Siddhi Appt Nr Sukun Appt Vesu, Surat'),
(872, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Pyarelal Ji Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376855222', 'A-4, 101-104 Nandanvan-2 VIP Rd, Surat'),
(871, '', '2023-02-23', '2023-02-23', '7', 'Rajneesh Devidutt Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8306606659', 'P-3, 701 Capital Green Vesu, Surat'),
(870, '', '2023-02-23', '2023-02-23', '7', 'Rajnesh Shrikrishna Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879749583', 'P-3, 902 Capital Green Opp GD Goenka Vesu, Surat'),
(869, '', '2023-02-23', '2023-02-23', '7', 'Rakesh Shree Gopal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825220847', '8-A, Retreat Height Adeshwar Nagar Soc.,Vesu, Surat'),
(868, '', '2023-02-23', '2023-02-23', '7', 'Ramavatar Pokharmal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825110221', '126-127, Millenium Mkt-2, Ring road, Surat'),
(867, '', '2023-02-23', '2023-02-23', '7', 'Ramesh Jagdish Prasad Goyal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9328137107', '601, Shyam Rachna,Nr. Shyam Mandir VIP Rd, Surat'),
(866, '', '2023-02-23', '2023-02-23', '7', 'Ramjilal Ramswaroop Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327275959', 'A-902 Shyam Rachna Nr VIP Plaza VIP Rd, Surat'),
(865, '', '2023-02-23', '2023-02-23', '7', 'Ramratan Arjunlal Baria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427120461', 'K-623 Ashirwad Palace Bhatar, Surat'),
(864, '', '2023-02-23', '2023-02-23', '7', 'Ramswaroop Jagdishprasad Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374532435', '65, Reshamwala Mkt, Ring road, Surat'),
(863, '', '2023-02-23', '2023-02-23', '7', 'Ratan Satyadeo Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879210000', 'Maharaja-81, Someshwara Enclave Somesawar Char Rasta Vesu, Surat'),
(862, '', '2023-02-23', '2023-02-23', '7', 'Ratankumar Pyarelal Drolia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377353265', 'B-601, opera House Nr Agarsen Bhawan City Light, Surat'),
(861, '', '2023-02-23', '2023-02-23', '7', 'Rattan Satyanaran Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904000334', 'B-603 Surya life Style,Vesu, Surat'),
(860, '', '2023-02-23', '2023-02-23', '7', 'Ravi Nirmal Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-2010, Silk Plaaza, Ring Road, Surat'),
(859, '', '2023-02-23', '2023-02-23', '7', 'Sachin Shyambabu Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374954037', 'B-203 Surys Darshan Appt Nr Agarsen Bhawan City Light, Surat'),
(858, '', '2023-02-23', '2023-02-23', '7', 'Sandeep Fatehchand Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377616196', 'B-8, Avenue-77 Nr LP Savani school Vesu, Surat'),
(857, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Banwarilal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925238193', 'E-5,901 Capital green Vesu, Surat'),
(856, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Satyanarayan Psd Agrawal (Sultania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9428059208', 'P-1, 602 Capital Green, Opp GD Goenka Vesu, Surat'),
(855, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Shrinivas Moda', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825267671', 'C-505 Surya Palace City Light, Surat'),
(854, '', '2023-02-23', '2023-02-23', '7', 'Sanjay Shyamsundar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374700713', 'B-503 Dream Heritage, Nr LP Savani school Vesu, Surat'),
(853, '', '2023-02-23', '2023-02-23', '7', 'Santosh Chauthmal Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824058482', 'B-501, Megh Dhanush Appt Nr Sarela Wadi Ghod dod Rd, Surat'),
(852, '', '2023-02-23', '2023-02-23', '7', 'Sarangpani Radhaballab Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375113264', '501 Platinum Appt Parle Point, Surat'),
(851, '', '2023-02-23', '2023-02-23', '7', 'Sarvan Ratanlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377732696', 'C-502 Swaar Sangini Nr Capital green Vesu, Surat'),
(850, '', '2023-02-23', '2023-02-23', '7', 'Satayprakash Dwarkadas Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376799977', '57-58 Kabir Nikunj Soc.,Nr Ashirwad Palace Bhatar Rd, Surat'),
(849, '', '2023-02-23', '2023-02-23', '7', 'Satish Gordhanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824148797', '404 Shree Girdhar -Sweet house Opp Agersen Bhawan City Light, Surat'),
(848, '', '2023-02-23', '2023-02-23', '7', 'Satish Kirodimal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825122634', 'A-2, 2007 Regent Mkt, Ring road, Surat'),
(847, '', '2023-02-23', '2023-02-23', '7', 'Satish Sagarmal Tayal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825122644', '903, Solitaire appt, brijwasi Estate Parle Point, Surat'),
(846, '', '2023-02-23', '2023-02-23', '7', 'Satyaprakash Vishwanath Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374556482', 'I-617 Ashirwad Palace, Bhatar Rd, Surat'),
(845, '', '2023-02-23', '2023-02-23', '7', 'Saurabh Chunilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374717065', 'C-1105 Ashirwad Palace Bhatar, Surat'),
(844, '', '2023-02-23', '2023-02-23', '7', 'Shambhu Ramji Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909900213', '851, Millenium-2, Ring road, Surat'),
(843, '', '2023-02-23', '2023-02-23', '7', 'Shambhukumar Gourishankar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374724663', '703, Garden Place Parle Point, Surat'),
(842, '', '2023-02-23', '2023-02-23', '7', 'Shiv Bhagwan Rughlal Saraogi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'J-2554 Millenium Mkt Ring road, Surat'),
(841, '', '2023-02-23', '2023-02-23', '7', 'Shivcharan Ramprasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'K-822 Ashirwad Palace Bhatar Rd, Surat'),
(840, '', '2023-02-23', '2023-02-23', '7', 'Shivkumar Ramchadra Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374888446', 'B-1019 Kohinoor Mkt, Ring Road, Surat'),
(839, '', '2023-02-23', '2023-02-23', '7', 'Shivratan Haribhagwan Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374707126', '6-b, Megh rath Apt, Tower-1, Opp Park Hpspital Bhatar Rd, Surat'),
(838, '', '2023-02-23', '2023-02-23', '7', 'Shivratan Shyamlal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374707114', 'A-4, 902 Vastu luxria Nr VR Mall Dumas Rd, Surat'),
(837, '', '2023-02-23', '2023-02-23', '7', 'Shrikrishna Parmeshwarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'E-101 Shree Kuberji House, Delhi Gate, Surat'),
(836, '', '2023-02-23', '2023-02-23', '7', 'Shriram Nandkishor Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377483110', 'E-802 Amrit kunj appt Nr Umabhawan Bhatar, Surat'),
(835, '', '2023-02-23', '2023-02-23', '7', 'Shriram Roodmal Agarawal (Bidavatka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '7-B, Brijvatika Nr. Taj Hotel Parle Point, Surat'),
(834, '', '2023-02-23', '2023-02-23', '7', 'Shyam Sunder Bhagwati Prasad Bubna', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327325277', 'F-1001 Floorancce Appt VIP Rd, Surat'),
(833, '', '2023-02-23', '2023-02-23', '7', 'Shyamsundar Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979111655', 'B-1001 Om Raj Resi.,Nr Harmone Resi Vesu, Surat'),
(832, '', '2023-02-23', '2023-02-23', '7', 'Shyamsundar Durgadutt Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825293503', 'G-4, Hariom Mkt Ring Road, Surat'),
(831, '', '2023-02-23', '2023-02-23', '7', 'Subhash Chandra Banwarilal Tibrewal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9376714033', 'D-608 Sperring Valley Nr pushp Vatika New City light'),
(830, '', '2023-02-23', '2023-02-23', '7', 'Subhash Magraj Patodia', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825148568', 'A-10 Platinum Apt Brijwashi Estate Parle Point, Surat'),
(829, '', '2023-02-23', '2023-02-23', '7', 'Sujit Parasram Agarwal (Dodrajka)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825258436', 'P-6, 1001 Capital Green Vesu, Surat'),
(828, '', '2023-02-23', '2023-02-23', '7', 'Sumit Sashikant Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825480891', '635-Ashirwad Palace Bhatar, Surat'),
(827, '', '2023-02-23', '2023-02-23', '7', 'Sunil Gyarsilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374700519', 'A-301 Capital Life Vesu, Surat'),
(826, '', '2023-02-23', '2023-02-23', '7', 'Sunil Kailashchand Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825228829', 'B-802, Om Darshan Appt. G D Goenka School Vesu, Surat'),
(825, '', '2023-02-23', '2023-02-23', '7', 'Sunil Lakhiprasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904711100', 'D-607, Surya Palace,City Light, Surat'),
(824, '', '2023-02-23', '2023-02-23', '7', 'Surendra Radheshyam Nanglia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824111446', 'T-536 Ashirwad Palace Bhatar, Surat'),
(823, '', '2023-02-23', '2023-02-23', '7', 'Suresh Chand Durga Psd Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825141320', 'B-4, Viola Appt Nr Food Mall,Nr Velantine Cinema Piplod, Surat'),
(822, '', '2023-02-23', '2023-02-23', '7', 'Suresh Durgadutt Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979911561', '207, Shyam Chamber, Ring Road, Surat'),
(821, '', '2023-02-23', '2023-02-23', '7', 'Suresh Laxman Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715169', '601 Fortuna Appt, Nr. Ginger Hotel Piplod, Surat'),
(820, '', '2023-02-23', '2023-02-23', '7', 'Suresh Radheshyam Chaudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374723041', 'E-501 Parshwadeep Appt Nr Umabhawan Bhatar, Surat'),
(819, '', '2023-02-23', '2023-02-23', '7', 'Sureshkumar Laxminarayan Agrawal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824177127', '501 Padma kruti Appt Nr SBI Bank City Light, Surat'),
(818, '', '2023-02-23', '2023-02-23', '7', 'Suryakant Radheshyam Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'D-614 Surya Prakash Resi.,Nr. Agarsen Bhawan City Light, Surat'),
(817, '', '2023-02-23', '2023-02-23', '7', 'Sushil Lakhi Prasad Khairari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'P-1, 502 Capital green Vesu, Surat'),
(816, '', '2023-02-23', '2023-02-23', '7', 'Sushil Radhakishan Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879594421', 'C-3099, Millenium Mkt, Ring Road, Surat'),
(815, '', '2023-02-23', '2023-02-23', '7', 'Sushil Shankarlal Bagria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825145783', '401 Sun Stuti Appt G D Goenka School Vesu, Surat'),
(814, '', '2023-02-23', '2023-02-23', '7', 'Tarun Harnathrai Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825112143', '7-C Ratan Mahal (Ravidham) Ghod dod Rd, Surat'),
(813, '', '2023-02-23', '2023-02-23', '7', 'Tarun Kumar Bhagwati Prasad Agarwal (Bharuka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A-201 Monalisa Park B/h Agarsen Bhawan City Light, Surat'),
(812, '', '2023-02-23', '2023-02-23', '7', 'Tejash Brijkumar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '218 Jeevandeep, Ring road, Surat'),
(811, '', '2023-02-23', '2023-02-23', '7', 'Umadevi Hari Psd Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '42/A Chandermani Soc.,Nr. Dharti Namkin City Light, Surat'),
(810, '', '2023-02-23', '2023-02-23', '7', 'Vejoy Kedarnath Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377715597', 'A-202 Shripal resi., Corner Point Shopping Center City Light, Surat'),
(809, '', '2023-02-23', '2023-02-23', '7', 'Vijay Mangturam Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377720342', 'B-1004, Surya Palace Ring Road Surat'),
(808, '', '2023-02-23', '2023-02-23', '7', 'Vijaykumar Radheshyam Tibrewal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825054761', '701 Sanshkruti Appt Nr. Sheetal Dhara Appt City Light, Surat'),
(807, '', '2023-02-23', '2023-02-23', '7', 'Vijaykumar Ramgopal Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825014572', 'A-2, 403 Shyam Villa NR Shyam Mandir Althan, Surat'),
(806, '', '2023-02-23', '2023-02-23', '7', 'Vikash Radheshyam Garg (Kariwal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374720816', 'B-403 Rajlaxmi Appt Nr Agarsen Bhawan City Light, Surat'),
(805, '', '2023-02-23', '2023-02-23', '7', 'Vikash Satish Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377058304', '2-A Ratankunj Ravidham Ghod dod Rd Surat'),
(804, '', '2023-02-23', '2023-02-23', '7', 'Vimal Bisheshwarlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824138297', 'B-904 Shyam Rachna Nr. Shyam Mandir VIP Rd, Surat'),
(803, '', '2023-02-23', '2023-02-23', '7', 'Vinod Deepchand Agarwal (Dohkawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377077625', 'S-335 Ashirwad Palace Bhatar, Surat'),
(802, '', '2023-02-23', '2023-02-23', '7', 'Vinod Jagdish Psd Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374708978', '8-B, Tower-1 Megh Sarman, City Light Surat'),
(801, '', '2023-02-23', '2023-02-23', '7', 'Vinod Jagdish Psd Ji Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374048752', 'A-25, Chandramani Soc., Nr. Gayatri Temple UM Rd, Surat'),
(800, '', '2023-02-23', '2023-02-23', '7', 'Vinodkumar Puranmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824179441', '650 Millenium-2, Ring Road, Surat'),
(799, '', '2023-02-23', '2023-02-23', '7', 'Vipin Narnarayan Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727726991', '403, Solitaire Appt, Brijwasi Estate Umrighar School Parle Point, Surat'),
(798, '', '2023-02-23', '2023-02-23', '7', 'Virendra Jagdish Psd Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374539741', '105 Takshshila Nr Umabhawan Bhatar, Surat'),
(797, '', '2023-02-23', '2023-02-23', '7', 'Vishal Narayan Psd Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879044493', 'B-402 Santaris - Nandanvan Vesu, Surat'),
(796, '', '2023-02-23', '2023-02-23', '7', 'Vishnu Sawarmal Agarwal (Singhal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825205899', 'B-22 Ashirwad Resi., New City Light Surat'),
(795, '', '2023-02-23', '2023-02-23', '7', 'Vishwanath Gourishanker Pacheria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377701727', '23 Reshamnwala Mkt Ring Road, Surat'),
(794, '', '2023-02-23', '2023-02-23', '7', 'Wazirchand Palaram Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825141377', 'R-703 Devraj resi.,New City Light Surat'),
(793, '', '2023-02-23', '2023-02-23', '7', 'Yogesh Satynarayan Temani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825408929', 'A-12-C, Ratan jyoti Appt Nr. Sidhi Vinayak Mandir Vesu, Surat'),
(792, '', '2023-02-23', '2023-02-23', '7', 'Suresh kumar Pushkarlal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374706766', 'J-1688-91 RKT, Ring road, Surat'),
(791, '', '2023-02-23', '2023-02-23', '7', 'VinodKumar lalchand Bubna', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825131661', 'A-702 Vasturam Nr Happy resi Vesu, Surat'),
(790, '', '2023-02-23', '2023-02-23', '7', 'Subhash Banrasilal Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712953327', '41, Ichhanath Soc., Udhna Bas Stande, Surat'),
(789, '', '2023-02-23', '2023-02-23', '7', 'Santosh Ramkishan Makharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825139104', 'B-3207 Kohinoor Mkt'),
(788, '', '2023-02-23', '2023-02-23', '7', 'Kantadevi Ram Sahay bhageria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377770133', 'A-3, 903 Swastik Resi., Vesu, Surat'),
(787, '', '2023-02-23', '2023-02-23', '7', 'Lalit Dipchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721873', 'B-14 Amar Kunj Soc, Nr Rangila Park Ghod dod Rd, Surat'),
(786, '', '2023-02-23', '2023-02-23', '7', 'Vijay Kr. Mahavir Psd Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824117435', 'E-113, Green Avenue, Ghod dod Road, Surat'),
(785, '', '2023-02-23', '2023-02-23', '7', 'Madanlal Kishanlal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375923294', 'C-806, The Laurals Opp Capital green, Vesu, Surat'),
(784, '', '2023-02-23', '2023-02-23', '7', 'Avinash Shyamsunder Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825113570', 'B-102, SNS Interio, CNG Pettrol Pump, Bhatar, Surat'),
(783, '', '2023-02-23', '2023-02-23', '7', 'Pawan Sunderlal Kaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825153203', 'C-306, Surya Darshan, City Light, Surat'),
(782, '', '2023-02-23', '2023-02-23', '7', 'Umesh Shambhudayal Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375513365', 'C-906 Shyam Plaace Nr Shrungar Resi VIP td, Vesu, Surat'),
(781, '', '2023-02-23', '2023-02-23', '7', 'Vimal Chhitarmal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327044100', '257, Millenium-2 Ring Road, Surat'),
(780, '', '2023-02-23', '2023-02-23', '7', 'Nitesh Raghuvir Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879690009', '66-67, Suruchi Soc.,Nr. Jamna Nagar,Ghoddod Rd, Surat'),
(779, '', '2023-02-23', '2023-02-23', '7', 'Subhashchand Phoolchand Agarwal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9574004014', 'F-612 Surya Palace City Light, Surat'),
(778, '', '2023-02-23', '2023-02-23', '7', 'Surendra kumar Sohanlal Agarwal (Chirania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586155577', 'E-409 Surya Palace City Light, Surat'),
(777, '', '2023-02-23', '2023-02-23', '7', 'Manish Kumar RamniranjanTulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375712000', 'M-6 Someshawr Enclave Vesu , Surat'),
(776, '', '2023-02-23', '2023-02-23', '7', 'Omprakash Kanhayanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879554845', 'Y-1 to 6, Laxminarayan Indus. Udhna Road, Surat'),
(775, '', '2023-02-23', '2023-02-23', '7', 'Rajesh Ramnath Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825117933', '702 Paritosh Appt Nr Ashok Pan House City Light, Surat'),
(774, '', '2023-02-23', '2023-02-23', '7', 'Pankaj Prabhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328566882', '6-A, Ratan Jyoti A-tower Nr Sidhivinayk Temple Vesu, Surat'),
(773, '', '2023-02-23', '2023-02-23', '7', 'Suresh Girdharilal Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374735422', 'A-704 Monalisa appt City Light, Surat'),
(772, '', '2023-02-23', '2023-02-23', '7', 'Rajkumar Radheshyam Tulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9624107000', '30 Sangam Soc,Parle Point, Surat'),
(771, '', '2023-02-23', '2023-02-23', '7', 'Bhoopendra Rajendra Psd Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374539306', 'E-410 Dreem Heritage Canal Rd Vesu, Surat'),
(770, '', '2023-02-23', '2023-02-23', '7', 'Bajranglal Narsilal Agrawal (Mittal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328032580', '3/A Ratna Astha Appt b/h SD Jain School Vesu, Surat'),
(769, '', '2023-02-23', '2023-02-23', '14', 'Ramprakash Singeshwar Ji Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142476', '9-A Poddar Avenue t-C , Ghod Road, Surat'),
(768, '', '2023-02-23', '2023-02-23', '14', 'Kailashchand Sitaram Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374587788', '301-Prayag Flates, B/h Sargam Shopping Center, Surat'),
(767, '', '2023-02-23', '2023-02-23', '14', 'Sushil kumar Sanwarmal Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374707484', 'B-803 Ofira , Nr DGVCL, VIP Rd, Surat'),
(766, '', '2023-02-23', '2023-02-23', '14', 'Piyoosh Murarilal Sureka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825109800', '6-A, Mount Blane Appt, Nr Rajhans, piplod, Surat'),
(765, '', '2023-02-23', '2023-02-23', '14', 'Himanshu Umesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978928921', '538, Ashoka Tower, Ring Road, Surat'),
(764, '', '2023-02-23', '2023-02-23', '14', 'Swetanshu Umesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099022555', '538, Ashoka Tower, Ring Road, Surat'),
(763, '', '2023-02-23', '2023-02-23', '14', 'Govind Psd Sanwarmal Agarwal (Gupta)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512789', 'C-411 Surya Prakash Resi., City Light, Surat'),
(762, '', '2023-02-23', '2023-02-23', '14', 'Shivkumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825134548', '36, Chintan Park Soc. , Bhatar Road, Surat'),
(761, '', '2023-02-23', '2023-02-23', '14', 'Ashish Anand Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328028120', 'UG-33, VIP Plaza, VIP Road, Surat'),
(760, '', '2023-02-23', '2023-02-23', '14', 'Manju Mahesh Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377416929', '801-Shri Hari Appt, piplod, Surat'),
(759, '', '2023-02-23', '2023-02-23', '14', 'Pranesh kumar Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427162490', 'C-808 Shyam Palace, Nr Sringar Resi, Vesu, Surat'),
(758, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Ramniwas Dani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825431234', 'A-102 Rajhans Zion, Opp GD Goenka School, Vesu, Surat'),
(757, '', '2023-02-23', '2023-02-23', '14', 'Subhashchandra Gokulchand Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9724333787', 'M-1693-94 Millenium mkt, Ring Road, Surat'),
(756, '', '2023-02-23', '2023-02-23', '14', 'Vijay Agarwal (Kherari)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824704021', '131, Reshamwala Mkt, Ring Road, Surat'),
(755, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Kedarmal Sudarania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825150969', 'A-501 Om Darshan, Nr GD Goenka School Vesu, Surat'),
(754, '', '2023-02-23', '2023-02-23', '14', 'Mitesh Ved Prakash Goel', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426813638', 'C-801, Swaar Sangini, VIP Road, Surat'),
(753, '', '2023-02-23', '2023-02-23', '14', 'Atul Santkumar Parasrampuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825136118', 'B-204 Surya Enclave, City Light, Surat'),
(752, '', '2023-02-23', '2023-02-23', '14', 'Vikrant Sanwarmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375550517', '1001, A-5 Nandanvan-2, VIP Road, Surat'),
(751, '', '2023-02-23', '2023-02-23', '14', 'Mamta Umesh Kr Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712944921', '401 Maarquies heights, Vesu, Surat'),
(750, '', '2023-02-23', '2023-02-23', '14', 'Suruchi Swetanshu Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9687618848', '401 Maarquies heights, Vesu, Surat'),
(749, '', '2023-02-23', '2023-02-23', '14', 'Priyanshi Himanshu Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9016717039', '401 Maarquies heights, Vesu, Surat'),
(748, '', '2023-02-23', '2023-02-23', '14', 'Naman Sushil Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375576658', 'B-1104 Nandavan Appt, Vesu, Surat'),
(747, '', '2023-02-23', '2023-02-23', '14', 'Shiv Kumar Ashok Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825140029', 'B-701 Royal Resi., Nr Pani Ki Tanki, Vesu, Surat'),
(746, '', '2023-02-23', '2023-02-23', '14', 'Chandraprakash Bajranglal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824116206', 'D-1/402 Capital Green, Vesu, Surat'),
(745, '', '2023-02-23', '2023-02-23', '14', 'Pankaj kumar Nandlal Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825153472', '302 Pritosh Appt, City Light, Surat'),
(744, '', '2023-02-23', '2023-02-23', '14', 'Sunil Dwarka Prasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879416000', '6-A The Palm Avenue, E-tower, Vip Road, Surat'),
(743, '', '2023-02-23', '2023-02-23', '14', 'Ravi Raghav Narendra Chhawchharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9662024702', 'A-302 Dream Heritage, Vesu, Surat'),
(742, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Natwarlal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879132545', '501 Solitair Appt (Brijwasi Estate), Parle Point, Surat'),
(741, '', '2023-02-23', '2023-02-23', '14', 'Vikash Natwarlal Agarwal (Tatanwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825113660', '501 Solitair Appt (Brijwasi Estate), Parle Point, Surat'),
(740, '', '2023-02-23', '2023-02-23', '14', 'Barma Haricharanlal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825099320', '401 Sakar Appt, Opp BOB, City light, Surat'),
(739, '', '2023-02-23', '2023-02-23', '14', 'Saurav Krishna Dalmia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909710666', '10/b, B- Tower, Palm Avenue, VIP road, Surat'),
(738, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Mahesh Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9724599993', '801 Shri Hari Appt, Piplod, Surat'),
(737, '', '2023-02-23', '2023-02-23', '14', 'Prerna Abhishek Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9724873379', '801 Shri Hari Appt, Piplod, Surat'),
(736, '', '2023-02-23', '2023-02-23', '14', 'Harsh Hargovind Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142250', 'B-203 Parshwadeep Appt, Bhatar Road, Surat'),
(735, '', '2023-02-23', '2023-02-23', '14', 'Narendra Mohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825919617', 'B-402 Parshwadeep Appt, Bhatar Road, Surat'),
(734, '', '2023-02-23', '2023-02-23', '14', 'Mamta Ashok Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8460526778', 'C-205 Maruti Complex, Parvat Patia, Surat'),
(733, '', '2023-02-23', '2023-02-23', '14', 'Vinod Mahaveer Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825603091', 'C-902 Green Vectory, Althan, Surat'),
(732, '', '2023-02-23', '2023-02-23', '14', 'Murarilal Hariprasad Sureka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374710087', '6A/b Mount Blane Appt, Piplod, Surat'),
(731, '', '2023-02-23', '2023-02-23', '14', 'Suman Piyoosh Sureka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099623155', '6A/b Mount Blane Appt, Piplod, Surat'),
(730, '', '2023-02-23', '2023-02-23', '14', 'Ajay kumar Birolia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327776964', 'Rd.no.4, plot. no.1, station road, udhana'),
(729, '', '2023-02-23', '2023-02-23', '14', 'Sushil Jagdish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879154781', 'B-404 Nest House, New City Light, Surat'),
(728, '', '2023-02-23', '2023-02-23', '14', 'Ravindra Shyamsundra Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825466486', '6-C Arnav Appt, B/h SBI, City Light, Surat'),
(727, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Bimalkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879279836', 'F-611 Surya Darshan Appt, City light, Surat'),
(726, '', '2023-02-23', '2023-02-23', '14', 'Shashank Sushilkumar Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909606752', '6A Pradakrshina Appt, Parle point, Surat'),
(725, '', '2023-02-23', '2023-02-23', '14', 'Sushil Purshottamlal Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375992361', '6A Pradakrshina Appt, Parle point, Surat'),
(724, '', '2023-02-23', '2023-02-23', '14', 'Vijay Dwarkadas Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374077719', '702, G-5, Happy Glouries, Vesu, Surat'),
(723, '', '2023-02-23', '2023-02-23', '14', 'Sanjeev Mangturam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377339388', 'A-2/604 Salasar Palace, Vesu, Surat'),
(722, '', '2023-02-23', '2023-02-23', '14', 'Sushil Ramkumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824173330', '7/A, Arnav Appt, C-Tower, B/h SBI< City Light, Surat'),
(721, '', '2023-02-23', '2023-02-23', '14', 'Prajjwal Praful Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374036777', '103 Punyabhoomi Appt, VIP Road-2, Surat'),
(720, '', '2023-02-23', '2023-02-23', '14', 'Parth Praful Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978466683', '203 Punyabhoomi Appt, VIP Road-2, Surat'),
(719, '', '2023-02-23', '2023-02-23', '14', 'Deepak Vishwanath Nemani (CA)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879202836', 'A-502 Astha Appt Nr. Pooja Abhishek, Vesu, Surat'),
(718, '', '2023-02-23', '2023-02-23', '14', 'Vedraj Ratanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328784084', 'E-609 Dream Heritage, Vesu, Surat'),
(717, '', '2023-02-23', '2023-02-23', '14', 'Vijay Ramsingh Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727715298', '201 Surya Prakash Resi., City light, Surat'),
(716, '', '2023-02-23', '2023-02-23', '14', 'Nitesh Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898018346', 'B-604 Megh Dhanush, Sarelawadi, Ghod dod road, Surat'),
(715, '', '2023-02-23', '2023-02-23', '14', 'Sumeet Vijay Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377716834', '6/A, Raj Siddhi Appt , Tower-A, Vesu, Surat'),
(714, '', '2023-02-23', '2023-02-23', '14', 'Amit Vijay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8155900022', '6/A, Raj Siddhi Appt , Tower-A, Vesu, Surat'),
(713, '', '2023-02-23', '2023-02-23', '14', 'Ankit Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9638283209', '503 Om Palace, Nr Valentine, Dumas Road, Surat'),
(712, '', '2023-02-23', '2023-02-23', '14', 'Jay Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000815829', '303 Om Palace, Nr Valentine, Dumas Road, Surat'),
(711, '', '2023-02-23', '2023-02-23', '14', 'Ramesh Piyarelal Singla', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000313642', 'B-702 Sunrise resi, Vesu, Surat'),
(710, '', '2023-02-23', '2023-02-23', '14', 'Arbind Basudev Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9714075757', 'C-604 Sunrise resi, Vesu, Surat'),
(709, '', '2023-02-23', '2023-02-23', '14', 'Shriram Sohanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825138709', 'A-202 Agam Enclave, Vesu, Surat'),
(708, '', '2023-02-23', '2023-02-23', '14', 'Dineshkumar Gopichand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825114478', 'B-7 Ratan milan Appt, Ghod dod road, Surat'),
(707, '', '2023-02-23', '2023-02-23', '14', 'Anurag Raghunath Prasad Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328215138', 'C-307 Shyam palace, Nr. Shrungar Resi., Vesu, Surat'),
(706, '', '2023-02-23', '2023-02-23', '14', 'Anoopkumar Raghunath Prasad Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374957613', 'C-508 Shyam PalaceNr Shrungar Resi, Vesu ,Surat'),
(705, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Ramkumar Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825139625', 'A-602 Sripal Resi. Nr Corner Point, City Light, Surat'),
(704, '', '2023-02-23', '2023-02-23', '14', 'Om Prakash Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925418448', 'B-807 Sentosa Heights, Althan, Surat'),
(703, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9725120082', 'B-807 Sentosa Heights, Althan, Surat'),
(702, '', '2023-02-23', '2023-02-23', '14', 'Mayank Shambhudayal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909249474', 'B-802, ECO Garden, Canal Troad, Vesu, Surat'),
(701, '', '2023-02-23', '2023-02-23', '14', 'Anjan Neeraj Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879486609', 'E-212 Sripal Resi. Nr Corner Point, City Light, Surat'),
(700, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Deviprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824975223', '302 Monil Park Soc., New City Light, Surat'),
(699, '', '2023-02-23', '2023-02-23', '14', 'Guru Pratap Lalit Kumar Bagla', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000500002', '10 Dev Bandhu Co-op Hsg Soc., Bhatar Road, Surat'),
(698, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sundra Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978928402', 'A-702 Ashirwad Avenue, Nr Shyam Mandir, Althan, Surat'),
(697, '', '2023-02-23', '2023-02-23', '14', 'Mukeshkumar Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824132141', 'A-802 Ashirwad Avenue, Nr Shyam Mandir, Althan, Surat'),
(696, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Mithalal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426806398', 'I-133 Star Galaxy, b/h Shrungar Resi, VIP road, Surat'),
(695, '', '2023-02-23', '2023-02-23', '14', 'Jiwan Ram Shivbaxrai Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824184770', '3B, Rajdeep Appt Opp Money Arcade, VIP Road, Vesu, Surat');
INSERT INTO `member_master_v2` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(694, '', '2023-02-23', '2023-02-23', '14', 'Kapish Jiwanram Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898383273', '3B, Rajdeep Appt Opp Money Arcade, VIP Road, Vesu, Surat'),
(693, '', '2023-02-23', '2023-02-23', '14', 'Ayush Shekhar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375108892', '201 Arya, Punnya Bhoomi Appt, VIP Road-2, Surat'),
(692, '', '2023-02-23', '2023-02-23', '14', 'Ansh Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376008892', '202 Arya, Punnya Bhoomi Appt, VIP Road-2, Surat'),
(691, '', '2023-02-23', '2023-02-23', '14', 'Sureshkumar Gulzarilal Agarwal (Adanpuria)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375137475', 'A-1002, Surya Complex, City light, Surat'),
(690, '', '2023-02-23', '2023-02-23', '14', 'Shyam Babulal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825112535', 'F-202, Amrut kunj Opp Uma bhawan, Bhatar, Surat'),
(689, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Chhabildass Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913833222', 'D-307 Surya Palace, City Light, Surat'),
(688, '', '2023-02-23', '2023-02-23', '14', 'Kanhaiyalal Balkishan Kokra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119939', '29 Swami Nagar Soc., Nr. Vijay Sales, Piplod, Surat'),
(687, '', '2023-02-23', '2023-02-23', '14', 'Khushbu Manish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9830944345', 'D-508, Offera Appt, Nr. Shyam Mandir, Althan, Surat'),
(686, '', '2023-02-23', '2023-02-23', '14', 'Nitin Ramsanehi Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879510663', 'A-1101, Rudram Avenue, Nr. LP Savani, Vesu, Surat'),
(685, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Rajkumar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000887000', 'D-512, Surya Green View, Nr LP Savani, Vesu, Surat'),
(684, '', '2023-02-23', '2023-02-23', '14', 'Piyosh Santoshkumar Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327985451', 'A-201 Rajhans Cosmic, Canal Road, Vesu, Surat.'),
(683, '', '2023-02-23', '2023-02-23', '14', 'Ankit Vinod jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712668687', 'B-504 Royal Pardise, Canal Road, Vesu, Surat'),
(682, '', '2023-02-23', '2023-02-23', '14', 'Atul Sudhir Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824121109', '1-C, Arnav Appt, C-Tower, B/h SBI, City Light, Surat'),
(681, '', '2023-02-23', '2023-02-23', '14', 'Varun Shyam Agrawal.', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979968888', '10-A, Ratan Millan Appt, Ghod dod road, Surat'),
(680, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Kailashchand Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328267943', '11-C, Ratan Jyoti Appt, A-Tower, VIP Road, Surat'),
(679, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sunder Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9227458549', '301, Green Victory, Nr. Petrol Pump, Althan, Surat'),
(678, '', '2023-02-23', '2023-02-23', '14', 'Mahabir Parasd Jamalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9414046537', '517-518, 5th flr. , mkt. saroli, surat'),
(677, '', '2023-02-23', '2023-02-23', '14', 'Deepak Kailash Chandra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8905148435', 'D-704, Green Victary, Nr. Petrol Pump, Althan, Surat'),
(676, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9558821449', 'A-404, Shoration Luxuria, VIP road, Surat'),
(675, '', '2023-02-23', '2023-02-23', '14', 'Kailash Keshardeo Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374073208', '304, Murlidhar Appt, Sweet house Complex, City Light, Surat'),
(674, '', '2023-02-23', '2023-02-23', '14', 'Gauri shankar ji Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879987488', 'B-704, Shyam Rachna, VIP Road, Surat'),
(673, '', '2023-02-23', '2023-02-23', '14', 'Mahaveer Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998014183', 'C-803 Shaligram Hieghts, Canal road, Althan, Surat'),
(672, '', '2023-02-23', '2023-02-23', '14', 'Kamal Sohanlal Ji Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825405621', 'C-401, Pooja Abhishek Appt, Nr. J.h Ambani Schoo, Vesu, Surat'),
(671, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra Hanuman Saharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825333824', 'B-204, Prashwadeep Appt, B/h Arjun Complex, Bhatar, Surat'),
(670, '', '2023-02-23', '2023-02-23', '14', 'Sushil Banwarilal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327380698', 'G-701, Avadh Corolina, B/h DPS School, Dumas, Surat'),
(669, '', '2023-02-23', '2023-02-23', '14', 'Bhuvneshwar Bhagwati Psd Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375902391', 'B-1/801 Celebrity Green, Nr. Blossam, Vesu, Surat'),
(668, '', '2023-02-23', '2023-02-23', '14', 'Prakash Ramchandra Gadodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879795029', '25/203 Priyanka Intercity,Punnakumaria Road, Surat'),
(667, '', '2023-02-23', '2023-02-23', '14', 'Shyamsunder Vinodkumar Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825463143', 'D-701 Punnyabhoomi Appt, VIP Road-2, Surat'),
(666, '', '2023-02-23', '2023-02-23', '14', 'Lokesh Sitaram Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825481271', 'B-18/12, Model Town, Parvat Patia, Surat'),
(665, '', '2023-02-23', '2023-02-23', '14', 'Sangeeta Murarilal Tibra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825109041', 'B-503 Offera Appt, VIP road, Surat'),
(664, '', '2023-02-23', '2023-02-23', '14', 'Amit Sunilkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727388819', 'B-1102 Milano Heights, Piplod, Surat'),
(663, '', '2023-02-23', '2023-02-23', '14', 'Manoj Bishnukumar Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825123389', 'C-206 Rajhans Zion, Canal road, Vesu, Surat'),
(662, '', '2023-02-23', '2023-02-23', '14', 'Rahul Raj kumar Agarwal (Dhanawat)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377076662', '409 Metro Tower, ring Road, Surat'),
(661, '', '2023-02-23', '2023-02-23', '14', 'Sumit Bhanwarlal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7878998022', 'D-402 Devbhumi Apt Nr,. Bhagwan Mahavir collage, VIP Road, Surat'),
(660, '', '2023-02-23', '2023-02-23', '14', 'Sabita Kumari Laxmikant Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377055750', 'A-802 Surya Green View, Canal Road, Vesu, Surat'),
(659, '', '2023-02-23', '2023-02-23', '14', 'Yogesh Ramavtar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8511105623', '803, Nutan Niwas, Rupali nahar, Bhatar, Surat'),
(658, '', '2023-02-23', '2023-02-23', '14', 'Jugalkishore Matadin Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9829843840', 'G-125 Star Galaxy, VIP Road, Vesu, Surat'),
(657, '', '2023-02-23', '2023-02-23', '14', 'Arvind Tulsi Prasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099927234', 'D-107 Shyam Rachna, VIP Road, Surat'),
(656, '', '2023-02-23', '2023-02-23', '14', 'Aushutosh Pawan Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879798702', 'F-111, Vastugram Appt, Vesu, Surat'),
(655, '', '2023-02-23', '2023-02-23', '14', 'Sitaram Pushkarlal Bansal (Sitesh)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426159110', 'J-640, Star Galaxy, VIP road, Vesu, Surat'),
(654, '', '2023-02-23', '2023-02-23', '14', 'Ajay Ashok Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328219078', 'C-101, Sunrise Resi, Nr Someshwara, Vesu, Surat'),
(653, '', '2023-02-23', '2023-02-23', '14', 'Banti Kumar Devidatt Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376991045', '1132, Ambiaji Mkt, Ring Road, Surat'),
(652, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Devidutt Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374769221', '1143, Ambiaji Mkt, Ring Road, Surat'),
(651, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Devidutt Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376082149', '1143, Ambiaji Mkt, Ring Road, Surat'),
(650, '', '2023-02-23', '2023-02-23', '14', 'Ramawatar Ghisalal Mour', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377739193', 'E-309 VAstugram Appt, Nr. Happy Resi., Vesu, Surat'),
(649, '', '2023-02-23', '2023-02-23', '14', 'Akash Vimal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7567564528', 'F-710, Ashirwad Palace, Bhatar Road, Surat'),
(648, '', '2023-02-23', '2023-02-23', '14', 'Rakeshkumar Piramal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825123623', '7-A Brijwatika Appt , Parle Point, Surat'),
(647, '', '2023-02-23', '2023-02-23', '14', 'Hansraj Jagdish Prasad Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328791351', 'D-415, Surya Prakash Resi., City Light, Surat'),
(646, '', '2023-02-23', '2023-02-23', '14', 'Hari Prasad Ramavtar Singrodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374532531', 'P-5, 301 Capital Greens, Canal Road, Vesu, Surat'),
(645, '', '2023-02-23', '2023-02-23', '14', 'Manojkumar Ramavatar Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327975496', 'A/1, 1001 Samarth Enclave, VIP Road, Surat'),
(644, '', '2023-02-23', '2023-02-23', '14', 'Gokulchand Ramprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374716321', 'B-302, DevKrupa Appt, City light, Surat'),
(643, '', '2023-02-23', '2023-02-23', '14', 'Brijesh Ramprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374725001', 'A-301, Nandanvan-1, Opp Hills Height School, Vesu'),
(642, '', '2023-02-23', '2023-02-23', '14', 'Sushil Mahindra Kumar Singal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9596785432', 'C-806, Royal Paradise, Canal Road, Vesu, Surat'),
(641, '', '2023-02-23', '2023-02-23', '14', 'Sitaram Shiv Bax Rai Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824664301', '701, Sajni Complex, City light, Surat'),
(640, '', '2023-02-23', '2023-02-23', '14', 'Naveen Kumar Sitaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099603313', '701, Sajni Complex, City light, Surat'),
(639, '', '2023-02-23', '2023-02-23', '14', 'Rameshkumar Gourishankar Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9331016724', 'C-3/802 Vastu Luxuria, Nr. VR Mall, Dumas Road, Surat'),
(638, '', '2023-02-23', '2023-02-23', '14', 'Manish Sushilkumar Palriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328801350', 'B-504, Surya Residancy, Vesu Surat'),
(637, '', '2023-02-23', '2023-02-23', '14', 'Prateek Sushilkumar Palriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8320963788', 'C-407, Surya Residacney, Vesu Surat'),
(636, '', '2023-02-23', '2023-02-23', '14', 'Murarilal Laduram Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327323237', 'D-1010 Green Avenue appt, Ghod dod road, Surat'),
(635, '', '2023-02-23', '2023-02-23', '14', 'Bharatkumar Mithalal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426807559', 'House No-155, Ramji Mandir, Faliya, Songadh'),
(634, '', '2023-02-23', '2023-02-23', '14', 'Nirmalkumar Rajendra Psd', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9314933349', 'A-1102, Hi-tech Resi., Vesu, Surat'),
(633, '', '2023-02-23', '2023-02-23', '14', 'Vimalkumar Rajendra Prasad Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979769300', 'F-706 Punnybhoomi, VIP Road-2, Surat'),
(632, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825122386', '3-D, Arnav appt, T-C, City light, Surat'),
(631, '', '2023-02-23', '2023-02-23', '14', 'Kunal Sanjay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7990401104', 'C-906, Shyam Rachna , VIP Road, Surat'),
(630, '', '2023-02-23', '2023-02-23', '14', 'Dipesh Chaganlal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904421299', 'C-806 Empire Resi. Opp Nandini-3, Vesu, Surat'),
(629, '', '2023-02-23', '2023-02-23', '14', 'Vineet Bhawani Shankar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825376277', '5-C Raj Sailee Appt, Umra, Surat'),
(628, '', '2023-02-23', '2023-02-23', '14', 'Nishant Bhawani Shankar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979335345', '5-C Raj Sailee Appt, Umra, Surat'),
(627, '', '2023-02-23', '2023-02-23', '14', 'Bimal Kumar Anandlal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824101697', '6-B, Arnav Appt, T-C, City light, Surat'),
(626, '', '2023-02-23', '2023-02-23', '14', 'Aakash Ashok Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377521320', '5-C, Sangam Appt, Parle Point, Surat'),
(625, '', '2023-02-23', '2023-02-23', '14', 'Arjun Satyanarayan Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328218921', '201, Shiv Mangal Apt , Parle Point, Surat'),
(624, '', '2023-02-23', '2023-02-23', '14', 'Shagun Ramavtar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374717481', 'B-904 Keshav Narayan Resi. Bhatar Road, Surat'),
(623, '', '2023-02-23', '2023-02-23', '14', 'Nishant Ramgopal Goyal (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825067320', '301 Swarnavilla-1, VIP Road, Surat'),
(622, '', '2023-02-23', '2023-02-23', '14', 'Shankar Haribhaja Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374738215', 'C-104, Sunrise Resi., Vesu, Surat'),
(621, '', '2023-02-23', '2023-02-23', '14', 'Sanket Mahendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8160432447', 'A-902, Shyam Rachna Appt, VIP Road, Surat'),
(620, '', '2023-02-23', '2023-02-23', '14', 'Ashish Shivkumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879561734', '36, Chintan Park Soc. , Bhatar Road, Surat'),
(619, '', '2023-02-23', '2023-02-23', '14', 'Anurag Khashi Prasad Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374622288', 'D-813, Ratan Shyam Residency, Althan, Surat'),
(618, '', '2023-02-23', '2023-02-23', '14', 'Aditya Anilkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7405109982', 'A1-604, Samarth Enclave, VIP Road, Surat'),
(617, '', '2023-02-23', '2023-02-23', '14', 'Ravi Krishnakumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376197680', 'B1-706,Shyam Villa Appt, VIP road, Surat'),
(616, '', '2023-02-23', '2023-02-23', '14', 'Rajnish Rajkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377066966', 'A-701 Royal Paradise Opp Rajmandir Plazza, Vesu, Surat'),
(615, '', '2023-02-23', '2023-02-23', '14', 'Aruna Anilkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898032961', 'C-204, Nest View, Nr althan Mall, Althan, Surat'),
(614, '', '2023-02-23', '2023-02-23', '14', 'Bipin Pitambar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879068640', 'A3-701 Vastu Luxuria, Nr VR Mall, Dumas Road, Surat'),
(613, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Dindayal Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374890100', '201, Shila Building , Parvat Patia, Surat'),
(612, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Jagdish Prasad Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377229751', 'B-204 Maa Khodiyar Appt, B/h CNG, Godadra, Surat'),
(611, '', '2023-02-23', '2023-02-23', '14', 'Ramniranjan Ramprasad Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427113421', '2B, Ratnaraj , Canal Road, Vesu, Surat'),
(610, '', '2023-02-23', '2023-02-23', '14', 'Vishal Ramprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7600001400', '2B, Ratnaraj , Canal Road, Vesu, Surat'),
(609, '', '2023-02-23', '2023-02-23', '14', 'Shyam Sunder Prahlad Sihotiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825809176', 'A/303 Shagun Villa, Althan, Surat'),
(608, '', '2023-02-23', '2023-02-23', '14', 'Punit Kishanlal Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9819067893', 'C-705, Empire Resi, Vesu, Surat'),
(607, '', '2023-02-23', '2023-02-23', '14', 'Sandip Sitaram Kejariwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374539558', 'J-207, India Textile Market, Ring Road, Surat'),
(606, '', '2023-02-23', '2023-02-23', '14', 'Vijaykumar Shyamlal Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327331664', 'E4-401, Capital Green, Canal Road, Vesu, Surat'),
(605, '', '2023-02-23', '2023-02-23', '14', 'Sumitkumar Murarilal Fatesaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825192062', 'A-2, Arnav Appt. Tower-C, City Light, Surat'),
(604, '', '2023-02-23', '2023-02-23', '14', 'Ansul Yogesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825454700', 'S-537, JJ Mkt, Ring Road, Surat'),
(603, '', '2023-02-23', '2023-02-23', '14', 'Renu Virendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8469559005', '105- Takshila Appt. Bhatar Road, Surat'),
(602, '', '2023-02-23', '2023-02-23', '14', 'Prateek Satishchand Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825129823', 'B1-804, Ornate House, Althan, Surat'),
(601, '', '2023-02-23', '2023-02-23', '14', 'Rahul Anandprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000829893', '30- Raghuvir Row House, City light, Surat'),
(600, '', '2023-02-23', '2023-02-23', '14', 'Manisha Pawan Agarwal (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974572725', '401, Pallav Appt , City light, Surat'),
(599, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Shriniwas Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374712689', 'Q-308 Rajtilak Appt, City light, Surat'),
(598, '', '2023-02-23', '2023-02-23', '14', 'Apoorva Rameshkumar kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9537055544', '9-B Shiromani Appt, Piplod, Surat'),
(597, '', '2023-02-23', '2023-02-23', '14', 'Chetan Vijaykumar Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825453248', '11 Alkapuri Coop- Society , Sumul Dairy Road, Surat'),
(596, '', '2023-02-23', '2023-02-23', '14', 'Surendra Bharatmal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825419345', 'R-1361-62, New Textile, Mkt.ring Road Surat.'),
(595, '', '2023-02-23', '2023-02-23', '14', 'Pawankumar Hanuman Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825095319', '9-C Suncity Appt. Bhatar Road, Surat'),
(594, '', '2023-02-23', '2023-02-23', '14', 'Sahil Krishnagopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377110186', 'B-804, Hitesh Residency, Vesu, Surat'),
(593, '', '2023-02-23', '2023-02-23', '14', 'Renu Niraj Nawka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925046990', 'C-1004, Jolly Residency, Vesu, Surat'),
(592, '', '2023-02-23', '2023-02-23', '14', 'Niraj Damodar Prasad Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374538339', 'C-1301 Ratna Ansh Appt, Vesu, Surat'),
(591, '', '2023-02-23', '2023-02-23', '14', 'Kapil Jiwanram Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9662078774', '3-B Rajdeep Appt, Canal road, Vesu, Surat'),
(590, '', '2023-02-23', '2023-02-23', '14', 'Ashish Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328394945', 'A-102, Shyam Rachna , VIP Road, Surat'),
(589, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Jagdish Prasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586842102', 'B-3A,Ratanjyoti Appt. , VIP Road, Surat'),
(588, '', '2023-02-23', '2023-02-23', '14', 'Pramodkumar Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374723445', '10-B, Brijratan Appt., Parle Point, Surat'),
(587, '', '2023-02-23', '2023-02-23', '14', 'Manisha Bharat Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898736365', '10-B, Ratna Astha Appt., Vesu, Surat'),
(586, '', '2023-02-23', '2023-02-23', '14', 'Nishank Mahesh Chandra Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9724484824', '101, Pratiksha Appt. Parle Point, Surat'),
(585, '', '2023-02-23', '2023-02-23', '14', 'Kushal Kanhaiyalal Jaisnsariya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924111898', 'D-1001, Nandanvan -3, Vesu, Surat'),
(584, '', '2023-02-23', '2023-02-23', '14', 'Sushma Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9276855431', '1002, Nalanda Residency, Vesu, Surat'),
(583, '', '2023-02-23', '2023-02-23', '14', 'Sarita Anup Mohan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374718717', 'A-303 Sainagar Complex, Bhatar Road, Surat'),
(582, '', '2023-02-23', '2023-02-23', '14', 'Sarvankumar Kailashchand Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825146873', 'B-1004, shyamrachna, VIP Road, Surat'),
(581, '', '2023-02-23', '2023-02-23', '14', 'Ratanlal Mohanlal Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825461516', 'F-11A, Poddar Residency, Canal Road, Vesu, Surat'),
(580, '', '2023-02-23', '2023-02-23', '14', 'Sushilkumar Sadhuram Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974547475', 'A-702, Shyam Sangini Residency, Canal Road, Vesu, Surat'),
(579, '', '2023-02-23', '2023-02-23', '14', 'Aayush Amit Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8141503941', 'E-5/302, Capital Green, Canal Road, Vesu, Surat'),
(578, '', '2023-02-23', '2023-02-23', '14', 'Subhash Omprakash Jagnani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377745552', 'B-901, Keshavnarayan Appt.Bhatar Road, Surat'),
(577, '', '2023-02-23', '2023-02-23', '14', 'Rohit Ramavtar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924243369', 'A-201, Amrutkunj , Bhatar road, Surat'),
(576, '', '2023-02-23', '2023-02-23', '14', 'Durgesh Shankarlal Mor', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998912999', 'A-402, Shagun Villa Appt., Althan, Surat'),
(575, '', '2023-02-23', '2023-02-23', '14', 'Shailesh Ramesh Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9930584186', 'A-402, Amrutkunj Appt., Bhatar road, Surat'),
(574, '', '2023-02-23', '2023-02-23', '14', 'Suman Anil Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825415146', '8/C Kassel Brown , UM road, Vesu, Surat'),
(573, '', '2023-02-23', '2023-02-23', '14', 'Ankit Ramgopal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377805803', 'E-802, Blossom , Vesu, Surat'),
(572, '', '2023-02-23', '2023-02-23', '14', 'Rameshkumar Dungarmal Lohia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825141521', 'F-1102, Florence , VIP Road, Surat'),
(571, '', '2023-02-23', '2023-02-23', '14', 'Ashok Omprakash Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879594423', '4-B Tower-2, Megh Sarvan Appt, City Light, Surat'),
(570, '', '2023-02-23', '2023-02-23', '14', 'Kamlesh Narayanswaroop Bhoot', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825258670', 'A3/103, Swastik Residency, Vesu, Surat'),
(569, '', '2023-02-23', '2023-02-23', '14', 'Anjani kumar Mahaveer Gupta (Dr.)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119262', 'E3/602, Capital Green , Vesu, Surat'),
(568, '', '2023-02-23', '2023-02-23', '14', 'Ishan Sanjaykumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909999447', 'C-2/802, Vastu Luxuria, Dumas Road, Surat'),
(567, '', '2023-02-23', '2023-02-23', '14', 'Anup Bijendrakumar Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099937239', 'C-2/801, Vastu Luxuria, Dumas Road, Surat'),
(566, '', '2023-02-23', '2023-02-23', '14', 'Nirmal Basudeo Bhauwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327107851', 'B-2/ 401, Celebrity Green ,Vesu, Surat'),
(565, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Gaurishankar Killa', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825045235', 'B-3/609, Shyam villa Appt.Vip Road, Surat'),
(564, '', '2023-02-23', '2023-02-23', '14', 'Rishukumar Vijay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824704021', 'Tatithaiya Katodara, Surat'),
(563, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Sanjay Sudrania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825150969', 'A-501 Om Darshan Nr GD Goenka, Vesu, Surat'),
(562, '', '2023-02-23', '2023-02-23', '14', 'Avinav Vinay Garodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978707068', '7-A, Sagar Appt, Parle Point, Surat'),
(561, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Sohanlal Tambhakuwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825951271', 'B-404, Surya Lifestyle, Vesu, Surat'),
(560, '', '2023-02-23', '2023-02-23', '14', 'Ravindrakumar Madanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426800775', 'H-504, Shrungar Residency, Vesu, Surat'),
(559, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374702023', '502, Shri Hari Appt., Piplod, Surat'),
(558, '', '2023-02-23', '2023-02-23', '14', 'Hemant Shivratan Deora', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898807220', 'A4/902 Vastu Luxuriya , Dumas Road, Surat'),
(557, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427824726', 'A-1003, Royal Residency, Vesu, Surat'),
(556, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328603524', 'B-304, Royal Residency, Vesu, Surat'),
(555, '', '2023-02-23', '2023-02-23', '14', 'Pravinkumar Shubhakaran Jasansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374416468', '706, Madhulika Appt. Bhatar Road, Surat'),
(554, '', '2023-02-23', '2023-02-23', '14', 'Arvind Bharat Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879594885', 'A-202, Crimson Palace, Althan, Surat'),
(553, '', '2023-02-23', '2023-02-23', '14', 'Amit Pramodshanker Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327811111', '1001, Sidhivinayak Appt, Sarelawadi, Ghod dod Road, Surat'),
(552, '', '2023-02-23', '2023-02-23', '14', 'Dinesh Bhagwatiprasad Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374503111', 'B-1, Ratna Ansh Tower-A, Vesu, Surat'),
(551, '', '2023-02-23', '2023-02-23', '14', 'Basant Laduram Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377782823', '504- RD Highrise , Bhatar road, Surat'),
(550, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Bhagwatiprasad Khandelia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374503580', 'B-1, Ratna Ansh Tower-A, Vesu, Surat'),
(549, '', '2023-02-23', '2023-02-23', '14', 'Pwankumar Radhakishan Murarka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825118279', 'B-606, Green Avenue Complex, Ghod dod Road, Surat'),
(548, '', '2023-02-23', '2023-02-23', '14', 'Harshish Rajesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375752841', 'D-401, Devraj Residency, New City light, Surat'),
(547, '', '2023-02-23', '2023-02-23', '14', 'Umang Arunkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377755504', '101, Shri Hari Appt, Piplod, Surat'),
(546, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Baburam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375251663', '201, A-Tower Pratham Appt., City light, Surat'),
(545, '', '2023-02-23', '2023-02-23', '14', 'Uttam Dindayal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909252068', 'A-702 Rambag Palace, Parvat Patia, Surat'),
(544, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Dindayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8866158523', 'A-402, Ashirwad Avenu, Vip Road, Surat'),
(543, '', '2023-02-23', '2023-02-23', '14', 'Ankit Bajranglal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000804940', 'A-801, Devkrupa Appt. City light, Surat'),
(542, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Ashok Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8285065496', 'A-1/601, Nandanvan -2, VIP road, Surat'),
(541, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9624300777', '11/A, Rajvaibhav Appt, Parle Point, Surat'),
(540, '', '2023-02-23', '2023-02-23', '14', 'Avinash Ramniranjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824500777', '11/A, Rajvaibhav Appt, Parle Point, Surat'),
(539, '', '2023-02-23', '2023-02-23', '14', 'Ramgopal Prabhudayal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9429931374', 'A-401, Sonal Residency, Punagam, Surat'),
(538, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374702141', '8005 Empire Estate, Ring Road, Surat'),
(537, '', '2023-02-23', '2023-02-23', '14', 'Indra Shrikumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377728100', 'D-307, Surya Drashan Appt. City light Road, Surat'),
(536, '', '2023-02-23', '2023-02-23', '14', 'Krishna Pawan Jaisansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978996991', '3076, Kuberji Textile, Saroli, Surat.'),
(535, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Sanwarmal Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328441283', 'G-1456-57, RKTM, Ring Road, Surat'),
(534, '', '2023-02-23', '2023-02-23', '14', 'Balkishan Bajranglal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328223661', '9-C Pragya Appt. Nr Ravishanker Sankul, Bhatar, Surat'),
(533, '', '2023-02-23', '2023-02-23', '14', 'Ravindrakumar Bajranglal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825394803', '8-B Ratan Vilas Appt., Vesu, Surat'),
(532, '', '2023-02-23', '2023-02-23', '14', 'Raghav Sandeep Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825091871', '3-C Megh Sarman Appt No. 3, City Light, Surat'),
(531, '', '2023-02-23', '2023-02-23', '14', 'Siddhant Sharwan Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327591871', '26-A Chandramani Society, UM Road, Surat'),
(530, '', '2023-02-23', '2023-02-23', '14', 'Rekha Anil Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374547764', 'C-806, Suryadarshan Appt, City light, Surat'),
(529, '', '2023-02-23', '2023-02-23', '14', 'Vinodkumar Bachanaram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374735249', 'A-803, Shyam Sangini , Canal Road, Surat'),
(528, '', '2023-02-23', '2023-02-23', '14', 'Seema Ramesh Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824211006', 'C-905, Rajhans Zion, Canal road, Vesu, Surat'),
(527, '', '2023-02-23', '2023-02-23', '14', 'Neeta Vishnu Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8849573410', 'A-801, Star Galaxy, B/h Shrungar Resi., Vesu, Surat'),
(526, '', '2023-02-23', '2023-02-23', '14', 'Mahendra K Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376587788', 'A-403, Astha Appt., Nr Reliance Mall, Vesu, Surat'),
(525, '', '2023-02-23', '2023-02-23', '14', 'Manoj Sagarmal Shihotia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898055326', 'A-702, Royal Paradies, Canal Road, Vesu, Surat'),
(524, '', '2023-02-23', '2023-02-23', '14', 'Ronak Sunil Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9510585717', 'C-107, Shyam Palace, VIP Road, Surat'),
(523, '', '2023-02-23', '2023-02-23', '14', 'Ghanshyam Deepchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825123694', 'A-2/403, Salasar Palace-1, VIP Road,Surat'),
(522, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Hanumanmal Jaisansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824147761', '402- Madhulika Appt. , Bhatar Road, Surat'),
(521, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Ramprakash Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824147374', '9A-C Tower, Poddar Avenue , Ghod dod Road, Surat'),
(520, '', '2023-02-23', '2023-02-23', '14', 'Shivam Ajit Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824121484', 'D-507, Ashirwad Palace, Bhatar, Surat'),
(519, '', '2023-02-23', '2023-02-23', '14', 'Jaikishan Jagdish Goel', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426122393', '204 punnyabhumi F-tower, VIP Road-2, Surat'),
(518, '', '2023-02-23', '2023-02-23', '14', 'Ranjeetkumar Rajkumar Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825116087', '45, Ashirwad Villa, New City Light, Surat'),
(517, '', '2023-02-23', '2023-02-23', '14', 'Vaibhav Uttamchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375517537', 'D-1, 301 Capital Green, Vesu, Surat'),
(516, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Uttamchand Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8980340879', 'D-1, 301 Capital Green, Vesu, Surat'),
(515, '', '2023-02-23', '2023-02-23', '14', 'Saloni Sumit Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825110170', 'F- 901, Cellestial Dream, Canal Road, Vesu, Surat'),
(514, '', '2023-02-23', '2023-02-23', '14', 'Kailashchandra Sua lal Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825145112', '9-b, Tower-2 Meghrath appt, Bhatar road, Surat'),
(513, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151294', '503, Brijkutir Appt. Brijwasi Estate, Parle Point, Surat'),
(512, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Hariprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727499715', 'A-302, Dream Palace, VIP Road, Surat'),
(511, '', '2023-02-23', '2023-02-23', '14', 'Pramodkumar Chhogmal Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824102604', '7-B Rudra Raj Appt., Athwaline, Surat'),
(510, '', '2023-02-23', '2023-02-23', '14', 'Gayatry Devi Arunkumar Chanania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099671793', 'C-308 Ashirwad Park, City Light, Surat'),
(509, '', '2023-02-23', '2023-02-23', '14', 'Sumit Gopalprasad Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375043568', 'B-605, Sheraton Luxuria, VIP Road, Surat'),
(508, '', '2023-02-23', '2023-02-23', '14', 'Tanmay Shrawan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099079678', '8-C, Nidhivan Appt., Brijwashi Estate, Parle Point, Surat'),
(507, '', '2023-02-23', '2023-02-23', '14', 'Prince Rajesh Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974487571', 'E-901, Amrutkunj Appt., Bhatar Road, Surat'),
(506, '', '2023-02-23', '2023-02-23', '14', 'Nirajkumar Rajendraprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825147132', 'A-902, Sharanik Residency, Vesu, Surat'),
(505, '', '2023-02-23', '2023-02-23', '14', 'Rohit Gopalprasad Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712343000', 'B-404, Vastugram Resi., Vesu, Surat'),
(504, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Ratanlal Tulshyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374162181', 'E-203, Ashirwad Enclave, Althan, Surat'),
(503, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Shankar Yaduka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9106410684', 'C-906, Shrenik Residency, Veshu, Surat'),
(502, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Narottamlal Agarwal (Chirania)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426144031', 'B-1105, Sheraton Luxuria, Veshu, Surat'),
(501, '', '2023-02-23', '2023-02-23', '14', 'Vasudev Radheshyam Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8488881888', 'C-109 Green Avenue, Ghod dod Road, Surat'),
(500, '', '2023-02-23', '2023-02-23', '14', 'Ankit Kamal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825268344', 'A-1001, Amrut Kunj Residency, Bhatar Road, Surat'),
(499, '', '2023-02-23', '2023-02-23', '14', 'Jitesh Radheshyam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974766881', 'B-801, Shubham Heights-2, Parvat Patia, Surat'),
(498, '', '2023-02-23', '2023-02-23', '14', 'Anand Prakash Rajkishan Saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099011509', '405, Gokulya -B Building, Puniya Bhoomi, Appt., VIP Road-2, Vesu, Surat'),
(497, '', '2023-02-23', '2023-02-23', '14', 'Rajeshkumar Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426188240', 'P-302 Raj Tilak Appt., City light, Surat'),
(496, '', '2023-02-23', '2023-02-23', '14', 'Anoop Ashok Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377818249', '405, Shyam Residency, Vesu, Surat'),
(495, '', '2023-02-23', '2023-02-23', '14', 'Mukeshkumar Narottam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377930105', 'B-1005, Seraton Luxuria, VIP Road, Surat'),
(494, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Shankarlal Agarwal (Patodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825169610', 'A-303, Nest View, Althan, Surat'),
(493, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Pradeep Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7878081657', 'B-402, keshav Narayan , Bhatar, Surat'),
(492, '', '2023-02-23', '2023-02-23', '14', 'Binod Natharam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374954764', '302, Shiv Mangal Appt., Parle Point, Surat'),
(491, '', '2023-02-23', '2023-02-23', '14', 'Krishnakant Dineshkumar Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586058300', '6/A, Megh Sarman Appt., Tower -2, City Light, Surat'),
(490, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Radheshyam Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374708280', 'A3/403, Vasantvihar Township, New City Light, Surat'),
(489, '', '2023-02-23', '2023-02-23', '14', 'Rekha Sanjay Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879794045', 'A3/403, Vasantvihar Township, New City Light, Surat'),
(488, '', '2023-02-23', '2023-02-23', '14', 'Bhavesh Arunkumar Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8766110354', '403, Paritosh Appt., Parle Point, Surat'),
(487, '', '2023-02-23', '2023-02-23', '14', 'Surendrakumar Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426159031', 'B-404, Sunrise Residency , Vesu, Surat'),
(486, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Parasram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825239516', 'P-6, 701, Capital Green, Vesu, Surat'),
(485, '', '2023-02-23', '2023-02-23', '14', 'Aditya Mahendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9574140000', '603, Malhar Complex, Icchanath, Dumas Road, Surat'),
(484, '', '2023-02-23', '2023-02-23', '14', 'Kamalkumar Shivkumar Bhakkar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376755566', '604, Suramya Appt-2, City light, Surat'),
(483, '', '2023-02-23', '2023-02-23', '14', 'Anil Udaychand Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377151051', 'H-802, Florence, VIP Road, Vesu, Surat'),
(482, '', '2023-02-23', '2023-02-23', '14', 'Pramod Govindram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374709871', 'A-6, 301 Vastu Luxuria, Dumas Road, Surat'),
(481, '', '2023-02-23', '2023-02-23', '14', 'Ashita Rakesh Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825319956', '6 megh Rath Complex, Tower-F, Bhatar Road, Surat'),
(480, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Basudeo Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119956', '6 megh Rath Complex, Tower-F, Bhatar Road, Surat'),
(479, '', '2023-02-23', '2023-02-23', '14', 'Sumit Hanumanprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824173969', '902 Rushabh Appt, Ghod dod Road, Surat'),
(478, '', '2023-02-23', '2023-02-23', '14', 'Samir Hanumanprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824102989', '902 Rushabh Appt, Ghod dod Road, Surat'),
(477, '', '2023-02-23', '2023-02-23', '14', 'Hanumanprasad Santlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824100385', '902 Rushabh Appt, Ghod dod Road, Surat'),
(476, '', '2023-02-23', '2023-02-23', '14', 'Lalitkumar Banwarilal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512368', 'A-701, Swastik Woods, Appt, Veus, Surat'),
(475, '', '2023-02-23', '2023-02-23', '14', 'Dolly Gautam Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8980351848', 'C-808, Shyam Palace, Vesu, Surat'),
(474, '', '2023-02-23', '2023-02-23', '14', 'Pulkit Bulish Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909345699', 'B-604, Surya Lifestyle , Vesu, Surat'),
(473, '', '2023-02-23', '2023-02-23', '14', 'Vansh Mahavirprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427830643', '702, Umang Appt. , Bhatar Road, Surat'),
(472, '', '2023-02-23', '2023-02-23', '14', 'Anshul Mahendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9033606269', 'A-1102, Surya Dashan , City light, Surat'),
(471, '', '2023-02-23', '2023-02-23', '14', 'Manish Satyanarayan Kheradi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374360600', 'B-1, 605, Shyam Villa , City light, Surat'),
(470, '', '2023-02-23', '2023-02-23', '14', 'Deepakkumar Murarilal Agrawal (Bhoot)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377116612', 'B-604, Swarna Villa, Vesu,, Surat'),
(469, '', '2023-02-23', '2023-02-23', '14', 'Banwarilal Harsinghlal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898033136', '10- B , 11 Deepak Society , Bhatar, Surat'),
(468, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Keshardeo Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825126428', '704, RD Highrise , Bhatar , Surat'),
(467, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramgopal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327330794', '704, RD Highrise , Bhatar , Surat'),
(466, '', '2023-02-23', '2023-02-23', '14', 'Premlata Babulal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9537047985', 'D/811, Shyam Palace, VIP Road, Surat'),
(465, '', '2023-02-23', '2023-02-23', '14', 'Anita Haremurari Bhalotra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9408959016', '2-h, New Adarsh Mkt., Shalimar Ring Rd.surat.'),
(464, '', '2023-02-23', '2023-02-23', '14', 'Harsh Kailash Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9601260293', '603 Brij kutir appt, Brijwasi Estate, Parle Point, Surat'),
(463, '', '2023-02-23', '2023-02-23', '14', 'Vaibhav Arvind Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824100026', '3-C Ravi Chhaya Appt. Athwaline, Surat'),
(462, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Garibnath kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374552882', 'D-802 Amrutkunj Appt, Bhatar, Surat'),
(461, '', '2023-02-23', '2023-02-23', '14', 'Surendra Omkarmal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327338520', 'A-402,Shukan Residency , Vesu, Surat'),
(460, '', '2023-02-23', '2023-02-23', '14', 'Umang Biswanath Tekriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898047470', 'F-612, Dreem Heritage, VIP Road, Surat'),
(459, '', '2023-02-23', '2023-02-23', '14', 'Shreyansh Narayan Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7498104384', '904, Sun Tower , Bhatar Road, Surat'),
(458, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Bhagirathmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825132226', '401, Dreem House, Vesu, Surat'),
(457, '', '2023-02-23', '2023-02-23', '14', 'Nirmaladevi Sandeepkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327919990', 'A-703, Sangini Resi., City Light, Surat'),
(456, '', '2023-02-23', '2023-02-23', '14', 'Sunil Kailash Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374986610', 'A-227,. 2nd Floor Sirgaripuri wadi, Rustampura, Surat'),
(455, '', '2023-02-23', '2023-02-23', '14', 'Ramavatar Mohanlal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377193058', 'A-2, 401 Nandanvan-2, VIP Road, Vesu, Surat'),
(454, '', '2023-02-23', '2023-02-23', '14', 'Shruti Kishan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586290002', ''),
(453, '', '2023-02-23', '2023-02-23', '14', 'Dimple Babulal Tantia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327575080', 'D-1, 204 Nandanvan Resi., Vesu, Surat'),
(452, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Sajankumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9714744557', 'A-4, 303, Nandini Appt, Vesu, Surat'),
(451, '', '2023-02-23', '2023-02-23', '14', 'Amit Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998193021', 'D-204 Nandanvan Appt., Vesu, Surat'),
(450, '', '2023-02-23', '2023-02-23', '14', 'Dinesh Motiram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824139414', '504 Pluto Rajhans Campus, Pal, Surat'),
(449, '', '2023-02-23', '2023-02-23', '14', 'Ganesh Madanlal Garodia (Ganeshkant)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825157678', 'B-1001 Nandanvan Appt, Vesu, Surat'),
(448, '', '2023-02-23', '2023-02-23', '14', 'Maheshchandra Motiram Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825125086', 'A-8, Sangeeta Park Soc., Rander Road, Surat'),
(447, '', '2023-02-23', '2023-02-23', '14', 'Harish Laxminarayan Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377355197', 'E-503 Indralok Complex, Piplod, Surat'),
(446, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Surendrakumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377307167', 'A-802, Shobhan Resi, Vesu, Surat'),
(445, '', '2023-02-23', '2023-02-23', '14', 'Anjana Lovesh Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824108221', 'I-901 Shrungar resi., Vesu, Surat'),
(444, '', '2023-02-23', '2023-02-23', '14', 'Rinku Sunilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9624611100', 'D-607, Surya Palace, City Light, Surat'),
(443, '', '2023-02-23', '2023-02-23', '14', 'Mayank Alok Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9714766000', 'A-301 Sarela Tower, Ghod dod Road, Surat'),
(442, '', '2023-02-23', '2023-02-23', '14', 'Manthan Sudhir Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824147183', 'A-402 Sarela Tower, Ghod Dod Road, Surat'),
(441, '', '2023-02-23', '2023-02-23', '14', 'Aamar Sajjan Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376555105', ''),
(440, '', '2023-02-23', '2023-02-23', '14', 'Ramratan Suvalal Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825136697', 'S-735 Ashirwad Palace, Bhatar Road, Surat'),
(439, '', '2023-02-23', '2023-02-23', '14', 'Niraj Shiv Bhagwan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9737048891', '58 Green Park Surat, Sachin Main Rd.un Surat.'),
(438, '', '2023-02-23', '2023-02-23', '14', 'Ankitkumar Balmukund saraf', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825155878', 'I-317, Ashirwad Palace, Bhatar Road, Surat'),
(437, '', '2023-02-23', '2023-02-23', '14', 'Jhabarmall Chunilall Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825122565', 'M-68, Someshwara Enclave , Vesu, Surat'),
(436, '', '2023-02-23', '2023-02-23', '14', 'Narayan Ramavtar Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824100175', 'B-201, Cellestial Dream , Vesu, Surat'),
(435, '', '2023-02-23', '2023-02-23', '14', 'Deepak Pawankumar Chanani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374539537', 'A-204, Sukan residency, Vesu, Surat'),
(434, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kunjbihari Roongta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824165912', 'H-901 Shrungar Resi., Vesu, Surat'),
(433, '', '2023-02-23', '2023-02-23', '14', 'Umesh Jayantikumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978944959', 'B-604 Shyam Rachna, VIP Road, Surat'),
(432, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Chokarika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376617547', 'A-2/602 Celebrity Green, Veus, Surat'),
(431, '', '2023-02-23', '2023-02-23', '14', 'Amitkumar Jaikarnadas Palia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879323360', 'B-608, Sheraton Luxuria, VIP Road, Surat'),
(430, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Sanwarmal Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327979944', 'B-1106, Sheraton Luxuria, VIP Road, Surat'),
(429, '', '2023-02-23', '2023-02-23', '14', 'Raunak Rampal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099553888', 'E-201, Amrut kunj Appt, Bhatar Road, Surat'),
(428, '', '2023-02-23', '2023-02-23', '14', 'Saroj Prakashkumar Agarwal (Todi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328971521', 'B-402 Ashirwad Palace, Bhatar Road, Surat'),
(427, '', '2023-02-23', '2023-02-23', '14', 'Sunil Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327672401', 'D-610, Shyam Palace, VIP Road, Surat'),
(426, '', '2023-02-23', '2023-02-23', '14', 'Nikita Saurabha Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9999010359', 'C-507, Shyam Palace, VIP Road, Surat'),
(425, '', '2023-02-23', '2023-02-23', '14', 'Ajaykumar Parmeshwarlal Bidawatka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376333885', '2A, Ratan Jyoti Appt, VIP Road, Surat'),
(424, '', '2023-02-23', '2023-02-23', '14', 'Kamal Kishore Jugalkishore Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377118041', 'B-504, Saligram Heights, Althan, Surat'),
(423, '', '2023-02-23', '2023-02-23', '14', 'Deepak Pawankumar Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909178655', 'A-402, Devkrupa Heihts Nr. Corner Point City Light, Surat'),
(422, '', '2023-02-23', '2023-02-23', '14', 'Maheshkumar Omprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824102612', '8-A, Arjav -3, Arjav Complex City Light, Surat'),
(421, '', '2023-02-23', '2023-02-23', '14', 'Sachin Virbhan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377313700', 'C-306, Surya Palace City Light, Surat'),
(420, '', '2023-02-23', '2023-02-23', '14', 'Sunita Balwant Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825925078', 'P2/902 Capital green Canal Road VIP Rd, Vesu, Surat'),
(419, '', '2023-02-23', '2023-02-23', '14', 'Devendra Madanlal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879087400', 'B-404, Shyam Sangini Canal Road VIP Rd, Vesu, Surat'),
(418, '', '2023-02-23', '2023-02-23', '14', 'Subhash Ramchandra Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374717242', 'B-902, Keshav Narayan Residency Nr. Vanita Park Soc. Bhatar, Surat'),
(417, '', '2023-02-23', '2023-02-23', '14', 'Ankit Rajesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9699801200', 'B-3A, Rajsiddhi Appt. Op. White Lotus School Vesu, Surat'),
(416, '', '2023-02-23', '2023-02-23', '14', 'Radheshyam Ramchander Aggarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712964080', 'D-507, Poyal Paradise Opp. Rajmandir Palaza Vesu, Surat'),
(415, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Sunil Tulshyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586901323', 'A-303, Harekrishna Appt. Nr. Uma Bhavan Bhatar, Surat'),
(414, '', '2023-02-23', '2023-02-23', '14', 'Maheshkumar Shivkumar Patodiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9714661116', 'A-701, Surya Palace City Light, Surat'),
(413, '', '2023-02-23', '2023-02-23', '14', 'Manoj Ramkishan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327513854', 'C-310, Sukan Residency Vesu, Surat'),
(412, '', '2023-02-23', '2023-02-23', '14', 'Vikash Ramgopal Dhaniwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377780802', 'G-904, Aashirwaad Enclave Opp. Santosa Heights Althan, Surat'),
(411, '', '2023-02-23', '2023-02-23', '14', 'Rajeevkumar Shivkumar Hisaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377303957', '905-Formiya- Punya Bhoomi Vip Road-2, Surat'),
(410, '', '2023-02-23', '2023-02-23', '14', 'Palash Narayan Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9033571214', '301/03, Siddhart Appt.Ghod Dod Road, Surat'),
(409, '', '2023-02-23', '2023-02-23', '14', 'Ramesh Murarilal Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374748600', 'C-301,Royal Regencxy, opp: whitelotus school vesu, surat'),
(408, '', '2023-02-23', '2023-02-23', '14', 'Karan Ramawatar Jain (Sarawgi)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913362037', 'A-303, Shrungal Hill Nr. Pal Residency Althan, Surat'),
(407, '', '2023-02-23', '2023-02-23', '14', 'Babita Sushilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824703121', 'P-1/502, Capital Green Canal Road Vesu, Surat'),
(406, '', '2023-02-23', '2023-02-23', '14', 'Bhavesh Pravinbhai Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374821456', '7/D, Megha Tower-1 Nr. Ishwar Farm Ghod Dod Road, Surat'),
(405, '', '2023-02-23', '2023-02-23', '14', 'Kirtiman Kailashchandra Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825124890', '7-C Arnav Appt Tower-A City light, Surat');
INSERT INTO `member_master_v2` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(404, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Suresh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9016626668', 'B-303 Shyam Srushti Nr Shyam Mandir VIP Road, Vesu'),
(403, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Kumar Parmanand Tulsyan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9510010211', 'D-710, Shyam Palace Vip Road, Surat.'),
(402, '', '2023-02-23', '2023-02-23', '14', 'Alka Jitendra Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327096441', 'F-812, Surya Palace Nr. Surya Complex City Light, Surat.'),
(401, '', '2023-02-23', '2023-02-23', '14', 'Narayan Atmaram Rungta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913910000', 'D-909, Shyam Palace Vip Road, Surat.'),
(400, '', '2023-02-23', '2023-02-23', '14', 'Dhiraj Kumar Jagmohan Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9033335915', 'B-23 Gokul row house Parle ponit, surat'),
(399, '', '2023-02-23', '2023-02-23', '14', 'Vikas Jagdish Kansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879127784', 'B1/301 Vastu Luxuria Nr. VR Mall Dumas Road, Surat.'),
(398, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Balkishan Malchandra', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327973328', 'H-404 Ashirwad Enclave Althan, Surat'),
(397, '', '2023-02-23', '2023-02-23', '14', 'Pankajkumar Vijaykumar Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879527735', '3A, Sagar Appt. B/H. Sargam Shopping Center Parle Point, Surat'),
(396, '', '2023-02-23', '2023-02-23', '14', 'Sandeepkumar Ramchandra Nangalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376931176', 'B-705 Sheraton Luxuria Vip Road, Althan, Surat'),
(395, '', '2023-02-23', '2023-02-23', '14', 'Sureshkumar Chothmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377736264', '304. Pawanganga Palace Ganesh Nagar Society Parvat Patia, Surat'),
(394, '', '2023-02-23', '2023-02-23', '14', 'Sunil Ramratan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825775464', 'A-401, surya Green View Canal Road Vesu, Surat.'),
(393, '', '2023-02-23', '2023-02-23', '14', 'Ajay Nandlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377156007', '501-B/2, Aagam Nr. Star Galaxy Vesu, Surat.'),
(392, '', '2023-02-23', '2023-02-23', '14', 'Kirti Bharat Kasera', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898079340', 'F-517, Green Avenue Ghod Dod Road, Surat'),
(391, '', '2023-02-23', '2023-02-23', '14', 'Chirag Manoj Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825132103', 'A-603, Shyam Vatica Twonship Nr Model Town Parvat Patia, Surat'),
(390, '', '2023-02-23', '2023-02-23', '14', 'Murari Madanlal Agarwal (Biroliya)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375137652', 'A1/501, Nandanvan -2 VIP Road, Vesu, Surat'),
(389, '', '2023-02-23', '2023-02-23', '14', 'Virendra Jagdish Tadi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974007102', 'E-104 Nandini-3 VIP Road, Vesu, Surat'),
(388, '', '2023-02-23', '2023-02-23', '14', 'Chandiprasad Kailash Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377772011', 'B-204 Sunrise Residency Nr. Reliance Mall Vesu, Surat.'),
(387, '', '2023-02-23', '2023-02-23', '14', 'Vinod Madanlal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377732040', 'C-510, Surya Prakash Residency City Light, Surat'),
(386, '', '2023-02-23', '2023-02-23', '14', 'Santosh Rajendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375506851', 'A-102, Vama Apex Nr. Atlanta Shopping Mall Althan, Surat'),
(385, '', '2023-02-23', '2023-02-23', '14', 'Rajeevkumar Sureshchand Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825130895', '5-B, Ratan Mahal Appt. Ravidham Complex Ghod Dod, Surat.'),
(384, '', '2023-02-23', '2023-02-23', '14', 'Ankit Ravishankar Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998188997', 'Bunglow No. 2, Ashirwad Villa Society Nr. St. Thomas School City Light, Surat'),
(383, '', '2023-02-23', '2023-02-23', '14', 'Amit Kumar Tarachand Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8141019525', 'L-2648-49, Millenium, Textile Mkt. Ring Rd. Surat'),
(382, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824189300', 'F-315, Ashirwad Park City Light, Surat'),
(381, '', '2023-02-23', '2023-02-23', '14', 'Rekha Shravankumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824185300', 'F-315, Ashirwad Park, City Light, Surat.'),
(380, '', '2023-02-23', '2023-02-23', '14', 'Sanjaykumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898069191', 'F-2293-94, Millenium Mkt., Ring Road, Surat'),
(379, '', '2023-02-23', '2023-02-23', '14', 'Neeta Anilkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824189300', 'F-315, Ashirwad Park City Light, Surat'),
(378, '', '2023-02-23', '2023-02-23', '14', 'Saroj Sanjaykumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898069191', ''),
(377, '', '2023-02-23', '2023-02-23', '14', 'Anju Babulal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824137216', ''),
(376, '', '2023-02-23', '2023-02-23', '14', 'Shravankumar Basantilal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824185300', 'I-315, Ashirwad Park City Light, Surat'),
(375, '', '2023-02-23', '2023-02-23', '14', 'Gyanprakash Ramkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377788809', ''),
(374, '', '2023-02-23', '2023-02-23', '14', 'Bharat Mammohan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377799012', 'Plot No. 450-A, Gidc, Ankleshwar, Bharuch.'),
(373, '', '2023-02-23', '2023-02-23', '14', 'Bhuvan Harish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9712822321', '318, Ashirwad Palace Bhatar Road, Surat.'),
(372, '', '2023-02-23', '2023-02-23', '14', 'Vishal Pramod Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825198820', 'C-1005 Surya Complex,City Light, Surat'),
(371, '', '2023-02-23', '2023-02-23', '14', 'Ajaykumar Rambhagat Suhasaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824129882', '702-B Suramya Appt. Op. Terapanth Bhavan City Light, Surat.'),
(370, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Gangaram Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9810628607', '2nd Vip Rd. B/h Shyam, Mandir, Bharthana Surat'),
(369, '', '2023-02-23', '2023-02-23', '14', 'Rohit Atmaram Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000082830', 'B-301, Swapnil Palace Nr. Agarwal School Vesu, Surat'),
(368, '', '2023-02-23', '2023-02-23', '14', 'Tushar Lalitkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9726466699', 'A/47, Gujarat Eco Textile, Park, Palsana, Surat'),
(367, '', '2023-02-23', '2023-02-23', '14', 'Manoj Laxmipat Agarwal (Lohia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825748565', 'UG -36-37, VIP Plaza Nr Shyam Mandir VIP Rd Althan'),
(366, '', '2023-02-23', '2023-02-23', '14', 'Harikrishna Malchand Agarwal (Changoiwala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825966874', 'UG -36-37, VIP Plaza Nr Shyam Mandir VIP Rd Althan'),
(365, '', '2023-02-23', '2023-02-23', '14', 'Pawan Banwarilal Chamaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8469892866', 'B-707, Sun Terrace Nr. Nandanvan Vesu, Surat'),
(364, '', '2023-02-23', '2023-02-23', '14', 'Shyamlal Ramswroop Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898634725', '3004, Mahavir Mkt. Ring, Road, Surat'),
(363, '', '2023-02-23', '2023-02-23', '14', 'Mansi kush khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925378601', '8-B Meghrath Appt-No-3 Bhatar Road, Surat'),
(362, '', '2023-02-23', '2023-02-23', '14', 'Yogesh omPrakash Jakholia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512646', '3130, Jai Shree Ram Mkt., Ring Road Surat.'),
(361, '', '2023-02-23', '2023-02-23', '14', 'Arunkumar Vishwanath dalal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374717805', 'A-202 Aditya Complex,Opp Kapdia Health Club Bhatar Road, Surat'),
(360, '', '2023-02-23', '2023-02-23', '14', 'Mamta Ratan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328284710', '4B-1, Chintanpark Appt Bhatar Road, surat'),
(359, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Omprakash Agarwal (Bhoot)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9879327608', '248 Millenium-2 Ring Road, Surat'),
(358, '', '2023-02-23', '2023-02-23', '14', 'Ashish Murarilal Deorah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376171794', '403 Girdhar Appt (Sweet house) Opp Agarsen Garden City Light, Surat'),
(357, '', '2023-02-23', '2023-02-23', '14', 'Anupam Ashokkumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7600875873', 'B-503 Surya Complex City Light, Surat'),
(356, '', '2023-02-23', '2023-02-23', '14', 'Dineshkumar Hareshchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824118165', 'B-604, Nandanvan appt Opp Hills High School Vesu, Surat'),
(355, '', '2023-02-23', '2023-02-23', '14', 'Kartvya Ganesh Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879826611', 'A-601 Shrenik Resi Nr Someshwar Enclave Vesu, Surat'),
(354, '', '2023-02-23', '2023-02-23', '14', 'Vinay Jagdishprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374542339', 'P1/1101, Capital Greens Canal Roaad Vesu, Surat'),
(353, '', '2023-02-23', '2023-02-23', '14', 'Dasharath Inderchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824142817', '9-B-902, Sun Chariot Opp Nandanvan Vesu, Surat'),
(352, '', '2023-02-23', '2023-02-23', '14', 'Mahesh Pushkarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374738201', 'B-302 Sun Terrace Nr Nandanvan Resi'),
(351, '', '2023-02-23', '2023-02-23', '14', 'Nitin Shashikant Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374554234', 'B-803 Keshav Narayan Resi.Nr Vanita Park Soc. Bhatar Road'),
(350, '', '2023-02-23', '2023-02-23', '14', 'Garvit Anilkumar Seksaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374745161', '702 Dev Prayag Appt Nr Terapanth Bhawan City Light, Surat'),
(349, '', '2023-02-23', '2023-02-23', '14', 'Chauthmal Babulal Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9725132501', 'B-3/509 Shyam Villa Opp Shyam Mandir VIP Road, Surat'),
(348, '', '2023-02-23', '2023-02-23', '14', 'Ganesh Babulal Beriwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825242873', 'B-2/607 Shyam Villa Opp Shyam Mandir VIP Road, Surat'),
(347, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119450', '495, Gidc, Pandesara,surat'),
(346, '', '2023-02-23', '2023-02-23', '14', 'Lalit Mohan Ratanlal Jodhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824059076', '6-A, Sangam Appt b/h Saragm Shopping Center Parle Point, Surat'),
(345, '', '2023-02-23', '2023-02-23', '14', 'Anita Sanjay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7229091041', ''),
(344, '', '2023-02-23', '2023-02-23', '14', 'Vijendra Prakash Khetawat', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825117738', '1st Flr. Regent Arcade, Ghod Dod Road, Surat.'),
(343, '', '2023-02-23', '2023-02-23', '14', 'Mahaveer Purshottam Goenka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375514470', ''),
(342, '', '2023-02-23', '2023-02-23', '14', 'Gopi Kishan Beniprasad Bajoria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374513434', 'C-607 Surya Resi.Nr Raj Mandir Complex Vesu, Surat'),
(341, '', '2023-02-23', '2023-02-23', '14', 'Shyamsunder Jagdishprasad Bedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374808897', '3-C, Sangam Appt b/h Sargam Shoping Center Parle Point, Surat'),
(340, '', '2023-02-23', '2023-02-23', '14', 'Madhav Rajendra Miranka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9033183529', '13-B, Rajsiddhi Resi. Vesu, Surat'),
(339, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Dineshkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9427642707', '3A, Arnav Appt. 2 City Light, Surat.'),
(338, '', '2023-02-23', '2023-02-23', '14', 'Vivek Surendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099222333', 'P. No. 9, Shyam Kunj Krishna Vatika City Light, Surat.'),
(337, '', '2023-02-23', '2023-02-23', '14', 'Vikas Surendra Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825901237', 'P. No. 9, Shyam Kunj Krishna Vatika City Light, Surat.'),
(336, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Bhagirathmal Jogani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825107103', '303-304 Satya, Ravishankar Sankul Soc., Bhatar, Surat'),
(335, '', '2023-02-23', '2023-02-23', '14', 'Akshay Anil Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979715071', '501, Murti Residency Nr. Shripal Residency City Light, Surat.'),
(334, '', '2023-02-23', '2023-02-23', '14', 'Tarun Bishnukumar Bhagat', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978072105', 'D-606 Ashirwad Palace Bhatar Road, Surat'),
(333, '', '2023-02-23', '2023-02-23', '14', 'Vardhman Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328195161', '4C Ratan Millan Appt. Ravidham Complex Ghod Dod Road, Surat'),
(332, '', '2023-02-23', '2023-02-23', '14', 'Deepak Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328195160', '2-B, Ratan Millan Appt. Ravidham Complex Ghod Dod Road, Surat'),
(331, '', '2023-02-23', '2023-02-23', '14', 'Pawan Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998760932', 'D-5B, Ratan Jyoti Appt. Nr. SD Jain School Vesu, Surat.'),
(330, '', '2023-02-23', '2023-02-23', '14', 'Suresh Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824129076', 'D-4A, Ratan Jyoti Appt.Nr. SD Jain School Vesu, Surat.'),
(329, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Chananmal Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426154972', '403, Monil Park Nr. Gayatri Mandir City Light, Surat.'),
(328, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Harikesh Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824159098', 'B-304, Somnath Enclave Parle Point, Surat.'),
(327, '', '2023-02-23', '2023-02-23', '14', 'Anup Hariprasad agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374727397', '10B, Retreat Height-A Piplod, Vesu, Surat.'),
(326, '', '2023-02-23', '2023-02-23', '14', 'Dhruv Jaswant Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000072000', '5- Jay Jalaram Society Piplod, Surat'),
(325, '', '2023-02-23', '2023-02-23', '14', 'Ratan Laxminarayan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824101452', 'P. No-5132, Road No-51 , GIDC, Sachin, Surat'),
(324, '', '2023-02-23', '2023-02-23', '14', 'Manoj Govindram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374707423', '6A Prabhavna Building Pratiistha Complex Parle Point, Surat.'),
(323, '', '2023-02-23', '2023-02-23', '14', 'Suresh Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375134068', '1-B Golden Avenue Nr. SBI Bank City Light, Surat.'),
(322, '', '2023-02-23', '2023-02-23', '14', 'Naveen Mahavir Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824266480', 'B-4/412 Shyam Villa Opp Shyam Mandir City Light, Surat.'),
(321, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Laxminarayan Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824158208', 'P. No-5132, Road No-51 , GIDC, Sachin, Surat'),
(320, '', '2023-02-23', '2023-02-23', '14', 'Narayankumar Bajranglal Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9007388500', 'D-1007, Shyam Rachna VIP Road Surat'),
(319, '', '2023-02-23', '2023-02-23', '14', 'Kalpesh Rajendra Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000082000', '5/6, Jay Jalaram Soc. B/h Lake View Garden Piplod, Surat'),
(318, '', '2023-02-23', '2023-02-23', '14', 'Yash Sanjay Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9276070000', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(317, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879970000', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(316, '', '2023-02-23', '2023-02-23', '14', 'Pradip Jagdish Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825135918', 'B-401,Megh Dhanush Apt.,Ghod dod Rd, Surat'),
(315, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Piramal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825116406', '902, Solitaire Apt.,Brijwasi Estate,Parle Point, Surat.'),
(314, '', '2023-02-23', '2023-02-23', '14', 'Anurag Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879930000', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(313, '', '2023-02-23', '2023-02-23', '14', 'Naresh Deendayal Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879327000', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(312, '', '2023-02-23', '2023-02-23', '14', 'Ayush Santosh Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879937000', '21-22, Sai Ashish Soc.,sector-1, Chandini Chowk Piplod,Surat'),
(311, '', '2023-02-23', '2023-02-23', '14', 'Navneet Bhagwati Prasad Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377675431', 'A-604 Star Galaxy Opp Aagam Cross Road Vesu, Surat'),
(310, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Piramal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925520000', '602, Platinum Apt.,Brijwasi Estate,Parle Point, Surat.'),
(309, '', '2023-02-23', '2023-02-23', '14', 'Vinit Bimal Prasad Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328195159', '6-C,RatanMilan Apt.,Ravidham Complex, Ghoddod Rd, Surat'),
(308, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Sajjan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374633326', 'F-702,Shrungar Resi.,Vesu, Surat'),
(307, '', '2023-02-23', '2023-02-23', '14', 'Priyanka Vipin Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9601968720', 'I-101 Shrungar Resi Nr Nandini Vesu, Surat'),
(306, '', '2023-02-23', '2023-02-23', '14', 'Pradeep kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', ''),
(305, '', '2023-02-23', '2023-02-23', '14', 'Nikita Shyam Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7878221252', 'E-402,Ashirwad Avenue,Opp:ShyamBaba Mandir, VIP Rd, Althan, Surat'),
(304, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Kumar Ramjilal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898406829', 'B-1104,Shagun Villa Apt.,Nr.Althan Garden,VIP Rd., Surat'),
(303, '', '2023-02-23', '2023-02-23', '14', 'Ashish PawankumarAgarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7600030663', 'A-702, Poddar Avenue,Nr.Green Avenue, Ghoddod Rd, Surat'),
(302, '', '2023-02-23', '2023-02-23', '14', 'Vivek PawankumarAgarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924519553', 'A-702, Poddar Avenue,Nr.Green Avenue, Ghoddod Rd, Surat'),
(301, '', '2023-02-23', '2023-02-23', '14', 'Ramchandra Murlidhar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374414815', 'D-506, Ashirwad Palace, Bhatar Rd, Surat'),
(300, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Nandkishore Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879016005', '803, Sanjni Complex, City Light, Surat'),
(299, '', '2023-02-23', '2023-02-23', '14', 'Varun Kumar Kishorilal agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328086600', 'C-6/A, Poddar Resi., Nr. S.D.School, Vesu, Surat'),
(298, '', '2023-02-23', '2023-02-23', '14', 'Amit Pradeepkumar Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327040013', 'E-601, Blossom, Beside Agam Shopping World Vesu Abhva Rd, Surat'),
(297, '', '2023-02-23', '2023-02-23', '14', 'Muskan Prashantkumar Rajgarhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9687616970', 'C-428, Elbee Apt., Ring Road, Surat'),
(296, '', '2023-02-23', '2023-02-23', '14', 'Sanket Surendra kumar More', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328323151', '4-D, Ratanjyoti Appt Tower-F Vesu, Surat'),
(295, '', '2023-02-23', '2023-02-23', '14', 'Vivek Pawankumar Sultania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375517504', '324, New Ashirwad Villa Nr.St.Thomas School New City Light Rd, Surat'),
(294, '', '2023-02-23', '2023-02-23', '14', 'Nikunj Shyam Sunder Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825100570', '413 Gupta Tex Print, GIDC, Pandesara, Surat'),
(293, '', '2023-02-23', '2023-02-23', '14', 'Anita Maheshkumar Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377520100', 'G-416 Ashirwad Park City light, Surat'),
(292, '', '2023-02-23', '2023-02-23', '14', 'Sunil Kumar Mangilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825747207', 'C-901 Blossum B/h Agam Shopping World Veus, Surat'),
(291, '', '2023-02-23', '2023-02-23', '14', 'Kamalkumar Badriprasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825546241', 'C-802 Blossom Nr Agam Shoping World Vesu, Surat'),
(290, '', '2023-02-23', '2023-02-23', '14', 'Praveenkumar Jagannath Prasad Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327507090', 'D-3/802 Capital Green Vesu, Surat'),
(289, '', '2023-02-23', '2023-02-23', '14', 'Balkishan Ramsnehi Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377110634', '201 Chitrakut Appt Nr Chandan Park City Light, Surat'),
(288, '', '2023-02-23', '2023-02-23', '14', 'Rajkumar Deendayal Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374511093', 'B-4/201,Nandini Apt.,Nr.SidhiVinayak Mandir,Vesu, Surat'),
(287, '', '2023-02-23', '2023-02-23', '14', 'Shivkumar Ramavtar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879827211', 'A-601 Swar Sangini Appt Nr Capital Green opp DGVCL Vesu, Surat'),
(286, '', '2023-02-23', '2023-02-23', '14', 'Dilipkumar Vinodkumar Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9725570303', 'A-403 Surya Prakash resi. City light, Surat'),
(285, '', '2023-02-23', '2023-02-23', '14', 'Parag Pramod Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9978182582', '601, Swarnavilla-1, Bharthana Vesu, Surat'),
(284, '', '2023-02-23', '2023-02-23', '14', 'Sahil Anilkumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9974400753', 'E-711 Ashirwad Park City Light, Surat'),
(283, '', '2023-02-23', '2023-02-23', '14', 'Girish Shankarlal Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9998997200', 'A-504, Ashirwad Avenue,Nr. Shyam Mandir, Althan, Surat'),
(282, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Murarilal Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825503949', 'B-320, Sns Atria, Haapy Excelencia. Vesu, Surat.'),
(281, '', '2023-02-23', '2023-02-23', '14', 'Ankur Rajkumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377779156', 'A-201 Dream Palace Nr LP Savani School Vesu, Surat'),
(280, '', '2023-02-23', '2023-02-23', '14', 'Vinod Omprakash Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913434968', 'B-201 Monalisha Appt City Light Surat'),
(279, '', '2023-02-23', '2023-02-23', '14', 'Ganeshkumar Sitaram Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377417206', 'C-603, Nest View,Nr. Atlanta Shopping Mall Canal Rd, Althan, Surat'),
(278, '', '2023-02-23', '2023-02-23', '14', 'Hardikkumar Ayodhyaprasad Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898442614', 'A-701 Water Hills resi Opp Shyam Mandir Althan, Surat'),
(277, '', '2023-02-23', '2023-02-23', '14', 'Amitkumar Satyaprakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377767875', 'S-7 & 8, Kabir Nikunj Soc.,Nr Ashirwad Palace, Bhatar, Surat'),
(276, '', '2023-02-23', '2023-02-23', '14', 'Krishna Arun Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924309555', '2a, C-tower Poddar Avenue Ghod dod Rd, Surat'),
(275, '', '2023-02-23', '2023-02-23', '14', 'Santoshkumar Harigopal Jaipuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898078314', 'D-402, Milano Heights, B/H Rajhans Cinema Piplod, Surat'),
(274, '', '2023-02-23', '2023-02-23', '14', 'Arvindkumar Mahendrakumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377280361', 'F-201, Shrungar Resi.,Nr. sidhiVinayak Mandir Vesu, Surat'),
(273, '', '2023-02-23', '2023-02-23', '14', 'Sajjankumar Shankerlal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825703224', 'A-801 Shilp Resi. b/h Sidhhi Vinayak Mandir Vesu, Surat'),
(272, '', '2023-02-23', '2023-02-23', '14', 'Uttamkumar Rajaram Fatehpuria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9601767557', '901 Shiv Appt opp Kapdia Complex Ghod Dod Road, Surat'),
(271, '', '2023-02-23', '2023-02-23', '14', 'Jitendrakumar Omkarmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377761153', 'A-2/502 Vastu luxuria Dumas Road Vesu, Surat'),
(270, '', '2023-02-23', '2023-02-23', '14', 'Pappulal Ramkripal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327691540', 'C-402 Evergreen Nr Hills High School Vesu, Surat'),
(269, '', '2023-02-23', '2023-02-23', '14', 'Ankit Anilkumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9725161268', 'C-501, Royal Regency, Nr. Agam Teen Rastha, Vesu, Surat'),
(268, '', '2023-02-23', '2023-02-23', '14', 'Minakshi Goverdhan Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374525941', 'A-202 Vatika Twonship Model Town Parvat Patia, Surat'),
(267, '', '2023-02-23', '2023-02-23', '14', 'Alok Kumar Ramchandra kedia (CA)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327380986', 'G-204 Chandan Park Soc., Nr Agarsen Bhawan, City light, Surat'),
(266, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Vijay Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377712179', 'A-801, Shyam Rachna Nr. shyamBaba Mandir VIP Rd, Vesu, Surat'),
(265, '', '2023-02-23', '2023-02-23', '14', 'Rajat Rajendra Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8200046356', 'A-101, The Laurels Opp: capital Green Vesu, Surat'),
(264, '', '2023-02-23', '2023-02-23', '14', 'Krishan Ramprasad Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909073546', 'G-104, Shrungar Resi.,B/H Nandini-1 Vesu, Surat'),
(263, '', '2023-02-23', '2023-02-23', '14', 'Gopalkumar Shankerlal Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715956', '709 Spring Valley New City light, Surat'),
(262, '', '2023-02-23', '2023-02-23', '14', 'Hanuman Prasad Hukamchand Kadmawala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374712881', 'E-209, Suryadarsan Apt., Nr. Agrasen Bhavan City Light, Surat'),
(261, '', '2023-02-23', '2023-02-23', '14', 'Prahladdas Nanalal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8980578874', '3033, Ambaji Mkt, Ring Road, Surat'),
(260, '', '2023-02-23', '2023-02-23', '14', 'Shyamlal dwarka prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374558490', '305 Pratap Vihar Nr Vidhya Bharti School Bhatar Road, Surat'),
(259, '', '2023-02-23', '2023-02-23', '14', 'Jugal Damodar Sekhrajaka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825875646', 'M-802,Ashirwad Enclave, Canal Rd, Althan, Surat'),
(258, '', '2023-02-23', '2023-02-23', '14', 'Shashi Bhushan Chabildas Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825113782', 'A-601 Sangini Solitaire Opp Rameshwaram Palace Vesu, Surat'),
(257, '', '2023-02-23', '2023-02-23', '14', 'Puneet Hanuman Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9601168780', 'B-2/604, Nandini Apt., Nr. Sidhivinayak Mandir Vesu, Surat'),
(256, '', '2023-02-23', '2023-02-23', '14', 'Suryaprakash Jugalkishore Jalan (Bunty Ji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925038856', 'C-703 Krish Enclave City light, Surat'),
(255, '', '2023-02-23', '2023-02-23', '14', 'Sunilkumar Chothmal Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9820344085', 'B-1403 Valencia Nr Galleria Hiranandani Powai IIT Mumbai'),
(254, '', '2023-02-23', '2023-02-23', '14', 'Harshvardhan Ashish Agrawal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7046113333', 'E-712, Shripal Resi Nr Corner Point City light, Surat'),
(253, '', '2023-02-23', '2023-02-23', '14', 'Romit Ramesh Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9726548877', '75-76, Kabir Nikunj Soc., Bhatar Rd., Surat'),
(252, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Omprakash Chirania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824146475', 'A-203 Dream Palace Nr dreem Heritage Vesu, Surat'),
(251, '', '2023-02-23', '2023-02-23', '14', 'Anilkumar Puranmal Mahansaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825119502', 'C-502 Floorance VIP Rd Vesu, Surat'),
(250, '', '2023-02-23', '2023-02-23', '14', 'Divyank Pramod Kedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8849507281', 'C-202 Rameshwaram Palace Nr Sangini Solitaire Vesu, Surat'),
(249, '', '2023-02-23', '2023-02-23', '14', 'Babita Sanjay Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375161428', 'A-4, 1103 Nandini-1 Nr Agam Viviana Centre Vesu, Surat'),
(248, '', '2023-02-23', '2023-02-23', '14', 'Rekha Dilipkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376252385', 'B-5, 101 Raj Resi. Opp Ashirwad Palace Bhatar, Surat'),
(247, '', '2023-02-23', '2023-02-23', '14', 'Manisha Satyanarayan Kajaria', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727386080', '601 (Divya) poonay Bhoomi VIP Rd-2 Vesu, Surat'),
(246, '', '2023-02-23', '2023-02-23', '14', 'Babita Ajay Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374722055', 'A-502 The Laurels Opp Capital green Vesu, Surat'),
(245, '', '2023-02-23', '2023-02-23', '14', 'Santosh Bhagirathmal Kauntia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824756540', 'B-13 Poddar Resi. Nr Capital Green Vesu, Surat'),
(244, '', '2023-02-23', '2023-02-23', '14', 'Vineet Vijay Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825327999', 'F-1011, Vastugram Opp Rasik Villa Vesu, Surat'),
(243, '', '2023-02-23', '2023-02-23', '14', 'Ravi Radheshyam jhajharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375852451', '316-320 Sai Darshan mkt, Ring Road, Surat'),
(242, '', '2023-02-23', '2023-02-23', '14', 'Alok Bharat Tulsian', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825100101', '3C Ratan Millan Appt Ram Chowk Ghod dod, Surat'),
(241, '', '2023-02-23', '2023-02-23', '14', 'Ronak Ramakant Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8690702898', 'D-203 (Devya) poonay Bhoomi VIP Rd-2 Vesu, Surat'),
(240, '', '2023-02-23', '2023-02-23', '14', 'Deepak Rajendra PSd Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374708938', 'H-902 Jolly Resi. Vesu, Surat'),
(239, '', '2023-02-23', '2023-02-23', '14', 'Ashokkumar Radheshyam mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825149914', '8/2 Model Town Parvat Patia Surat'),
(238, '', '2023-02-23', '2023-02-23', '14', 'Yogit Sushil Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099904209', 'A-301 Sun Terrace Vesu, Surat'),
(237, '', '2023-02-23', '2023-02-23', '14', 'Seema Sandeep Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374706061', '303, A-3, Vashant Vihar Township UM Road Althan, Surat'),
(236, '', '2023-02-23', '2023-02-23', '14', 'Gaurav Sunil Kumar Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376197420', 'A-704, Akash Enclve Nr Bhimrad Choki Althan, Surat'),
(235, '', '2023-02-23', '2023-02-23', '14', 'Sarita Rajesh Dodrajka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377286474', '1005, 2nd Flr.norarthex Tension, Sahara Darwaja, Ring Rd. Surat'),
(234, '', '2023-02-23', '2023-02-23', '14', 'Sangeeta Aditya Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327443217', 'Sh.no.4,gr.flr. Maharaja Chambers, Salabatpura, Surat'),
(233, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Vishwanath Beswal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9909064175', '204 Kanchanjanga Appt Bhatar, Surat'),
(232, '', '2023-02-23', '2023-02-23', '14', 'Harshit Jayprakash Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375513522', 'C-401 Green Victory opp Althan Petrol pump Althan, Surat'),
(231, '', '2023-02-23', '2023-02-23', '14', 'Narendra Bhagwati Psd Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898641574', 'B-4, 711 Shyam villa Opp Shyam Mandir Althan, Surat'),
(230, '', '2023-02-23', '2023-02-23', '14', 'Ramniwas Kishanlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099143000', 'A-2, 402 Shyam Villa Opp Shyam Mandir Althan, Surat'),
(229, '', '2023-02-23', '2023-02-23', '14', 'Ankit Vimal Dhanuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9510543208', 'B-806 Sheraton Luxuria Nr Shyam Mandir Vip Rd Surat'),
(228, '', '2023-02-23', '2023-02-23', '14', 'Manish HarNarain Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377662777', 'C-806 Nandavan Appt, Vesu, Surat'),
(227, '', '2023-02-23', '2023-02-23', '14', 'Deepak Ashok kumar Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9687921167', 'B-303 Surya Complex City Light, Surat'),
(226, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Kumar Kirorimal Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512703', 'G-91 Ashirwad Villa New City light Surat'),
(225, '', '2023-02-23', '2023-02-23', '14', 'Manish Santosh Kumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327128039', 'G2-102 Happy Glorious Nr Green Fortunes Vesu, Surat'),
(224, '', '2023-02-23', '2023-02-23', '14', 'Pankaj Devidas Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512840', 'C3a, Poddar Resi. Nr Capital Green Vesu, Surat'),
(223, '', '2023-02-23', '2023-02-23', '14', 'Ramkishan Brijlal Jindal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924411033', 'L-225 Ashirwad Palace'),
(222, '', '2023-02-23', '2023-02-23', '14', 'Rajesh Rambilash Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825919864', 'E-102 AASHIWAD AVENUE OPP SHYAM MANDIR ALTHAN'),
(221, '', '2023-02-23', '2023-02-23', '14', 'Mukesh Kumar Jai Bhagwan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327339851', '201 OM TARRACE NR DRB COLLAGE ALTHAN'),
(220, '', '2023-02-23', '2023-02-23', '14', 'Khushal Nandlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099660011', 'A 504 RAJAHANS SYNRONIA ABHVA VILLAGE VESU'),
(219, '', '2023-02-23', '2023-02-23', '14', 'Govind Mannalal Sonthalia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825146686', '3 JIVAN VIKAS SOCIETY ATHWALINES'),
(218, '', '2023-02-23', '2023-02-23', '14', 'Vinay Omprakash Sonthala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374723444', '3 JIVAN VIKAS SOCIETY ATHWALINES'),
(217, '', '2023-02-23', '2023-02-23', '14', 'Naval Ramavtar Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327793761', '402 PRIYANSH TOWER GHODDOD ROAD'),
(216, '', '2023-02-23', '2023-02-23', '14', 'Raj Kumar Ramavatar Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825094208', 'L 625 ASHIRWAD PALACE BHATAR'),
(215, '', '2023-02-23', '2023-02-23', '14', 'Sumeet Bajranglal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9662433011', '102 CIY PARK BHATAR ROAD BHATAR'),
(214, '', '2023-02-23', '2023-02-23', '14', 'Narendra Babulal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327182401', '404 SHREE KRISHNA APT SWEET HOUSE AGRASEEN GARDEN CITYLIGHT UMRA'),
(213, '', '2023-02-23', '2023-02-23', '14', 'Chothmal Sitaram Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8306836386', 'B401 VAIBHAV APT. NR RUPALI BHATAR'),
(212, '', '2023-02-23', '2023-02-23', '14', 'Manish Om Prakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9922722855', 'NH-53, Chinchpada RAIWAY STATION ROAD Navapur'),
(211, '', '2023-02-23', '2023-02-23', '14', 'Niranjan Om Prakash Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9922722855', 'NH-53, Chinchpada RAIWAY STATION ROAD Navapur'),
(210, '', '2023-02-23', '2023-02-23', '14', 'Parag Arun Shyamsunder Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '6354686702', 'B-1101 ECO GARDENS RAJHANS ZION VESU'),
(209, '', '2023-02-23', '2023-02-23', '14', 'Raj Satya Narayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375030389', 'A/6B RAJSIDDHI APT NR WHITELOUTOS SCHOOL VESU'),
(208, '', '2023-02-23', '2023-02-23', '14', 'Pratik Pramod Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9510235615', 'B-608 SHILPA REC. VESU'),
(207, '', '2023-02-23', '2023-02-23', '14', 'Anup Dipchand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374721149', 'I-717 ASHIRWAD PALACE BHATAR'),
(206, '', '2023-02-23', '2023-02-23', '14', 'Ankit Meghraj Kadamwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426114252', 'C172 STAR GALAXY VESU'),
(205, '', '2023-02-23', '2023-02-23', '14', 'Hitesh Gokul Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9913784686', 'E8A PALM AVENU VESU'),
(204, '', '2023-02-23', '2023-02-23', '14', 'Sajjan Satya Narayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328272332', '701 VARDAWAN COMPLEX NR ROOPALI CANAL BHATAR'),
(203, '', '2023-02-23', '2023-02-23', '14', 'Binay Rajkumar Budhia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9727252188', '207 SUKAN RECEDENCY'),
(202, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Ridhkaran Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9530162315', 'G6 1102 HAPPY GLORIOUS REC. VESU'),
(201, '', '2023-02-23', '2023-02-23', '14', 'Ashok Banwarilal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825161318', 'I 1001 BLOSSOM CANAL ROAD VESU'),
(200, '', '2023-02-23', '2023-02-23', '14', 'Ravi Ramesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825907431', '202 PALLAV APT NR ASKHOK PAN HOUSE CITYLIGHT'),
(199, '', '2023-02-23', '2023-02-23', '14', 'Ramswaroop Bajranglal Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825414925', 'D201 AKASH EVERGREEN CANAL ROAD VESU'),
(198, '', '2023-02-23', '2023-02-23', '14', 'Madhudevi Sushil Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824571945', '2-7B ARJAV APT CITYLIGHT'),
(197, '', '2023-02-23', '2023-02-23', '14', 'Mamta Surendra Sagtani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824211161', 'P 31002 CAPITAL GREEN VESU'),
(196, '', '2023-02-23', '2023-02-23', '14', 'Bhawani Shankar AGR. Hudeelwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825703988', '62 DAYALJI PARK ROW HOUSE PARVAT PATIYA'),
(195, '', '2023-02-23', '2023-02-23', '14', 'Piyush Ramavtar Sihotiya', 0, '', 'E', '127.0.0.1', '', '', 0, '', '6351106223', 'E/602 ASHIRWAD AVENUE VIP ROAD'),
(194, '', '2023-02-23', '2023-02-23', '14', 'Manish Bhawani Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715099', '11/A F BLOCK INDRLOK COMPLEX PIPLOD'),
(193, '', '2023-02-23', '2023-02-23', '14', 'Mohit Ashok Singal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8866581258', 'D 701 HAPPY REC. VESU'),
(192, '', '2023-02-23', '2023-02-23', '14', 'Mukul Vinod Agarwal Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7043135619', 'B1 906SHYAM VATIKA MODEL TOWN PARVAT PATIYA'),
(191, '', '2023-02-23', '2023-02-23', '14', 'Rahul Satishkumar Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9099029293', 'L1/601 AVADH COPPER STONE DUMAS'),
(190, '', '2023-02-23', '2023-02-23', '14', 'Arun Nandkishor Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375264189', 'B 402 ROYAL REGENCY WHITE LOTOUS VESU'),
(189, '', '2023-02-23', '2023-02-23', '14', 'Rajendra Banwarilal Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374540151', 'F 1101 BLOSSOM IMPIRIAL VESU'),
(188, '', '2023-02-23', '2023-02-23', '14', 'Sharwan Kanhaiyalal Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898301502', '403 SHIV DARSHAN SOCIETY BHATAR'),
(187, '', '2023-02-23', '2023-02-23', '14', 'Anand Bimal B Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327382919', 'A 1002 0FIRA NR CROMA VIP ROAD'),
(186, '', '2023-02-23', '2023-02-23', '14', 'Vivek Shambhunath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898614510', 'D 707 VASTUGRAM APT SHIP RESID. VESU'),
(185, '', '2023-02-23', '2023-02-23', '14', 'Nilesh Pradeep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8866449735', 'I 602 RAJHANS GRANDEZA NR CAPITAL GREEN VESU'),
(184, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Jagdish Prasad Keyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426154955', '801 PARITOSH APT CITYLIGHT'),
(183, '', '2023-02-23', '2023-02-23', '14', 'Rekha Vinod Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7878169787', 'C 410 SURYA PRAKASH RECID. CITYLIGHT'),
(182, '', '2023-02-23', '2023-02-23', '14', 'Vinitadevi M. Khaitan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377196554', 'C 911 SURYA PRAKASH CITYLIGHT'),
(181, '', '2023-02-23', '2023-02-23', '14', 'Surendra Shabhuprasad Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825147823', 'D4 PRAGNA APT RAVI SHANKAR SANKUL SOC. BHATAR'),
(180, '', '2023-02-23', '2023-02-23', '14', 'Chanchal Rajendra Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925889700', 'C 1106 DREAM HERITAGE VESU'),
(179, '', '2023-02-23', '2023-02-23', '14', 'Mahendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9979450400', 'C 1106 DREAM HERITAGE VESU'),
(178, '', '2023-02-23', '2023-02-23', '14', 'Pradeep Kumar Vishwanath Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825085885', 'B 804 SHRIPAL RECIDENCY CORNER POINT VESU'),
(177, '', '2023-02-23', '2023-02-23', '14', 'Surendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377928613', 'C 3/203 VASANT VIHAR UDHNA MAGDALLA'),
(176, '', '2023-02-23', '2023-02-23', '14', 'Narendra Mohanlal Goyal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825921281', 'A 1003 DEVKRUPA APT CORNER POINT CITYLIGHT'),
(175, '', '2023-02-23', '2023-02-23', '14', 'Sashikant Vinodkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374592000', 'A 401 MONALISHA OPERA HOUSE CITYLIGHT'),
(174, '', '2023-02-23', '2023-02-23', '14', 'Ramakant Vinodkumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328166281', 'A 401 MONALISHA OPERA HOUSE CITYLIGHT'),
(173, '', '2023-02-23', '2023-02-23', '14', 'Narendra Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374725651', 'C 807 SHRIPAL RECIDENCY CITYLIGHT'),
(172, '', '2023-02-23', '2023-02-23', '14', 'Ravindra Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377138898', 'C 303 SANGANI REC. CITYLIGHT'),
(171, '', '2023-02-23', '2023-02-23', '14', 'Umashankar Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328177281', 'F 915 ASHIRWAD PARK CITYLIGHT'),
(170, '', '2023-02-23', '2023-02-23', '14', 'Anil Dwarkaprasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377138899', 'C 806SHRIPAL REC CITYLIGHT'),
(169, '', '2023-02-23', '2023-02-23', '14', 'Urmilaben Satyanarayan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8511525438', 'C-401, Nest View Appt Nr Atlanta Mall Althan Surat'),
(168, '', '2023-02-23', '2023-02-23', '14', 'Satyanarayan Dayaram Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328002741', '1029 new manish mkt., begampura, ringrd. surat'),
(167, '', '2023-02-23', '2023-02-23', '14', 'Ayush Gordhan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9322252504', 'C4/102 CELIBRITY GREEN BEHIND HAPPY HALLMARK VESU'),
(166, '', '2023-02-23', '2023-02-23', '14', 'Aditya Ashok Kumar Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8609289098', '704 SATH SANGATH NR RADIO STATION BHATAR'),
(165, '', '2023-02-23', '2023-02-23', '14', 'Ashok Hargohindrai Singhal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825132156', 'B 605 SHRIPAL RECI. CITYLIGHT'),
(164, '', '2023-02-23', '2023-02-23', '14', 'Yogesh Purshottam Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925235733', 'B 905 SHRIPAL RECI. CORNER POINT CITYLIGHT'),
(163, '', '2023-02-23', '2023-02-23', '14', 'Rajeev Kulbir Singh Singh', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825108420', 'A 802 ROYAL PARADISE OPP RAJMANDIR VESU'),
(162, '', '2023-02-23', '2023-02-23', '14', 'Nishant Naresh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879199304', 'A3/302 VASTU LUXURIA VR MALL VESU'),
(161, '', '2023-02-23', '2023-02-23', '14', 'Manish Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9586500600', 'G-802 Rajhans Royalton Nr GD Goenka School Vesu,Surat'),
(160, '', '2023-02-23', '2023-02-23', '14', 'Ritesh Binod Bhauwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327572244', '3165-66, new textile mkt., ring rd. surat'),
(159, '', '2023-02-23', '2023-02-23', '14', 'Radha Sandeep Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376248390', '502 MURLIDHAR APT SWEET HOUSING SOC. CITYLIGHT'),
(158, '', '2023-02-23', '2023-02-23', '14', 'Rekha Bharat Nathani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327670233', 'B 508 SHUKAN REC VESU'),
(157, '', '2023-02-23', '2023-02-23', '14', 'OM Prakash Jagdish PSD Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376772093', 'P4 CAPITAL GREEN VESU'),
(156, '', '2023-02-23', '2023-02-23', '14', 'Jaya Rohit Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377778444', '801 ADARSHILA APT PARLEPOINT'),
(155, '', '2023-02-23', '2023-02-23', '14', 'Arvind Naresh Kumar Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9726286491', 'S 614 RAJTILAK APT PANAS GAM CITYLIGHT'),
(154, '', '2023-02-23', '2023-02-23', '14', 'Rakesh Sureshchand Jain', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374718224', 'B301 OM DARSHAN GD GOENKA VESU'),
(153, '', '2023-02-23', '2023-02-23', '14', 'Ashish Mahavir PSD Patwari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327693516', 'B 302 RAMESHWARAM PALACE VESU'),
(152, '', '2023-02-23', '2023-02-23', '14', 'Sunita Shushil Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9924510832', 'A 801 SURYA PALACE PARLEPOINT'),
(151, '', '2023-02-23', '2023-02-23', '14', 'Kiran Arun Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825132702', '718, Abhisek Mkt, Ring Road, Surat'),
(150, '', '2023-02-23', '2023-02-23', '14', 'Abhishek Jagdish PSD Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374505096', '701 PRAKRUTI APT OPP UMA BHAVAN BHATAR'),
(149, '', '2023-02-23', '2023-02-23', '14', 'Deepak Kumar Santosh Bedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898055889', 'PLOTD9 BALAJI NAGAR SOC'),
(148, '', '2023-02-23', '2023-02-23', '14', 'Sandeep Santosh Bedia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898045889', 'PLOTD9 BALAJI NAGAR SOC'),
(147, '', '2023-02-23', '2023-02-23', '14', 'Sachin Vinod Miharia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377725899', 'D 602 SWAGAT COMPLEX OPP DR WORLD PARVAT PATIYA'),
(146, '', '2023-02-23', '2023-02-23', '14', 'Ashok Shyamlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374727566', 'GF 711 SURYADARSHAN APT CITYLIGHT'),
(145, '', '2023-02-23', '2023-02-23', '14', 'Anil Jhabarmal Beriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9429928451', 'B906 SURYA REC NE MOONLIGHT VESU'),
(144, '', '2023-02-23', '2023-02-23', '14', 'Vinayak Inayak Anil Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7490024851', '303 VASTU SHIL APT LP SAVANI ADAJAN'),
(143, '', '2023-02-23', '2023-02-23', '14', 'Nisha Naval Kishor Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824169373', '6B ARJAV APT CITYLIGHT'),
(142, '', '2023-02-23', '2023-02-23', '14', 'Sanjay Juglkishor Khetan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9925134005', 'E5 502CAPITAL GREENS VESU'),
(141, '', '2023-02-23', '2023-02-23', '14', 'Amit Parasram Agarwal (Dodrajka)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825249834', 'P2 601CAPITAL GREENS VESU'),
(140, '', '2023-02-23', '2023-02-23', '14', 'Suman Kumar Gadia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327512304', '401 PARITOSH APT CITYLIGHT'),
(139, '', '2023-02-23', '2023-02-23', '14', 'Lakhi Prasad Agarwal Todi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825352157', '352, millenium-2 textile, mkt, anjana farm, surat'),
(138, '', '2023-02-23', '2023-02-23', '14', 'Nandlal Mulchand More', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327333988', 'C 806 SHYAM PALACE VESU'),
(137, '', '2023-02-23', '2023-02-23', '14', 'Pramod Babulal Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374547132', 'A8A PALM AVENUE VIP2 VESU'),
(136, '', '2023-02-23', '2023-02-23', '14', 'Santosh Nandkishor Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377909000', 'A 702 AMRUT DHARA APT GHODDOD ROAD'),
(135, '', '2023-02-23', '2023-02-23', '14', 'Shilpa Parakh Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9228880888', '1B BRIJ VATIKA VRIJWASHI ESTATE UMRA'),
(134, '', '2023-02-23', '2023-02-23', '14', 'Kamlesh Prasad Modi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374715824', 'C704 NANDANVAN 1 VESU'),
(133, '', '2023-02-23', '2023-02-23', '14', 'Anand Bajranglal Khemka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376221346', '708 SHERETON BEHIND SHYAM MANDIR ALTHAN'),
(132, '', '2023-02-23', '2023-02-23', '14', 'Kuldeep Sitaram Kejriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9904807821', 'D809 SHYAM PALACE VESU'),
(131, '', '2023-02-23', '2023-02-23', '14', 'Avinash Vijay Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824137411', 'B 1004SURYA PALACE CITYLIGHT'),
(130, '', '2023-02-23', '2023-02-23', '14', 'Amit Vijay Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825803214', 'B 1004SURYA PALACE CITYLIGHT'),
(129, '', '2023-02-23', '2023-02-23', '14', 'Purshottam Shivcharn Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825160910', 'U-838 Ashirwad Palace Bhatar Road'),
(128, '', '2023-02-23', '2023-02-23', '14', 'Benigopal Shivcharan Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825246643', 'T-836, Ashirwad Palace Bhatar Road'),
(127, '', '2023-02-23', '2023-02-23', '14', 'Nitin Balmukand Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '8000626160', 'B-702, Green Victory Nr Altan Petrol Pump Althan'),
(126, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal (President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(125, '', '2023-02-23', '2023-02-23', '8', 'Ratanlal Daruka (Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825110170', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(124, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Agarwal (Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151811', 'G-8, ICC Complex, Ring Road, Surat'),
(123, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (PPI)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(122, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala (Sin. Vice President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(121, '', '2023-02-23', '2023-02-23', '8', 'Natwarlal Tatanwala (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825834627', '2001, Anmol Market, Ring Road, Surat'),
(120, '', '2023-02-23', '2023-02-23', '8', 'Motilal Jalan (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9327401444', '601 Sneh villa Appt, Vesu, Surat'),
(119, '', '2023-02-23', '2023-02-23', '8', 'Ashok J Singhal (Joit Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376791351', 'A-3, 402 Vastu Luxuria, Dumas Rd, Surat'),
(118, '', '2023-02-23', '2023-02-23', '8', 'Shyam Sunder Sihotia (Joint Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825809176', 'A/303 Shagun Villa, Althan, Surat'),
(117, '', '2023-02-23', '2023-02-23', '8', 'Arun Kashi Psd Patodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142682', '3019 Silk City mkt, Ring Road, Surat'),
(116, '', '2023-02-23', '2023-02-23', '8', 'Bajranglal Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374727364', '44, Millenium Market-2, Ring Road, Surat');
INSERT INTO `member_master_v2` (`m_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `sortorder`, `isFront`, `status`, `remote_ip`, `city`, `state`, `memberid`, `landmark`, `cnum`, `madr`) VALUES
(115, '', '2023-02-23', '2023-02-23', '8', 'Bajranglal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374046612', 'A-502, Shyam Rachna, Althan, Surat'),
(114, '', '2023-02-23', '2023-02-23', '8', 'Basudev Chokhani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9375783639', '801 Parth Appt. City light, Surat'),
(113, '', '2023-02-23', '2023-02-23', '8', 'Chandi Prasad Pansari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377772011', 'B-204 Sunrise Residency, Vesu, Surat'),
(112, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(111, '', '2023-02-23', '2023-02-23', '8', 'Govind Prasad Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374512789', 'C-411 Surya Prakash Resi., City light, Surat'),
(110, '', '2023-02-23', '2023-02-23', '8', 'Kailashchandra Kanodia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9426114345', 'L-3631 Millenium Market, Ring Road, Surat'),
(109, '', '2023-02-23', '2023-02-23', '8', 'Mukesh S. Ladia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9328441283', 'G1456/57 RKTM, Ring Road, Surat'),
(108, '', '2023-02-23', '2023-02-23', '8', 'Nandkishore Tola', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825369990', 'K-2226-27 NTM Mkt, Ring Road, Surat'),
(107, '', '2023-02-23', '2023-02-23', '8', 'Niranjan H. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377743527', '57, Millenium Mkt-2, Ring Road, Surat'),
(106, '', '2023-02-23', '2023-02-23', '8', 'Pramod Agarwal (Kansal)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824822222', '602-3, Trividh Chembers, Ring Road, Surat'),
(105, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(104, '', '2023-02-23', '2023-02-23', '8', 'Shambhu Poddar', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374724663', '1011-1013, Sai Krupa Mkt, Ring Road, Surat'),
(103, '', '2023-02-23', '2023-02-23', '8', 'Suresh P Bansal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374706766', 'J-1688-91 RKT Mkt, Ring Road, Surat'),
(102, '', '2023-02-23', '2023-02-23', '8', 'Vikash D. Pacheriwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377702042', 'Parvati House, F-Tower, Shree Kuberji Textile Park, Delhi gate, Surat.'),
(101, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(100, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(99, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala ( Secretary)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(98, '', '2023-02-23', '2023-02-23', '8', 'Sushil Kumar Mittal (Treasurer)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825096250', '3025, Ambaji Market, Ring Road, Surat'),
(97, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal (Vice President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(96, '', '2023-02-23', '2023-02-23', '8', 'Sandeep Singhal (Jint Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377616196', 'B-8, Avenue-77, Nr LP Sawani School, Vesu, Surat'),
(95, '', '2023-02-23', '2023-02-23', '8', 'Vishwanath Singhania (Joint Treasurer)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825273591', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(93, '', '2023-02-23', '2023-02-23', '8', 'Basudev Chokhani', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9375783639', '801 Parth Appt. City light, Surat'),
(92, '', '2023-02-23', '2023-02-23', '8', 'Bishnuram Agarwal (Khazanawala)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377267259', '709 Raghuveer Mall NR. DR Mall, Parvat Patia, Surat'),
(91, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(90, '', '2023-02-23', '2023-02-23', '8', 'Govind Prasad Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374512789', 'C-411 Surya Prakash Resi., City light, Surat'),
(89, '', '2023-02-23', '2023-02-23', '8', 'Kailashchandra Kanodia', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9426114345', 'L-3631 Millenium Market, Ring Road, Surat'),
(88, '', '2023-02-23', '2023-02-23', '8', 'Motilal Jalan (Vice President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9327401444', '601 Sneh villa Appt, Vesu, Surat'),
(87, '', '2023-02-23', '2023-02-23', '8', 'Nandkishore Tola', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825369990', 'K-2226-27 NTM Mkt, Ring Road, Surat'),
(86, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Sonthlia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7874572956', '5011, Ashoka Towar, Ring Road, Surat'),
(85, '', '2023-02-23', '2023-02-23', '8', 'Pramod Agarwal (Kansal)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824822222', '602-3, Trividh Chembers, Ring Road, Surat'),
(84, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(83, '', '2023-02-23', '2023-02-23', '8', 'Ramsawroop Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9377942255', '536, Ashoka Tower, Ring Road, Surat'),
(82, '', '2023-02-23', '2023-02-23', '8', 'Ratanlal Daruka', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825110170', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(81, '', '2023-02-23', '2023-02-23', '8', 'Shambhu Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9374724663', '1011-1013, Sai Krupa Mkt, Ring Road, Surat'),
(80, '', '2023-02-23', '2023-02-23', '8', 'Shrikrishnakumar Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9879749583', '1045 J.J. AC Market, Ring Road, Surat'),
(79, '', '2023-02-23', '2023-02-23', '8', 'Vijay Kumar Khemani', 0, '', 'E', '127.0.0.1', '', '', 0, '', '7984358635', 'B-1004, Surya Palace, City light, Surat'),
(78, '', '2023-02-23', '2023-02-23', '8', 'Vimal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824138297', 'U-1,2,3 Madhulika, Bhatar Road, Surat'),
(77, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824650890', 'E-409, Aashirwad Palace, Bhatar Road, Surat'),
(76, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(74, '', '2023-02-23', '2023-02-23', '8', 'Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824700389', '2-B, Ratan Kruti appt, piplod, Surat'),
(73, '', '2023-02-23', '2023-02-23', '8', 'Bhawanishankar Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9376907021', '432, Harikrupa Market, Ring Road, Surat'),
(72, '', '2023-02-23', '2023-02-23', '8', 'Brijmohan Gupta (Garodia)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825137297', 'C-1002 Sangani Solitaire, Opp GD goenka Vesu, Surat'),
(71, '', '2023-02-23', '2023-02-23', '8', 'Chiranjilal Agarwal (Mamaji) (Acting President)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825768350', '160, Radhey Market Ring Road, Surat'),
(70, '', '2023-02-23', '2023-02-23', '8', 'Dileep Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824151244', 'G-614, Ashirwad Palace,'),
(69, '', '2023-02-23', '2023-02-23', '8', 'Gokulchand Bajaj', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377778333', 'O-383-4, NTM, Ring Road, Surat'),
(68, '', '2023-02-23', '2023-02-23', '8', 'Jaiprakash Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825125057', '1001, Silk Palaza Mkt. Ring Road, Surat'),
(67, '', '2023-02-23', '2023-02-23', '8', 'Kirorimal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824156825', '1-A, Ratna Virat Appt, New City light, Surat'),
(66, '', '2023-02-23', '2023-02-23', '8', 'CA Mahesh Mittal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9374711350', '403, Metro Tower, Ring Road, Surat'),
(65, '', '2023-02-23', '2023-02-23', '8', 'Natwarlal Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825834627', '2001, Anmol Market, Ring Road, Surat'),
(64, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Santnaliwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9824135378', '8/2453, Kotsafil Road, Arra mohlla, Bhagal, Surat'),
(63, '', '2023-02-23', '2023-02-23', '8', 'Omprakash Sonthlia', 0, '', 'D', '127.0.0.1', '', '', 0, '', '7874572956', '5011, Ashoka Towar, Ring Road, Surat'),
(62, '', '2023-02-23', '2023-02-23', '8', 'Pawan Jhunjhunwala (Acting Secretary', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(61, '', '2023-02-23', '2023-02-23', '8', 'Pramod Podar (Rachit)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825146981', '3011, Annapurna Market, Ring Road, Surat'),
(60, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824151811', 'G-8, ICC Complex, Ring Road, Surat'),
(59, '', '2023-02-23', '2023-02-23', '8', 'Ramesh Chokdika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825155878', '112 WTC, Ring Road, Surat'),
(58, '', '2023-02-23', '2023-02-23', '8', 'Ramsawroop Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9377942255', '536, Ashoka Tower, Ring Road, Surat'),
(57, '', '2023-02-23', '2023-02-23', '8', 'Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825171461', '205, Good Luck Market, Ring Road, Surat'),
(56, '', '2023-02-23', '2023-02-23', '8', 'Sunil Kumar Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825142046', 'H-3413, Millenium Market, Ring Road, Surat'),
(55, '', '2023-02-23', '2023-02-23', '8', 'Sushil Kumar Mittal (Acting Treasurer)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9825096250', '3025, Ambaji Market, Ring Road, Surat'),
(54, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9824650890', 'E-409, Aashirwad Palace, Bhatar Road, Surat'),
(53, '', '2023-02-23', '2023-02-23', '8', 'Vinod Agarwal(G.C.G)', 0, '', 'D', '127.0.0.1', '', '', 0, '', '9376284532', 'Z-2170, STM , Ring Road, Surat'),
(52, '', '2023-02-23', '2023-02-23', '8', 'Vishnu Choudhary', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825129870', 'I-918 Ashirwad Palace, Bhatar Road, Surat'),
(51, '', '2023-02-23', '2023-02-23', '8', 'Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9825273591', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(50, '', '2023-02-23', '2023-02-23', '12', 'CA Mahesh Mittal (President)\r\n', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801 Shree Hari Apprtment Nr. Lancer Army School Umra, Surat\r\n'),
(49, '', '2023-02-23', '2023-02-23', '12', 'Ratanlal Daruka (Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-901, Cellestiar Dreams, Canal Road, Vesu, Surat\r\n'),
(48, '', '2023-02-23', '2023-02-23', '12', 'Ramesh Agarwal (Treasurer)\r\n', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898070528', '401 Shree Hari Apprtment Nr. Lancer Army School Umra, Surat\r\n'),
(47, '', '2023-02-23', '2023-02-23', '12', 'Pawan Jhunjhunwala (Sr. Vice President)\r\n', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '416,Happy Hallmark Shoopers, Vesu Abhwa road, Nr, Abhwa Chokadi, Vesu, Surat 395007'),
(46, '', '2023-02-23', '2023-02-23', '12', 'Natwarlal Tatanwala (Vice President)\r\n', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Solitaire Apartment Opp Opp Umra School Parle Point, Surat\r\n'),
(45, '', '2023-02-23', '2023-02-23', '12', 'Motilal Jalan (Vice President)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '601, Sneh Villa Nr Swar Sangini , VIP Rd, Surat\r\n'),
(44, '', '2023-02-23', '2023-02-23', '15', 'Bhawani Shankar Jalan', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '432, Harikrupa Market, Ring Road, Surat'),
(43, '', '2023-02-23', '2023-02-23', '15', 'Banwarilal Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2-B, Ratan Kruti appt, piplod, Surat'),
(42, '', '2023-02-23', '2023-02-23', '15', 'Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market Ring Road, Surat'),
(41, '', '2023-02-23', '2023-02-23', '15', 'Gokulchand Bajaj', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'O-383-4, NTM, Ring Road, Surat'),
(40, '', '2023-02-23', '2023-02-23', '15', 'Mahesh Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower, Ring Road, Surat'),
(39, '', '2023-02-23', '2023-02-23', '15', 'Kirodimal Garg', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1-A, Ratna Virat Appt, New City light, Surat'),
(38, '', '2023-02-23', '2023-02-23', '15', 'Jaiprakash Chhaparia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1001, Silk Palaza Mkt. Ring Road, Surat'),
(37, '', '2023-02-23', '2023-02-23', '15', 'Omprakash Sonthlia', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5011, Ashoka Towar, Ring Road, Surat'),
(36, '', '2023-02-23', '2023-02-23', '15', 'Pooranmal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '701-B, Kesahav Narayan Appt, Bhatar, Surat'),
(35, '', '2023-02-23', '2023-02-23', '15', 'Ramkaran Bajari', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '317 Astha Market, Ring Road, Surat'),
(34, '', '2023-02-23', '2023-02-23', '15', 'Ravi Tatanwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1489-90 Millenium Mkt, Ring Road, Surat'),
(33, '', '2023-02-23', '2023-02-23', '15', 'Ramesh Chokdika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '112 WTC, Ring Road, Surat'),
(32, '', '2023-02-23', '2023-02-23', '15', 'Ramsaroop Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC Complex, Ring Road, Surat'),
(31, '', '2023-02-23', '2023-02-23', '15', 'Shrikrishna Banka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1045 J.J. AC Market, Ring Road, Surat'),
(30, '', '2023-02-23', '2023-02-23', '15', 'Sushil Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3025, Ambaji Market, Ring Road, Surat'),
(29, '', '2023-02-23', '2023-02-23', '15', 'Shankarlal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '205, Good Luck Market, Ring Road, Surat'),
(28, '', '2023-02-23', '2023-02-23', '15', 'Vinod Agarwal (GCG)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'Z-2170, STM , Ring Road, Surat'),
(27, '', '2023-02-23', '2023-02-23', '16', 'Brijmohan Gupta', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'C-1002 Sangani Solitaire, Opp GD goenka Vesu, Surat'),
(26, '', '2023-02-23', '2023-02-23', '16', 'B.S. Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '11-A Inderlok Appt. Tower-F , piplod, Surat'),
(25, '', '2023-02-23', '2023-02-23', '16', 'Chiranjilal Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '160, Radhey Market Ring Road, Surat'),
(24, '', '2023-02-23', '2023-02-23', '16', 'Mahesh Kumar Mittal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '403, Metro Tower, Ring Road, Surat'),
(23, '', '2023-02-23', '2023-02-23', '16', 'Pawan Kumar Jhunjhunwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '9898070528', '416, Happy Hallmark Shoopers, Vesu Abhwa road, Nr,Abhwa Chokadi,Vesu,Surat, 395007'),
(22, '', '2023-02-23', '2023-02-23', '16', 'Pramod Poddar', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '3011, Annapurna Market, Ring Road, Surat'),
(21, '', '2023-02-23', '2023-02-23', '16', 'Ramesh Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-8, ICC Complex, Ring Road, Surat'),
(20, '', '2023-02-23', '2023-02-23', '16', 'Ratanlal Daruka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-901, Celestial Dream, Canal Road, Vesu, Surat'),
(19, '', '2023-02-23', '2023-02-23', '16', 'Vasant Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21, Vasant Vihar Society, Adajan, Surat'),
(18, '', '2023-02-23', '2023-02-23', '16', 'Vishwanath Singhania', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1002, Nalnda Resi. Opp Jolly Resi., Vesu, Surat'),
(17, '', '2023-02-23', '2023-02-23', '10', 'Shri Vashant D Agarwal (Tarunji)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '21 Vasant Vihar Society, Adajan'),
(16, '', '2023-02-23', '2023-02-23', '10', 'Shri Raj Kishor Pramanand Shah', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2004, Silk City Market'),
(15, '', '2023-02-23', '2023-02-23', '10', 'Shri Omprakash Satnaliwala', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '8/2453, Malchand & Sons ,Arra Mohla'),
(14, '', '2023-02-23', '2023-02-23', '10', 'Shri Natwar Murarilal Harlalka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'B-115, L.B Aprt.'),
(13, '', '2023-02-23', '2023-02-23', '10', 'Shri Kailash Kr. Hakim', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'F-3613, Raghukul  Market L.No-17'),
(12, '', '2023-02-23', '2023-02-23', '10', 'Shri Brijmohan Shyam Sunder Agarwal', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '5001, Silk City Mkt'),
(11, '', '2023-02-23', '2023-02-23', '10', 'Shri Ravi Dindayal Tantanwala ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '6155, Raghukul Textile Market, L. No-11'),
(10, '', '2023-02-23', '2023-02-23', '10', 'Shri Santosh Sarawagi', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1, Shiv Krupa Apart. B/h Unique Hospital,OPP. Navrang Soc Nr.Amba Nagar'),
(9, '', '2023-02-23', '2023-02-23', '10', 'Shri Ratan Dharuka', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-11, Silver Point'),
(8, '', '2023-02-23', '2023-02-23', '10', 'Shri Ramesh Chokdika', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '112, World Trade Center'),
(7, '', '2023-02-23', '2023-02-23', '13', 'Shri Manoj Agarwal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'S-601, J.J. Market'),
(6, '', '2023-02-23', '2023-02-23', '13', 'Shri Hariprasad Sureka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '2184, STM'),
(5, '', '2023-02-23', '2023-02-23', '13', 'Shri Basudev Nathmal Chokhani ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '801, Parth Appt., City Light'),
(4, '', '2023-02-23', '2023-02-23', '13', 'Shri Ramkaran Bajari ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '317, Astha Market'),
(3, '', '2023-02-23', '2023-02-23', '13', 'Shri Sandeep Singal ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '501, Murlidhar Appt.  Sweet house, Nr. Agarsen Bhawan'),
(2, '', '2023-02-23', '2023-02-23', '13', 'Shri Shrikishan Banka ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', '1045, J.J. Market'),
(1, '', '2023-02-23', '2023-02-23', '13', 'Shri Shubh Karan Gadia ', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'G-2367, Millenium Market'),
(1270, '', '2023-02-23', '2023-02-23', '12', 'Ashok J Singhal (Joint Secretary)', 0, '', 'E', '127.0.0.1', '', '', 0, '', '', 'A3/402, Vastu Luxuria, Nr VR Mall, Dumas Road, Vesu, Surat');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `news_type` int NOT NULL,
  `news_title` varchar(150) NOT NULL DEFAULT '',
  `news_desc` text NOT NULL,
  `eve_date` date NOT NULL,
  `name_1` varchar(255) NOT NULL,
  `Image_1` varchar(255) NOT NULL,
  `name_2` varchar(255) NOT NULL,
  `Image_2` varchar(255) NOT NULL,
  `name_3` varchar(255) NOT NULL,
  `Image_3` varchar(255) NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `username`, `createdate`, `modifieddate`, `news_type`, `news_title`, `news_desc`, `eve_date`, `name_1`, `Image_1`, `name_2`, `Image_2`, `name_3`, `Image_3`, `remote_ip`, `status`, `sortorder`) VALUES
(5, 'Keyur', '2015-10-27', '2017-01-25', 1, 'Sathvaro', '<p>Agarwal Pragati Trust has a function of Radhesyamji.</p>', '2016-07-17', 'Sathvaro', '12/6-sathvaro.webp', 'Sathvaro', '12/5-sathvaro.webp', 'Sathvaro', '12/4-sathvaro.webp', '127.0.0.1', 'E', 11),
(6, 'Keyur', '2016-03-11', '2017-01-25', 1, 'Bham Bham Bhole Function', '<p>Agarwal Pragati Trust has a function of Bham Bham Bhole</p>', '2014-09-14', '', '', '', '', '', '', '127.0.0.1', 'E', 16),
(7, 'Keyur', '2016-04-03', '2017-01-25', 1, 'Bhumi Poojan', '<p>Bhumi Poojan Event at Agarwal Pragati Trust !!</p>', '2014-12-06', 'Bhumi Poojan', '9/bhumi-1.webp', 'Bhumi Poojan', '9/bhumi-2.webp', '', '', '127.0.0.1', 'E', 15),
(8, 'Keyur', '2016-07-29', '2017-01-25', 1, 'Community Bhavan', '<p>Agarwal Pragati Trust started The Construction of extraordinary bhavan.</p>', '2016-04-01', '', '', '', '', '', '', '127.0.0.1', 'D', 13),
(9, 'Keyur', '2016-10-24', '2017-01-25', 1, 'Diwali Function', '<p>Agarwal Pragati Trust has a function of Diwali.</p>', '2013-11-20', 'Diwali ', '12/2-diwali.webp', 'Diwali', '12/4-diwali.webp', 'Diwali ', '12/1-diwali.webp', '127.0.0.1', 'D', 17),
(10, 'Keyur', '2016-10-24', '2017-01-25', 1, 'Agroha Ratha Yatra Swagat', '<p>Agarwal Pragati Trust has organized a grand function of Ratha Yatra Swagat.</p>', '2016-06-05', 'Agroha Ratha Yatra Swagat', '12/3-rath-yatra.webp', 'Agroha Ratha Yatra Swagat', '12/2-rath-yatra.webp', 'Agroha Ratha Yatra Swagat', '12/1-rath-yatra.webp', '127.0.0.1', 'E', 12),
(11, 'Keyur', '2017-01-25', '2017-01-25', 1, ' Agrabhagwat Katha', '<p>Agarwal Pragati Trust in association with various Agarwal group, has organized a grand function of Agrabhagwat Katha. </p>', '2016-12-19', '', '', '', '', '', '', '127.0.0.1', 'E', 10),
(12, 'keyur', '2016-03-11', '2017-01-25', 1, 'Start of Community Bhavan', '<p>Agarwal Pragati Trust started the Construction of the extraordinary bhavan. </p>', '2015-04-01', 'Start Of Community Bhavan', '10/4.webp', 'Start Of Community Bhavan', '10/8.webp', 'Start Of Community Bhavan', '10/1.webp', '127.0.0.1', 'E', 14),
(14, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Opening of Bhavan', '<p>Opening of the Agarwal Pragati Trust Bhavan with a Grand Function. </p>', '2021-06-21', 'Opening Of Bhavan', '10/6.webp', 'Opening Of Bhavan', '10/9.webp', 'Opening Of Bhavan', '10/2.webp', '127.0.0.1', 'E', 8),
(15, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Annual General Meet 2022', '<p>Annual General Meet of Agarwal Pragati Trust was Organized. </p>', '2022-08-24', 'Annual General Meet 2022', '11/2-agm.webp', 'Annual General Meet 2022', '11/4-agm.webp', 'Annual General Meet 2022', '11/1-agm.webp', '127.0.0.1', 'E', 3),
(16, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Annual General Meet 2021', '<p>Annual General Meet of Agarwal Pragati Trust was Organized. </p>', '2021-06-21', 'Annual General Meet 2021', '11/5-agm.webp', 'Annual General Meet 2021', '11/7-agm.webp', 'Annual General Meet 2021', '11/8-agm.webp', '127.0.0.1', 'E', 9),
(17, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Holi Function', '<p>Agarwal Pragati Trust had a Function of Holi. </p>', '2022-03-16', 'Holi Celebration ', '12/5-holi.webp', 'Holi Celebration ', '12/8-holi.webp', 'Holi Celebration ', '12/3-holi.webp', '127.0.0.1', 'E', 7),
(18, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Rajasthan Samaroh Function', '<p>Agarwal Pragati Trust had a Function of Rajasthan Samaroh. </p>', '2022-03-20', 'Rajasthan Samaroh Function', '12/5-rajasthan.webp', 'Rajasthan Samaroh Function', '12/4-rajasthan.webp', 'Rajasthan Samaroh Function', '12/1-rajasthan.webp', '127.0.0.1', 'E', 6),
(19, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Swagat Samaroh - Prahlad Rai Agarwal ', '<p>Agarwal Pragati Trust had a Function of Swagat Samaroh Welcoming Prahlad Rai Agarwal. </p>', '2022-03-29', 'Swagat Samaroh - Prahlad Rai Agarwal', '12/4-prahladrai.webp', 'Swagat Samaroh - Prahlad Rai Agarwal', '12/5-prahladrai.webp', 'Swagat Samaroh - Prahlad Rai Agarwal', '12/6-prahladrai.webp', '127.0.0.1', 'E', 5),
(20, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Swagat Samaroh - Rajendra Rathod ', '<p>Agarwal Pragati Trust had a Function of Swagat Samaroh Welcoming Rajendra Rathod. </p>', '2022-05-27', 'Swagat Samaroh - Rajendra Rathod', '12/1-rajendra.webp', 'Swagat Samaroh - Rajendra Rathod', '12/2-rajendra.webp', 'Swagat Samaroh - Rajendra Rathod', '12/3-rajendra.webp', '127.0.0.1', 'E', 4),
(21, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Housie Function', '<p>Agarwal Pragati Trust Had a Function Of Housie. </p>', '2022-09-24', '', '', '', '', '', '', '127.0.0.1', 'E', 2),
(22, 'Keyur', '2023-02-23', '2023-02-23', 1, 'Kavi Sammelan  Function', '<p>Agarwal Pragati Trust had Organised a Kavi Sammelan Function. </p>', '2022-09-25', '', '', '', '', '', '', '127.0.0.1', 'E', 1),
(23, 'Keyur', '2023-08-10', '2023-08-10', 1, 'Holi Function', '<p>Agarwal Pragati Trust had a Function of Holi. </p>', '2022-03-08', 'Holi Celebration 2023', '12/10-holi.webp', 'Holi Celebration 2023', '12/9-holi.webp', 'Holi Celebration 2023', '12/11-holi.webp', '127.0.0.1', 'E', 0),
(24, 'Keyur', '2024-05-29', '2024-05-29', 1, 'Business Conclave', '<p>Let\'s go on a journey of learning and discovery at the Agarwal Business Conclave on June 1-2, 2024, at Agra Exotica, Surat.</p>\r\n<p> Gain access to exclusive speaker sessions, explore the vibrant exhibition, and indulge in delightful high tea, all for just 750</p>\r\n\r\n<p><b>Register now to reserve your spot</b>: https://abc2024.evenuefy.com/dashboard/sharedT/6639d62d35830b5220893e28</p>', '2024-06-01', 'Business Conclave', '', 'Business Conclave 2024', '', '', '', '127.0.0.1', 'E', 0),
(25, 'Keyur', '2024-05-29', '2024-05-29', 1, 'Business Conclave', '<p>We are thrilled to welcome <b>Mr. Aman Gupta</b>, Founder of boAt, is our keynote speaker at the Agarwal Business Conclave!</p>\r\n<p>Join us to gain insights from his incredible journey and innovative approach in the industry.</p>\r\n<b>Date: 1-2 June 2024 Venue</b>: Agra Exotica, Surat\r\n\r\n<p><b>Register as a delegate now</b>: https://abc2024.evenuefy.com/dashboard/sharedT/6639d62d35830b5220893e28</p>', '2024-06-01', 'Business Conclave', '', 'Business Conclave 2024', '', '', '', '127.0.0.1', 'E', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_type`
--

CREATE TABLE `news_type` (
  `news_type_id` int NOT NULL,
  `news_type` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_type`
--

INSERT INTO `news_type` (`news_type_id`, `news_type`, `createdate`, `modifieddate`, `username`, `status`, `sortorder`, `remote_ip`) VALUES
(1, 'News', '2014-07-21', '2015-10-27', 'Keyur', 'E', 1, '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `page_master`
--

CREATE TABLE `page_master` (
  `page_id` bigint NOT NULL,
  `parent_id` bigint NOT NULL,
  `page_template` varchar(200) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_image` varchar(100) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `sortorder` int DEFAULT NULL,
  `status` char(1) NOT NULL COMMENT 'E-Enable D- Disable',
  `user_id` int NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `remote_ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_master`
--

INSERT INTO `page_master` (`page_id`, `parent_id`, `page_template`, `page_slug`, `page_title`, `page_content`, `page_image`, `meta_title`, `meta_desc`, `meta_keyword`, `sortorder`, `status`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(10, 0, '', 'foundation', 'Foundation', '<div class=\"col-sm-8 col-md-8 martop6\">\r\n<p class=\"main text-justify\"><strong>When good things tend to happen many helping hands come together to work for the benefit of the Society.</strong></p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">Agrawals are basically a commercial community or Vaishyas. They are one of the most respectable and enterprising of mercantile tribes. Two of Emperor Akbar\'s famous ministers are said to have been Agrawals, viz, Todarmal who introduced an assessment of land, and Madhushah, who introduced \'Madhushahi\' pice.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">In the year 2011 Surat Agrawal Community Social workers, Philanthropist, business tycoons, professional, educationist came together to serve the Society.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">They formed a trust in the name of Agrawal Pragati Trust, Surat on 01.01.2012 and got it registered with Income Tax Department as well as Charity Commissioner, Surat-Gujarat.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">Today trust is enjoying 80G exemption under section 12 AA (1) of Income Tax dated 31.03.2012 and registered with the Charity Commissioner Surat having Regn. No.  E/7174/Surat dated 16.01.2012.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">The members of the trust took a wider thought as taught by Shri Maharaja Agrasenji to have (one rupee and one brick) for every new comer in their city. They approached every individuals of the community and with their financial support they could procure 4784 sq. yards plot near Surat Airport at Dumas Village to construct a modern community bhawan with various facilities.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">121 Founder Trustees came together to proceed further and to complete their dream project.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">First time in the history of any public building getting constructed for the community could witness the Bhoomi Pujan by 108 Founder Trustees with their spouse on 06.12.14.</p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">The bandhkam team has engaged Architect Ratan J Batliboi & Co/-, Mumbai and Clansay India as their structural engineer, local Arc. Manish Choksy as Interior Designer and Arc. Manish Chewali as this project\'s General and Interior Designer. </p>\r\n<div class=\"martop12\">&nbsp;</div>\r\n<p class=\"main\" style=\"text-align: justify;\">All the required compliances were done and construction work started on 01.04.15 under the able supervision and guidance of the people from the community only. </p>\r\n</div>', 'About-us-Foundation.png', 'Formation', 'Formation', 'Formation', 1, 'E', 1, '2016-02-22 12:21:34', '2017-01-25 16:38:53', '127.0.0.1'),
(15, 0, '', 'gotras', 'Gotras', '<div class=\"col-sm-8 table-responsive\">\n<table class=\"table table-title\">\n<thead>\n<tr style=\"background-color: #034285; color: #fff;\"><th>No.</th><th>GOTRA</th><th>LORD OF GOTRA</th><th>SAGE</th><th>VED &amp; BRANCH</th></tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>Garg</td>\n<td>Pushpadev</td>\n<td>Garg</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>2</td>\n<td>Goel</td>\n<td>Gendumal</td>\n<td>Gobhil</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>3</td>\n<td>Bhandal</td>\n<td>Vasudev</td>\n<td>Bhardwaj</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>4</td>\n<td>Mangal</td>\n<td>Amritsen</td>\n<td>Mandavya</td>\n<td>Sakalya(Yaj)</td>\n</tr>\n<tr>\n<td>5</td>\n<td>Jindal</td>\n<td>Jaitrasangh</td>\n<td>Jaimini</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>6</td>\n<td>Bindal or Vindal</td>\n<td>Vrinddev</td>\n<td>Yavasya or Vashista</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>7</td>\n<td>Tayal</td>\n<td>Tarachand</td>\n<td>Taitireya</td>\n<td>Aausthambh(Kri)</td>\n</tr>\n<tr>\n<td>8</td>\n<td>Mridkul</td>\n<td>Madhavsen</td>\n<td>Mudgal</td>\n<td>Sakalya(Yaj)</td>\n</tr>\n<tr>\n<td>9</td>\n<td>Tingal</td>\n<td>Tambolkarna</td>\n<td>Tandya</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>10</td>\n<td>Mittal</td>\n<td>Mantrapati</td>\n<td>Maitreya</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>11</td>\n<td>Singhal</td>\n<td>Sindhupati</td>\n<td>Shandilya</td>\n<td>Kauttham(Sam)</td>\n</tr>\n<tr>\n<td>12</td>\n<td>Aren</td>\n<td>Indramal</td>\n<td>Aaurva</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>13</td>\n<td>Nagal</td>\n<td>Narsev</td>\n<td>Nagendra</td>\n<td>Kauttham(Sam)</td>\n</tr>\n<tr>\n<td>14</td>\n<td>Bansal</td>\n<td>Virbhan</td>\n<td>Vatsa</td>\n<td>Kauttham(Sam)</td>\n</tr>\n<tr>\n<td>15</td>\n<td>Kuchhal Agrahari</td>\n<td>Karanchand</td>\n<td>Kashyap</td>\n<td>Kauttham(Sam)</td>\n</tr>\n<tr>\n<td>16</td>\n<td>Dharan (clan)</td>\n<td>Dhavandev</td>\n<td>Ghaumya</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>17</td>\n<td>Kansal</td>\n<td>Manipal</td>\n<td>Kaushik</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n<tr>\n<td>18</td>\n<td>Goyan</td>\n<td>Godhar</td>\n<td>Gautam</td>\n<td>Madhuri(Yaj.)</td>\n</tr>\n</tbody>\n</table>\n</div>\n<!-- .col-sm-4 -->', '15-About-us-MAHARAJA-AGRASEN.jpg', 'Gotras', 'Gotras', 'Gotras', 3, 'E', 1, '2016-10-23 15:01:18', '2017-01-25 15:36:12', '127.0.0.1'),
(13, 0, '', 'maharaja-agrasen', 'Maharaja Agrasen', '<div class=\"col-sm-8 col-md-8 martop6\">\n<p class=\"main\" style=\"text-align: justify;\">Maharaj Agasen is known as an icon of non-violence, messenger of peace. He was the eldest son of King Vallabh of Pratapnagar and Queen Bagwati Devi. Maharaja Agrasen ruled some 5000 years back over Agroha around time of MahaBharat.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">When Agrasen became a young man, he attended the Swyamvara of the daughter of the King Nagaraj, Princess Madhavi. Many kings from around the world attended including Indra, the King of the Devas. In the Swayamvara, Princess Madhavi selected Prince Agrasen, by putting the garland on him. This marriage merged two different family cultures because Prince Agrasen was a Suryavanshi and Princess Madhavi was a Naagavanshi. Indra, the King of the Devas had been smitten by the beauty of Princess Madhavi and had planned to marry her.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">However, he became very jealous and angry at Agrasen for ruining his plans.To get revenge against Agrasen, Indra also known as the Lord of Rain made sure that Pratap Nagar did not receive any rainfall and famine struck the Pratap Nagar kingdom. Emperor Agrasen then waged war against Indra, and because he had dharma on his side, his army vanquished Indra\'s forces and put them to flight. Faced with this situation, Indra approached Narada (the celestial sage) for mediation between him and Emperor Agrasen. Narada was able to negotiate peace between them.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">Agrasen became concerned with maintaining a long lasting peace to end the enmity. So Agrasen went to the city of Kashi and started penance to propitiate Lord Shiva. Pleased with the severe penance of Agrasen, Lord Shiva appeared in front of him and advised him to propitiate Shri Mahalakshmi. Maharaj Agrasen began meditating on Shri. Mahalakshmi. Goddess Mahalakshmi was pleased with the dedication of Maharaj Agrasen and appeared before him. Goddess Mahalakshmi blessed Agrasen and suggested that he take up the Vaishya tradition of business for the sake of the prosperity of his people and give up his Kshatriya tradition. Additionally, she requested that he establish a new kingdom in return for her eternal presence with his descendants.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">With the blessings of Sri Mahalakshmi, King Agrasen toured all of Bharat (India) . During his travels, he found a few tiger cubs and wolf cubs playing together. To King Agrasen and Queen Madhavi, this was an auspicious indication that the area was Veerabhoomi (land of the brave), and they decided to found their new kingdom at that location. The new kingdom was named Agroha. In due course, Agroha became prosperous and the influence of King Agrasen was felt in all neighboring areas as well. Trade, agriculture, and industry flourished and the fame of King Agrasen spread far and wide.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">Maharaj Agrasen performed many yagnas (sacrifices) for the prosperity of his people. In those days, performing a yagna was a symbol of prosperity. During one such yagna, Maharaj Agrasen noticed that a horse that had been brought to be sacrificed was trying hard to get away from the sacrificial altar. Maharaj Agrasen was filled with pity and thought about what prosperity can be achieved by sacrificing mute animals. The idea of Ahimsa came into Maharaj Agrasen\'s mind, and the King discussed it with his ministers. The ministers advised Maharaj Agrasen that Ahimsa could be considered by neighboring kingdoms as a sign of weakness and encourage them to attack Agroha. Maharaj Agrasen felt that putting an end to violence and injustice does not show weakness. Thus, he proclaimed that there would be no violence and killing of animals in his kingdom.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">Maharaj Agrasen proceeded to conduct 18 Maha Yagnas. He divided his kingdom among his 18 children and established the 18 gotras after the gurus of each of his children. These same 18 gotras are like the eighteen chapters of the Bhagavadgita; although they differ, they are still related to each other to form the whole. Under this arrangement, Agroha prospered very well and flourished. In the latter part of his life, Maharaj Agrasen nominated his eldest son Vibhu to the throne and took up the Vanaprastha Ashram.</p>\n<div class=\"martop12\">&nbsp;</div>\n<p class=\"main\" style=\"text-align: justify;\">The neighboring kings were envious of Agroha because of its prosperity, thus they frequently attacked it. Because of these aggressions, Agroha faced numerous plights. In due course, the strength of Agroha was sapped. A huge fire engulfed the city causing the citizens to flee and disperse into various areas of Bharat. Today, these people are known as Aggarwal. They still have the same 18 gotras that were given to them by their gurus, and they carry on the fame of Maharaj Agrasen. As per Maharaj Agrasen\'s guidance, the Aggarwal are in the forefront of social service.</p>\n</div>', '13-About-us-MAHARAJA-AGRASEN.jpg', 'Maharaja Agrasen', 'Maharaja Agrasen', 'Maharaja Agrasen', 2, 'E', 1, '2016-09-13 17:28:08', '2017-01-25 15:35:54', '127.0.0.1'),
(14, 0, '', 'office-bearer', ' Office Bearer', '', '14-about-us-OFFICE-BEARER.jpg', 'Office Bearer', 'Office Bearer', 'Office Bearer', 4, 'E', 3, '2016-09-13 17:31:07', '2016-10-26 12:36:28', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `permission_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `group_id` varchar(20) NOT NULL,
  `module` varchar(20) NOT NULL,
  `permissions` varchar(7) NOT NULL DEFAULT 'a,e,d,v',
  `module_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`permission_id`, `username`, `createdate`, `modifieddate`, `group_id`, `module`, `permissions`, `module_id`) VALUES
(785, 'Keyur', '2016-09-13', '2016-09-13', '1', 'hall', 'a,d,e,v', 38),
(784, 'Keyur', '2016-09-13', '2016-09-13', '1', 'member', 'a,d,e,v', 37),
(783, 'Keyur', '2016-09-13', '2016-09-13', '1', 'membertype', 'a,d,e,v', 36),
(781, 'Keyur', '2016-09-13', '2016-09-13', '1', 'donation', 'a,d,e,v', 34),
(782, 'Keyur', '2016-09-13', '2016-09-13', '1', 'video', 'a,d,e,v', 35),
(780, 'Keyur', '2016-09-13', '2016-09-13', '1', 'download', 'a,d,e,v', 33),
(779, 'Keyur', '2016-09-13', '2016-09-13', '1', 'galleryhome', 'a,d,e,v', 32),
(778, 'Keyur', '2016-09-13', '2016-09-13', '1', 'downloads', 'a,d,e,v', 31),
(775, 'Keyur', '2016-09-13', '2016-09-13', '1', 'advantage', 'a,d,e,v', 28),
(776, 'Keyur', '2016-09-13', '2016-09-13', '1', 'application', 'a,d,e,v', 29),
(777, 'Keyur', '2016-09-13', '2016-09-13', '1', 'environment', 'a,d,e,v', 30),
(774, 'Keyur', '2016-09-13', '2016-09-13', '1', 'home', 'a,d,e,v', 27),
(770, 'Keyur', '2016-09-13', '2016-09-13', '1', 'projectslider', 'a,d,e,v', 23),
(771, 'Keyur', '2016-09-13', '2016-09-13', '1', 'projectimages', 'a,d,e,v', 24),
(772, 'Keyur', '2016-09-13', '2016-09-13', '1', 'downloads_list', 'a,d,e,v', 25),
(773, 'Keyur', '2016-09-13', '2016-09-13', '1', 'download', 'a,d,e,v', 26),
(769, 'Keyur', '2016-09-13', '2016-09-13', '1', 'job', 'a,d,e,v', 10),
(768, 'Keyur', '2016-09-13', '2016-09-13', '1', 'projectfloors', 'a,d,e,v', 22),
(767, 'Keyur', '2016-09-13', '2016-09-13', '1', 'projects', 'a,d,e,v', 21),
(766, 'Keyur', '2016-09-13', '2016-09-13', '1', 'project_type', 'a,d,e,v', 20),
(765, 'Keyur', '2016-09-13', '2016-09-13', '1', 'gallery', 'a,d,e,v', 19),
(764, 'Keyur', '2016-09-13', '2016-09-13', '1', 'album', 'a,d,e,v', 18),
(763, 'Keyur', '2016-09-13', '2016-09-13', '1', 'albumtype', 'a,d,e,v', 17),
(762, 'Keyur', '2016-09-13', '2016-09-13', '1', 'testimonialtype', 'a,d,e,v', 16),
(760, 'Keyur', '2016-09-13', '2016-09-13', '1', 'newsmaster', 'a,d,e,v', 14),
(761, 'Keyur', '2016-09-13', '2016-09-13', '1', 'testimonial', 'a,d,e,v', 15),
(759, 'Keyur', '2016-09-13', '2016-09-13', '1', 'news', 'a,d,e,v', 13),
(757, 'Keyur', '2016-09-13', '2016-09-13', '1', 'epanel', 'a,d,e,v', 11),
(758, 'Keyur', '2016-09-13', '2016-09-13', '1', 'website', 'a,d,e,v', 12),
(755, 'Keyur', '2016-09-13', '2016-09-13', '1', 'homecontent', 'a,d,e,v', 8),
(756, 'Keyur', '2016-09-13', '2016-09-13', '1', 'subscription', 'a,d,e,v', 9),
(754, 'Keyur', '2016-09-13', '2016-09-13', '1', 'pageimages', 'a,d,e,v', 7),
(753, 'Keyur', '2016-09-13', '2016-09-13', '1', 'pages', 'a,d,e,v', 6),
(752, 'Keyur', '2016-09-13', '2016-09-13', '1', 'permission', 'a,d,e,v', 5),
(751, 'Keyur', '2016-09-13', '2016-09-13', '1', 'slider', 'a,d,e,v', 4),
(750, 'Keyur', '2016-09-13', '2016-09-13', '1', 'usergroup', 'a,d,e,v', 3),
(749, 'Keyur', '2016-09-13', '2016-09-13', '1', 'user', 'a,d,e,v', 2),
(748, 'Keyur', '2016-09-13', '2016-09-13', '1', 'contact', 'a,d,e,v', 1),
(786, 'Keyur', '2016-09-13', '2016-09-13', '1', 'product', 'a,d,e,v', 39),
(787, 'Keyur', '2016-09-13', '2016-09-13', '1', 'products', 'a,d,e,v', 100),
(788, 'Keyur', '2016-09-13', '2016-09-13', '1', 'downloads', 'a,d,e,v', 40);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `product_type` int NOT NULL,
  `product_title` varchar(100) NOT NULL DEFAULT '',
  `product_tagline` text NOT NULL,
  `product_desc` text NOT NULL,
  `thumbnail_image` text NOT NULL,
  `image` text NOT NULL,
  `position` char(1) NOT NULL DEFAULT 'I',
  `eve_date` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int NOT NULL,
  `pTypeID` int NOT NULL,
  `productTitle` varchar(100) NOT NULL,
  `productTypeTitle` varchar(50) DEFAULT NULL,
  `productDescr` text NOT NULL,
  `productStatus` varchar(100) NOT NULL,
  `productBS` varchar(100) NOT NULL,
  `productArea` varchar(200) DEFAULT NULL,
  `productUnits` varchar(100) NOT NULL,
  `ContactPerson` text NOT NULL,
  `productAbout` text,
  `productSpecification` text NOT NULL,
  `productPlans` text,
  `productBrochure` varchar(200) DEFAULT NULL,
  `productLocation` varchar(200) DEFAULT NULL,
  `productMap` varchar(255) DEFAULT NULL,
  `productThumbnail` varchar(100) DEFAULT NULL,
  `productSpeciality` text,
  `productVideo` text,
  `productVideoUrl` varchar(150) DEFAULT NULL,
  `productsUrl` varchar(200) DEFAULT NULL,
  `homepage` char(1) NOT NULL DEFAULT 'N',
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int NOT NULL,
  `homesortorder` int DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL,
  `hasForm` varchar(6) DEFAULT NULL,
  `productLocationThumbnail` varchar(256) NOT NULL,
  `menu` char(1) NOT NULL,
  `parallaximage` varchar(256) NOT NULL,
  `parallaxdesc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `pTypeID`, `productTitle`, `productTypeTitle`, `productDescr`, `productStatus`, `productBS`, `productArea`, `productUnits`, `ContactPerson`, `productAbout`, `productSpecification`, `productPlans`, `productBrochure`, `productLocation`, `productMap`, `productThumbnail`, `productSpeciality`, `productVideo`, `productVideoUrl`, `productsUrl`, `homepage`, `createdate`, `modifieddate`, `username`, `sortorder`, `homesortorder`, `status`, `remote_ip`, `hasForm`, `productLocationThumbnail`, `menu`, `parallaximage`, `parallaxdesc`) VALUES
(1, 1, 'Hall', 'Hall', 'cxxcx', 'Completed', '', '', '', '', '', '', 'Yes', '', '', '', '', NULL, '21', NULL, '', 'N', '2016-09-09', '2016-09-09', '', 1, 2, 'E', '127.0.0.1', 'Yes', '', 'N', 'Main_Slider3.jpg', '322321');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `pTypeID` int NOT NULL,
  `pTypeTitle` varchar(50) NOT NULL,
  `pTypeDescr` text,
  `pTypeParent` int NOT NULL DEFAULT '0',
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `HasProject` char(1) NOT NULL DEFAULT 'N',
  `remote_ip` varchar(20) NOT NULL,
  `projectFile` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`pTypeID`, `pTypeTitle`, `pTypeDescr`, `pTypeParent`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `HasProject`, `remote_ip`, `projectFile`) VALUES
(1, 'Agrawal Pragati Hall', 'Agrawal Pragati Hall', 0, '2016-09-09', '2016-09-09', '', 1, 'E', 'Y', '127.0.0.1', ''),
(3, 'zxzxzx', 'xzzxxz', 0, '2016-09-19', '2016-09-19', '', 1, 'E', 'Y', '127.0.0.1', 'maintanance.jpg'),
(4, 'cxxc', 's', 0, '2016-09-19', '2016-09-19', '', 1, 'E', 'Y', '127.0.0.1', 'Latest-News.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectID` int NOT NULL,
  `pTypeID` int NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `projectTypeTitle` varchar(50) NOT NULL,
  `projectDescr` text NOT NULL,
  `projectStatus` varchar(25) NOT NULL,
  `projectBS` varchar(10) NOT NULL,
  `projectArea` varchar(200) DEFAULT NULL,
  `projectUnits` varchar(100) NOT NULL,
  `projectAbout` text,
  `projectPlans` text,
  `projectBrochure` varchar(200) DEFAULT NULL,
  `conceptPresentation` varchar(200) DEFAULT NULL,
  `projectLocation` varchar(200) DEFAULT NULL,
  `projectThumbnail` varchar(100) DEFAULT NULL,
  `projectSpeciality` text,
  `projectVideo` text,
  `projectVideoUrl` varchar(200) DEFAULT NULL,
  `projectsUrl` varchar(200) DEFAULT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL,
  `hasForm` varchar(6) DEFAULT 'No',
  `hasmasterplan` varchar(6) DEFAULT 'No',
  `hasWhy` varchar(6) DEFAULT 'Yes',
  `hasmainFeatures` varchar(6) DEFAULT 'No',
  `hasexclusiveServices` varchar(6) DEFAULT 'No',
  `projectWhy` text,
  `mainFeatures` text,
  `mobilemainfeatures` text,
  `exclusiveServices` text,
  `mobileexclusiveservices` text,
  `projectParallax` varchar(256) NOT NULL,
  `parallaxDescr` text NOT NULL,
  `projectMap` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `pTypeID`, `projectTitle`, `projectTypeTitle`, `projectDescr`, `projectStatus`, `projectBS`, `projectArea`, `projectUnits`, `projectAbout`, `projectPlans`, `projectBrochure`, `conceptPresentation`, `projectLocation`, `projectThumbnail`, `projectSpeciality`, `projectVideo`, `projectVideoUrl`, `projectsUrl`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `remote_ip`, `hasForm`, `hasmasterplan`, `hasWhy`, `hasmainFeatures`, `hasexclusiveServices`, `projectWhy`, `mainFeatures`, `mobilemainfeatures`, `exclusiveServices`, `mobileexclusiveservices`, `projectParallax`, `parallaxDescr`, `projectMap`) VALUES
(1, 1, 'Agrawal Pragati Trust', '', '<p style=\"text-align: justify;\">Rome was not built in a day. Any good structure takes a long time to be built. To achieve any big social welfare goal is not an easy task and requires strong faith within you. The support, trust and dedication of the Agrawal people towards the Trust have been extra-ordinary. Agrawal community has come forward &amp; Donated with the free hand for this social cause.</p>\r\n<p style=\"text-align: justify;\">The support of community has encouraged &amp; got this dream on the paper and now in Reality.</p>\r\n<h2 class=\"title theme-color\" style=\"margin-bottom: 10px;\">Under Agra Exotica Bhawan  </h2>\r\n<ul style=\"list-style: circle; margin-left: 15px;\">\r\n<li style=\"list-style: circle;\">Plot area approx. 5,000 sq. yards. </li>\r\n<li style=\"list-style: circle;\">Total construction 1,56,000 sq. ft.</li>\r\n<li style=\"list-style: circle;\">At the Ground floor Front Lawn area 3,000 sq. ft.</li>\r\n<li style=\"list-style: circle;\">At the Ground floor Imperial Banquet area 13000 sq. ft.</li>\r\n<li style=\"list-style: circle;\">At the front 1st floor Administration Office. </li>\r\n<li style=\"list-style: circle;\">At the 2nd floor Crystal Banquet area 13000 sq. ft.</li>\r\n<li style=\"list-style: circle;\">At the 3rd Floor front side Boardroom & Back Side Reception. </li>\r\n<li style=\"list-style: circle;\">At the 4th floor Pearl Banquet area 3000 sq. ft & 8 Guest Room. </li>\r\n<li style=\"list-style: circle;\">At the 5th Floor till 10th Floor Guest Room with Mini Banquet. </li>\r\n<li style=\"list-style: circle;\">We are having 104 rooms category wise. </li>\r\n<li style=\"list-style: circle;\">Two Basement Car Parking levels. </li>\r\n<li style=\"list-style: circle;\">Total 7 lifts (5 Guest lift & 2 Service Lift). </li>\r\n</ul>', '', '', '', '', NULL, '', '', '', '1-map.jpg', 'Agra-Exotica-Bhawan.jpg', NULL, '', NULL, '', '2017-01-25', '2023-02-21', '', 0, 'E', '127.0.0.1', '', '', '', '', '', '', 'Agrawal Pragati Trust', '', '', '', 'GroundfloorAptBhavan.png', '<p class=\"details\">We welcome you to visit Agrawal Pragati Trust Banquet.</p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.709958358175!2d72.72035125958098!3d21.12412652633211!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be052b7571a5659%3A0x46a368fde1b222e9!2sAgrawal+Pragati+Trust%2C+102%2FB%2C+T.P.82%2C+Opp.+A');

-- --------------------------------------------------------

--
-- Table structure for table `project_gallery`
--

CREATE TABLE `project_gallery` (
  `galleryID` int NOT NULL,
  `projectID` int NOT NULL DEFAULT '0',
  `galleryTitle` varchar(100) NOT NULL DEFAULT '',
  `galleryImage` varchar(100) NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'G',
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(15) NOT NULL,
  `isFront` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_gallery`
--

INSERT INTO `project_gallery` (`galleryID`, `projectID`, `galleryTitle`, `galleryImage`, `type`, `sortorder`, `status`, `username`, `createdate`, `modifieddate`, `remote_ip`, `isFront`) VALUES
(33, 1, 'Layout Plan', '33-layoutplan.jpg', 'F', 2, 'D', 'Keyur', '0000-00-00', '2016-12-09', '127.0.0.1', ''),
(38, 1, 'Twin Master Bed - Four Pax Room With Two Toilets', 'IMG20220101185346.jpg', 'G', 3, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(35, 1, 'Typical Floor Plan', '35-typical-floor.jpg', 'F', 7, 'D', 'Keyur', '0000-00-00', '2016-10-08', '127.0.0.1', ''),
(19, 1, 'Crystal Banquet', 'about-hall-image.jpg', 'S', 0, 'E', 'Keyur', '0000-00-00', '2016-12-13', '127.0.0.1', 'E'),
(37, 1, 'Twin Master Bed - Four Pax Room With Two Toilets', 'IMG20220101185417.jpg', 'G', 2, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(36, 1, 'Twin Master Bed - Two Pax With Single Toilet', 'two-bed.jpg', 'G', 1, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(34, 1, 'Room Plan', '34-room-plan.jpg', 'F', 9, 'D', 'Keyur', '0000-00-00', '2016-10-08', '127.0.0.1', ''),
(32, 1, 'Typical Guest Floor Plan', '32-05---TYPICAL-GUEST-FL-PLAN.jpg', 'F', 8, 'D', 'Keyur', '0000-00-00', '2016-10-08', '127.0.0.1', ''),
(31, 1, 'Mezzanine 2nd Floor Plan', '31-04---FIRST-MEZZ-PLAN.jpg', 'F', 6, 'D', '', '0000-00-00', '0000-00-00', '127.0.0.1', ''),
(30, 1, 'First Floor Plan', '30-03---FIRST-FL-PLAN.jpg', 'F', 4, 'D', '', '0000-00-00', '0000-00-00', '127.0.0.1', ''),
(28, 1, 'Mezzanine 1st Floor Plan', '28-1stfloor-mezzaininefloor.jpg', 'F', 5, 'D', '', '0000-00-00', '0000-00-00', '127.0.0.1', ''),
(46, 1, 'Plot Plan', '46-APT-Ploat.jpg', 'F', 1, 'D', '', '0000-00-00', '0000-00-00', '127.0.0.1', ''),
(27, 1, 'Ground Floor Plan', '27-01---GR-FL-PLAN.jpg', 'F', 2, 'E', '', '0000-00-00', '0000-00-00', '127.0.0.1', ''),
(39, 1, 'Family Room Single Bed - Six Pax With Two Toilets', 'Master-Bed-And-Twin-Bed.jpg', 'G', 4, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(40, 1, 'Image Of Reception Area - Third Floor', 'IMG20220101190840.jpg', 'G', 7, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(41, 1, 'Entry of Imperial Banquet', 'IMG20220102150916.jpg', 'G', 8, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(42, 1, 'Multi Utility Hall of the Floor', 'IMG20220101185646.jpg', 'G', 5, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(43, 1, 'Image Of Reception Area - Third Floor', 'IMG20220101190905.jpg', 'G', 6, 'E', 'Keyur', '0000-00-00', '2016-10-22', '127.0.0.1', 'E'),
(45, 1, 'Imperial Banquet', 'hall-image.jpg', 'S', 0, 'E', 'Keyur', '0000-00-00', '2016-12-13', '127.0.0.1', 'E'),
(47, 1, 'Pearl Banquet', 'pearl_banquet.webp\n', 'S', 0, 'E', 'Keyur', '2023-05-31', '2023-05-31', '127.0.0.1', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `project_slider`
--

CREATE TABLE `project_slider` (
  `sliderID` int NOT NULL,
  `projectID` int NOT NULL DEFAULT '0',
  `sliderTitle` varchar(100) NOT NULL DEFAULT '',
  `sliderImage` text NOT NULL,
  `isFront` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `pTypeID` int NOT NULL,
  `pTypeTitle` varchar(50) NOT NULL,
  `projectFile` varchar(100) DEFAULT NULL,
  `pTypeDescr` text,
  `pTypeParent` int NOT NULL DEFAULT '0',
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `HasProject` char(1) NOT NULL DEFAULT 'N',
  `remote_ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`pTypeID`, `pTypeTitle`, `projectFile`, `pTypeDescr`, `pTypeParent`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `HasProject`, `remote_ip`) VALUES
(1, 'Agrawal Pragati Hall', '1-arc2.jpg', 'Agrawal Paragati Hall', 0, '0000-00-00', '2016-09-10', 'Keyur', 1, 'E', 'Y', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `seo_link_master`
--

CREATE TABLE `seo_link_master` (
  `seo_link_id` int NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_id` int NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo_link_master`
--

INSERT INTO `seo_link_master` (`seo_link_id`, `module_name`, `module_id`, `seo_slug`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 'pages', 10, 'foundation', 1, '2016-04-01 07:26:27', '2017-01-25 16:38:53', '127.0.0.1'),
(2, 'pages', 11, 'vision', 3, '2016-04-01 07:34:35', '2016-04-11 18:18:53', '127.0.0.1'),
(3, 'pages', 12, 'mission', 3, '2016-04-01 07:35:29', '2016-04-11 18:20:38', '127.0.0.1'),
(4, 'News/news', 6, 'function', 1, '2016-04-03 13:55:44', '2017-01-25 16:52:32', '127.0.0.1'),
(5, 'News/news', 7, 'bhumi-poojan', 1, '2016-04-03 13:56:03', '2017-01-25 16:52:37', '127.0.0.1'),
(19, 'projects/commercial', 5, 'completed', 3, '2016-04-06 06:07:20', '2016-04-06 06:07:20', '::1'),
(18, 'projects/residential', 4, 'ongoing', 3, '2016-04-06 06:07:03', '2016-08-01 11:42:03', '127.0.0.1'),
(17, 'projects/residential', 3, 'completed', 3, '2016-04-06 06:06:48', '2016-04-06 06:06:48', '::1'),
(84, 'projects/agrawal-paragati-hall', 0, 'cxcx', 3, '2016-09-10 12:23:13', '2016-09-10 12:56:26', '127.0.0.1'),
(15, 'projects', 1, 'agrawal-pragati-hall', 3, '2016-04-06 05:59:41', '2016-09-30 16:26:17', '127.0.0.1'),
(20, 'projects/commercial', 6, 'ongoing', 3, '2016-04-06 06:07:36', '2016-08-01 11:42:15', '127.0.0.1'),
(26, 'projects/commercial/on-going', 5, 'valentina-business-hub', 3, '2016-04-11 15:11:13', '2016-04-11 15:27:43', '127.0.0.1'),
(27, 'projects/commercial/on-going', 6, 'velly-belly', 3, '2016-04-11 15:33:48', '2016-04-11 15:34:39', '127.0.0.1'),
(28, 'projects/commercial', 7, 'upcoming', 3, '2016-04-11 15:56:37', '2016-04-11 16:17:17', '127.0.0.1'),
(24, 'News/news', 5, 'satwaro-radhesyamji', 1, '2016-04-09 12:31:54', '2017-01-25 16:52:58', '127.0.0.1'),
(41, 'projects/residential/completed', 10, 'ambika-dreams', 3, '2016-07-29 17:24:03', '2016-08-05 12:46:03', '123.201.2.173'),
(29, 'projects/commercial/upcoming', 7, 'v-square', 3, '2016-04-11 15:58:16', '2016-04-12 19:39:13', '127.0.0.1'),
(30, 'projects/commercial/upcoming', 8, 'v3-corner', 3, '2016-04-11 16:05:52', '2016-04-12 13:47:04', '127.0.0.1'),
(31, 'projects/commercial/ongoing', 6, 'velly-belly', 3, '2016-04-11 16:55:39', '2016-04-11 16:58:05', '127.0.0.1'),
(32, 'projects', 8, 'hospitality', 3, '2016-04-11 16:59:05', '2016-04-11 17:13:17', '127.0.0.1'),
(33, 'projects/hospitality', 9, 'ongoing', 3, '2016-04-11 17:01:07', '2016-07-29 16:56:46', '192.168.1.122'),
(34, 'projects/hospitality/ongoing', 6, 'velly-belly', 3, '2016-04-11 17:02:01', '2016-04-12 15:08:53', '127.0.0.1'),
(47, 'projects/residential/on-going', 16, 'ambika-solitaire', 3, '2016-07-29 19:21:13', '2016-07-30 17:30:50', '127.0.0.1'),
(110, 'member', 12, 'core-committee', 3, '2016-10-27 17:20:21', '2016-10-27 17:20:21', '127.0.0.1'),
(37, 'gallery', 9, 'bhumi-poojan', 1, '2016-04-12 11:55:09', '2016-12-09 19:09:24', '127.0.0.1'),
(38, 'gallery', 10, 'function', 3, '2016-04-12 11:55:25', '2016-12-02 15:38:31', '127.0.0.1'),
(46, 'projects/commercial/ongoing', 15, 'ambika-pinnacle-business-hub', 3, '2016-07-29 19:03:39', '2016-08-20 07:18:38', '123.201.2.173'),
(40, 'News/news', 8, 'hall', 1, '2016-07-29 15:58:13', '2017-01-25 16:52:44', '127.0.0.1'),
(43, 'projects/residential/completed', 12, 'ambika-heaven', 3, '2016-07-29 17:46:42', '2016-08-06 08:14:38', '123.201.2.173'),
(44, 'projects/residential/completed', 13, 'ambika-heights', 3, '2016-07-29 18:30:32', '2016-08-09 11:36:27', '::1'),
(45, 'projects/residential/on-going', 14, 'ambika-pinnacle', 3, '2016-07-29 18:37:20', '2016-07-30 17:45:12', '127.0.0.1'),
(48, 'projects/residential/completed', 17, 'ambika-township', 3, '2016-07-29 19:31:04', '2016-08-05 12:46:18', '123.201.2.173'),
(49, 'projects/residential/completed', 18, 'ambika-residency', 3, '2016-08-01 16:20:36', '2016-08-09 11:26:33', '::1'),
(50, 'projects/residential/completed', 19, 'ambika-row-house', 3, '2016-08-01 16:23:56', '2016-08-09 11:26:48', '::1'),
(51, 'projects/residential/completed', 20, 'dssd', 3, '2016-08-01 16:24:46', '2016-08-01 16:25:19', '127.0.0.1'),
(52, 'projects/residential/completed', 22, 'xzzx', 3, '2016-08-01 16:34:22', '2016-08-01 16:36:20', '127.0.0.1'),
(53, 'projects/residential/completed', 23, 'aesha', 3, '2016-08-01 16:43:29', '2016-08-01 16:54:34', '127.0.0.1'),
(54, 'projects/residential/ongoing', 14, 'ambika-pinnacle-residency', 3, '2016-08-01 18:23:17', '2016-08-20 07:06:05', '123.201.2.173'),
(55, 'projects/residential/ongoing', 16, 'ambika-solitaire', 3, '2016-08-01 18:23:29', '2016-08-08 18:12:03', '::1'),
(56, 'projects/residential', 10, 'upcoming', 3, '2016-08-08 17:25:27', '2016-08-08 17:25:27', '::1'),
(57, 'projects/residential/upcoming', 10, 'ambika-dreams', 3, '2016-08-08 17:26:08', '2016-08-09 13:45:24', '::1'),
(61, 'gallery', 11, 'site', 1, '2016-08-09 10:36:49', '2016-12-09 19:09:31', '127.0.0.1'),
(58, 'projects/residential/ongoing', 12, 'ambika-heaven', 3, '2016-08-08 17:28:51', '2016-08-09 11:29:53', '::1'),
(59, 'projects/residential/completed', 18, 'ambika-residency', 3, '2016-08-08 17:33:08', '2016-08-09 11:26:33', '::1'),
(60, 'projects/residential/completed', 19, 'ambika-row-house', 3, '2016-08-08 17:33:48', '2016-08-09 11:26:48', '::1'),
(68, 'projects', 1, 'agrawal-pragati-hall', 3, '2016-09-09 18:36:23', '2016-09-30 16:26:17', '127.0.0.1'),
(67, 'member', 6, 'founder-trustee', 3, '2016-09-07 14:59:57', '2016-12-02 13:26:29', '127.0.0.1'),
(73, 'projects', 3, 'fdsds', 3, '2016-09-10 11:11:43', '2016-09-10 11:11:43', '127.0.0.1'),
(74, 'projects', 4, 'ssasasaa', 3, '2016-09-10 11:12:19', '2016-09-10 11:12:19', '127.0.0.1'),
(83, 'projects/agrawal-paragati-hall', 0, 'cxcx', 3, '2016-09-10 12:21:55', '2016-09-10 12:56:26', '127.0.0.1'),
(101, 'projects/agrawal-pragati-hall', 1, 'agrawal-pragati-trust', 1, '2016-09-30 16:30:34', '2017-01-25 17:05:28', '127.0.0.1'),
(75, 'projects/ssasasaa', 5, 'cxcxzxz', 3, '2016-09-10 11:13:18', '2016-09-10 11:13:18', '127.0.0.1'),
(76, 'projects/fdsds', 5, 'cxcxzxz', 3, '2016-09-10 11:13:43', '2016-09-10 11:13:43', '127.0.0.1'),
(77, 'projects', 1, 'agrawal-pragati-hall', 3, '2016-09-10 11:14:52', '2016-09-30 16:26:17', '127.0.0.1'),
(78, 'projects/agrawal-pragati-hall/agrawal-pragati-hall/agrawal-pragati-hall/agrawal-pragati-hall/agrawal', 1, 'agrawal-pragati-hall', 3, '2016-09-10 11:15:17', '2016-09-10 11:15:17', '127.0.0.1'),
(81, 'projects/agrawal-pragati-hall', 6, 'sxssxxcc', 3, '2016-09-10 11:35:33', '2016-09-10 11:36:05', '127.0.0.1'),
(82, 'projects', 1, 'agrawal-pragati-hall', 3, '2016-09-10 12:02:03', '2016-09-30 16:26:17', '127.0.0.1'),
(85, '/', 4, 'cx', 3, '2016-09-10 12:27:49', '2016-09-10 13:21:16', '127.0.0.1'),
(86, 'projects/agrawal-paragati-hall', 0, 'cxcx', 3, '2016-09-10 12:32:59', '2016-09-10 12:56:26', '127.0.0.1'),
(87, 'projects/agrawal-paragati-hall', 11, 'cxxzzx', 3, '2016-09-10 12:41:36', '2016-09-10 12:41:36', '127.0.0.1'),
(88, 'projects/agrawal-paragati-hall', 13, 'xzxzzxxz', 3, '2016-09-10 12:44:31', '2016-09-10 12:44:31', '127.0.0.1'),
(91, 'projects/agrawal-paragati-hall', 1, 'agrawal-pragati-trust', 3, '2016-09-10 13:01:18', '2016-09-30 16:24:39', '127.0.0.1'),
(89, 'projects/agrawal-paragati-hall', 14, 'cxxc', 3, '2016-09-10 12:49:33', '2016-09-10 12:49:33', '127.0.0.1'),
(90, 'projects/agrawal-paragati-hall', 16, 'cxcx', 3, '2016-09-10 12:55:26', '2016-09-10 12:58:47', '127.0.0.1'),
(92, 'projects/agrawal-paragati-hall', 2, 'agrawal-pragati-trust', 3, '2016-09-10 13:01:18', '2016-09-10 13:16:39', '127.0.0.1'),
(93, 'projects/no-value-defined..', 1, 'agrawal-paragati-trust', 3, '2016-09-10 13:05:12', '2016-09-10 13:05:12', '127.0.0.1'),
(94, 'projects/no-value-defined..', 2, 'xzc', 3, '2016-09-10 13:09:40', '2016-09-10 13:09:40', '127.0.0.1'),
(95, 'projects/agrawal-paragati-hall', 1, 'agrawal-pragati-trust', 3, '2016-09-10 13:18:09', '2016-09-30 16:24:39', '127.0.0.1'),
(96, 'projects/no-value-defined..', 4, 'cx', 3, '2016-09-10 13:20:59', '2016-09-10 13:20:59', '127.0.0.1'),
(97, 'projects/agrawal-paragati-hall', 1, 'agrawal-pragati-trust', 3, '2016-09-10 13:22:16', '2016-09-30 16:24:39', '127.0.0.1'),
(98, 'projects/agrawal-paragati-hall', 2, 'ssaas', 3, '2016-09-10 13:57:45', '2016-09-10 13:57:45', '127.0.0.1'),
(99, 'pages', 13, 'maharaja-agrasen', 1, '2016-09-13 17:28:08', '2017-01-25 15:35:54', '127.0.0.1'),
(100, 'pages', 14, 'office-bearer', 3, '2016-09-13 17:31:07', '2016-10-26 12:36:28', '127.0.0.1'),
(102, 'member', 7, 'patron-trustee', 1, '2016-09-30 17:23:46', '2017-01-25 16:37:14', '127.0.0.1'),
(103, 'member', 8, 'trust-board', 3, '2016-09-30 17:24:24', '2016-12-02 13:26:17', '127.0.0.1'),
(104, 'pages', 15, 'gotras', 1, '2016-10-23 15:01:18', '2017-01-25 15:36:12', '127.0.0.1'),
(105, 'News/news', 9, 'diwali-function', 1, '2016-10-24 15:37:30', '2017-01-25 16:52:23', '127.0.0.1'),
(106, 'News/news', 10, 'agroha-ratha-yatra-swagat', 1, '2016-10-24 15:43:37', '2017-01-25 16:52:51', '127.0.0.1'),
(107, 'member', 9, 'trust-board', 3, '2016-10-26 15:02:30', '2016-10-27 17:15:28', '127.0.0.1'),
(117, 'member', 10, 'invitee-founder-trustee', 1, '2016-12-09 18:29:46', '2016-12-09 18:29:46', '127.0.0.1'),
(114, 'member', 14, 'life-member', 1, '2023-03-23 15:44:00', '2023-03-23 15:44:00', '127.0.0.1'),
(111, 'gallery', 12, 'compound-wall', 1, '2016-12-02 15:35:45', '2016-12-09 19:09:37', '127.0.0.1'),
(112, 'member', 13, 'invitee-patron-trustee', 1, '2016-12-09 18:29:46', '2016-12-09 18:29:46', '127.0.0.1'),
(113, 'News/news', 11, 'agrabhagwat-kata', 1, '2017-01-25 16:50:30', '2017-01-25 16:51:45', '127.0.0.1'),
(115, 'member', 15, 'dhansangrah-team', 1, '2023-03-23 15:44:00', '2023-03-23 15:44:00', '127.0.0.1'),
(116, 'member', 11, 'bandhkam-team', 1, '2023-03-23 15:44:00', '2023-03-23 15:44:00', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `session_log_master`
--

CREATE TABLE `session_log_master` (
  `session_log_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `loginID` varchar(100) NOT NULL,
  `remote_ip` varchar(100) NOT NULL,
  `last_access` datetime NOT NULL,
  `status` char(1) NOT NULL COMMENT 'LogiIn(I) / Logout (O)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_log_master`
--

INSERT INTO `session_log_master` (`session_log_id`, `user_id`, `loginID`, `remote_ip`, `last_access`, `status`) VALUES
(1, 3, 'admin-ambikagroup', '::1', '2016-07-09 23:18:46', 'I'),
(2, 3, 'admin-ambikagroup', '::1', '2016-07-17 16:05:58', 'I'),
(3, 3, 'admin-ambikagroup', '127.0.0.1', '2016-07-29 13:37:45', 'I'),
(4, 3, 'admin-ambikagroup', '127.0.0.1', '2016-07-29 15:18:49', 'I'),
(5, 3, 'admin-ambikagroup', '192.168.1.122', '2016-07-29 16:51:57', 'I'),
(6, 3, 'admin-ambikagroup', '127.0.0.1', '2016-07-29 17:25:47', 'I'),
(7, 3, 'admin-ambikagroup', '192.168.1.122', '2016-07-29 17:26:05', 'I'),
(8, 3, 'admin-ambikagroup', '127.0.0.1', '2016-07-30 11:00:22', 'I'),
(9, 3, 'admin-ambikagroup', '127.0.0.1', '2016-07-30 14:13:25', 'I'),
(10, 3, 'admin-ambikagroup', '127.0.0.1', '2016-08-01 11:41:47', 'I'),
(11, 3, 'admin-ambikagroup', '127.0.0.1', '2016-08-01 14:51:07', 'I'),
(12, 3, 'admin-ambikagroup', '127.0.0.1', '2016-08-01 23:00:02', 'I'),
(13, 3, 'admin-ambikagroup', '127.0.0.1', '2016-08-02 10:27:05', 'I'),
(14, 3, 'admin-ambikagroup', '123.201.2.173', '2016-08-05 12:21:29', 'I'),
(15, 3, 'admin-ambikagroup', '123.201.2.173', '2016-08-06 08:10:39', 'I'),
(16, 3, 'admin-ambikagroup', '::1', '2016-08-09 10:20:06', 'I'),
(17, 3, 'admin-ambikagroup', '123.201.2.173', '2016-08-20 07:00:43', 'I'),
(18, 3, 'admin-ambikagroup', '123.201.2.173', '2016-08-20 07:02:20', 'I'),
(19, 3, 'adm-apt', '127.0.0.1', '2016-09-04 21:58:58', 'I'),
(20, 3, 'adm-apt', '127.0.0.1', '2016-09-06 11:13:00', 'I'),
(21, 3, 'adm-apt', '127.0.0.1', '2016-09-06 14:51:03', 'I'),
(22, 3, 'adm-apt', '127.0.0.1', '2016-09-06 14:54:38', 'O'),
(23, 3, 'adm-apt', '127.0.0.1', '2016-09-06 14:54:44', 'I'),
(24, 3, 'adm-apt', '127.0.0.1', '2016-09-07 10:38:23', 'I'),
(25, 3, 'adm-apt', '127.0.0.1', '2016-09-07 11:38:53', 'I'),
(26, 3, 'adm-apt', '127.0.0.1', '2016-09-09 12:36:57', 'I'),
(27, 3, 'adm-apt', '127.0.0.1', '2016-09-09 12:45:50', 'O'),
(28, 3, 'adm-apt', '127.0.0.1', '2016-09-09 12:45:57', 'I'),
(29, 3, 'adm-apt', '127.0.0.1', '2016-09-09 14:44:15', 'I'),
(30, 3, 'adm-apt', '127.0.0.1', '2016-09-09 16:23:39', 'I'),
(31, 3, 'adm-apt', '127.0.0.1', '2016-09-10 11:08:50', 'I'),
(32, 3, 'adm-apt', '127.0.0.1', '2016-09-10 15:18:22', 'I'),
(33, 3, 'adm-apt', '127.0.0.1', '2016-09-12 17:39:10', 'I'),
(34, 3, 'adm-apt', '127.0.0.1', '2016-09-13 15:57:52', 'I'),
(35, 3, 'adm-apt', '127.0.0.1', '2016-09-19 11:14:47', 'I'),
(36, 3, 'adm-apt', '127.0.0.1', '2016-09-19 13:17:51', 'I'),
(37, 3, 'adm-apt', '127.0.0.1', '2016-09-19 17:49:44', 'I'),
(38, 3, 'adm-apt', '127.0.0.1', '2016-09-19 19:32:31', 'I'),
(39, 3, 'adm-apt', '127.0.0.1', '2016-09-19 23:17:01', 'I'),
(40, 3, 'adm-apt', '127.0.0.1', '2016-09-20 11:22:09', 'I'),
(41, 3, 'adm-apt', '127.0.0.1', '2016-09-21 00:12:47', 'I'),
(42, 3, 'adm-apt', '127.0.0.1', '2016-09-21 08:36:36', 'I'),
(43, 3, 'adm-apt', '127.0.0.1', '2016-09-21 11:01:42', 'I'),
(44, 3, 'adm-apt', '127.0.0.1', '2016-09-24 11:40:05', 'I'),
(45, 3, 'adm-apt', '127.0.0.1', '2016-09-30 16:04:15', 'I'),
(46, 3, 'adm-apt', '127.0.0.1', '2016-09-30 17:23:21', 'I'),
(47, 3, 'adm-apt', '127.0.0.1', '2016-10-08 16:25:35', 'I'),
(48, 3, 'adm-apt', '127.0.0.1', '2016-10-08 16:25:36', 'I'),
(49, 3, 'adm-apt', '127.0.0.1', '2016-10-08 17:56:39', 'I'),
(50, 3, 'adm-apt', '127.0.0.1', '2016-10-22 18:20:02', 'I'),
(51, 3, 'adm-apt', '127.0.0.1', '2016-10-23 00:49:51', 'I'),
(52, 3, 'adm-apt', '127.0.0.1', '2016-10-23 22:00:31', 'I'),
(53, 3, 'adm-apt', '127.0.0.1', '2016-10-24 15:35:17', 'I'),
(54, 3, 'adm-apt', '127.0.0.1', '2016-10-26 11:10:49', 'I'),
(55, 3, 'adm-apt', '127.0.0.1', '2016-10-26 15:01:59', 'I'),
(56, 3, 'adm-apt', '127.0.0.1', '2016-10-27 16:28:29', 'I'),
(57, 3, 'adm-apt', '127.0.0.1', '2016-11-05 10:22:11', 'I'),
(58, 3, 'adm-apt', '127.0.0.1', '2016-11-05 17:30:24', 'I'),
(59, 3, 'adm-apt', '127.0.0.1', '2016-12-02 12:30:59', 'I'),
(60, 3, 'adm-apt', '127.0.0.1', '2016-12-02 14:35:13', 'I'),
(61, 3, 'adm-apt', '127.0.0.1', '2016-12-06 15:33:59', 'I'),
(62, 3, 'adm-apt', '127.0.0.1', '2016-12-06 15:33:59', 'I'),
(63, 3, 'adm-apt', '127.0.0.1', '2016-12-07 12:47:30', 'I'),
(64, 3, 'adm-apt', '127.0.0.1', '2016-12-10 09:43:41', 'I'),
(65, 3, 'adm-apt', '127.0.0.1', '2017-01-26 11:25:41', 'I'),
(66, 3, 'adm-apt', '127.0.0.1', '2017-01-26 13:32:24', 'I'),
(67, 3, 'adm-apt', '150.107.188.82', '2023-02-15 11:00:24', 'I'),
(68, 3, 'adm-apt', '150.107.188.82', '2023-02-15 11:01:24', 'I'),
(69, 3, 'adm-apt', '150.107.188.82', '2023-02-15 11:02:45', 'I'),
(70, 3, 'adm-apt', '150.107.188.82', '2023-02-15 11:08:09', 'I'),
(71, 3, 'adm-apt', '150.107.188.82', '2023-05-29 12:49:12', 'I'),
(72, 3, 'adm-apt', '150.107.188.82', '2023-05-29 13:13:34', 'I'),
(73, 3, 'adm-apt', '172.71.225.150', '2023-10-10 10:56:03', 'I'),
(74, 3, 'adm-apt', '162.158.55.35', '2023-10-10 12:03:31', 'I'),
(75, 3, 'adm-apt', '172.70.218.99', '2023-10-10 14:09:56', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `sliderimage`
--

CREATE TABLE `sliderimage` (
  `sliderID` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `sliderTitle` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sliderPosition` char(1) NOT NULL DEFAULT 'H',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderimage`
--

INSERT INTO `sliderimage` (`sliderID`, `image`, `sliderTitle`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `sliderPosition`, `remote_ip`) VALUES
(6, 'Pearl_Banquet.jpg\n', 'Pearl Banquet', 'Keyur', '2016-09-21', '2016-12-02', 1, 'E', 'H', '127.0.0.1'),
(4, 'APT-banner.webp', 'APT Banner Image', 'Keyur', '2016-09-21', '2016-10-08', 5, 'E', 'H', '127.0.0.1'),
(7, 'slider-image.jpg', 'Agra Exotica View', 'Keyur', '2016-12-02', '2016-12-10', 4, 'E', 'H', '127.0.0.1'),
(10, 'Imperial_Banquet.jpg', 'Imperial Banquet', 'Keyur', '2016-09-21', '2016-10-08', 2, 'E', 'H', '127.0.0.1'),
(8, 'Crystal-Banquet.jpg', 'Crystal Banquet', 'Keyur', '2016-12-02', '2016-12-10', 3, 'E', 'H', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_master`
--

CREATE TABLE `subscription_master` (
  `s_id` int NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_email` varchar(200) DEFAULT NULL,
  `s_mobile` varchar(20) DEFAULT NULL,
  `s_date` date NOT NULL,
  `new` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_master`
--

INSERT INTO `subscription_master` (`s_id`, `s_name`, `s_email`, `s_mobile`, `s_date`, `new`) VALUES
(25, 'Zil Mehta', 'zilmehta07@gmail.com', '4345345', '2016-04-09', 1),
(26, 'xzxz', 'ae@hdshg.com', '', '2016-09-04', 1),
(27, 'dssasds', 'asddsds@dghhgs.com', 'sdgdshgsfdghdssd', '2016-09-12', 1),
(28, 'zzxzx', 'ae@gmail.com', '1111', '2016-10-23', 1),
(29, 'sasasa', 'a@jdjs', '213221', '2016-10-23', 1),
(30, 'mahesh ', 'gorlemahesh9977@gmail.com', '9913844807', '2017-06-10', 1),
(31, 'Sandeep kumar singhal ', 'sandeepsinghal_mfpl@yahoo.co.in', '09377616196', '2017-08-03', 1),
(32, 'Ori Johnston', 'keval.p.easternts@gmail.com', '76554433124', '2023-07-31', 1),
(33, '', '', '', '2023-08-01', 1),
(34, '', '', '', '2023-08-01', 1),
(35, '', '', '', '2023-08-01', 1),
(36, '', '', '', '2023-08-01', 1),
(37, '', '', '', '2023-08-01', 1),
(38, '', '', '', '2023-08-01', 1),
(39, '', '', '', '2023-08-01', 1),
(40, '', '', '', '2023-08-01', 1),
(41, '', '', '', '2023-08-01', 1),
(42, '', '', '', '2023-08-01', 1),
(43, '', '', '', '2023-08-01', 1),
(44, '', '', '', '2023-08-29', 1),
(45, 'Maisie Walton', 'xedoxobexi@mailinator.com', '70963124491', '2023-09-29', 1),
(46, 'September Sanford', 'mazenajer@mailinator.com', '1564613491', '2023-09-29', 1),
(47, '', '', '', '2023-10-18', 1),
(48, '', '', '', '2023-12-04', 1),
(49, '', '', '', '2023-12-17', 1),
(50, 'Hari Om Gupta', 'ho.gupta62@gmail.com', '09712939963', '2023-12-27', 1),
(51, 'Rajat tibra', 'Rajat.cool.tibra@gmail.com', '8306426419', '2024-01-14', 1),
(52, '', '', '', '2024-01-30', 1),
(53, '', '', '', '2024-05-22', 1),
(54, '', '', '', '2024-05-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_master`
--

CREATE TABLE `template_master` (
  `template_id` int NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_title` varchar(100) NOT NULL,
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_master`
--

INSERT INTO `template_master` (`template_id`, `template_name`, `template_title`, `sortorder`) VALUES
(1, 'inner_page.tpl.php', 'Inner Page Template', 1),
(3, 'full_width_page.tpl.php', 'full_width_page', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_Id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` text,
  `review` text NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_Id`, `name`, `designation`, `photo`, `review`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'Keyur Mehta, Eastern Techno Solutions', NULL, NULL, 'It\'s very affordable for the level and quality of the service provided, additionally they are very patient and understanding to all the details of your specifications. I highly recommend their company and will use their services in the future. ', 'Keyur', '2016-09-06', '2016-09-06', 1, 'E', '127.0.0.1'),
(2, 'Dishant Mehta', NULL, NULL, 'It\'s very affordable for the level and quality of the service provided, additionally they are very patient and understanding to all the details of your specifications. I highly recommend their company and will use their services in the future. ', 'Keyur', '2016-09-06', NULL, 2, 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_master`
--

CREATE TABLE `testimonial_master` (
  `testimonial_master_id` int NOT NULL,
  `testimonial_type` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial_master`
--

INSERT INTO `testimonial_master` (`testimonial_master_id`, `testimonial_type`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'Testimonial', 'Keyur', '2015-10-27', '2015-10-27', 1, 'E', '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `userID` int NOT NULL,
  `group_id` int NOT NULL DEFAULT '0',
  `loginID` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `contacts` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`userID`, `group_id`, `loginID`, `email`, `password`, `firstname`, `lastname`, `address`, `contacts`) VALUES
(3, 1, 'adm-apt', 'contact@easternts.com', '8c7c8cea6636cf129af6447b5307e9afa2f8dd29084a3450b6b60f9f6d11e6d6', 'Keyur', 'Mehta', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `video_title` varchar(150) NOT NULL DEFAULT '',
  `video_desc` text NOT NULL,
  `eve_date` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `username`, `createdate`, `modifieddate`, `video_title`, `video_desc`, `eve_date`, `remote_ip`, `status`, `sortorder`) VALUES
(9, 'Keyur', '2016-09-06', '2016-09-20', 'Agrawal Pragati Trust Construction Site', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/B0l2s1xj2dg\" frameborder=\"0\" allowfullscreen class=\"video\"></iframe>', '2015-01-01', '127.0.0.1', 'E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_master`
--

CREATE TABLE `website_master` (
  `id` int NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `tel1` varchar(25) NOT NULL,
  `tel2` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `fax` varchar(25) NOT NULL,
  `work1` text NOT NULL,
  `work2` text NOT NULL,
  `map_code` text NOT NULL,
  `logo` text NOT NULL,
  `social` text NOT NULL,
  `copyright` varchar(70) NOT NULL,
  `powered_by` text NOT NULL,
  `coming_soon` varchar(1) NOT NULL DEFAULT 'N',
  `username` varchar(70) NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_master`
--

INSERT INTO `website_master` (`id`, `email1`, `email2`, `tel1`, `tel2`, `address`, `fax`, `work1`, `work2`, `map_code`, `logo`, `social`, `copyright`, `powered_by`, `coming_soon`, `username`, `remote_ip`, `create_date`, `modified_date`) VALUES
(1, 'agarwalpragatitrust@gmail.com', '', '+917861813900', '+919737677743', 'Ambika Group - VIP circle,<br>\n											Near Kapodara Bridge,<br>\n											Utran, Mota Varachha.', '', '10:00 am to 11:00 pm', '11:00 am to 11:30 pm', '', 'logo.png', 'a:6:{s:8:\"facebook\";s:23:\"http://www.facebook.com\";s:7:\"twitter\";s:22:\"http://www.twitter.com\";s:6:\"google\";s:21:\"http://www.google.com\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:22:\"http://www.youtube.com\";s:9:\"pinterest\";s:0:\"\";}', 'Agrawal Pragati Trust', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', '', 'Keyur', '127.0.0.1', '2015-10-26', '2016-12-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `album_type`
--
ALTER TABLE `album_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `contact_master`
--
ALTER TABLE `contact_master`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `donation_master`
--
ALTER TABLE `donation_master`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `download_brochure`
--
ALTER TABLE `download_brochure`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indexes for table `gallery_master`
--
ALTER TABLE `gallery_master`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `gallery_master_hall`
--
ALTER TABLE `gallery_master_hall`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `hall_images`
--
ALTER TABLE `hall_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_master`
--
ALTER TABLE `hall_master`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `homecontent`
--
ALTER TABLE `homecontent`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `membertype`
--
ALTER TABLE `membertype`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `member_master`
--
ALTER TABLE `member_master`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `member_master_v2`
--
ALTER TABLE `member_master_v2`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `eve_date` (`eve_date`);

--
-- Indexes for table `news_type`
--
ALTER TABLE `news_type`
  ADD PRIMARY KEY (`news_type_id`);

--
-- Indexes for table `page_master`
--
ALTER TABLE `page_master`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `pTypeID` (`pTypeID`),
  ADD KEY `pTypeID_2` (`pTypeID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`pTypeID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`),
  ADD KEY `pTypeID` (`pTypeID`),
  ADD KEY `pTypeID_2` (`pTypeID`);

--
-- Indexes for table `project_gallery`
--
ALTER TABLE `project_gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indexes for table `project_slider`
--
ALTER TABLE `project_slider`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`pTypeID`);

--
-- Indexes for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  ADD PRIMARY KEY (`seo_link_id`);

--
-- Indexes for table `session_log_master`
--
ALTER TABLE `session_log_master`
  ADD PRIMARY KEY (`session_log_id`);

--
-- Indexes for table `sliderimage`
--
ALTER TABLE `sliderimage`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `subscription_master`
--
ALTER TABLE `subscription_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `template_master`
--
ALTER TABLE `template_master`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_Id`);

--
-- Indexes for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  ADD PRIMARY KEY (`testimonial_master_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `eve_date` (`eve_date`);

--
-- Indexes for table `website_master`
--
ALTER TABLE `website_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `album_type`
--
ALTER TABLE `album_type`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_master`
--
ALTER TABLE `contact_master`
  MODIFY `cid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `donation_master`
--
ALTER TABLE `donation_master`
  MODIFY `donation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `download_brochure`
--
ALTER TABLE `download_brochure`
  MODIFY `b_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_master`
--
ALTER TABLE `gallery_master`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `gallery_master_hall`
--
ALTER TABLE `gallery_master_hall`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hall_images`
--
ALTER TABLE `hall_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hall_master`
--
ALTER TABLE `hall_master`
  MODIFY `h_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homecontent`
--
ALTER TABLE `homecontent`
  MODIFY `content_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_master`
--
ALTER TABLE `job_master`
  MODIFY `job_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `membertype`
--
ALTER TABLE `membertype`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news_type`
--
ALTER TABLE `news_type`
  MODIFY `news_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_master`
--
ALTER TABLE `page_master`
  MODIFY `page_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `permission_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `pTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_gallery`
--
ALTER TABLE `project_gallery`
  MODIFY `galleryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `project_slider`
--
ALTER TABLE `project_slider`
  MODIFY `sliderID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `pTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  MODIFY `seo_link_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `session_log_master`
--
ALTER TABLE `session_log_master`
  MODIFY `session_log_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sliderimage`
--
ALTER TABLE `sliderimage`
  MODIFY `sliderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription_master`
--
ALTER TABLE `subscription_master`
  MODIFY `s_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `template_master`
--
ALTER TABLE `template_master`
  MODIFY `template_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  MODIFY `testimonial_master_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `website_master`
--
ALTER TABLE `website_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
