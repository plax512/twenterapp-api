-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2014 at 06:49 AM
-- Server version: 5.1.59-rel13.0-log
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ellumfpc_flamer_nofacebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_add_friend`
--

CREATE TABLE IF NOT EXISTS `t_add_friend` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `entity_id` int(100) NOT NULL,
  `friend_fb_id` int(100) NOT NULL,
  `friend_name` varchar(100) NOT NULL,
  `friend_picture` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_add_likes`
--

CREATE TABLE IF NOT EXISTS `t_add_likes` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `entity_id` int(50) NOT NULL,
  `like_id` varchar(100) NOT NULL,
  `like_name` varbinary(50) NOT NULL,
  `like_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `aid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Admin id',
  `admin_username` varchar(30) NOT NULL COMMENT 'admin username',
  `admin_password` varchar(30) NOT NULL COMMENT 'admin password',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`aid`, `admin_username`, `admin_password`) VALUES
(1, 'flamer_admin', 'flamerAppDupe123!'),
(2, 'flamer_admin', 'flamerAppDupe123!'),
(3, 'dcgohard', '829hgfgh54');

-- --------------------------------------------------------

--
-- Table structure for table `t_authtypes`
--

CREATE TABLE IF NOT EXISTS `t_authtypes` (
  `authType_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT 'Authentication type',
  `authName` varchar(150) NOT NULL COMMENT 'Authentication name',
  PRIMARY KEY (`authType_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Types of authentications for the appl' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_authtypes`
--

INSERT INTO `t_authtypes` (`authType_id`, `authName`) VALUES
(1, 'Facebook'),
(2, 'Google+');

-- --------------------------------------------------------

--
-- Table structure for table `t_chatmessages`
--

CREATE TABLE IF NOT EXISTS `t_chatmessages` (
  `mid` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Message id',
  `sender` int(25) NOT NULL COMMENT 'sender entity id',
  `receiver` int(25) NOT NULL COMMENT 'reciever entity id',
  `message` varchar(2000) NOT NULL COMMENT 'actual chat message ',
  `msg_dt` datetime NOT NULL COMMENT 'Date and time of message',
  `user1` varchar(100) NOT NULL,
  `user2` varchar(100) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Contains chat messages' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_chatmessages`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_city`
--

CREATE TABLE IF NOT EXISTS `t_city` (
  `City_Id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'City Id',
  `State_Id` int(7) DEFAULT NULL COMMENT 'State Id',
  `Country_Id` int(6) NOT NULL COMMENT 'Country Id',
  `City_Name` varchar(100) NOT NULL COMMENT 'City Name',
  PRIMARY KEY (`City_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cities in all states around all the countries' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_country`
--

CREATE TABLE IF NOT EXISTS `t_country` (
  `Country_Id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Country Id',
  `Country_Name` varchar(100) NOT NULL COMMENT 'Country name',
  PRIMARY KEY (`Country_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Country table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_user_ans`
--

CREATE TABLE IF NOT EXISTS `t_detail_user_ans` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Entity_Id` int(100) NOT NULL,
  `d_id` int(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_ans` varchar(255) NOT NULL,
  `them` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_detail_user_ans`
--


-- --------------------------------------------------------

--
-- Table structure for table `t_details`
--

CREATE TABLE IF NOT EXISTS `t_details` (
  `d_id` int(100) NOT NULL AUTO_INCREMENT,
  `details_ques` varchar(200) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='t_details' AUTO_INCREMENT=28 ;

--
-- Dumping data for table `t_details`
--

INSERT INTO `t_details` (`d_id`, `details_ques`) VALUES
(1, 'How would you describe yourself?2'),
(2, 'Rate your self-confidence trust'),
(3, 'What is your favourite movie type?'),
(5, 'Which makes for a better relationship?'),
(6, 'Do you enjoy intense intellectual conversations?'),
(7, 'Do you enjoy discussing politics?'),
(9, 'Are you shy?'),
(11, 'Would you prefer good things happening, or interesting things happening around you?'),
(18, 'Do you like horror movies?'),
(19, 'Is religion important in your life?'),
(20, 'How often do you drink alcohol?'),
(21, 'Have you ever been in love?'),
(22, 'Are you a Vegetarian?'),
(23, 'Is an astrological sign important in compatibility with someone?'),
(24, 'Are you happy with your life?'),
(25, 'Would you prefer to be good-looking or rich?'),
(26, 'Do you think smoking is disgusting?');

-- --------------------------------------------------------

--
-- Table structure for table `t_details_ans`
--

CREATE TABLE IF NOT EXISTS `t_details_ans` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `d_id` int(100) NOT NULL,
  `detail_option` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `t_details_ans`
--

INSERT INTO `t_details_ans` (`id`, `d_id`, `detail_option`) VALUES
(4, 1, 'Carefree'),
(5, 1, 'Intense'),
(8, 2, 'Very Very High'),
(9, 2, 'Higher than Average'),
(10, 2, 'Average'),
(11, 2, 'Below Average'),
(12, 3, 'Comedy'),
(13, 3, 'Horror'),
(14, 4, 'Extremely important'),
(15, 4, 'Somewhat important'),
(16, 4, 'Not Very Important'),
(17, 4, 'Not At all Important'),
(18, 5, 'Passion'),
(19, 5, 'Dediction'),
(20, 6, 'Rather not say'),
(21, 6, 'Yes'),
(22, 6, 'No'),
(23, 7, 'Yes'),
(24, 7, 'No'),
(25, 9, 'Yes'),
(26, 9, 'No'),
(27, 11, 'Good'),
(28, 11, 'Intresting'),
(29, 11, 'None of the above'),
(30, 12, 'No,it wouldn''t'),
(31, 12, 'Yes, It would'),
(32, 18, 'Yes'),
(33, 18, 'No'),
(34, 19, 'Yes'),
(35, 19, 'No'),
(36, 19, 'A little'),
(38, 20, 'All the time'),
(39, 20, 'Sometimes'),
(40, 20, 'Socially'),
(41, 20, 'Never'),
(42, 21, 'Yes'),
(43, 21, 'No'),
(44, 22, 'Yes'),
(45, 22, 'No'),
(46, 23, 'Yes'),
(47, 23, 'No'),
(48, 24, 'Yes'),
(49, 24, 'No'),
(50, 25, 'Good-looking'),
(51, 25, 'Rich'),
(52, 26, 'Yes'),
(53, 26, 'No'),
(54, 27, 'Yes'),
(55, 27, 'No'),
(56, 3, 'Romance'),
(57, 3, 'Action'),
(58, 9, 'A little bit');

-- --------------------------------------------------------

--
-- Table structure for table `t_dev_type`
--

CREATE TABLE IF NOT EXISTS `t_dev_type` (
  `dev_id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Device type id',
  `name` varchar(100) NOT NULL COMMENT 'Name of the device',
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores device types which the appl can allow' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_dev_type`
--

INSERT INTO `t_dev_type` (`dev_id`, `name`) VALUES
(1, 'Apple'),
(2, 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `t_education`
--

CREATE TABLE IF NOT EXISTS `t_education` (
  `Education_Id` int(25) NOT NULL AUTO_INCREMENT COMMENT 'User Education Id',
  `Entity_Id` int(25) NOT NULL COMMENT 'Entity_Id',
  `Education_City` varchar(50) DEFAULT NULL COMMENT 'Education city',
  `Education_Country` varchar(50) DEFAULT NULL COMMENT 'Education Country',
  `Education_Institute` varchar(250) DEFAULT NULL COMMENT 'Education Institute',
  `Education_Degree` varchar(100) NOT NULL COMMENT 'Education Degree',
  `Education_Start_Date` date NOT NULL COMMENT 'Education start date',
  `Education_End_Date` date NOT NULL COMMENT 'Education end date',
  PRIMARY KEY (`Education_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_entity`
--

CREATE TABLE IF NOT EXISTS `t_entity` (
  `Entity_Id` int(25) NOT NULL AUTO_INCREMENT COMMENT 'Entity Identifier',
  `Status` tinyint(2) NOT NULL DEFAULT '1',
  `Unique_Identifier` varchar(100) NOT NULL COMMENT 'Unique identifier for the entity',
  `Password` varchar(25) DEFAULT NULL COMMENT 'User password. Not encrypted for this phase.',
  `Create_Dt` datetime DEFAULT NULL COMMENT 'Date/time of creation.',
  `Last_Active_Dt_Time` datetime DEFAULT NULL COMMENT 'Date/time of last activity',
  `Device_Type` tinyint(2) NOT NULL COMMENT 'Device Type',
  `Device_Id` varchar(250) NOT NULL COMMENT 'Device Id',
  `authType` tinyint(2) NOT NULL COMMENT 'Authentication type fk from authtypes',
  PRIMARY KEY (`Entity_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Entity identifier' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_entity`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_entity_details`
--

CREATE TABLE IF NOT EXISTS `t_entity_details` (
  `Entity_Id` int(25) NOT NULL COMMENT 'App User Id',
  `Fb_Id` varchar(150) DEFAULT NULL COMMENT 'User Facebook Id',
  `Google_Id` varchar(150) DEFAULT NULL COMMENT 'User Google Id',
  `First_Name` varchar(100) NOT NULL COMMENT 'User Firstname',
  `Last_Name` varchar(100) DEFAULT NULL COMMENT 'User Lastname',
  `Email` varchar(250) NOT NULL COMMENT 'User email address',
  `Country` varchar(70) DEFAULT NULL COMMENT 'Country from which the user is logging in',
  `City` varchar(70) DEFAULT NULL COMMENT 'City from which the user is logging in',
  `Current_Lat` varchar(30) DEFAULT NULL COMMENT 'Latitude for current logged in location',
  `Current_Long` varchar(30) DEFAULT NULL COMMENT 'Longitude for current logged in location',
  `Profile_Pic_Url` varchar(300) DEFAULT 'http://elluminati.in/Flamer_nofacebook/pics/default.png' COMMENT 'URL of the profile picture',
  `TagLine` varchar(400) DEFAULT NULL COMMENT 'Tag line for the user profile',
  `Sex` tinyint(1) NOT NULL COMMENT '1 - male, 2 - female',
  `Device_Type` int(50) NOT NULL,
  `pushtoken` varchar(700) NOT NULL COMMENT 'Quickblocks_Id',
  `Personal_Desc` varchar(600) DEFAULT NULL COMMENT 'Personal Description of the user',
  `DOB` date DEFAULT NULL COMMENT 'User Date of Birth',
  `Skill_Rating` tinyint(1) DEFAULT NULL COMMENT 'User skill rating',
  `Status` varchar(500) NOT NULL,
  PRIMARY KEY (`Entity_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User details table';

--
-- Dumping data for table `t_entity_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_images`
--

CREATE TABLE IF NOT EXISTS `t_images` (
  `image_id` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Image id',
  `entity_id` int(25) NOT NULL COMMENT 'Entity Id',
  `image_url` varchar(600) NOT NULL COMMENT 'Image url',
  `index_id` int(50) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Contains user profile images' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_images`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_likes`
--

CREATE TABLE IF NOT EXISTS `t_likes` (
  `Like_Id` int(25) NOT NULL AUTO_INCREMENT COMMENT 'Like Id for the user',
  `Entity1_Id` int(25) NOT NULL COMMENT 'User id who liked the other user',
  `Entity2_Id` int(25) NOT NULL COMMENT 'User id who is getting liked',
  `Like_Flag` tinyint(1) NOT NULL COMMENT '1 -> Liked, 2-> DisLiked, 3-> Liked by both, 4->blocked',
  `Like_DateTime` datetime NOT NULL COMMENT 'Date and time of the like',
  `Update_Dt` datetime NOT NULL COMMENT 'updated date time',
  `Dislike_Count` int(5) NOT NULL COMMENT 'Count of dislikes',
  PRIMARY KEY (`Like_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='List of mutual  likes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_likes`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_matches`
--

CREATE TABLE IF NOT EXISTS `t_matches` (
  `Match_Id` int(25) NOT NULL AUTO_INCREMENT COMMENT 'March Id',
  `Matched_entity1_Id` int(25) NOT NULL COMMENT 'First User who is participating in the match',
  `Matched_entity2_Id` int(25) NOT NULL COMMENT 'Second User who is participating in the match',
  `Mathc_requestor_Id` int(25) NOT NULL COMMENT 'User who is Match maker ',
  `Match_Type` tinyint(1) NOT NULL COMMENT '0 ->  normal match, 1 -> booty call match, 2 -> blind date match, 4 -> matchmaking',
  `Match_Date_Time` datetime NOT NULL COMMENT 'March date and time',
  `Status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'default = 0 = unblocked , 1 = unblocked and invite sent , 2 = invite declined 3 = invite accepted 4 = blocked',
  `Blind_Date_Location` varchar(400) DEFAULT NULL COMMENT 'This is the location for the blind date',
  PRIMARY KEY (`Match_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='List of Matches Per User' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_notifications`
--

CREATE TABLE IF NOT EXISTS `t_notifications` (
  `notif_id` int(30) NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `notif_type` tinyint(2) NOT NULL COMMENT '1 - like note, 2 - chat',
  `sender` int(11) NOT NULL COMMENT 'id of sender',
  `reciever` int(11) NOT NULL COMMENT 'id of reciever',
  `message` varchar(500) NOT NULL COMMENT 'notification message',
  `notif_dt` datetime NOT NULL COMMENT 'Notification date time',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - inactive',
  PRIMARY KEY (`notif_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_notifications`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_preferences`
--

CREATE TABLE IF NOT EXISTS `t_preferences` (
  `Entity_Id` int(25) NOT NULL COMMENT 'Entityid',
  `Preference_Sex` tinyint(1) NOT NULL COMMENT '1 - male, 2 - female',
  `Preference_lower_age` int(3) NOT NULL DEFAULT '0' COMMENT 'Prefered lower age',
  `Preference_upper_age` int(3) NOT NULL DEFAULT '0' COMMENT 'prefered upper age',
  `Preference_radius` double NOT NULL DEFAULT '10' COMMENT 'prefered radius',
  UNIQUE KEY `Entity_Id` (`Entity_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='List of PreferencesPer User';

--
-- Dumping data for table `t_preferences`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_state`
--

CREATE TABLE IF NOT EXISTS `t_state` (
  `State_Id` int(7) NOT NULL AUTO_INCREMENT COMMENT 'State Id',
  `Country_Id` int(6) NOT NULL COMMENT 'Country id',
  `state_name` varchar(100) NOT NULL COMMENT 'State name',
  PRIMARY KEY (`State_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='States list in all countries' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_statusmessages`
--

CREATE TABLE IF NOT EXISTS `t_statusmessages` (
  `sid` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `statusNumber` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - success, 1 - error',
  `statusMessage` varchar(400) NOT NULL COMMENT 'brief status message',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='status messages for the appl response' AUTO_INCREMENT=69 ;

--
-- Dumping data for table `t_statusmessages`
--

INSERT INTO `t_statusmessages` (`sid`, `statusNumber`, `statusMessage`) VALUES
(1, 1, 'Mandatory field missing'),
(2, 0, 'Login completed successfully'),
(3, 0, 'Signup completed successfully'),
(5, 1, 'Device type not supported'),
(6, 1, 'Failed to login'),
(7, 1, 'Problem in signing up'),
(8, 1, 'Bad request, cannot be processed'),
(9, 1, 'Session token expired, please login'),
(10, 0, 'Details updated successfully.'),
(11, 1, 'No data to update.'),
(12, 1, 'Failed to update the data.'),
(13, 0, 'Preferences updated successfully.'),
(14, 1, 'Change any preferences to update.'),
(15, 1, 'Failed to update the preferences.'),
(16, 1, 'Please upload an image with valid extension'),
(17, 1, 'Chunk size is larger than 512 kb.'),
(18, 0, 'Image upload completed successfully.'),
(19, 1, 'Please set your preference settings to find out matches around you.'),
(20, 0, 'Matches Found!'),
(21, 1, 'No matches in the vicinity! Please modify your search criteria!'),
(22, 1, 'Search unsuccessful, error occured '),
(23, 0, 'Image deleted successfully'),
(24, 1, 'Image not found'),
(25, 1, 'Error in deleting the image'),
(26, 0, 'Likes updated successfully'),
(27, 1, 'Unable to insert likes'),
(28, 1, 'Unable to modify likes'),
(29, 0, 'Like sent!'),
(30, 1, 'Unable to connect apple'),
(31, 1, 'Invalid token, please login or register'),
(32, 0, 'Profile updated successfully'),
(33, 1, 'Nothing to update'),
(34, 1, 'Failed to update profile'),
(35, 0, 'Notification listed successfully'),
(36, 1, 'Notification unavailable'),
(37, 1, 'Server Error! Please try again after sometime!'),
(38, 1, 'Provided FBid is unavailable'),
(39, 1, 'Unable to find the profile'),
(40, 0, 'Got the profile!'),
(41, 0, 'Logged out successfully'),
(42, 0, 'Location updated successfully'),
(43, 1, 'Location already up to date'),
(44, 0, 'Message sent!'),
(45, 1, 'Failed to send message'),
(46, 1, 'Unable to send push'),
(47, 0, 'Got chat history!'),
(48, 1, 'Chat history not found'),
(49, 1, 'Queried user is deleted or inactive'),
(50, 0, 'Matches found!'),
(51, 1, 'Sorry, no matches found!'),
(52, 0, 'User blocked successfully'),
(53, 0, 'Got the settings!'),
(54, 1, 'Sorry, settings not found.'),
(55, 0, 'Congrats! You got a match'),
(56, 0, 'Got the message!'),
(57, 1, 'Message not found.'),
(58, 0, 'User unblocked successfully.'),
(59, 0, 'Session updated!'),
(60, 1, 'Session not found, please signup to become a member.'),
(61, 0, 'Question list'),
(62, 0, 'Submit answer Successfully'),
(63, 0, 'update answer Successfully'),
(64, 0, 'Delete Account Successfully'),
(65, 0, 'user Profile images'),
(66, 0, 'NO user image uploded'),
(67, 0, 'Updated status Successfully'),
(68, 0, 'Already Updated');

-- --------------------------------------------------------

--
-- Table structure for table `t_user_likes`
--

CREATE TABLE IF NOT EXISTS `t_user_likes` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `entity_id` int(25) NOT NULL,
  `like_id` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_user_sessions`
--

CREATE TABLE IF NOT EXISTS `t_user_sessions` (
  `sid` int(20) NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `oid` int(20) NOT NULL COMMENT 'Object Id',
  `token` varchar(500) NOT NULL COMMENT 'Session token',
  `expiry_gmt` datetime NOT NULL COMMENT 'Session expiry date and time in GMT',
  `device` varchar(500) NOT NULL COMMENT 'Device on which session is generated',
  `type` int(4) NOT NULL COMMENT 'Type of device or platform',
  `push_token` varchar(700) DEFAULT NULL COMMENT 'Token for push notification',
  `create_date_gmt` datetime NOT NULL COMMENT 'Current date and time in GMT',
  `loggedIn` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - logged in, 2 - logged out',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='stores multiple session token for all the users' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `t_user_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `t_work_experience`
--

CREATE TABLE IF NOT EXISTS `t_work_experience` (
  `Work_Id` int(25) NOT NULL AUTO_INCREMENT,
  `Entity_Id` int(25) NOT NULL COMMENT 'Entity_id',
  `Work_city` varchar(50) DEFAULT NULL,
  `work_country` varchar(50) DEFAULT NULL,
  `work_company` varchar(150) NOT NULL,
  `work_post` varchar(100) NOT NULL,
  `work_start_date` date DEFAULT NULL,
  `work_end_date` date DEFAULT NULL,
  PRIMARY KEY (`Work_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='List of work experience for each user' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
