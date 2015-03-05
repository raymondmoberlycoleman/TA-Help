-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2015 at 12:32 AM
-- Server version: 5.5.40-36.1
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmackay_tahelp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_confirm`
--

CREATE TABLE IF NOT EXISTS `login_confirm` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_confirm`
--

INSERT INTO `login_confirm` (`id`, `data`, `username`, `email`, `key`, `type`) VALUES
(1, 'f24dd74fb130cdcc66c7e4ca281eba75f846a405fae6469ac8b83c10dca83f21b4129fadabf4e86db24265360576bf6c1bacb64012cd54194bd2868ad027d94a', 'admin', 'no-reply@tahelpme.com', '7af34eff00d30a281b95a2589402086b', 'update_emailPw'),
(2, 'be00a8067fb3b5511dcaf462ab1916632f3416fcb767b0f1c435971a868a9e47e1248b383af77ac0c4c94a709c93b21f56488b3b4c465998182919c1b407ac81', 'admin', 'no-reply@tahelpme.com', 'c8ead8e43258d4af34bc01fbc1bcf867', 'update_emailPw'),
(3, '4a05a8b9928834fb8e7869010ce38097c0a14cc8f4920f0571e942f5c4b00b39ebce22dd6d8738948d7ad42a13db4ecaa94847dd2be8b0f87cb5a3ed94f70508', 'admin', 'no-reply@tahelpme.com', 'a5df4fae43a632ca5b7f71748457d698', 'update_emailPw'),
(14, '', 'kmackay21', 'kevin.mackay@gmail.com', 'b4187894b97eca89de2a635c61bfde77', 'new_user'),
(15, '', 'kmackay2121', 'kevin.mackay1@gmail.com', '6d22b19b57ac96ce0f72b4774da0a28b', 'new_user'),
(16, '', 'kmackay21', 'kevin.mackay@gmail.com', '31478fbbf25cf6911ce1f1e9430d2e1e', 'new_user');

-- --------------------------------------------------------

--
-- Table structure for table `login_integration`
--

