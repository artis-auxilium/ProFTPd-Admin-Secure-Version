#
# Table structure for table `groups`
#

CREATE TABLE IF NOT EXISTS `groups` (
  `groupname` varchar(32) NOT NULL default '',
  `gid` smallint(6) unsigned NOT NULL auto_increment,
  `members` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`gid`),
  UNIQUE KEY `groupname` (`groupname`)
) ENGINE=MyISAM COMMENT='ProFTPd group table';

#
# Table structure for table `users`
#

CREATE TABLE IF NOT EXISTS `users` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `userid` varchar(32) NOT NULL default '',
  `uid` smallint(6) unsigned default NULL,
  `gid` smallint(6) unsigned default NULL,
  `passwd` varchar(265) NOT NULL default '',
  `homedir` varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  `disabled` smallint(2) unsigned NOT NULL default '0',
  `shell` varchar(32) NOT NULL default '/sbin/nologin',
  `email` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `title` varchar(5) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `bytes_in_used` bigint(20) unsigned NOT NULL default '0',
  `bytes_out_used` bigint(20) unsigned NOT NULL default '0',
  `files_in_used` bigint(20) unsigned NOT NULL default '0',
  `files_out_used` bigint(20) unsigned NOT NULL default '0',
  `login_count` int(11) unsigned NOT NULL default '0',
  `last_login` datetime NULL,
  `last_modified` datetime NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM COMMENT='ProFTPd user table';
