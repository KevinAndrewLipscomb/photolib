# phpMyAdmin MySQL-Dump
# version 2.2.0rc1
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Generation Time: October 18, 2001, 1:59 pm
# Server version: 3.23.32
# PHP Version: 4.0.6
# Database : kalipso
# --------------------------------------------------------

#
# Table structure for table 'era'
#

CREATE TABLE `era` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  PRIMARY KEY (`id`)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table 'photo_comment'
#

CREATE TABLE `photo_comment` (
  `div_spec` varchar(8) NOT NULL default '',
  `frame_num` tinyint(3) unsigned NOT NULL default '0',
  `nickname` varchar(64) NOT NULL default '',
  `email_address` varchar(128) NOT NULL default '',
  `text` text NOT NULL,
  `timestamp` timestamp(14) NOT NULL
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table 'photo_detail'
#

CREATE TABLE `photo_detail` (
  `div_spec` varchar(8) NOT NULL default '',
  `frame_num` tinyint(3) unsigned zerofill NOT NULL default '000',
  `be_avail_as_huge` char(1) NOT NULL default '',
  `caption` varchar(255) default NULL,
  `tech_details` varchar(255) default NULL,
  `copyright_year` year(4) default NULL,
  `era` tinyint(3) unsigned default '5',
  `hits` int(10) unsigned default '0',
  `keywords` mediumtext,
  `placement` mediumtext,
  PRIMARY KEY (`div_spec`,`frame_num`)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Table structure for table 'visit'
#

CREATE TABLE `visit` (
  `visitor` varchar(255) NOT NULL default '',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (`visitor`),
  UNIQUE KEY `visitor`(`visitor`),
  KEY `visitor_2`(`visitor`)
) TYPE=MyISAM;