CREATE TABLE IF NOT EXISTS `login_integration` (
  `user_id` int(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `yahoo` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_levels`
--

CREATE TABLE IF NOT EXISTS `login_levels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `level_level` int(1) NOT NULL,
  `level_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `redirect` varchar(255) DEFAULT NULL,
  `welcome_email` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_levels`
--

INSERT INTO `login_levels` (`id`, `level_name`, `level_level`, `level_disabled`, `redirect`, `welcome_email`) VALUES
(1, 'Admin', 1, 0, NULL, 0),
(2, 'Special', 2, 0, NULL, 0),
(3, 'User', 3, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_profiles`
--

CREATE TABLE IF NOT EXISTS `login_profiles` (
  `p_id` bigint(20) unsigned NOT NULL,
  `pfield_id` int(255) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `profile_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_profile_fields`
--

CREATE TABLE IF NOT EXISTS `login_profile_fields` (
  `id` int(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL,
  `label` varchar(255) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `signup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_settings`
--

CREATE TABLE IF NOT EXISTS `login_settings` (
  `id` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_settings`
--

INSERT INTO `login_settings` (`id`, `option_name`, `option_value`) VALUES
(1, 'site_address', 'http://tahelpme.com/'),
(2, 'default_session', '0'),
(3, 'admin_email', 'kevin.mackay@gmail.com'),
(4, 'block-msg-enable', '1'),
(5, 'block-msg', '<h1>Sorry, Hank.</h1>\r\n\r\n<p>We have detected that your user level does not entitle you to view the page requested.</p>\r\n\r\n<p>Please contact the website administrator if you feel this is in error.</p>\r\n\r\n<h5>What to do now?</h5>\r\n<p>To see this page you must <a href=''logout.php''>logout</a> and login with sufficiant privileges.</p>'),
(6, 'block-msg-out', 'You need to login to do that.'),
(7, 'block-msg-out-enable', '1'),
(8, 'email-welcome-msg', 'Hello {{full_name}} !\r\n\r\nThanks for registering at {{site_address}}. Here are your account details:\r\n\r\nName: {{full_name}}\r\nUsername: {{username}}\r\nEmail: {{email}}\r\nPassword: *hidden*\r\n\r\nYou will first have to activate your account by clicking on the following link:\r\n\r\n{{activate}}'),
(9, 'email-activate-msg', 'Hi there {{full_name}} !\r\n\r\nYour account at {{site_address}} has been successfully activated :). \r\n\r\nFor your reference, your username is <strong>{{username}}</strong>. \r\n\r\nSee you soon!'),
(10, 'email-activate-subj', 'You''ve activated your account at Jigowatt !'),
(11, 'email-activate-resend-subj', 'Here''s your activation link again for Jigowatt'),
(12, 'email-activate-resend-msg', 'Why hello, {{full_name}}. \r\n\r\nI believe you requested this:\r\n{{activate}}\r\n\r\nClick the link above to activate your account :)'),
(13, 'email-welcome-subj', 'Thanks for signing up with Jigowatt :)'),
(14, 'email-forgot-success-subj', 'Your password has been reset at Jigowatt'),
(15, 'email-forgot-success-msg', 'Welcome back, {{full_name}} !\r\n\r\nI''m just letting you know your password at {{site_address}} has been successfully changed. \r\n\r\nHopefully you were the one that requested this password reset !\r\n\r\nCheers'),
(16, 'email-forgot-subj', 'Lost your password at Jigowatt?'),
(17, 'email-forgot-msg', 'Hi {{full_name}},\r\n\r\nYour username is <strong>{{username}}</strong>.\r\n\r\nTo reset your password at Jigowatt, please click the following password reset link:\r\n{{reset}}\r\n\r\nSee you soon!'),
(18, 'email-add-user-subj', 'You''re registered with Jigowatt !'),
(19, 'email-add-user-msg', 'Hello {{full_name}} !\r\n\r\nYou''re now registered at {{site_address}}. Here are your account details:\r\n\r\nName: {{full_name}}\r\nUsername: {{username}}\r\nEmail: {{email}}\r\nPassword: {{password}}'),
(20, 'pw-encrypt-force-enable', '1'),
(21, 'pw-encryption', 'SHA256'),
(22, 'phplogin_db_version', '1212300'),
(23, 'email-acct-update-subj', 'Confirm your account changes'),
(24, 'email-acct-update-msg', 'Hi {{full_name}} !\r\n\r\nYou ( {{username}} ) requested a change to update your password or email. Click the link below to confirm this change.\r\n\r\n{{confirm}}\r\n\r\nThanks!\r\n{{site_address}}'),
(25, 'email-acct-update-success-subj', 'Your account has been updated'),
(26, 'email-acct-update-success-msg', 'Hello {{full_name}},\r\n\r\nYour account details at {{site_address}} has been updated. \r\n\r\nYour username: {{username}}\r\n\r\nSee you around!'),
(27, 'guest-redirect', 'http://tahelpme.com/login.php?e=1'),
(28, 'signout-redirect-referrer-enable', '1'),
(29, 'signin-redirect-referrer-enable', '1'),
(30, 'default-level', 'a:1:{i:0;s:1:"3";}'),
(31, 'new-user-redirect', 'http://tahelpme.com/profile.php'),
(32, 'user-activation-enable', '1'),
(33, 'email-new-user-subj', 'A new user has registered !'),
(34, 'email-new-user-msg', 'Hello,\r\n\r\nThere''s been a new registration at &lt;a href=&quot;{{site_address}}&quot;&gt;your site&lt;/a&gt;.\r\n\r\nHere''s the user''s details:\r\n\r\nName: {{full_name}}\r\nUsername: {{username}}\r\nEmail: {{email}}'),
(35, 'restrict-signups-by-email', ''),
(36, 'signout-redirect-url', ''),
(37, 'signin-redirect-url', ''),
(38, 'general-options-form', '1'),
(39, 'notify-new-user-enable', '0'),
(40, 'disable-registrations-enable', '0'),
(41, 'disable-logins-enable', '0'),
(42, 'email-as-username-enable', '0'),
(43, 'email-welcome-disable', '0');

-- --------------------------------------------------------

--
-- Table structure for table `login_timestamps`
--

CREATE TABLE IF NOT EXISTS `login_timestamps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE IF NOT EXISTS `login_users` (
  `user_id` int(8) NOT NULL,
  `user_level` longtext NOT NULL,
  `restricted` int(1) NOT NULL DEFAULT '0',
  `username` varchar(45) NOT NULL,
  `colemanid` varchar(45) NOT NULL,
  `role` int(11) NOT NULL,
  `department` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phonenum` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`user_id`, `user_level`, `restricted`, `username`, `colemanid`, `role`, `department`, `name`, `email`, `phonenum`, `password`, `timestamp`) VALUES
(2, 'a:2:{i:0;s:1:"2";i:1;s:1:"3";}', 0, 'special', '', 0, '', 'Demo Special', 'test.special@jigowatt.co.uk', '', '0bd6506986ec42e732ffb866d33bb14e', '2015-03-03 02:03:09'),
(3, 'a:1:{i:0;s:1:"3";}', 0, 'user', '', 0, '', 'Demo User', 'test.user@jigowatt.co.uk', '', 'ee11cbb19052e40b07aac0ca060c23ee', '2015-03-03 02:03:09'),
(12, 'a:1:{i:0;s:1:"3";}', 0, 'kmackay21', '83480', 1, 'SD', 'Kevin Mackay', 'kevin.mackay@gmail.com', '76084661074444', '2d71373c3e35f8f1e01766122339aab72fd92ad22dd47f23a958056e48b47810b032f37db87e1835f903b00b31e67ea67003a7a0fad203e76e69283735681661', '2015-03-04 05:40:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_confirm`
--
ALTER TABLE `login_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_integration`
--
ALTER TABLE `login_integration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_levels`
--
ALTER TABLE `login_levels`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `level_level` (`level_level`);

--
-- Indexes for table `login_profiles`
--
ALTER TABLE `login_profiles`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `login_profile_fields`
--
ALTER TABLE `login_profile_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_settings`
--
ALTER TABLE `login_settings`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `login_timestamps`
--
ALTER TABLE `login_timestamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_id` (`user_id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_confirm`
--
ALTER TABLE `login_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `login_levels`
--
ALTER TABLE `login_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_profiles`
--
ALTER TABLE `login_profiles`
  MODIFY `p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_profile_fields`
--
ALTER TABLE `login_profile_fields`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_settings`
--
ALTER TABLE `login_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `login_timestamps`
--
ALTER TABLE `login_timestamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
