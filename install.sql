
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (5, 3, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (6, 5, 'on', NULL);

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***
INSERT INTO`tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`, `time`) VALUES (4, 4, 'now', 'yes', 'yes');
INSERT INTO`tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`, `time`) VALUES (2, 12, 'now', 'yes', 'yes');
INSERT INTO`tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`, `time`) VALUES (5, 22, 'now', 'yes', 'yes');

-- *** STRUCTURE:`tbl_fields_entry_relationship` ***
DROP TABLE IF EXISTS`tbl_fields_entry_relationship`;
CREATE TABLE`tbl_fields_entry_relationship` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `sections` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `deepness` int(2) unsigned DEFAULT NULL,
  `elements` text COLLATE utf8_unicode_ci,
  `mode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_table` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_header` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_footer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_entries` int(5) unsigned DEFAULT NULL,
  `max_entries` int(5) unsigned DEFAULT NULL,
  `allow_edit` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_new` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_link` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_delete` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `allow_collapse` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `allow_search` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_header` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_entry_relationship` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (7, 1, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (2, 7, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (3, 9, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (4, 10, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (5, 11, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (8, 19, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (9, 20, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (10, 21, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (19, 27, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (20, 28, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');

-- *** STRUCTURE:`tbl_fields_reverse_relationship` ***
DROP TABLE IF EXISTS`tbl_fields_reverse_relationship`;
CREATE TABLE`tbl_fields_reverse_relationship` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `linked_section_id` int(11) unsigned NOT NULL,
  `linked_field_id` int(11) unsigned NOT NULL,
  `mode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_table` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_header` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_footer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_reverse_relationship` ***

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (1, 13, 'no', 'no', 1, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (4, 15, 'yes', 'no', 7, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (3, 18, 'no', 'no', 16, 20);

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (3, 6, NULL, 'existing');

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (6, 2, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (2, 8, 'markdown_extra_with_smartypants', 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (3, 14, 'markdown_extra_with_smartypants', 8);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (5, 17, NULL, 9);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (7, 23, NULL, 13);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (12, 25, 'markdown_extra_with_smartypants', 3);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (13, 26, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE:`tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueupload`;
CREATE TABLE`tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueupload` ***
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (1, 16, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (4, 24, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***

-- *** STRUCTURE:`tbl_entries_data_10` ***
DROP TABLE IF EXISTS`tbl_entries_data_10`;
CREATE TABLE`tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_10` ***

-- *** STRUCTURE:`tbl_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_11` ***

-- *** STRUCTURE:`tbl_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_12` ***

-- *** STRUCTURE:`tbl_entries_data_13` ***
DROP TABLE IF EXISTS`tbl_entries_data_13`;
CREATE TABLE`tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_13` ***

-- *** STRUCTURE:`tbl_entries_data_14` ***
DROP TABLE IF EXISTS`tbl_entries_data_14`;
CREATE TABLE`tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_14` ***

-- *** STRUCTURE:`tbl_entries_data_15` ***
DROP TABLE IF EXISTS`tbl_entries_data_15`;
CREATE TABLE`tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_15` ***

-- *** STRUCTURE:`tbl_entries_data_16` ***
DROP TABLE IF EXISTS`tbl_entries_data_16`;
CREATE TABLE`tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_16` ***

-- *** STRUCTURE:`tbl_entries_data_17` ***
DROP TABLE IF EXISTS`tbl_entries_data_17`;
CREATE TABLE`tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_17` ***

-- *** STRUCTURE:`tbl_entries_data_18` ***
DROP TABLE IF EXISTS`tbl_entries_data_18`;
CREATE TABLE`tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_18` ***

-- *** STRUCTURE:`tbl_entries_data_19` ***
DROP TABLE IF EXISTS`tbl_entries_data_19`;
CREATE TABLE`tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_19` ***

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***

-- *** STRUCTURE:`tbl_entries_data_20` ***
DROP TABLE IF EXISTS`tbl_entries_data_20`;
CREATE TABLE`tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_20` ***

-- *** STRUCTURE:`tbl_entries_data_21` ***
DROP TABLE IF EXISTS`tbl_entries_data_21`;
CREATE TABLE`tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_21` ***

-- *** STRUCTURE:`tbl_entries_data_22` ***
DROP TABLE IF EXISTS`tbl_entries_data_22`;
CREATE TABLE`tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_22` ***

-- *** STRUCTURE:`tbl_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_23` ***

-- *** STRUCTURE:`tbl_entries_data_24` ***
DROP TABLE IF EXISTS`tbl_entries_data_24`;
CREATE TABLE`tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_24` ***

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***

-- *** STRUCTURE:`tbl_entries_data_27` ***
DROP TABLE IF EXISTS`tbl_entries_data_27`;
CREATE TABLE`tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_27` ***

-- *** STRUCTURE:`tbl_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_28` ***

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***

-- *** STRUCTURE:`tbl_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_9` ***

-- *** DATA:`tbl_entries` ***

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'debugdevkit', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'maintenance_mode', 'enabled', '1.9.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'jit_image_manipulation', 'enabled', 1.47);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'xssfilter', 'enabled', '1.5.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'export_ensemble', 'enabled', '2.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'selectbox_link_field', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'uniqueuploadfield', 'enabled', '1.11.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'entry_relationship_field', 'enabled', '2.3.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'remote_datasource', 'enabled', '2.5.0');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 3, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 3, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 4, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 4, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 4, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 4, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 4, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 5, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 6, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 6, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 6, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 6, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 6, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 7, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 10, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 11, '/system/preferences/', 'AddCachingOpportunity', 'addCachingOpportunity');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Title', 'title', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Body', 'body', 'textarea', 1, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Publish', 'publish', 'checkbox', 1, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Date', 'date', 'date', 1, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Manage Images', 'manage-images', 'checkbox', 1, 'yes', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Tags', 'tags', 'taglist', 1, 'no', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Description', 'description', 'textarea', 2, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Author', 'author', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Email', 'email', 'input', 3, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Website', 'website', 'input', 3, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Date', 'date', 'date', 3, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Article', 'article', 'selectbox_link', 3, 'yes', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Comment', 'comment', 'textarea', 3, 'yes', 5, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Categories', 'categories', 'selectbox_link', 1, 'yes', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Image', 'image', 'uniqueupload', 4, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Description', 'description', 'textarea', 4, 'yes', 1, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Article Images', 'article-images', 'selectbox_link', 1, 'yes', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Name', 'name', 'input', 5, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Email', 'email', 'input', 5, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Subject', 'subject', 'input', 5, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Date', 'date', 'date', 5, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Message', 'message', 'textarea', 5, 'no', 4, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Photo', 'photo', 'uniqueupload', 6, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Summary', 'summary', 'textarea', 6, 'yes', 1, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Bio', 'bio', 'textarea', 6, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Title', 'title', 'input', 7, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Link', 'link', 'input', 7, 'no', 1, 'main', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, NULL, NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Articles', 'articles', NULL, 'entry/cat', 'about_me,article,logged_in_author', NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Archive', 'archive', NULL, 'year', 'archive', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'Categories', 'category', 'archive', 'category', 'about_me,all_categories,archive_listing,categories,logged_in_author,navigation,tags,website_owner', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, 3, 'Tag', 'tag', 'archive', 'tag', 'about_me,archive_listing,categories,logged_in_author,navigation,tags,website_owner', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'About', 'about', NULL, NULL, 'about_me,logged_in_author,navigation,website_owner', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'RSS', 'rss', NULL, NULL, 'rss_articles', NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Drafts', 'drafts', NULL, 'entry/cat', 'about_me,categories,drafts,logged_in_author,navigation,tags,website_owner', 'publish_article', 8);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Maintenance', 'maintenance', NULL, NULL, 'logged_in_author,navigation,website_owner', NULL, 9);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'Forbidden', 'forbidden', NULL, NULL, 'navigation,website_owner', NULL, 10);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, 'logged_in_author,navigation,website_owner', NULL, 11);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (4, 1, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 2, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (5, 1, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (27, 8, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (15, 7, 'XML');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (14, 7, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (13, 4, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (26, 8, 'admin');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (29, 9, 'maintenance');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 9, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (31, 10, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (30, 10, 403);
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (32, 11, 404);
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (33, 11, 'hidden');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 'Articles', 'articles', 1, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:21:02', '2020-03-26 15:21:02', '2020-03-26 08:56:32', '2020-03-26 15:56:32');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 'Categories', 'categories', 2, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:23:33', '2020-03-26 15:23:33', '2020-03-26 08:23:33', '2020-03-26 15:23:33');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 'Comments', 'comments', 3, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:28:44', '2020-03-26 15:28:44', '2020-03-26 08:28:44', '2020-03-26 15:28:44');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 'Images', 'images', 4, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:54:10', '2020-03-26 15:54:10', '2020-03-26 08:54:10', '2020-03-26 15:54:10');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 'Messages', 'messages', 5, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:58:24', '2020-03-26 15:58:24', '2020-03-26 08:58:24', '2020-03-26 15:58:24');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 'About', 'about', 6, 'no', 'no', 'About', 1, 1, '2020-03-26 09:07:14', '2020-03-26 16:07:14', '2020-03-26 09:35:13', '2020-03-26 16:35:13');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 'Elsewhere', 'elsewhere', 7, 'no', 'no', 'About', 1, 1, '2020-03-26 09:12:22', '2020-03-26 16:12:22', '2020-03-26 09:37:34', '2020-03-26 16:37:34');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (1, 1, 1, 3, 13, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (4, 2, 7, 1, 15, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (3, 4, 16, 1, 18, 'no', NULL, NULL);
