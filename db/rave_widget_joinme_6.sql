-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2013 at 01:06 AM
-- Server version: 5.1.69
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rave`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `entityId` bigint(20) NOT NULL,
  `extensions` text COLLATE utf8_bin,
  `id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `objectType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `openSocial` text COLLATE utf8_bin,
  `published` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attendedBy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attending` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `followers` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `following` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `friend_requests` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `friends` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `geojson` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invited` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ld` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `likes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `links` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `maybeAttending` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `members` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mood` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `notAttendedBy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `notAttending` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `odata` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `opengraph` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `replies` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `saves` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `schema_org` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shares` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR_ENTITYID` bigint(20) DEFAULT NULL,
  `IMAGE_ENTITYID` bigint(20) DEFAULT NULL,
  `appId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bcc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `groupId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `inReplyTo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TO0` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `verb` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTOR_ENTITYID` bigint(20) DEFAULT NULL,
  `GENERATOR_ENTITYID` bigint(20) DEFAULT NULL,
  `ICON_ENTITYID` bigint(20) DEFAULT NULL,
  `OBJECT_ENTITYID` bigint(20) DEFAULT NULL,
  `PROVIDER_ENTITYID` bigint(20) DEFAULT NULL,
  `TARGET_ENTITYID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entityId`),
  KEY `I_CTVITIS_DTYPE` (`DTYPE`),
  KEY `AUTHOR_ENTITYID` (`AUTHOR_ENTITYID`),
  KEY `IMAGE_ENTITYID` (`IMAGE_ENTITYID`),
  KEY `ACTOR_ENTITYID` (`ACTOR_ENTITYID`),
  KEY `GENERATOR_ENTITYID` (`GENERATOR_ENTITYID`),
  KEY `ICON_ENTITYID` (`ICON_ENTITYID`),
  KEY `OBJECT_ENTITYID` (`OBJECT_ENTITYID`),
  KEY `PROVIDER_ENTITYID` (`PROVIDER_ENTITYID`),
  KEY `TARGET_ENTITYID` (`TARGET_ENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`entityId`, `extensions`, `id`, `objectType`, `openSocial`, `published`, `updated`, `url`, `DTYPE`, `alias`, `attendedBy`, `attending`, `content`, `dc`, `displayName`, `endTime`, `followers`, `following`, `friend_requests`, `friends`, `geojson`, `invited`, `ld`, `likes`, `links`, `location`, `maybeAttending`, `members`, `mood`, `notAttendedBy`, `notAttending`, `odata`, `opengraph`, `rating`, `replies`, `reviews`, `saves`, `schema_org`, `shares`, `source`, `startTime`, `summary`, `AUTHOR_ENTITYID`, `IMAGE_ENTITYID`, `appId`, `bcc`, `bto`, `cc`, `context`, `groupId`, `inReplyTo`, `priority`, `result`, `tags`, `title`, `TO0`, `userId`, `verb`, `ACTOR_ENTITYID`, `GENERATOR_ENTITYID`, `ICON_ENTITYID`, `OBJECT_ENTITYID`, `PROVIDER_ENTITYID`, `TARGET_ENTITYID`) VALUES
(1, 'null', 'cc2ce3e6-abd9-4dcf-b3ca-7d753d407264', NULL, '{"embed":{"gadget":"http://accelerator.opensocial2.org/gadgets/photos/jquery_photo_ee.xml","preferredExperience":{"display":{"type":"text","label":"Add Comment ...","title":"Click this link to add a comment"}},"context":{"url":"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSSNgusdAMMfrJ2-CJThZp83-FMtj8LDgw7v-RGzTd2aGLIDArV-A","comment":"Boston as seen from the Charles River","author":"Canonical User"}}}', '2013-02-07 15:04:55', NULL, NULL, 'Activity', NULL, NULL, NULL, 'Boston as seen from the Charles River', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'canonical', 'post', 2, 3, NULL, 4, 5, 6),
(2, 'null', 'canonical', 'person', 'null', NULL, NULL, 'http://localhost:8080/portal/app/people/canonical', 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'null', '48fbc346-4575-4d7d-86f8-216543a35c9c', NULL, 'null', NULL, NULL, 'http://example.org/activities-app', 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'null', 'ecc41e33-9ea7-4ce3-a11d-3cb845b67d5a', 'photo', 'null', NULL, NULL, NULL, 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'null', '145fdab6-ce13-4f6d-8ea0-3804cb2733c8', NULL, 'null', NULL, NULL, 'http://example.org/activity-stream', 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'null', '29295503-497b-41c7-a4ac-ed7e7a60e796', 'photo-album', 'null', NULL, NULL, 'http://example.org/album/', 'Object', NULL, NULL, NULL, NULL, NULL, 'Canonical''s Photo Album', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'null', '3b228d99-27ea-4bde-b3c1-c8ab53a09d4a', NULL, '{"embed":{"gadget":"http://opensocial2.org:8080/collabapp/pages/home/embeddedExperiences/YouTube.xml","preferredExperience":{"display":{"type":"text","label":"Open Video","title":"Click this link to open the video"},"target":{"view":"embedded","viewTarget":"sidebar"}},"context":"9gW2YVBrNVA"}}', '2013-02-08 15:04:55', NULL, NULL, 'Activity', NULL, NULL, NULL, 'OpenSocial Getting Started Video 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'canonical', 'post', 2, NULL, NULL, 8, NULL, NULL),
(8, 'null', '9c0dd715-dd38-4b4c-84b5-a21927aa5b8a', 'video', 'null', NULL, NULL, NULL, 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'null', 'cc776252-08be-42ee-aa5f-c4ef9396b5af', NULL, 'null', '2013-02-12 15:04:55', NULL, NULL, 'Activity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'john.doe', 'make-friend', 10, NULL, NULL, 11, NULL, NULL),
(10, 'null', 'john.doe', 'person', 'null', NULL, NULL, 'http://localhost:8080/portal/app/people/john.doe', 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'null', 'jane.doe', 'person', 'null', NULL, NULL, 'http://localhost:8080/portal/app/people/jane.doe', 'Object', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activities_activities`
--

CREATE TABLE IF NOT EXISTS `activities_activities` (
  `JPAACTIVITYSTREAMSOBJECT_ENTITYID` bigint(20) DEFAULT NULL,
  `ATTACHMENTS_ENTITYID` bigint(20) DEFAULT NULL,
  KEY `JPAACTIVITYSTREAMSOBJECT_ENTITYID` (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`),
  KEY `ATTACHMENTS_ENTITYID` (`ATTACHMENTS_ENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `activitystreams_medialink`
--

CREATE TABLE IF NOT EXISTS `activitystreams_medialink` (
  `entityId` bigint(20) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `openSocial` text COLLATE utf8_bin,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`entityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activitystreams_medialink`
--

INSERT INTO `activitystreams_medialink` (`entityId`, `duration`, `height`, `id`, `openSocial`, `url`, `width`) VALUES
(1, NULL, 250, NULL, NULL, 'http://example.org/canonical/image', 250),
(2, NULL, 250, NULL, NULL, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSSNgusdAMMfrJ2-CJThZp83-FMtj8LDgw7v-RGzTd2aGLIDArV-A', 250),
(3, NULL, 250, NULL, NULL, 'http://example.org/canonical/image', 250),
(4, NULL, 250, NULL, NULL, 'http://i.ytimg.com/vi/9gW2YVBrNVA/1.jpg', 250),
(5, NULL, 250, NULL, NULL, 'http://example.org/john.doe/image', 250),
(6, NULL, 250, NULL, NULL, 'http://example.org/jane.doe/image', 250);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `entity_id` bigint(20) NOT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `formatted` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `primary_address` bit(1) DEFAULT NULL,
  `qualifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `application_data`
--

CREATE TABLE IF NOT EXISTS `application_data` (
  `entity_id` bigint(20) NOT NULL,
  `app_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `serialized_data` text COLLATE utf8_bin,
  PRIMARY KEY (`entity_id`),
  KEY `I_PPLC_DT_DTYPE` (`DTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `entity_id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `last_modified_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_CTEGORY_TEXT` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`entity_id`, `created_date`, `created_user_id`, `last_modified_date`, `last_modified_user_id`, `text`) VALUES
(1, '2012-01-19 05:00:00', '1', '2012-01-19 05:00:00', '1', 'Technology'),
(2, '2012-01-19 05:00:00', '1', '2012-01-19 05:00:00', '1', 'News'),
(3, '2012-01-19 05:00:00', '1', '2012-01-19 05:00:00', '1', 'Travel'),
(4, '2012-01-19 05:00:00', '1', '2012-01-19 05:00:00', '1', 'Projects'),
(5, '2012-01-19 05:00:00', '1', '2012-01-19 05:00:00', '1', 'Communications');

-- --------------------------------------------------------

--
-- Table structure for table `granted_authority`
--

CREATE TABLE IF NOT EXISTS `granted_authority` (
  `entity_id` bigint(20) NOT NULL,
  `authority` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `default_for_new_user` bit(1) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_GRNTRTY_AUTHORITY` (`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `granted_authority`
--

INSERT INTO `granted_authority` (`entity_id`, `authority`, `default_for_new_user`) VALUES
(1, 'ROLE_USER', b'1'),
(2, 'ROLE_ADMIN', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `entity_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `owner_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_GROUPS_TITLE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
  `group_id` bigint(20) DEFAULT NULL,
  `person_Id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `JpaActivityStreamsObject_downstreamDuplicates`
--

CREATE TABLE IF NOT EXISTS `JpaActivityStreamsObject_downstreamDuplicates` (
  `JPAACTIVITYSTREAMSOBJECT_ENTITYID` bigint(20) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `JPAACTIVITYSTREAMSOBJECT_ENTITYID` (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `JpaActivityStreamsObject_upstreamDuplicates`
--

CREATE TABLE IF NOT EXISTS `JpaActivityStreamsObject_upstreamDuplicates` (
  `JPAACTIVITYSTREAMSOBJECT_ENTITYID` bigint(20) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `JPAACTIVITYSTREAMSOBJECT_ENTITYID` (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer_store`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer_store` (
  `entity_id` bigint(20) NOT NULL,
  `callback_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumer_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumer_secret` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gadget_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `key_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `key_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_TH_CSTR_GADGET_URI` (`gadget_uri`,`service_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token_info`
--

CREATE TABLE IF NOT EXISTS `oauth_token_info` (
  `entity_id` bigint(20) NOT NULL,
  `access_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `app_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `module_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `session_handle` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `token_expire_millis` bigint(20) DEFAULT NULL,
  `token_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `token_secret` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `entity_id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `primary_organization` bit(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `sub_field` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `webpage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  `ADDRESS_ENTITY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `person_id` (`person_id`),
  KEY `ADDRESS_ENTITY_ID` (`ADDRESS_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `entity_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `owner_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `page_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `page_layout_id` bigint(20) DEFAULT NULL,
  `parent_page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PAGE_OWNER_ID` (`owner_id`,`name`,`page_type`),
  KEY `page_layout_id` (`page_layout_id`),
  KEY `parent_page_id` (`parent_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`entity_id`, `name`, `owner_id`, `page_type`, `page_layout_id`, `parent_page_id`) VALUES
(1, 'My Activity', '14', 'SUB_PAGE', 1, 3),
(2, 'About', '14', 'SUB_PAGE', 1, 3),
(3, 'Person Profile', '14', 'PERSON_PROFILE', 9, NULL),
(4, 'Conext Portal', '14', 'USER', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_layout`
--

CREATE TABLE IF NOT EXISTS `page_layout` (
  `entity_id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number_of_regions` bigint(20) DEFAULT NULL,
  `render_sequence` bigint(20) DEFAULT NULL,
  `user_selectable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PG_LYUT_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_layout`
--

INSERT INTO `page_layout` (`entity_id`, `code`, `number_of_regions`, `render_sequence`, `user_selectable`) VALUES
(1, 'columns_1', 1, 0, b'1'),
(2, 'columns_2', 2, 1, b'1'),
(3, 'columns_2wn', 2, 2, b'1'),
(4, 'columns_3', 3, 3, b'1'),
(5, 'columns_3nwn', 3, 4, b'1'),
(6, 'columns_3_newuser', 1, 0, b'1'),
(7, 'columns_4', 4, 6, b'1'),
(8, 'columns_3nwn_1_bottom', 4, 7, b'1'),
(9, 'person_profile', 1, 8, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `page_template`
--

CREATE TABLE IF NOT EXISTS `page_template` (
  `entity_id` bigint(20) NOT NULL,
  `default_template` bit(1) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `page_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `render_sequence` bigint(20) DEFAULT NULL,
  `page_layout_id` bigint(20) DEFAULT NULL,
  `parent_page_template_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `page_layout_id` (`page_layout_id`),
  KEY `parent_page_template_id` (`parent_page_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_template`
--

INSERT INTO `page_template` (`entity_id`, `default_template`, `description`, `name`, `page_type`, `render_sequence`, `page_layout_id`, `parent_page_template_id`) VALUES
(1, b'1', 'Template for person profile pages', 'Person Profile', 'PERSON_PROFILE', 0, 9, NULL),
(2, b'0', 'Template for the My Activity sub page for the person profile', 'My Activity', 'SUB_PAGE', 0, 1, 1),
(3, b'0', 'Template for the About sub page for the person profile', 'About', 'SUB_PAGE', 1, 1, 1),
(4, b'1', 'Default User Template', 'Conext Portal', 'USER', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_template_region`
--

CREATE TABLE IF NOT EXISTS `page_template_region` (
  `entity_id` bigint(20) NOT NULL,
  `locked` bit(1) DEFAULT NULL,
  `render_sequence` bigint(20) DEFAULT NULL,
  `page_template_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `page_template_id` (`page_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_template_region`
--

INSERT INTO `page_template_region` (`entity_id`, `locked`, `render_sequence`, `page_template_id`) VALUES
(1, b'1', 0, 1),
(2, b'1', 0, 2),
(3, b'1', 0, 3),
(4, b'0', 0, 4),
(5, b'0', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `page_template_widget`
--

CREATE TABLE IF NOT EXISTS `page_template_widget` (
  `entity_id` bigint(20) NOT NULL,
  `hide_chrome` bit(1) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `render_sequence` bigint(20) DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  `page_template_region_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `page_template_region_id` (`page_template_region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_template_widget`
--

INSERT INTO `page_template_widget` (`entity_id`, `hide_chrome`, `locked`, `render_sequence`, `widget_id`, `page_template_region_id`) VALUES
(1, b'1', b'1', 0, 1, 1),
(2, b'1', b'1', 1, 16, 1),
(3, b'1', b'1', 0, 17, 2),
(4, b'0', b'1', 0, 14, 3),
(5, b'0', b'1', 1, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `page_user`
--

CREATE TABLE IF NOT EXISTS `page_user` (
  `entity_id` bigint(20) NOT NULL,
  `editor` bit(1) DEFAULT NULL,
  `page_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `render_sequence` bigint(20) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PG_USER_PAGE_ID` (`page_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_user`
--

INSERT INTO `page_user` (`entity_id`, `editor`, `page_status`, `render_sequence`, `user_id`, `page_id`) VALUES
(1, b'1', 'OWNER', 0, '14', 3),
(2, b'1', 'OWNER', 0, '14', 1),
(3, b'1', 'OWNER', 1, '14', 2),
(4, b'1', 'OWNER', 1, '14', 4);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `entity_id` bigint(20) NOT NULL,
  `about_me` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `additional_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `given_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `honorific_prefix` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `honorific_suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `preferred_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `expired` bit(1) DEFAULT NULL,
  `forgotPasswordHash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password_hash_time` datetime DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `default_page_layout_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PERSON_EMAIL` (`email`),
  UNIQUE KEY `U_PERSON_USERNAME` (`username`),
  UNIQUE KEY `U_PERSON_FORGOTPASSWORDHASH` (`forgotPasswordHash`),
  KEY `I_PERSON_DTYPE` (`DTYPE`),
  KEY `default_page_layout_id` (`default_page_layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`entity_id`, `about_me`, `additional_name`, `display_name`, `email`, `family_name`, `given_name`, `honorific_prefix`, `honorific_suffix`, `preferred_name`, `status`, `username`, `DTYPE`, `enabled`, `expired`, `forgotPasswordHash`, `password_hash_time`, `locked`, `openid`, `password`, `default_page_layout_id`) VALUES
(1, NULL, 'canonical', 'Canonical User', 'canonical@example.com', 'User', 'Canonical', NULL, NULL, NULL, 'Single', 'canonical', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$TkEgze5kLy9nRlfd8PT1zunh6P1ND8WPjLojFjAMNgZMu1D9D1n4.', 4),
(2, NULL, 'john.doe', 'John Doe', 'john.doe@example.com', 'Doe', 'John', NULL, NULL, NULL, 'Single', 'john.doe', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$8Dir7boy3UyVqy6erfj6WuQXUTf.ejTldPSsVIty7.pPT3Krkly26', 4),
(3, NULL, 'jane.doe', 'Jane Doe', 'jane.doe@example.net', 'Doe', 'Jane', NULL, NULL, NULL, 'Single', 'jane.doe', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$YP9cjZEA.gG/ng2YwTBIyucMpuiQ7Fvz0K8rOt14rIBhVwlOrh1tu', 4),
(4, NULL, 'george.doe', 'George Doe', 'george.doe@example.org', 'Doe', 'George', NULL, NULL, NULL, 'Single', 'george.doe', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$0bcOUkQgAwE/qmdc1NcUveNzx/IYIcOUu4ydyT8DEicTCxGJF/vcW', 4),
(5, NULL, 'mario.rossi', 'Mario Rossi', 'mario.rossi@example.com', 'Rossi', 'Mario', NULL, NULL, NULL, 'Single', 'mario.rossi', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$HZ6WHAKQCs8waLooL98l6.fLzwh3D8u/V0.UebIjojawfXJhX1DQ2', 4),
(6, NULL, 'maija.m', 'Maija M', 'maijam@example.com', 'M', 'Maija', NULL, NULL, NULL, 'Single', 'maija.m', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$3feYdjrW40hkqP4/xupKP.YMgdYmDsZZus./vK4FbBs9QZG2.FuNC', 4),
(7, NULL, 'one.col', NULL, 'one.col@example.com', 'Column', 'One', NULL, NULL, NULL, 'Single', 'one.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$5VqE2YEqT75pCVjKqjP2b.gNGly9fsTVUOMQR/JEjkHSbqvA3A6IO', 4),
(8, NULL, 'twown.col', NULL, 'twown.col@example.com', 'Column', 'Two', NULL, NULL, NULL, 'Single', 'twown.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$Inpufv82TRUGYoPuXhYXVuMCKHkhLz44W6FijxW2e9n3T1hgyxcVq', 4),
(9, NULL, 'three.col', NULL, 'three.col@example.com', 'Column', 'Three', NULL, NULL, NULL, 'Single', 'three.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$ImRXq4gFC9teBstOBdQrZeEwBkCAJ0S6.CwI9/9r7fxWKTZ30pgVC', 4),
(10, NULL, 'threewn.col', NULL, 'threewn.col@example.com', 'ColumnWide', 'Three', NULL, NULL, NULL, 'Single', 'threewn.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$LLYTJoK6MCBpeDBbmdt7tu1LNt7Eenqe1IpMlfem8xVjzynn.HpxW', 4),
(11, NULL, 'four.col', NULL, 'four.col@example.com', 'Column', 'Four', NULL, NULL, NULL, 'Single', 'four.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$tZgWcaG2EJPLtseZ339n7uTu3GZn31h3iTr20orwgbbRAI15uoIFK', 4),
(12, NULL, 'fourwn.col', NULL, 'fourwn.col@example.com', 'ColumnWide', 'Four', NULL, NULL, NULL, 'Single', 'fourwn.col', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$4kPYhgowurWqXGVDigxOxOVj/M.rqLRwqbn0kT/OD4pISL6pDG/c2', 4),
(13, NULL, 'rave2011.myopenid.com', NULL, 'rave2011_openid@example.org', 'OpenId', 'Rave', NULL, NULL, NULL, 'Single', 'rave2011.myopenid.com', 'User', b'1', b'0', NULL, NULL, b'0', 'http://rave2011.myopenid.com/', '$2a$10$dML97.rnOn4.iSlEEdju8OCB2NckuKw0Ki5yMVzzMmWQsWMvym3qC', 4),
(14, 'I didn''t fill this in yet.', 'urn:collab:person:example.com:admin', 'Admin Doe', 'admin.doe@example.com', 'Doe', 'Admin', NULL, NULL, NULL, 'Just new!', 'urn:collab:person:example.com:admin', 'User', b'1', b'0', NULL, NULL, b'0', NULL, '$2a$10$Sf6nQNcyKjTxXTIOjbJVqOT6HmgusxSlank7lmQXQjplTvFuJVfW.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `person_address_jn`
--

CREATE TABLE IF NOT EXISTS `person_address_jn` (
  `address_id` bigint(20) DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  KEY `address_id` (`address_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person_association`
--

CREATE TABLE IF NOT EXISTS `person_association` (
  `entity_id` bigint(20) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `followedby_id` bigint(20) DEFAULT NULL,
  `follower_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PRSNCTN_FOLLOWER_ID` (`follower_id`,`followedby_id`),
  KEY `followedby_id` (`followedby_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person_property`
--

CREATE TABLE IF NOT EXISTS `person_property` (
  `entity_id` bigint(20) NOT NULL,
  `extended_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `primary_value` bit(1) DEFAULT NULL,
  `qualifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `person_property`
--

INSERT INTO `person_property` (`entity_id`, `extended_value`, `primary_value`, `qualifier`, `type`, `value`, `person_id`) VALUES
(1, NULL, NULL, NULL, 'thumbnailUrl', 'http://opensocial2.org:8080/collabapp/images/avatars/BillRanney.jpg', 1),
(2, NULL, NULL, NULL, 'thumbnailUrl', 'http://opensocial2.org:8080/collabapp/images/avatars/DanMisawa.jpg', 2),
(3, NULL, NULL, NULL, 'thumbnailUrl', 'http://opensocial2.org:8080/collabapp/images/avatars/KellyHardart.jpg', 3),
(4, NULL, NULL, NULL, 'thumbnailUrl', 'http://opensocial2.org:8080/collabapp/images/avatars/FrankAdams.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `portal_preference`
--

CREATE TABLE IF NOT EXISTS `portal_preference` (
  `entity_id` bigint(20) NOT NULL,
  `preference_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_PRTLRNC_PREFERENCE_KEY` (`preference_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `portal_preference`
--

INSERT INTO `portal_preference` (`entity_id`, `preference_key`) VALUES
(4, 'defaultWidgetHeight'),
(3, 'javaScriptDebugMode'),
(2, 'pageSize'),
(5, 'showStackTrace'),
(1, 'titleSuffix');

-- --------------------------------------------------------

--
-- Table structure for table `portal_preference_values`
--

CREATE TABLE IF NOT EXISTS `portal_preference_values` (
  `JPAPORTALPREFERENCE_ENTITY_ID` bigint(20) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `JPAPORTALPREFERENCE_ENTITY_ID` (`JPAPORTALPREFERENCE_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `portal_preference_values`
--

INSERT INTO `portal_preference_values` (`JPAPORTALPREFERENCE_ENTITY_ID`, `element`) VALUES
(1, ' - Rave'),
(2, '10'),
(3, '1'),
(4, '250'),
(5, '0');

-- --------------------------------------------------------

--
-- Table structure for table `RAVE_PORTAL_SEQUENCES`
--

CREATE TABLE IF NOT EXISTS `RAVE_PORTAL_SEQUENCES` (
  `SEQ_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `SEQ_COUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `RAVE_PORTAL_SEQUENCES`
--

INSERT INTO `RAVE_PORTAL_SEQUENCES` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('activity_entry', 12),
('activity_media', 7),
('category', 6),
('granted_authority', 3),
('page', 5),
('page_layout', 10),
('page_template', 5),
('page_template_region', 7),
('page_template_widget', 10),
('page_user', 5),
('person', 15),
('person_property', 5),
('portal_preference', 6),
('region', 6),
('region_widget', 6),
('widget', 36);

-- --------------------------------------------------------

--
-- Table structure for table `RAVE_SHINDIG_SEQUENCES`
--

CREATE TABLE IF NOT EXISTS `RAVE_SHINDIG_SEQUENCES` (
  `SEQ_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `SEQ_COUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `entity_id` bigint(20) NOT NULL,
  `locked` bit(1) DEFAULT NULL,
  `render_order` int(11) DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`entity_id`, `locked`, `render_order`, `page_id`) VALUES
(1, b'1', 0, 3),
(2, b'1', 0, 1),
(3, b'1', 0, 2),
(4, b'0', 0, 4),
(5, b'0', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `region_widget`
--

CREATE TABLE IF NOT EXISTS `region_widget` (
  `entity_id` bigint(20) NOT NULL,
  `collapsed` bit(1) DEFAULT NULL,
  `hide_chrome` bit(1) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `render_order` int(11) DEFAULT NULL,
  `render_position` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `region_widget`
--

INSERT INTO `region_widget` (`entity_id`, `collapsed`, `hide_chrome`, `locked`, `render_order`, `render_position`, `widget_id`, `region_id`) VALUES
(1, b'0', b'1', b'1', 0, NULL, 1, 1),
(2, b'0', b'1', b'1', 1, NULL, 16, 1),
(3, b'0', b'1', b'1', 0, NULL, 17, 2),
(4, b'0', b'0', b'1', 0, NULL, 14, 3),
(5, b'0', b'0', b'1', 1, NULL, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `region_widget_preference`
--

CREATE TABLE IF NOT EXISTS `region_widget_preference` (
  `entity_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `region_widget_id` bigint(20) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `region_widget_id` (`region_widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `entity_id` bigint(20) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_TAG_KEYWORD` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_authorities`
--

CREATE TABLE IF NOT EXISTS `user_authorities` (
  `user_id` bigint(20) DEFAULT NULL,
  `authority_id` bigint(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_authorities`
--

INSERT INTO `user_authorities` (`user_id`, `authority_id`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `entity_id` bigint(20) NOT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `disable_rendering` bit(1) DEFAULT NULL,
  `disable_rendering_message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `owner_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `screenshot_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `thumbnail_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `widget_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_WIDGET_URL` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`entity_id`, `author`, `author_email`, `description`, `disable_rendering`, `disable_rendering_message`, `featured`, `owner_id`, `screenshot_url`, `thumbnail_url`, `title`, `title_url`, `type`, `url`, `widget_status`) VALUES
(1, 'WidgetMe', 'google@widgetme.com', 'A Wikipedia Search and Go widget. Language choice.', b'0', NULL, 0, NULL, NULL, NULL, 'Wikipedia', 'http://en.wikipedia.org/wiki/Main_Page', 'OpenSocial', 'http://www.widget-dico.com/wikipedia/google/wikipedia.xml', 'PUBLISHED'),
(2, 'Google Taiwan', 'googlemodules+dictionary+201109071@google.com', 'Google Translation gadget.', b'0', NULL, 0, NULL, NULL, NULL, 'Translate Gadget', 'http://translate.google.com/', 'OpenSocial', 'http://www.gstatic.com/ig/modules/dictionary/dictionary.xml', 'PREVIEW'),
(3, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, 'NYTimes.com - Top Stories', NULL, 'OpenSocial', 'http://widgets.nytimes.com/packages/html/igoogle/topstories.xml', 'PREVIEW'),
(4, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, 'Google News Gadget', NULL, 'OpenSocial', 'http://www.gstatic.com/ig/modules/tabnews/tabnews.xml', 'PREVIEW'),
(5, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, 'Pet Hamster', NULL, 'OpenSocial', 'http://hosting.gmodules.com/ig/gadgets/file/112581010116074801021/hamster.xml', 'PUBLISHED'),
(6, 'Naj', NULL, 'A cute little hamster for you to feed and look after. Watch him follow your cursor around. Click on the more tab to treat him to a strawberry. Click him then put him on the wheel and watch him play! ***NEW: make Herbie hamster your very own!', b'0', NULL, 0, NULL, NULL, NULL, 'Herbie Hamster Virtual Pet', NULL, 'OpenSocial', 'http://hosting.gmodules.com/ig/gadgets/file/109548057311228444554/hamster.xml', 'PREVIEW'),
(7, 'Suresh Deivasigamani', NULL, 'This is a gadget developed for Teragrid - OGCE project. Used Google gadgets API to retrieve the information from the Information Services REST Web Service and display the information using Google Maps API. This is a list of available CTSS resources and its details', b'0', NULL, 0, NULL, NULL, NULL, 'List of CTSS Resources - Map View', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/CTSSResourcesMapView.xml', 'PREVIEW'),
(8, 'David Olsen', NULL, 'A search module, which searches YouTube by tags like Politics News Life Music Family Photography Art Random Travel Personal Religion Movies Business Thoughts Media Humor Culture Poetry Christmas Writing Books Food Friends.', b'0', NULL, 0, NULL, NULL, NULL, 'Youtube', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/youtubesearch.xml', 'PREVIEW'),
(9, 'Erin Noe-Payne', NULL, 'A demo gadget to show open views popups in action.', b'0', NULL, 0, NULL, NULL, NULL, 'Open Views Demo', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/open_views_demo.xml', 'PREVIEW'),
(10, NULL, NULL, NULL, b'0', NULL, 0, NULL, NULL, NULL, 'Gadget View Type', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/canvas-nav.xml', 'PREVIEW'),
(11, 'Anthony Carlucci', NULL, 'An example gadget which demos some of the different capabilities of user preferences.', b'0', NULL, 0, NULL, NULL, NULL, 'User Prefs Demo', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/user_prefs_demo.xml', 'PREVIEW'),
(12, 'Anthony Carlucci', '', 'Static widget of activities for demoing on the Person Profile page', b'0', '', 0, NULL, '', '', 'Activity Streams', '', 'OpenSocial', 'http://localhost:8080/demogadgets/my_activity.xml', 'PREVIEW'),
(13, 'Anthony Carlucci', '', 'Static widget of a schedule for demoing on the Person Profile page', b'0', '', 0, NULL, '', '', 'Current Schedule', '', 'OpenSocial', 'http://localhost:8080/demogadgets/schedule.xml', 'PREVIEW'),
(14, 'Anthony Carlucci', NULL, 'Static widget of favorite websites for demoing on the Person Profile page', b'0', NULL, 0, NULL, NULL, NULL, 'Favorite Websites', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/favorite_websites.xml', 'PREVIEW'),
(15, 'Anthony Carlucci', NULL, 'Static widget of groups for demoing on the Person Profile page', b'0', NULL, 0, NULL, NULL, NULL, 'My Groups', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/my_groups.xml', 'PREVIEW'),
(16, 'Anthony Carlucci', NULL, 'Static widget of experience for demoing on the Person Profile page', b'0', NULL, 0, NULL, NULL, NULL, 'My Experience', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/my_experience.xml', 'PREVIEW'),
(17, 'OpenSocial Foundation', '', 'OpenSocial Activity Stream gadget with support for Embedded Experiences', b'0', '', 1, NULL, '', '', 'Activity Stream', '', 'OpenSocial', 'http://accelerator.opensocial2.org/gadgets/examples/gadgets/activitystream/gadget.xml', 'PREVIEW'),
(18, 'Apache Shindig', '', 'Sample Embedded Experience gadget from Shindig', b'0', '', 0, NULL, '', '', 'Album Viewer', '', 'OpenSocial', 'http://localhost:8080/samplecontainer/examples/embeddedexperiences/AlbumViewer.xml', 'PREVIEW'),
(19, 'Apache Shindig', NULL, 'Sample Embedded Experience gadget from Shindig', b'0', NULL, 0, NULL, NULL, NULL, 'Photo List', NULL, 'OpenSocial', 'http://localhost:8080/samplecontainer/examples/embeddedexperiences/PhotoList.xml', 'PREVIEW'),
(20, 'Apache Shindig', NULL, 'Sample Facebook gadget from Shindig', b'0', NULL, 0, NULL, NULL, NULL, 'OAuth2 Facebook', NULL, 'OpenSocial', 'http://localhost:8080/samplecontainer/examples/oauth2/oauth2_facebook.xml', 'PREVIEW'),
(21, 'Ohloh', NULL, 'Ohloh is an open source network that connects people through the software they create and use. Ohloh gadgets provide detailed statistics about open source software projects and developers.', b'0', NULL, 0, NULL, NULL, NULL, 'Ohloh Apache Rave Languages', NULL, 'OpenSocial', 'http://www.ohloh.net/p/521520/widgets/project_languages.xml', 'PREVIEW'),
(22, 'Ohloh', NULL, 'Ohloh is an open source network that connects people through the software they create and use. Ohloh gadgets provide detailed statistics about open source software projects and developers.', b'0', NULL, 0, NULL, NULL, NULL, 'Ohloh Apache Rave Factoids', NULL, 'OpenSocial', 'http://www.ohloh.net/p/521520/widgets/project_factoids.xml', 'PREVIEW'),
(23, 'Ohloh', NULL, 'Ohloh is an open source network that connects people through the software they create and use. Ohloh gadgets provide detailed statistics about open source software projects and developers.', b'0', NULL, 0, NULL, NULL, NULL, 'Ohloh Apache Rave COCOMO Estimates', NULL, 'OpenSocial', 'http://www.ohloh.net/p/521520/widgets/project_cocomo.xml', 'PREVIEW'),
(24, 'Ohloh', NULL, 'Ohloh is an open source network that connects people through the software they create and use. Ohloh gadgets provide detailed statistics about open source software projects and developers.', b'0', NULL, 0, NULL, NULL, NULL, 'Ohloh Apache Rave Stats', NULL, 'OpenSocial', 'http://www.ohloh.net/p/521520/widgets/project_basic_stats.xml', 'PREVIEW'),
(25, 'Apache Shindig', NULL, 'OpenAJAX Hub publisher gadget from Shindig', b'0', NULL, 0, NULL, NULL, NULL, 'OpenAJAX Hub Publisher', NULL, 'OpenSocial', 'http://localhost:8080/container/sample-pubsub-2-publisher.xml', 'PREVIEW'),
(26, 'Apache Shindig', NULL, 'OpenAJAX Hub subscriber gadget from Shindig', b'0', NULL, 0, NULL, NULL, NULL, 'OpenAJAX Hub Subscriber', NULL, 'OpenSocial', 'http://localhost:8080/container/sample-pubsub-2-subscriber.xml', 'PREVIEW'),
(27, 'Viknes Balasubramanee', NULL, 'This gadget display the list of friends for a particular user', b'0', NULL, 0, NULL, NULL, NULL, 'Friends', NULL, 'OpenSocial', 'http://localhost:8080/demogadgets/friends.xml', 'PREVIEW'),
(28, 'OpenSocial Foundation', NULL, 'Example Youtube Embedded Experience Gadget', b'0', NULL, 0, NULL, NULL, NULL, 'EE YouTube Example', NULL, 'OpenSocial', 'http://opensocial2.org:8080/collabapp/pages/home/embeddedExperiences/YouTube.xml', 'PREVIEW'),
(29, 'OpenSocial Foundation', NULL, 'Example jQuery Photo Embedded Experience Gadget', b'0', NULL, 0, NULL, NULL, NULL, 'EE jQuery Photo Example', NULL, 'OpenSocial', 'http://accelerator.opensocial2.org/gadgets/photos/jquery_photo_ee.xml', 'PREVIEW'),
(30, 'mdobrinic and Cloud Identity Limited', 'info@cozmanova.com', 'Etherpad Lite GroupPad gadget', b'0', NULL, 0, '14', 'https://etherpad-groups.collaborate.jiscadvance.biz/eplconext/images/etherpad.png', 'https://etherpad-groups.collaborate.jiscadvance.biz/images/etherpad.png', 'EtherpadLite', '', 'OpenSocial', 'https://etherpad-groups.collaborate.jiscadvance.biz/eplconext/gadget/t-eplconext.xml', 'PREVIEW'),
(31, 'Cloud Identity Limited - http://www.cloudidentity.co.uk', 'info@cloudidentity.co.uk', 'A widget that gives users some Twitter insight.', b'0', NULL, 0, '14', 'https://twitter-widget.collaborate.jiscadvance.biz/twitter.png', 'https://twitter-widget.collaborate.jiscadvance.biz/twitter.png', 'Twitter Widget', 'https://github.com/conext/twitter-scout', 'OpenSocial', 'https://twitter-widget.collaborate.jiscadvance.biz/widget.xml', 'PREVIEW'),
(32, 'Cloud Identity Limited - http://www.cloudidentity.co.uk', 'info@cloudidentity.co.uk', 'A widget that gives users access to gist.github.com services.', b'0', NULL, 0, '14', 'https://gist-widget.collaborate.jiscadvance.biz/gist.png', 'https://gist-widget.collaborate.jiscadvance.biz/gist.png', 'Gist Widget', 'https://github.com/conext/gist-widget', 'OpenSocial', 'https://gist-widget.collaborate.jiscadvance.biz/widget.xml', 'PREVIEW'),
(33, 'Google Taiwan', 'googlemodules+dictionary+201109071@google.com', 'Google Translate Widget', b'0', NULL, 0, '14', 'https://translate-widget.collaborate.jiscadvance.biz/translate_logo.png', 'https://translate-widget.collaborate.jiscadvance.biz/translate_logo.png', 'Google Translate', 'https://github.com/conext/translate-widget', 'OpenSocial', 'https://translate-widget.collaborate.jiscadvance.biz/dictionary.xml', 'PREVIEW'),
(34, 'Cloud Identity Limited - http://www.cloudidentity.co.uk', 'info@cloudidentity.co.uk', 'A widget that gives users JISCmail insight.', b'0', NULL, 0, '14', 'https://jiscmail-widget.collaborate.jiscadvance.biz/jiscmail_logo.png', 'https://jiscmail-widget.collaborate.jiscadvance.biz/jiscmail_logo.png', 'JISCmail Widget', 'https://github.com/conext/jiscmail-widget', 'OpenSocial', 'https://jiscmail-widget.collaborate.jiscadvance.biz/widget.xml', 'PREVIEW'),
(35, 'Cloud Identity Limited - http://www.cloudidentity.co.uk', 'info@cloudidentity.co.uk', 'A widget that gives users access to JOIN.me services.', b'0', NULL, 0, '14', 'https://joinme-widget.collaborate.jiscadvance.biz/joinme.png', 'https://joinme-widget.collaborate.jiscadvance.biz/joinme.png', 'Join.me Widget', 'https://github.com/conext/joinme-widget', 'OpenSocial', 'https://joinme-widget.collaborate.jiscadvance.biz/widget.xml', 'PREVIEW');

-- --------------------------------------------------------

--
-- Table structure for table `widget_category`
--

CREATE TABLE IF NOT EXISTS `widget_category` (
  `category_id` bigint(20) DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  KEY `category_id` (`category_id`),
  KEY `widget_id` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `widget_comment`
--

CREATE TABLE IF NOT EXISTS `widget_comment` (
  `entity_id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `widget_id` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `widget_rating`
--

CREATE TABLE IF NOT EXISTS `widget_rating` (
  `entity_id` bigint(20) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `widget_id` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `widget_tag`
--

CREATE TABLE IF NOT EXISTS `widget_tag` (
  `entity_id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `widget_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `U_WDGT_TG_WIDGET_ID` (`widget_id`,`user_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_8` FOREIGN KEY (`TARGET_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`AUTHOR_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`IMAGE_ENTITYID`) REFERENCES `activitystreams_medialink` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_3` FOREIGN KEY (`ACTOR_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_4` FOREIGN KEY (`GENERATOR_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_5` FOREIGN KEY (`ICON_ENTITYID`) REFERENCES `activitystreams_medialink` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_6` FOREIGN KEY (`OBJECT_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_ibfk_7` FOREIGN KEY (`PROVIDER_ENTITYID`) REFERENCES `activities` (`entityId`);

--
-- Constraints for table `activities_activities`
--
ALTER TABLE `activities_activities`
  ADD CONSTRAINT `activities_activities_ibfk_2` FOREIGN KEY (`ATTACHMENTS_ENTITYID`) REFERENCES `activities` (`entityId`),
  ADD CONSTRAINT `activities_activities_ibfk_1` FOREIGN KEY (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`) REFERENCES `activities` (`entityId`);

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`entity_id`);

--
-- Constraints for table `JpaActivityStreamsObject_downstreamDuplicates`
--
ALTER TABLE `JpaActivityStreamsObject_downstreamDuplicates`
  ADD CONSTRAINT `JpaActivityStreamsObject_downstreamDuplicates_ibfk_1` FOREIGN KEY (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`) REFERENCES `activities` (`entityId`);

--
-- Constraints for table `JpaActivityStreamsObject_upstreamDuplicates`
--
ALTER TABLE `JpaActivityStreamsObject_upstreamDuplicates`
  ADD CONSTRAINT `JpaActivityStreamsObject_upstreamDuplicates_ibfk_1` FOREIGN KEY (`JPAACTIVITYSTREAMSOBJECT_ENTITYID`) REFERENCES `activities` (`entityId`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `organization_ibfk_2` FOREIGN KEY (`ADDRESS_ENTITY_ID`) REFERENCES `address` (`entity_id`),
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`entity_id`);

--
-- Constraints for table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `page_ibfk_2` FOREIGN KEY (`parent_page_id`) REFERENCES `page` (`entity_id`),
  ADD CONSTRAINT `page_ibfk_1` FOREIGN KEY (`page_layout_id`) REFERENCES `page_layout` (`entity_id`);

--
-- Constraints for table `page_template`
--
ALTER TABLE `page_template`
  ADD CONSTRAINT `page_template_ibfk_2` FOREIGN KEY (`parent_page_template_id`) REFERENCES `page_template` (`entity_id`),
  ADD CONSTRAINT `page_template_ibfk_1` FOREIGN KEY (`page_layout_id`) REFERENCES `page_layout` (`entity_id`);

--
-- Constraints for table `page_template_region`
--
ALTER TABLE `page_template_region`
  ADD CONSTRAINT `page_template_region_ibfk_1` FOREIGN KEY (`page_template_id`) REFERENCES `page_template` (`entity_id`);

--
-- Constraints for table `page_template_widget`
--
ALTER TABLE `page_template_widget`
  ADD CONSTRAINT `page_template_widget_ibfk_1` FOREIGN KEY (`page_template_region_id`) REFERENCES `page_template_region` (`entity_id`);

--
-- Constraints for table `page_user`
--
ALTER TABLE `page_user`
  ADD CONSTRAINT `page_user_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`entity_id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`default_page_layout_id`) REFERENCES `page_layout` (`entity_id`);

--
-- Constraints for table `person_address_jn`
--
ALTER TABLE `person_address_jn`
  ADD CONSTRAINT `person_address_jn_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `address` (`entity_id`),
  ADD CONSTRAINT `person_address_jn_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `person` (`entity_id`);

--
-- Constraints for table `person_association`
--
ALTER TABLE `person_association`
  ADD CONSTRAINT `person_association_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `person` (`entity_id`),
  ADD CONSTRAINT `person_association_ibfk_1` FOREIGN KEY (`followedby_id`) REFERENCES `person` (`entity_id`);

--
-- Constraints for table `person_property`
--
ALTER TABLE `person_property`
  ADD CONSTRAINT `person_property_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`entity_id`);

--
-- Constraints for table `portal_preference_values`
--
ALTER TABLE `portal_preference_values`
  ADD CONSTRAINT `portal_preference_values_ibfk_1` FOREIGN KEY (`JPAPORTALPREFERENCE_ENTITY_ID`) REFERENCES `portal_preference` (`entity_id`);

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`entity_id`);

--
-- Constraints for table `region_widget`
--
ALTER TABLE `region_widget`
  ADD CONSTRAINT `region_widget_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`entity_id`);

--
-- Constraints for table `region_widget_preference`
--
ALTER TABLE `region_widget_preference`
  ADD CONSTRAINT `region_widget_preference_ibfk_1` FOREIGN KEY (`region_widget_id`) REFERENCES `region_widget` (`entity_id`);

--
-- Constraints for table `user_authorities`
--
ALTER TABLE `user_authorities`
  ADD CONSTRAINT `user_authorities_ibfk_2` FOREIGN KEY (`authority_id`) REFERENCES `granted_authority` (`entity_id`),
  ADD CONSTRAINT `user_authorities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `person` (`entity_id`);

--
-- Constraints for table `widget_category`
--
ALTER TABLE `widget_category`
  ADD CONSTRAINT `widget_category_ibfk_2` FOREIGN KEY (`widget_id`) REFERENCES `widget` (`entity_id`),
  ADD CONSTRAINT `widget_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`entity_id`);

--
-- Constraints for table `widget_comment`
--
ALTER TABLE `widget_comment`
  ADD CONSTRAINT `widget_comment_ibfk_1` FOREIGN KEY (`widget_id`) REFERENCES `widget` (`entity_id`);

--
-- Constraints for table `widget_rating`
--
ALTER TABLE `widget_rating`
  ADD CONSTRAINT `widget_rating_ibfk_1` FOREIGN KEY (`widget_id`) REFERENCES `widget` (`entity_id`);

--
-- Constraints for table `widget_tag`
--
ALTER TABLE `widget_tag`
  ADD CONSTRAINT `widget_tag_ibfk_1` FOREIGN KEY (`widget_id`) REFERENCES `widget` (`entity_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
