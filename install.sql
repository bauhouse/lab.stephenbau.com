
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (11, 3, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (12, 5, 'off', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***
INSERT INTO`tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`, `time`) VALUES (8, 4, 'now', 'yes', 'yes');
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (23, 1, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (2, 7, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (3, 9, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (4, 10, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (5, 11, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (8, 19, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (9, 20, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (10, 21, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (19, 27, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (20, 28, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (25, 30, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (26, 31, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/?[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (1, 13, 'no', 'no', 1, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (10, 15, 'yes', 'no', 7, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (9, 18, 'no', 'no', 16, 20);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (6, 6, NULL, 'existing');

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (16, 2, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (2, 8, 'markdown_extra_with_smartypants', 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (3, 14, 'markdown_extra_with_smartypants', 8);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (5, 17, NULL, 9);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (7, 23, NULL, 13);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (19, 25, 'markdown_extra_with_smartypants', 3);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (20, 26, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE:`tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueupload`;
CREATE TABLE`tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueupload` ***
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (1, 16, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (6, 24, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 17, 'xslt-static-site-generator', 'XSLT Static Site Generator');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 18, 'xslt-on-webplatform', 'XSLT on WebPlatform');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 19, 'understanding-xslt', 'Understanding XSLT');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_15` ***
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (3, 17, 11);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (2, 18, 11);
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (4, 19, 11);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_18` ***
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (3, 17, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (2, 18, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (4, 19, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 17, 'For a project where our agency was contracted to design and deliver HTML, CSS and JavaScript to the client, I created a static site generator as a means of quickly prototyping web page layouts as static HTML files, while still being able to maintain all the features of the layout that we intended to deliver to the client, such as current classes on selected navigation items.\r\n\r\nThe best way to deliver quality code to the client was to rely on a W3C standard for templating: XSLT. Rather than have to manually edit pages across the entire set of layouts, I was able to run a series of commands on the command line to generate the pages for the site. Because these commands rely on `xsltproc`, which is already available out of the box in any UNIX-based system, including Mac and Linux, it was a great way to use [HTML preprocessing](http://stephenbau.com/articles/preprocessors-for-html/) in our front end development process.\r\n\r\n#### Preprocessors for HTML\r\n\r\nThe [Preprocessors for HTML](http://stephenbau.com/articles/preprocessors-for-html/) article describes the basic process of using `xsltproc` to transform XML data with XSLT stylesheets to output HTML.\r\n\r\nMost of my work has involved the development of static HTML prototypes to be integrated into custom web applications or content management systems. Manually developing the prototypes as static HTML is usually fine when I am dealing with a relatively small number of pages, but as the requirements of the application grows, it is usually necessary to abandon the static work on the HTML files and work directly within the application or CMS. This often involves a fair amount of overhead just to get a local development environment set up. And the design process often gets bogged down in the complexities of building and maintaining the system, rather than on the design process.\r\n\r\nAs the page complexity increases and the number of pages increases, there is a point where maintaining a repository of static HTML files, in the midst of a design process, becomes impractical. But the requirements of this project demanded the delivery of static HTML files where the site had a very complex and deeply nested navigation structure. I needed to quickly find a solution to managing the HTML files in a way that our team could easily maintain without the overhead of installing a CMS.\r\n\r\n#### XML and XSLT\r\n\r\nThe system that we are integrating with is a custom PHP-based solution built on XML and XSLT. So, it made sense to enable easy integration into the client CMS by building our templates with XML and XSLT.\r\n\r\nThe solution I came up with has evolved over time, but I eventually came to pattern the file structure after what I am most familiar with, the XSLT-powered open source content management system,  [Symphony CMS](http://getsymphony.com/).\r\n\r\n#### Directory Structure\r\n\r\nThe main difference between the directory structure of the [Symphony workspace](https://github.com/symphonycms/workspace) and the XSLT static site generator is the addition of the `data` directory, which contains XML data used by all pages. Also, for static site generation, there is no need for any of the PHP files used by the system, so the only other directories needed are the `pages` and `utilities` directories.\r\n\r\n	site/\r\n	├── index.xml\r\n	├── workspace/\r\n	│   ├── data/\r\n	│   │   ├── navigation.xml\r\n	│   ├── pages/\r\n	│   │   ├── index.xsl\r\n	│   ├── utilities/\r\n	│   │   ├── master.xsl\r\n\r\n#### XML Data\r\n\r\nWhen creating HTML output with XSLT, you always need to start with XML data. Extensible Stylesheet Language Templates are an extension of XML, Extensible Markup Language. With XSLT, you can output to any text-based format that you like, but it shines in its ability to transform any form of valid XML data into other forms of XML, such as XHTML.\r\n\r\nYou don\'t need much data to transform into output. You could start with something as simple as a single node.\r\n\r\n#### data.xml\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <data/>\r\n\r\nThen, use the simplest XSLT stylesheet.\r\n\r\n#### hello.xsl\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n      <xsl:output method=\"text\"/>\r\n      <xsl:template match=\"/\">Hello</xsl:template>\r\n    </xsl:stylesheet>\r\n\r\nRun the following command in the same directory as these files and the output would be a simple text file with the word, `Hello`:\r\n\r\n    xsltproc -v -o hello.txt hello.xsl data.xml\r\n\r\n#### hello.txt\r\n\r\n    Hello\r\n\r\n### Static Site Generation Files\r\n\r\nFor the purposes of what I needed to accomplish, I only needed a small set of data to set specific properties.\r\n\r\n#### index.xml\r\n\r\nI create an XML file that will serve as the data source for page-specific parameters, such as page title, the URL handle for the current page, and how to navigate to the root directory relative to the current directory.\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <?xml-stylesheet type=\"text/xsl\" href=\"workspace/pages/index.xsl\" ?>\r\n    <!-- xsltproc -v -o index.html workspace/pages/index.xsl index.xml -->\r\n    <data>\r\n      <params>\r\n        <website-name>Site Name</website-name>\r\n        <page-title>Home</page-title>\r\n        <current-page>home</current-page>\r\n        <root>./</root>\r\n      </params>\r\n    </data>\r\n\r\nThe file also includes the `xml-stylesheet` declaration that enables a browser to process HTML with the specified XSL file when pointing to the XML file.\r\n\r\nAnd, just in case you want to run the `xsltproc` command from within the same directory as the `index.html` file, there is a comment to store the command.\r\n\r\n#### index.xsl\r\n\r\nThe XML file is transformed into HTML by XSLT stylesheets stored in the `workspace/pages` directory.\r\n\r\nA page template can start out very basic:\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    \r\n    <xsl:import href=\"../utilities/master.xsl\" />\r\n    \r\n    <xsl:template match=\"data\">\r\n      <h2><xsl:value-of select=\"params/page-title\" /></h2>\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nThere\'s not much going on in this template other than an `xsl:import` instruction and a match template to output an an `h2` element with the page title. The intention is that the page template will contain only page-specific content.\r\n\r\nThe important thing to note in this file is that the match template is using an XPath expression as the value of the `match` attribute. This template matches the `data` node of the XML file. As the processor is navigating the XML tree, when it finds the data node, the XSLT creates output by following the instructions found in the `xsl:template` element.\r\n\r\nWhile the `data` node is the first node of the XML document, the root of the document precedes the first node. The root of the document is selected by the match template with a forward slash (`/`) as the value of the match attribute. We find this value in the imported `master.xsl` stylesheet.\r\n\r\n#### master.xsl\r\n\r\nThe `index.xsl` page template imports the `master.xsl` stylesheet from the `workspace/utilities` directory.\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    \r\n    <xsl:output method=\"xml\"\r\n      doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n      doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n      omit-xml-declaration=\"yes\"\r\n      encoding=\"UTF-8\"\r\n      indent=\"yes\" />\r\n    \r\n    <xsl:template match=\"/\">\r\n      <html>\r\n        <head>\r\n          <title><xsl:value-of select=\"data/params/website-name\" /></title>\r\n        </head>\r\n        <body>\r\n          <h1><xsl:value-of select=\"data/params/website-name\" /></h1>\r\n          <xsl:apply-templates />\r\n        </body>\r\n      </html>\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nThe master template is being used to manage the structure of the page outside of the main content area.\r\n\r\n#### HTML Output\r\n\r\nIf you view the XML file in a modern browser, you\'ll see the generated HTML. If you view the source, you\'ll probably see the original XML file. You can view the rendered source with browser developer tools.\r\n\r\nTo actually render the HTML file and save the file to the directory, run this command inside the directory containing the `index.xml` file:\r\n\r\n    xsltproc -v -o index.html workspace/pages/index.xsl index.xml\r\n\r\nThe command will use the XSLT processor to process the `index.xml` file with the `workspace/pages/index.xsl` file and output to the `index.html` file. This is the command that is documented at the top of the XML file.\r\n\r\n#### index.html\r\n\r\n    <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n    <html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n      <head>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n        <title>Site Name</title>\r\n      </head>\r\n      <body>\r\n        <h1>Site Name</h1>\r\n        <h2>Home</h2>\r\n      </body>\r\n    </html>\r\n\r\nNow, the directory structure should look like this:\r\n\r\n	site/\r\n	├── index.html\r\n	├── index.xml\r\n	├── workspace/\r\n	│   ├── pages/\r\n	│   │   ├── index.xsl\r\n	│   ├── utilities/\r\n	│   │   ├── master.xsl\r\n\r\nThe `index.html` file was created by the XSLT processor. At this point, we don\'t have more than a single page, so we haven\'t considered data that is needed by all pages, so I haven\'t included the `data` directory yet.\r\n\r\n#### The Build File\r\n\r\nWe can set up a simple shell script that allows the ability to run the XSLT processing command with a simple command.\r\n\r\nCreate a file called `build` in the root directory with the following contents:\r\n\r\n    #!/bin/bash\r\n    \r\n    xsltproc -v -o index.html workspace/pages/index.xsl index.xml;\r\n\r\nI have added a semicolon to the end of the command so we can run multiple commands when we eventually add more pages to the list.\r\n\r\nMake sure the file has the correct permissions to be able to execute the script:\r\n\r\n    chmod 755 build\r\n\r\nThen, simply call the shell script from the root directory.\r\n\r\n    ./build\r\n\r\nThat\'s the basic example. The actual templates are a little more complex. Let\'s see if we can break it down into understandable pieces.\r\n\r\n### XSLT Templates\r\n\r\nWhat makes XSLT really interesting is the ability to set variables and parameters, and the ability to set modes on templates and override templates. All of these things help to keep the process of building pages DRY (Don\'t Repeat Yourself). So, let\'s start by breaking down the page into manageable pieces, so we need only edit each part in one place.\r\n\r\n#### master.xsl\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\r\n      xmlns:fb=\"http://ogp.me/ns/fb#\">\r\n    \r\n    <xsl:import href=\"../utilities/head.xsl\" />\r\n    <xsl:import href=\"../utilities/body.xsl\" />\r\n    \r\n    <xsl:output method=\"xml\"\r\n      doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n      doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n      omit-xml-declaration=\"yes\"\r\n      encoding=\"UTF-8\"\r\n      indent=\"yes\" />\r\n    \r\n    <!-- Page Parameters -->\r\n    <xsl:param name=\"root\" select=\"/data/params/root\" />\r\n    <xsl:param name=\"website-name\" select=\"/data/params/website-name\" />\r\n    <xsl:param name=\"page-title\" select=\"/data/params/page-title\" />\r\n    <xsl:param name=\"current-page\" select=\"/data/params/current-page\" />\r\n    <xsl:param name=\"parent-page\" select=\"/data/params/parent-page\" />\r\n    <xsl:param name=\"root-page\">\r\n      <xsl:choose>\r\n        <xsl:when test=\"/data/params/root-page\">\r\n          <xsl:value-of select=\"/data/params/root-page\" />\r\n        </xsl:when>\r\n        <xsl:otherwise>\r\n          <xsl:value-of select=\"$current-page\" />\r\n        </xsl:otherwise>\r\n      </xsl:choose>\r\n    </xsl:param>\r\n    <xsl:param name=\"navigation\" select=\"document(\'../data/navigation.xml\')\" />\r\n    <xsl:param name=\"has-section-nav\" select=\"false()\" />\r\n    \r\n    <!-- Directories -->\r\n    <xsl:param name=\"css\" select=\"concat($root, \'_assets/stylesheets/css/\')\" />\r\n    <xsl:param name=\"scripts\" select=\"concat($root, \'_assets/scripts/\')\" />\r\n    <xsl:param name=\"images\" select=\"concat($root, \'_assets/images/\')\" />\r\n    \r\n    <xsl:template match=\"/\">\r\n    	<xsl:comment><![CDATA[[if lt IE 7]> <html class=\"ie ie6 lt-ie7 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"> <![endif]]]></xsl:comment>\r\n    	<xsl:comment><![CDATA[[if IE 7]>    <html class=\"ie ie7 lt-ie8 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"> <![endif]]]></xsl:comment>\r\n    	<xsl:comment><![CDATA[[if IE 8]>    <html class=\"ie ie8 lt-ie9 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"> <![endif]]]></xsl:comment>\r\n    	<xsl:comment><![CDATA[[if IE 9]>    <html class=\"ie ie9 lt-ie10 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"> <![endif]]]></xsl:comment>\r\n    	<xsl:comment><![CDATA[[if gt IE 9]><!]]></xsl:comment><html class=\"no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"><xsl:comment><![CDATA[<![endif]]]></xsl:comment>\r\n        <xsl:apply-templates select=\".\" mode=\"head\" />\r\n        <xsl:apply-templates select=\".\" mode=\"body\" />\r\n      </html>\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nThe master template is a single template that acts as the central station for managing all the page layouts of the site. All the elements that are consistent across the site design should be accounted for with this template, at least as a reference to other templates.\r\n\r\nThe `xsl:stylesheet` element declares the XML namespace for the Facebook Open Graph Protocol. For the XSLT processor to run without errors, the XML namespaces used in the document must be properly declared.\r\n\r\n    xmlns:fb=\"http://ogp.me/ns/fb#\"\r\n\r\nThe `xsl:import` instructions include `href` attributes with values that point to the templates on which the master template depends. The child elements for any HTML document are the `head` and `body` elements. So, we create a separate template to be responsible for each element and its descendant elements and import these templates into the master template.\r\n\r\n- `head.xsl` \r\n- `body.xsl`\r\n\r\nThe `xsl:output` element sets the properties to be used to render the output of the XSL transformation.\r\n\r\n- Format: XML\r\n- Doctype: XHTML 1.0 Strict\r\n- Document Type Declaration Schema URL: http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\r\n- Omit the XML declaration: yes\r\n- Character encoding: UTF-8\r\n- Code Indenting: yes\r\n\r\nIn this case, the template collects data from the XML file in the form of page parameters\r\n\r\n- `$root`\r\n- `$page-title`\r\n- `$current-page`\r\n- `$parent-page`\r\n- `$root-page`\r\n- `$navigation`\r\n- `$has-section-nav`\r\n\r\nThere is also a set of parameters to render the paths to directories storing the site design assets:\r\n\r\n- `$css`\r\n- `$scripts`\r\n- `$images`\r\n\r\nThese paths will be output as relative URLs, with the `$root` rendered as a relative path.\r\n\r\nFinally, we come to the match template, which matches the root of the XML document. This is where the transformation begins. We would usually start with the root element of the HTML document, the `html` element. However, because we want to serve IE conditional comments, the template starts with `xsl:comment` instructions to render `CDATA` sections needed to render properly formatted HTML comments. The XSLT processor will ignore comments when processing the output, so comments must use the `xsl:comment` instruction to render the output.\r\n\r\nWithin the conditional comment for the latest version of IE is the opening tag of the `html` element. Contained within the `html` element are two `xsl:apply-templates` instructions with `.` as the value of the `select` attribute with different values for the `mode` attribute. The dot is an XPath expression referring to the current node. This means that the XSLT processor will continue from this point by first finding templates with the same mode value that match the current node, that is, the root node (`/`).\r\n\r\nWe\'ll describe these two XSLT stylesheets next.\r\n\r\n#### head.xsl\r\n\r\nThe `head` element contains the `meta`, `title`, `link` and `script` elements.\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    \r\n    <xsl:import href=\"../utilities/js.xsl\" />\r\n    \r\n    <xsl:template match=\"/\" mode=\"head\">\r\n      <head>\r\n        <meta name=\"description\" content=\"{$website-name}\" />\r\n        <meta name=\"author\" content=\"{$website-name}\" />\r\n        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" />\r\n        <xsl:apply-templates mode=\"page-title\" />\r\n        <xsl:apply-templates mode=\"css\" />\r\n        <xsl:apply-templates mode=\"js\" />\r\n      </head>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"data\" mode=\"page-title\">\r\n      <title>\r\n        <xsl:value-of select=\"$page-title\" />\r\n        <xsl:text> | </xsl:text>\r\n        <xsl:value-of select=\"$website-name\"/>\r\n      </title>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"data\" mode=\"css\">\r\n    	<link rel=\"stylesheet\" href=\"{$css}screen.css\" />\r\n      <xsl:comment><![CDATA[[if IE]> <link href=\"]]><xsl:value-of select=\"$css\" /><![CDATA[ie.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" /> <![endif]]]></xsl:comment>\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nAt the top of the file, the `xsl:import` instruction refers to the `js.xsl` stylesheet, containing instructions for handling the `script` elements for JavaScript files.\r\n\r\nThis XSLT stylesheet contains three templates. The first template is the match template with a `mode` attribute value of `head` that matches the root element (`/`). This is the next step for the XSLT processor after processing the `master.xsl` stylesheet.\r\n\r\nUsing the mode allows the ability to use the `xsl:apply-templates` instruction without needing to traverse further down the XML tree structure before adding more structure and processing additional instructions to render the desired output.\r\n\r\nThe three `xsl:apply-templates` instructions inside the `head` match template do not have `select` attributes. These templates will be processed on matching the next node in the XML tree structure, which is the `data` node. These templates have been set to output the `title`, `link` and `script` elements, using the `page-title`, `css` and `js` modes, respectively.\r\n\r\nThe second template is the match template with a mode of `page-title`. This template matches the `data` node of the XML. The parameters `$page-title` and `$website-name` that were declared in the `master.xsl` template are output by the `xsl:value-of` instructions.\r\n\r\n#### body.xsl\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    \r\n    <xsl:import href=\"../utilities/global-nav.xsl\" />\r\n    <xsl:import href=\"../utilities/header.xsl\" />\r\n    <xsl:import href=\"../utilities/sub-nav.xsl\" />\r\n    <xsl:import href=\"../utilities/footer.xsl\" />\r\n    \r\n    <xsl:template match=\"/\" mode=\"body\">\r\n      <body class=\"section-{$root-page}\">\r\n        <xsl:if test=\"$current-page = \'home\'\">\r\n          <xsl:attribute name=\"id\">home-page</xsl:attribute>\r\n        </xsl:if>\r\n        <div class=\"page\" id=\"{$current-page}-page\">\r\n          <xsl:call-template name=\"global-nav\" />\r\n          <xsl:call-template name=\"header\" />\r\n          <xsl:apply-templates />\r\n          <xsl:call-template name=\"sub-nav\" />\r\n          <xsl:call-template name=\"footer\" />\r\n        </div>\r\n      </body>\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nThe match template for the `body` element sets the `class` on the body element and an `id` attribute on the `div` element that serves as the container for the rest of the page structure.\r\n\r\nThe `xsl:call-template` instructions refer to the named templates contained by the stylesheets imported at the beginning of the `body.xsl` stylesheet. These stylesheets contain templates to manage the following pieces of the page layout:\r\n\r\n- global navigation\r\n- header\r\n- subnavigation\r\n- footer\r\n\r\nIn the middle of these `xsl:call-template` instructions is another `xsl:apply-templates` instruction that has no `select` or `mode` attributes. The XSLT processor will continue traversing the XML document, matching elements to templates to process the remaining instructions. Here is where the main content area of the page is built.\r\n\r\n#### index.xsl\r\n\r\nOn very complex pages, such as the home page, the structure of the page is further broken down into the pieces that build up this page.\r\n\r\n    <?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n    <xsl:stylesheet version=\"1.0\"\r\n      xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    \r\n    <xsl:import href=\"../utilities/master.xsl\" />\r\n    <xsl:import href=\"../utilities/notifications.xsl\" />\r\n    <xsl:import href=\"../utilities/main.xsl\" />\r\n    <xsl:import href=\"../utilities/overview.xsl\" />\r\n    <xsl:import href=\"../utilities/supplementary.xsl\" />\r\n    <xsl:import href=\"../utilities/secondary.xsl\" />\r\n    \r\n    <xsl:param name=\"notifications\" select=\"true()\" />\r\n    \r\n    <xsl:template match=\"data\">\r\n      <xsl:if test=\"$notifications\">\r\n        <xsl:call-template name=\"notifications\" />\r\n      </xsl:if>\r\n      <xsl:call-template name=\"main\" />\r\n      <xsl:call-template name=\"overview\" />\r\n      <xsl:call-template name=\"supplementary\" />\r\n      <xsl:call-template name=\"secondary\" />\r\n    </xsl:template>\r\n    \r\n    </xsl:stylesheet>\r\n\r\nEach HTML page is built by processing many different templates that can be modified in one place. By building each page on these same templates, changes can be reflected across the entire set of HTML pages by running a `build` script that maintains a record of all the `xsltproc` commands to process each HTML file.\r\n\r\nThe file structure currently looks something like this, although I have modified the page structure to be more generic, simpler and not quite as deeply nested:\r\n\r\n	site/\r\n	├──_assets\r\n	├──build\r\n	│   ├── images/\r\n	│   ├── scripts/\r\n	│   ├── stylesheets/\r\n	│   │   ├── css/\r\n	│   │   ├── sass/\r\n	│   ├── about/\r\n	│   │   ├── index.html\r\n	│   │   ├── index.xml\r\n	│   ├── contact/\r\n	│   │   ├── index.html\r\n	│   │   ├── index.xml\r\n	├── index.html\r\n	├── index.xml\r\n	│   ├── products/\r\n	│   │   ├── index.html\r\n	│   │   ├── index.xml\r\n	│   ├── services/\r\n	│   │   ├── index.html\r\n	│   │   ├── index.xml\r\n	├── workspace/\r\n	│   ├── data/\r\n	│   │   ├── navigation.xml\r\n	│   ├── pages/\r\n	│   │   ├── index.xsl\r\n	│   │   ├── about.xsl\r\n	│   │   ├── contact.xsl\r\n	│   │   ├── products.xsl\r\n	│   │   ├── services.xsl\r\n	│   ├── utilities/\r\n	│   │   ├── body.xsl\r\n	│   │   ├── footer.xsl\r\n	│   │   ├── global-nav.xsl\r\n	│   │   ├── head.xsl\r\n	│   │   ├── header.xsl\r\n	│   │   ├── js.xsl\r\n	│   │   ├── main.xsl\r\n	│   │   ├── master.xsl\r\n	│   │   ├── notifications.xsl\r\n	│   │   ├── overview.xsl\r\n	│   │   ├── page-title.xsl\r\n	│   │   ├── secondary.xsl\r\n	│   │   ├── section-navigation.xsl\r\n	│   │   ├── sub-nav.xsl\r\n	│   │   ├── supplementary.xsl\r\n\r\n#### Modifying the Build File\r\n\r\nAs more pages are added to the site, the instructions for processing each XML file to output the HTML should be added to the `build` script. With the site structure described above, the `build` file would look something more like this:\r\n\r\n    #!/bin/bash\r\n    # These commands will process HTML files with XSLT when you run \"./build\" from the root of your site directory.\r\n    # Modify this list as you add more pages to the site.\r\n    \r\n    xsltproc -v -o index.html workspace/pages/index.xsl index.xml;\r\n    xsltproc -v -o about/index.html workspace/pages/about.xsl about/index.xml;\r\n    xsltproc -v -o contact/index.html workspace/pages/contact.xsl about/contact.xml;\r\n    xsltproc -v -o products/index.html workspace/pages/products.xsl about/products.xml;\r\n    xsltproc -v -o services/index.html workspace/pages/services.xsl about/services.xml;\r\n\r\nAgain, it requires just a simple command to process all HTML files:\r\n\r\n    ./build\r\n\r\n#### Automating the Process\r\n\r\nTheoretically, it wouldn\'t take much to automate the process, so that, similar to the common set up for compiling SASS files, watched folders could be set up for the directories containing the XSL files. If XSL files are modified, all the HTML files could be processed. But, the likelihood for XSLT processing errors would likely increase, so it probably makes more sense for the `build` script to be run on demand rather than automatically.\r\n\r\nI will typically run the XSLT processor one file at a time, so I can trace errors and ensure the output is working as expected before processing all files.\r\n\r\n#### Modular Site Development\r\n\r\nWhile I haven\'t spent time on the exact code used to build the content of the site, I have focused the attention of this article primarily on how to build the basic framework of a flexible and modular templating system for a static site generator.\r\n\r\nThere are specific issues involving setting the XML data for each page and how to write the templates to set the current class on navigation items. This may best be demonstrated through working examples. However, I first wanted to walk through the overall structure before delving deeper into the details of specific templates.', '<p>For a project where our agency was contracted to design and deliver HTML, CSS and JavaScript to the client, I created a static site generator as a means of quickly prototyping web page layouts as static HTML files, while still being able to maintain all the features of the layout that we intended to deliver to the client, such as current classes on selected navigation items.</p>\n\n<p>The best way to deliver quality code to the client was to rely on a W3C standard for templating: XSLT. Rather than have to manually edit pages across the entire set of layouts, I was able to run a series of commands on the command line to generate the pages for the site. Because these commands rely on <code>xsltproc</code>, which is already available out of the box in any UNIX-based system, including Mac and Linux, it was a great way to use <a href=\"http://stephenbau.com/articles/preprocessors-for-html/\">HTML preprocessing</a> in our front end development process.</p>\n\n<h4>Preprocessors for HTML</h4>\n\n<p>The <a href=\"http://stephenbau.com/articles/preprocessors-for-html/\">Preprocessors for HTML</a> article describes the basic process of using <code>xsltproc</code> to transform XML data with XSLT stylesheets to output HTML.</p>\n\n<p>Most of my work has involved the development of static HTML prototypes to be integrated into custom web applications or content management systems. Manually developing the prototypes as static HTML is usually fine when I am dealing with a relatively small number of pages, but as the requirements of the application grows, it is usually necessary to abandon the static work on the HTML files and work directly within the application or CMS. This often involves a fair amount of overhead just to get a local development environment set up. And the design process often gets bogged down in the complexities of building and maintaining the system, rather than on the design process.</p>\n\n<p>As the page complexity increases and the number of pages increases, there is a point where maintaining a repository of static HTML files, in the midst of a design process, becomes impractical. But the requirements of this project demanded the delivery of static HTML files where the site had a very complex and deeply nested navigation structure. I needed to quickly find a solution to managing the HTML files in a way that our team could easily maintain without the overhead of installing a CMS.</p>\n\n<h4>XML and XSLT</h4>\n\n<p>The system that we are integrating with is a custom PHP-based solution built on XML and XSLT. So, it made sense to enable easy integration into the client CMS by building our templates with XML and XSLT.</p>\n\n<p>The solution I came up with has evolved over time, but I eventually came to pattern the file structure after what I am most familiar with, the XSLT-powered open source content management system,  <a href=\"http://getsymphony.com/\">Symphony CMS</a>.</p>\n\n<h4>Directory Structure</h4>\n\n<p>The main difference between the directory structure of the <a href=\"https://github.com/symphonycms/workspace\">Symphony workspace</a> and the XSLT static site generator is the addition of the <code>data</code> directory, which contains XML data used by all pages. Also, for static site generation, there is no need for any of the PHP files used by the system, so the only other directories needed are the <code>pages</code> and <code>utilities</code> directories.</p>\n\n<pre><code>site/\n├── index.xml\n├── workspace/\n│   ├── data/\n│   │   ├── navigation.xml\n│   ├── pages/\n│   │   ├── index.xsl\n│   ├── utilities/\n│   │   ├── master.xsl\n</code></pre>\n\n<h4>XML Data</h4>\n\n<p>When creating HTML output with XSLT, you always need to start with XML data. Extensible Stylesheet Language Templates are an extension of XML, Extensible Markup Language. With XSLT, you can output to any text-based format that you like, but it shines in its ability to transform any form of valid XML data into other forms of XML, such as XHTML.</p>\n\n<p>You don&#8217;t need much data to transform into output. You could start with something as simple as a single node.</p>\n\n<h4>data.xml</h4>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;data/&gt;\n</code></pre>\n\n<p>Then, use the simplest XSLT stylesheet.</p>\n\n<h4>hello.xsl</h4>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n  &lt;xsl:output method=\"text\"/&gt;\n  &lt;xsl:template match=\"/\"&gt;Hello&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>Run the following command in the same directory as these files and the output would be a simple text file with the word, <code>Hello</code>:</p>\n\n<pre><code>xsltproc -v -o hello.txt hello.xsl data.xml\n</code></pre>\n\n<h4>hello.txt</h4>\n\n<pre><code>Hello\n</code></pre>\n\n<h3>Static Site Generation Files</h3>\n\n<p>For the purposes of what I needed to accomplish, I only needed a small set of data to set specific properties.</p>\n\n<h4>index.xml</h4>\n\n<p>I create an XML file that will serve as the data source for page-specific parameters, such as page title, the URL handle for the current page, and how to navigate to the root directory relative to the current directory.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;?xml-stylesheet type=\"text/xsl\" href=\"workspace/pages/index.xsl\" ?&gt;\n&lt;!-- xsltproc -v -o index.html workspace/pages/index.xsl index.xml --&gt;\n&lt;data&gt;\n  &lt;params&gt;\n    &lt;website-name&gt;Site Name&lt;/website-name&gt;\n    &lt;page-title&gt;Home&lt;/page-title&gt;\n    &lt;current-page&gt;home&lt;/current-page&gt;\n    &lt;root&gt;./&lt;/root&gt;\n  &lt;/params&gt;\n&lt;/data&gt;\n</code></pre>\n\n<p>The file also includes the <code>xml-stylesheet</code> declaration that enables a browser to process HTML with the specified XSL file when pointing to the XML file.</p>\n\n<p>And, just in case you want to run the <code>xsltproc</code> command from within the same directory as the <code>index.html</code> file, there is a comment to store the command.</p>\n\n<h4>index.xsl</h4>\n\n<p>The XML file is transformed into HTML by XSLT stylesheets stored in the <code>workspace/pages</code> directory.</p>\n\n<p>A page template can start out very basic:</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:import href=\"../utilities/master.xsl\" /&gt;\n\n&lt;xsl:template match=\"data\"&gt;\n  &lt;h2&gt;&lt;xsl:value-of select=\"params/page-title\" /&gt;&lt;/h2&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>There&#8217;s not much going on in this template other than an <code>xsl:import</code> instruction and a match template to output an an <code>h2</code> element with the page title. The intention is that the page template will contain only page-specific content.</p>\n\n<p>The important thing to note in this file is that the match template is using an XPath expression as the value of the <code>match</code> attribute. This template matches the <code>data</code> node of the XML file. As the processor is navigating the XML tree, when it finds the data node, the XSLT creates output by following the instructions found in the <code>xsl:template</code> element.</p>\n\n<p>While the <code>data</code> node is the first node of the XML document, the root of the document precedes the first node. The root of the document is selected by the match template with a forward slash (<code>/</code>) as the value of the match attribute. We find this value in the imported <code>master.xsl</code> stylesheet.</p>\n\n<h4>master.xsl</h4>\n\n<p>The <code>index.xsl</code> page template imports the <code>master.xsl</code> stylesheet from the <code>workspace/utilities</code> directory.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:output method=\"xml\"\n  doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\"\n  doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n  omit-xml-declaration=\"yes\"\n  encoding=\"UTF-8\"\n  indent=\"yes\" /&gt;\n\n&lt;xsl:template match=\"/\"&gt;\n  &lt;html&gt;\n    &lt;head&gt;\n      &lt;title&gt;&lt;xsl:value-of select=\"data/params/website-name\" /&gt;&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n      &lt;h1&gt;&lt;xsl:value-of select=\"data/params/website-name\" /&gt;&lt;/h1&gt;\n      &lt;xsl:apply-templates /&gt;\n    &lt;/body&gt;\n  &lt;/html&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>The master template is being used to manage the structure of the page outside of the main content area.</p>\n\n<h4>HTML Output</h4>\n\n<p>If you view the XML file in a modern browser, you&#8217;ll see the generated HTML. If you view the source, you&#8217;ll probably see the original XML file. You can view the rendered source with browser developer tools.</p>\n\n<p>To actually render the HTML file and save the file to the directory, run this command inside the directory containing the <code>index.xml</code> file:</p>\n\n<pre><code>xsltproc -v -o index.html workspace/pages/index.xsl index.xml\n</code></pre>\n\n<p>The command will use the XSLT processor to process the <code>index.xml</code> file with the <code>workspace/pages/index.xsl</code> file and output to the <code>index.html</code> file. This is the command that is documented at the top of the XML file.</p>\n\n<h4>index.html</h4>\n\n<pre><code>&lt;!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"&gt;\n&lt;html xmlns=\"http://www.w3.org/1999/xhtml\"&gt;\n  &lt;head&gt;\n    &lt;meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /&gt;\n    &lt;title&gt;Site Name&lt;/title&gt;\n  &lt;/head&gt;\n  &lt;body&gt;\n    &lt;h1&gt;Site Name&lt;/h1&gt;\n    &lt;h2&gt;Home&lt;/h2&gt;\n  &lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n\n<p>Now, the directory structure should look like this:</p>\n\n<pre><code>site/\n├── index.html\n├── index.xml\n├── workspace/\n│   ├── pages/\n│   │   ├── index.xsl\n│   ├── utilities/\n│   │   ├── master.xsl\n</code></pre>\n\n<p>The <code>index.html</code> file was created by the XSLT processor. At this point, we don&#8217;t have more than a single page, so we haven&#8217;t considered data that is needed by all pages, so I haven&#8217;t included the <code>data</code> directory yet.</p>\n\n<h4>The Build File</h4>\n\n<p>We can set up a simple shell script that allows the ability to run the XSLT processing command with a simple command.</p>\n\n<p>Create a file called <code>build</code> in the root directory with the following contents:</p>\n\n<pre><code>#!/bin/bash\n\nxsltproc -v -o index.html workspace/pages/index.xsl index.xml;\n</code></pre>\n\n<p>I have added a semicolon to the end of the command so we can run multiple commands when we eventually add more pages to the list.</p>\n\n<p>Make sure the file has the correct permissions to be able to execute the script:</p>\n\n<pre><code>chmod 755 build\n</code></pre>\n\n<p>Then, simply call the shell script from the root directory.</p>\n\n<pre><code>./build\n</code></pre>\n\n<p>That&#8217;s the basic example. The actual templates are a little more complex. Let&#8217;s see if we can break it down into understandable pieces.</p>\n\n<h3>XSLT Templates</h3>\n\n<p>What makes XSLT really interesting is the ability to set variables and parameters, and the ability to set modes on templates and override templates. All of these things help to keep the process of building pages DRY (Don&#8217;t Repeat Yourself). So, let&#8217;s start by breaking down the page into manageable pieces, so we need only edit each part in one place.</p>\n\n<h4>master.xsl</h4>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"\n  xmlns:fb=\"http://ogp.me/ns/fb#\"&gt;\n\n&lt;xsl:import href=\"../utilities/head.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/body.xsl\" /&gt;\n\n&lt;xsl:output method=\"xml\"\n  doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\"\n  doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n  omit-xml-declaration=\"yes\"\n  encoding=\"UTF-8\"\n  indent=\"yes\" /&gt;\n\n&lt;!-- Page Parameters --&gt;\n&lt;xsl:param name=\"root\" select=\"/data/params/root\" /&gt;\n&lt;xsl:param name=\"website-name\" select=\"/data/params/website-name\" /&gt;\n&lt;xsl:param name=\"page-title\" select=\"/data/params/page-title\" /&gt;\n&lt;xsl:param name=\"current-page\" select=\"/data/params/current-page\" /&gt;\n&lt;xsl:param name=\"parent-page\" select=\"/data/params/parent-page\" /&gt;\n&lt;xsl:param name=\"root-page\"&gt;\n  &lt;xsl:choose&gt;\n    &lt;xsl:when test=\"/data/params/root-page\"&gt;\n      &lt;xsl:value-of select=\"/data/params/root-page\" /&gt;\n    &lt;/xsl:when&gt;\n    &lt;xsl:otherwise&gt;\n      &lt;xsl:value-of select=\"$current-page\" /&gt;\n    &lt;/xsl:otherwise&gt;\n  &lt;/xsl:choose&gt;\n&lt;/xsl:param&gt;\n&lt;xsl:param name=\"navigation\" select=\"document(\'../data/navigation.xml\')\" /&gt;\n&lt;xsl:param name=\"has-section-nav\" select=\"false()\" /&gt;\n\n&lt;!-- Directories --&gt;\n&lt;xsl:param name=\"css\" select=\"concat($root, \'_assets/stylesheets/css/\')\" /&gt;\n&lt;xsl:param name=\"scripts\" select=\"concat($root, \'_assets/scripts/\')\" /&gt;\n&lt;xsl:param name=\"images\" select=\"concat($root, \'_assets/images/\')\" /&gt;\n\n&lt;xsl:template match=\"/\"&gt;\n    &lt;xsl:comment&gt;&lt;![CDATA[[if lt IE 7]&gt; &lt;html class=\"ie ie6 lt-ie7 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"&gt; &lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n    &lt;xsl:comment&gt;&lt;![CDATA[[if IE 7]&gt;    &lt;html class=\"ie ie7 lt-ie8 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"&gt; &lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n    &lt;xsl:comment&gt;&lt;![CDATA[[if IE 8]&gt;    &lt;html class=\"ie ie8 lt-ie9 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"&gt; &lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n    &lt;xsl:comment&gt;&lt;![CDATA[[if IE 9]&gt;    &lt;html class=\"ie ie9 lt-ie10 no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"&gt; &lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n    &lt;xsl:comment&gt;&lt;![CDATA[[if gt IE 9]&gt;&lt;!]]&gt;&lt;/xsl:comment&gt;&lt;html class=\"no-js\" lang=\"en\" xmlns:fb=\"http://ogp.me/ns/fb#\"&gt;&lt;xsl:comment&gt;&lt;![CDATA[&lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n    &lt;xsl:apply-templates select=\".\" mode=\"head\" /&gt;\n    &lt;xsl:apply-templates select=\".\" mode=\"body\" /&gt;\n  &lt;/html&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>The master template is a single template that acts as the central station for managing all the page layouts of the site. All the elements that are consistent across the site design should be accounted for with this template, at least as a reference to other templates.</p>\n\n<p>The <code>xsl:stylesheet</code> element declares the XML namespace for the Facebook Open Graph Protocol. For the XSLT processor to run without errors, the XML namespaces used in the document must be properly declared.</p>\n\n<pre><code>xmlns:fb=\"http://ogp.me/ns/fb#\"\n</code></pre>\n\n<p>The <code>xsl:import</code> instructions include <code>href</code> attributes with values that point to the templates on which the master template depends. The child elements for any HTML document are the <code>head</code> and <code>body</code> elements. So, we create a separate template to be responsible for each element and its descendant elements and import these templates into the master template.</p>\n\n<ul>\n<li><code>head.xsl</code> </li>\n<li><code>body.xsl</code></li>\n</ul>\n\n<p>The <code>xsl:output</code> element sets the properties to be used to render the output of the XSL transformation.</p>\n\n<ul>\n<li>Format: XML</li>\n<li>Doctype: XHTML 1.0 Strict</li>\n<li>Document Type Declaration Schema URL: http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd</li>\n<li>Omit the XML declaration: yes</li>\n<li>Character encoding: UTF-8</li>\n<li>Code Indenting: yes</li>\n</ul>\n\n<p>In this case, the template collects data from the XML file in the form of page parameters</p>\n\n<ul>\n<li><code>$root</code></li>\n<li><code>$page-title</code></li>\n<li><code>$current-page</code></li>\n<li><code>$parent-page</code></li>\n<li><code>$root-page</code></li>\n<li><code>$navigation</code></li>\n<li><code>$has-section-nav</code></li>\n</ul>\n\n<p>There is also a set of parameters to render the paths to directories storing the site design assets:</p>\n\n<ul>\n<li><code>$css</code></li>\n<li><code>$scripts</code></li>\n<li><code>$images</code></li>\n</ul>\n\n<p>These paths will be output as relative URLs, with the <code>$root</code> rendered as a relative path.</p>\n\n<p>Finally, we come to the match template, which matches the root of the XML document. This is where the transformation begins. We would usually start with the root element of the HTML document, the <code>html</code> element. However, because we want to serve IE conditional comments, the template starts with <code>xsl:comment</code> instructions to render <code>CDATA</code> sections needed to render properly formatted HTML comments. The XSLT processor will ignore comments when processing the output, so comments must use the <code>xsl:comment</code> instruction to render the output.</p>\n\n<p>Within the conditional comment for the latest version of IE is the opening tag of the <code>html</code> element. Contained within the <code>html</code> element are two <code>xsl:apply-templates</code> instructions with <code>.</code> as the value of the <code>select</code> attribute with different values for the <code>mode</code> attribute. The dot is an XPath expression referring to the current node. This means that the XSLT processor will continue from this point by first finding templates with the same mode value that match the current node, that is, the root node (<code>/</code>).</p>\n\n<p>We&#8217;ll describe these two XSLT stylesheets next.</p>\n\n<h4>head.xsl</h4>\n\n<p>The <code>head</code> element contains the <code>meta</code>, <code>title</code>, <code>link</code> and <code>script</code> elements.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:import href=\"../utilities/js.xsl\" /&gt;\n\n&lt;xsl:template match=\"/\" mode=\"head\"&gt;\n  &lt;head&gt;\n    &lt;meta name=\"description\" content=\"{$website-name}\" /&gt;\n    &lt;meta name=\"author\" content=\"{$website-name}\" /&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" /&gt;\n    &lt;xsl:apply-templates mode=\"page-title\" /&gt;\n    &lt;xsl:apply-templates mode=\"css\" /&gt;\n    &lt;xsl:apply-templates mode=\"js\" /&gt;\n  &lt;/head&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template match=\"data\" mode=\"page-title\"&gt;\n  &lt;title&gt;\n    &lt;xsl:value-of select=\"$page-title\" /&gt;\n    &lt;xsl:text&gt; | &lt;/xsl:text&gt;\n    &lt;xsl:value-of select=\"$website-name\"/&gt;\n  &lt;/title&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template match=\"data\" mode=\"css\"&gt;\n    &lt;link rel=\"stylesheet\" href=\"{$css}screen.css\" /&gt;\n  &lt;xsl:comment&gt;&lt;![CDATA[[if IE]&gt; &lt;link href=\"]]&gt;&lt;xsl:value-of select=\"$css\" /&gt;&lt;![CDATA[ie.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" /&gt; &lt;![endif]]]&gt;&lt;/xsl:comment&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>At the top of the file, the <code>xsl:import</code> instruction refers to the <code>js.xsl</code> stylesheet, containing instructions for handling the <code>script</code> elements for JavaScript files.</p>\n\n<p>This XSLT stylesheet contains three templates. The first template is the match template with a <code>mode</code> attribute value of <code>head</code> that matches the root element (<code>/</code>). This is the next step for the XSLT processor after processing the <code>master.xsl</code> stylesheet.</p>\n\n<p>Using the mode allows the ability to use the <code>xsl:apply-templates</code> instruction without needing to traverse further down the XML tree structure before adding more structure and processing additional instructions to render the desired output.</p>\n\n<p>The three <code>xsl:apply-templates</code> instructions inside the <code>head</code> match template do not have <code>select</code> attributes. These templates will be processed on matching the next node in the XML tree structure, which is the <code>data</code> node. These templates have been set to output the <code>title</code>, <code>link</code> and <code>script</code> elements, using the <code>page-title</code>, <code>css</code> and <code>js</code> modes, respectively.</p>\n\n<p>The second template is the match template with a mode of <code>page-title</code>. This template matches the <code>data</code> node of the XML. The parameters <code>$page-title</code> and <code>$website-name</code> that were declared in the <code>master.xsl</code> template are output by the <code>xsl:value-of</code> instructions.</p>\n\n<h4>body.xsl</h4>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:import href=\"../utilities/global-nav.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/header.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/sub-nav.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/footer.xsl\" /&gt;\n\n&lt;xsl:template match=\"/\" mode=\"body\"&gt;\n  &lt;body class=\"section-{$root-page}\"&gt;\n    &lt;xsl:if test=\"$current-page = \'home\'\"&gt;\n      &lt;xsl:attribute name=\"id\"&gt;home-page&lt;/xsl:attribute&gt;\n    &lt;/xsl:if&gt;\n    &lt;div class=\"page\" id=\"{$current-page}-page\"&gt;\n      &lt;xsl:call-template name=\"global-nav\" /&gt;\n      &lt;xsl:call-template name=\"header\" /&gt;\n      &lt;xsl:apply-templates /&gt;\n      &lt;xsl:call-template name=\"sub-nav\" /&gt;\n      &lt;xsl:call-template name=\"footer\" /&gt;\n    &lt;/div&gt;\n  &lt;/body&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>The match template for the <code>body</code> element sets the <code>class</code> on the body element and an <code>id</code> attribute on the <code>div</code> element that serves as the container for the rest of the page structure.</p>\n\n<p>The <code>xsl:call-template</code> instructions refer to the named templates contained by the stylesheets imported at the beginning of the <code>body.xsl</code> stylesheet. These stylesheets contain templates to manage the following pieces of the page layout:</p>\n\n<ul>\n<li>global navigation</li>\n<li>header</li>\n<li>subnavigation</li>\n<li>footer</li>\n</ul>\n\n<p>In the middle of these <code>xsl:call-template</code> instructions is another <code>xsl:apply-templates</code> instruction that has no <code>select</code> or <code>mode</code> attributes. The XSLT processor will continue traversing the XML document, matching elements to templates to process the remaining instructions. Here is where the main content area of the page is built.</p>\n\n<h4>index.xsl</h4>\n\n<p>On very complex pages, such as the home page, the structure of the page is further broken down into the pieces that build up this page.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\"\n  xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:import href=\"../utilities/master.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/notifications.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/main.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/overview.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/supplementary.xsl\" /&gt;\n&lt;xsl:import href=\"../utilities/secondary.xsl\" /&gt;\n\n&lt;xsl:param name=\"notifications\" select=\"true()\" /&gt;\n\n&lt;xsl:template match=\"data\"&gt;\n  &lt;xsl:if test=\"$notifications\"&gt;\n    &lt;xsl:call-template name=\"notifications\" /&gt;\n  &lt;/xsl:if&gt;\n  &lt;xsl:call-template name=\"main\" /&gt;\n  &lt;xsl:call-template name=\"overview\" /&gt;\n  &lt;xsl:call-template name=\"supplementary\" /&gt;\n  &lt;xsl:call-template name=\"secondary\" /&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>Each HTML page is built by processing many different templates that can be modified in one place. By building each page on these same templates, changes can be reflected across the entire set of HTML pages by running a <code>build</code> script that maintains a record of all the <code>xsltproc</code> commands to process each HTML file.</p>\n\n<p>The file structure currently looks something like this, although I have modified the page structure to be more generic, simpler and not quite as deeply nested:</p>\n\n<pre><code>site/\n├──_assets\n├──build\n│   ├── images/\n│   ├── scripts/\n│   ├── stylesheets/\n│   │   ├── css/\n│   │   ├── sass/\n│   ├── about/\n│   │   ├── index.html\n│   │   ├── index.xml\n│   ├── contact/\n│   │   ├── index.html\n│   │   ├── index.xml\n├── index.html\n├── index.xml\n│   ├── products/\n│   │   ├── index.html\n│   │   ├── index.xml\n│   ├── services/\n│   │   ├── index.html\n│   │   ├── index.xml\n├── workspace/\n│   ├── data/\n│   │   ├── navigation.xml\n│   ├── pages/\n│   │   ├── index.xsl\n│   │   ├── about.xsl\n│   │   ├── contact.xsl\n│   │   ├── products.xsl\n│   │   ├── services.xsl\n│   ├── utilities/\n│   │   ├── body.xsl\n│   │   ├── footer.xsl\n│   │   ├── global-nav.xsl\n│   │   ├── head.xsl\n│   │   ├── header.xsl\n│   │   ├── js.xsl\n│   │   ├── main.xsl\n│   │   ├── master.xsl\n│   │   ├── notifications.xsl\n│   │   ├── overview.xsl\n│   │   ├── page-title.xsl\n│   │   ├── secondary.xsl\n│   │   ├── section-navigation.xsl\n│   │   ├── sub-nav.xsl\n│   │   ├── supplementary.xsl\n</code></pre>\n\n<h4>Modifying the Build File</h4>\n\n<p>As more pages are added to the site, the instructions for processing each XML file to output the HTML should be added to the <code>build</code> script. With the site structure described above, the <code>build</code> file would look something more like this:</p>\n\n<pre><code>#!/bin/bash\n# These commands will process HTML files with XSLT when you run \"./build\" from the root of your site directory.\n# Modify this list as you add more pages to the site.\n\nxsltproc -v -o index.html workspace/pages/index.xsl index.xml;\nxsltproc -v -o about/index.html workspace/pages/about.xsl about/index.xml;\nxsltproc -v -o contact/index.html workspace/pages/contact.xsl about/contact.xml;\nxsltproc -v -o products/index.html workspace/pages/products.xsl about/products.xml;\nxsltproc -v -o services/index.html workspace/pages/services.xsl about/services.xml;\n</code></pre>\n\n<p>Again, it requires just a simple command to process all HTML files:</p>\n\n<pre><code>./build\n</code></pre>\n\n<h4>Automating the Process</h4>\n\n<p>Theoretically, it wouldn&#8217;t take much to automate the process, so that, similar to the common set up for compiling SASS files, watched folders could be set up for the directories containing the XSL files. If XSL files are modified, all the HTML files could be processed. But, the likelihood for XSLT processing errors would likely increase, so it probably makes more sense for the <code>build</code> script to be run on demand rather than automatically.</p>\n\n<p>I will typically run the XSLT processor one file at a time, so I can trace errors and ensure the output is working as expected before processing all files.</p>\n\n<h4>Modular Site Development</h4>\n\n<p>While I haven&#8217;t spent time on the exact code used to build the content of the site, I have focused the attention of this article primarily on how to build the basic framework of a flexible and modular templating system for a static site generator.</p>\n\n<p>There are specific issues involving setting the XML data for each page and how to write the templates to set the current class on navigation items. This may best be demonstrated through working examples. However, I first wanted to walk through the overall structure before delving deeper into the details of specific templates.</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 18, 'Apple, Adobe, Facebook, Google, HP, Microsoft, Mozilla, Nokia, and Opera have joined the W3C to launch a new website called [WebPlatform](http://www.webplatform.org/) with the goal of document the technology standards that form the foundation of the web. Patterned after Wikipedia, the new site is hoping to become a single, developer community-driven resource for documentation, specification and API references, tutorials and discussions about web technologies.\r\n\r\n> We are an open community of developers building resources for a better web, regardless of brand, browser or platform. Anyone can contribute and each person who does makes us stronger. Together we can continue to drive innovation on the Web to serve the greater good. It starts here, with you.\r\n\r\nThe first thing that I noticed, as a Web standards proponent, was the missing pages for XML and XSLT. Have these technologies fallen so far out of favour that they don\'t deserve a mention on a site intended to document Web standards?\r\n\r\n[Ian Young](http://getsymphony.com/get-involved/member/ijy/) also commented on the missed opportunity to [use WebPlatform to build a common reference for XSLT](http://getsymphony.com/discuss/thread/93980/).\r\n\r\n[Craig Zheng](http://getsymphony.com/get-involved/member/czheng/) was [writing a book](http://book.symphony-cms.com/) to document what was to become Symphony 3.0. The project has since been cancelled, but Craig was very generous to donate the XSLT Chapter of the book to me when I suggested writing a more generalized version of the same book, [XSLT for Designers](http://xsltfordesigners.com/). I recently revived this blog to write articles that may eventually be compiled into such a book. The reason for my writing is to address the mistaken notion that XML and XSLT are languages that are long past their prime and are being phased out by the larger players, such as Twitter, with [version 1.1 of the Twitter API](https://dev.twitter.com/blog/current-status-api-v1.1), who [announced changes to the API](https://dev.twitter.com/blog/changes-coming-to-twitter-api) including the end of XML flavours of their feeds in favour of JSON.\r\n\r\nI also agree with Ian Young that a common XSLT resource would be a huge benefit to the spread of an idea that is not common: using XSLT as a standards-based templating language for building websites. So, I am adapting the XSLT Chapter that Craig Zheng wrote to begin the documentation effort for [XSLT on WebPlatform](http://docs.webplatform.org/wiki/xslt): [Understanding XSLT](http://stephenbau.com/articles/understanding-xslt/).', '<p>Apple, Adobe, Facebook, Google, HP, Microsoft, Mozilla, Nokia, and Opera have joined the W3C to launch a new website called <a href=\"http://www.webplatform.org/\">WebPlatform</a> with the goal of document the technology standards that form the foundation of the web. Patterned after Wikipedia, the new site is hoping to become a single, developer community-driven resource for documentation, specification and API references, tutorials and discussions about web technologies.</p>\n\n<blockquote>\n  <p>We are an open community of developers building resources for a better web, regardless of brand, browser or platform. Anyone can contribute and each person who does makes us stronger. Together we can continue to drive innovation on the Web to serve the greater good. It starts here, with you.</p>\n</blockquote>\n\n<p>The first thing that I noticed, as a Web standards proponent, was the missing pages for XML and XSLT. Have these technologies fallen so far out of favour that they don&#8217;t deserve a mention on a site intended to document Web standards?</p>\n\n<p><a href=\"http://getsymphony.com/get-involved/member/ijy/\">Ian Young</a> also commented on the missed opportunity to <a href=\"http://getsymphony.com/discuss/thread/93980/\">use WebPlatform to build a common reference for XSLT</a>.</p>\n\n<p><a href=\"http://getsymphony.com/get-involved/member/czheng/\">Craig Zheng</a> was <a href=\"http://book.symphony-cms.com/\">writing a book</a> to document what was to become Symphony 3.0. The project has since been cancelled, but Craig was very generous to donate the XSLT Chapter of the book to me when I suggested writing a more generalized version of the same book, <a href=\"http://xsltfordesigners.com/\">XSLT for Designers</a>. I recently revived this blog to write articles that may eventually be compiled into such a book. The reason for my writing is to address the mistaken notion that XML and XSLT are languages that are long past their prime and are being phased out by the larger players, such as Twitter, with <a href=\"https://dev.twitter.com/blog/current-status-api-v1.1\">version 1.1 of the Twitter API</a>, who <a href=\"https://dev.twitter.com/blog/changes-coming-to-twitter-api\">announced changes to the API</a> including the end of XML flavours of their feeds in favour of JSON.</p>\n\n<p>I also agree with Ian Young that a common XSLT resource would be a huge benefit to the spread of an idea that is not common: using XSLT as a standards-based templating language for building websites. So, I am adapting the XSLT Chapter that Craig Zheng wrote to begin the documentation effort for <a href=\"http://docs.webplatform.org/wiki/xslt\">XSLT on WebPlatform</a>: <a href=\"http://stephenbau.com/articles/understanding-xslt/\">Understanding XSLT</a>.</p>\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 19, 'XSL Transformations (XSLT) is a markup language for transforming XML into other forms of output, such as XML documents, HTML and many other text-based formats. The [World Wide Web Consortium](http://www.w3.org) maintains the [XSLT standard](http://www.w3.org/TR/xslt).\r\n\r\n#### Background\r\n\r\nXSLT is the keystone in a trio of languages developed to transform and format XML. Collectively, those languages are known as XSL, or Extensible Stylesheet Language.\r\nEach member of the XSL family has a specific role:\r\n\r\n* XSLT, or XSL Transformations, is used to transform XML data into other kinds of output.\r\n* XPath, or XML Path Language, is used to identify nodes in an XML document for transformation or formatting.\r\n* XSL-FO, or XSL Formatting Objects, is a presentational language used for formatting XML data, usually for print.\r\n\r\n[XSLT 1.0](http://www.w3.org/TR/1999/REC-xslt-19991116) became an official recommendation in 1999. [XSLT 2.0](http://www.w3.org/TR/2007/REC-xslt20-20070123/) became an official recommendation in 2007. The latest [XSLT 3.0 Working Draft](http://www.w3.org/TR/2012/WD-xslt-30-20120710/) was released 10 July 2012.\r\n\r\n#### XSLT as a Standards-Based Templating Language\r\n\r\nThough the usage of XSLT as a web templating language is not commonplace, there are a lot of factors that make it ideal for this purpose.\r\n\r\n* It’s an XML technology. This means native handling of every web feed, every XHTML page, every RDF format, and nearly every API that exists on the web.\r\n* It’s an open standard. Maintained by the world’s web standards body (W3C), XSLT is widely-used, widely-supported, and well-documented. You won’t have trouble finding resources or getting answers, and once you’ve learned XSLT it can be helpful anywhere XML is used (which is pretty much everywhere).\r\n* It’s content-driven. Everything you output is directly tied to the data you need to present, meaning your presentation can always be lean and semantic.\r\n* It’s rule-based. Rules are much more powerful than mixtures of markup and procedural code. They are distinct and self-contained, but can also have complex relationships and interdependencies.\r\n* It’s flexible. XSLT can output nearly any text-based format there is, even ones that haven’t been invented yet.\r\n* It’s a complete templating language. With XSLT you can craft an organized, coherent presentation system rather than cobbling pages together out of snippets and tags using scripting languages.\r\n\r\nXSLT defines sets of instructions that are used to transform source XML and create some kind of output.\r\nA processor starts with some XML content, and as it parses that content, it uses instructions from an XSLT stylesheet to generate some other sort of output.\r\n\r\nMany common programming languages are imperative—they issue commands, one after the other. XSLT, on the other hand, is a declarative language. Instead of issuing commands, it simply states what should be done in a given context. It’s rather similar to CSS in that way. Neither language describes a sequence of events or functions. They just say, \"When you come across this element, this is how you should style/transform it.”\r\n\r\nTemplating with this kind of rule-based language takes a different sort of mindset, but it’s actually a much more powerful and flexible approach. A list of commands can only be followed, but rules can have scope and interdependencies, they can cascade, and they can override one another.\r\n\r\n[A work in progress on WebPlatform](http://docs.webplatform.org/wiki/xslt)', '<p>XSL Transformations (XSLT) is a markup language for transforming XML into other forms of output, such as XML documents, HTML and many other text-based formats. The <a href=\"http://www.w3.org\">World Wide Web Consortium</a> maintains the <a href=\"http://www.w3.org/TR/xslt\">XSLT standard</a>.</p>\n\n<h4>Background</h4>\n\n<p>XSLT is the keystone in a trio of languages developed to transform and format XML. Collectively, those languages are known as XSL, or Extensible Stylesheet Language.\nEach member of the XSL family has a specific role:</p>\n\n<ul>\n<li>XSLT, or XSL Transformations, is used to transform XML data into other kinds of output.</li>\n<li>XPath, or XML Path Language, is used to identify nodes in an XML document for transformation or formatting.</li>\n<li>XSL-FO, or XSL Formatting Objects, is a presentational language used for formatting XML data, usually for print.</li>\n</ul>\n\n<p><a href=\"http://www.w3.org/TR/1999/REC-xslt-19991116\">XSLT 1.0</a> became an official recommendation in 1999. <a href=\"http://www.w3.org/TR/2007/REC-xslt20-20070123/\">XSLT 2.0</a> became an official recommendation in 2007. The latest <a href=\"http://www.w3.org/TR/2012/WD-xslt-30-20120710/\">XSLT 3.0 Working Draft</a> was released 10 July 2012.</p>\n\n<h4>XSLT as a Standards-Based Templating Language</h4>\n\n<p>Though the usage of XSLT as a web templating language is not commonplace, there are a lot of factors that make it ideal for this purpose.</p>\n\n<ul>\n<li>It’s an XML technology. This means native handling of every web feed, every XHTML page, every RDF format, and nearly every API that exists on the web.</li>\n<li>It’s an open standard. Maintained by the world’s web standards body (W3C), XSLT is widely-used, widely-supported, and well-documented. You won’t have trouble finding resources or getting answers, and once you’ve learned XSLT it can be helpful anywhere XML is used (which is pretty much everywhere).</li>\n<li>It’s content-driven. Everything you output is directly tied to the data you need to present, meaning your presentation can always be lean and semantic.</li>\n<li>It’s rule-based. Rules are much more powerful than mixtures of markup and procedural code. They are distinct and self-contained, but can also have complex relationships and interdependencies.</li>\n<li>It’s flexible. XSLT can output nearly any text-based format there is, even ones that haven’t been invented yet.</li>\n<li>It’s a complete templating language. With XSLT you can craft an organized, coherent presentation system rather than cobbling pages together out of snippets and tags using scripting languages.</li>\n</ul>\n\n<p>XSLT defines sets of instructions that are used to transform source XML and create some kind of output.\nA processor starts with some XML content, and as it parses that content, it uses instructions from an XSLT stylesheet to generate some other sort of output.</p>\n\n<p>Many common programming languages are imperative—they issue commands, one after the other. XSLT, on the other hand, is a declarative language. Instead of issuing commands, it simply states what should be done in a given context. It’s rather similar to CSS in that way. Neither language describes a sequence of events or functions. They just say, &#8220;When you come across this element, this is how you should style/transform it.”</p>\n\n<p>Templating with this kind of rule-based language takes a different sort of mindset, but it’s actually a much more powerful and flexible approach. A list of commands can only be followed, but rules can have scope and interdependencies, they can cascade, and they can override one another.</p>\n\n<p><a href=\"http://docs.webplatform.org/wiki/xslt\">A work in progress on WebPlatform</a></p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_24` ***
INSERT INTO`tbl_entries_data_24` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 1, 'stephen_avatar-5e7cf3b48c28c.jpg', 124601, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2020-03-26T11:25:56-07:00\";s:5:\"width\";i:514;s:6:\"height\";i:514;}');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 1, '[Writer](https://stephenbau.com/), [Designer](https://bauhouse.ca/), [Mentor](http://share.trydesignlab.com/bau). [Symphony](http://getsymphony.com/) and XSLT enthusiast. Exploring how we imagine, design, and build the future together.', '<p><a href=\"https://stephenbau.com/\">Writer</a>, <a href=\"https://bauhouse.ca/\">Designer</a>, <a href=\"http://share.trydesignlab.com/bau\">Mentor</a>. <a href=\"http://getsymphony.com/\">Symphony</a> and XSLT enthusiast. Exploring how we imagine, design, and build the future together.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 1, 'I bring human-centred design thinking to create engaging experiences through brand design, web development, and digital product design.\r\n\r\nI have been working as a designer since 1988. Since the early 2000s, I have been responsible for assessing and choosing technologies, setting up servers, gathering content inventories, developing content strategies, building information architecture, creating wireframes, high-fidelity mockups, interactive prototypes, setting up version control for development and production repositories, and deploying finished websites. I have worked as a freelance designer, as an in-house designer for a non-profit organization, as a member of design studio and web agency teams, and as a business owner collaborating with other independent contractors.\r\n\r\nI also have a particular interest in the Bauhaus, not only because the school is credited as the inspiration for clean, modern design, but also because they were committed to building a community to make a difference in the world. Their approach to modern life focused on a synthesis of art and technology, where an understanding of materials and production methods was essential to the creative process. I approach design and development with a similar philosophy of developing an understanding of technology and how people interact with various media in order to best create designs that effectively meet the needs of these users and audiences.\r\n\r\nMy experience as a designer includes various aspects of the design and development process, from a firm grasp of design and typographic principles, to brand design, art direction, content strategy, information architecture, user experience design, wireframing, mockups, prototyping, templating, XML, XSLT, HTML, CSS, JavaScript, PHP, Rails, Node, web typography and webfonts, front end development frameworks, tools and preprocessors, version control (Git), data modeling, design integration with applications and content management systems, and user testing.', '<p>I bring human-centred design thinking to create engaging experiences through brand design, web development, and digital product design.</p>\n\n<p>I have been working as a designer since 1988. Since the early 2000s, I have been responsible for assessing and choosing technologies, setting up servers, gathering content inventories, developing content strategies, building information architecture, creating wireframes, high-fidelity mockups, interactive prototypes, setting up version control for development and production repositories, and deploying finished websites. I have worked as a freelance designer, as an in-house designer for a non-profit organization, as a member of design studio and web agency teams, and as a business owner collaborating with other independent contractors.</p>\n\n<p>I also have a particular interest in the Bauhaus, not only because the school is credited as the inspiration for clean, modern design, but also because they were committed to building a community to make a difference in the world. Their approach to modern life focused on a synthesis of art and technology, where an understanding of materials and production methods was essential to the creative process. I approach design and development with a similar philosophy of developing an understanding of technology and how people interact with various media in order to best create designs that effectively meet the needs of these users and audiences.</p>\n\n<p>My experience as a designer includes various aspects of the design and development process, from a firm grasp of design and typographic principles, to brand design, art direction, content strategy, information architecture, user experience design, wireframing, mockups, prototyping, templating, XML, XSLT, HTML, CSS, JavaScript, PHP, Rails, Node, web typography and webfonts, front end development frameworks, tools and preprocessors, version control (Git), data modeling, design integration with applications and content management systems, and user testing.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_27` ***
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 2, 'blog', 'Blog');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 3, 'twitter', 'Twitter');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 4, 'flickr', 'Flickr');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 5, 'linkedin', 'LinkedIn');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 6, 'github', 'GitHub');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'portfolio', 'Portfolio');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 8, 'behance', 'Behance');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 2, 'http-stephenbau-com', 'http://stephenbau.com/');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 3, 'http-www-twitter-com-bauhouse', 'http://www.twitter.com/bauhouse');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 4, 'https-www-flickr-com-photos-bauhouse', 'https://www.flickr.com/photos/bauhouse');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 5, 'https-www-linkedin-com-in-bauhouse', 'https://www.linkedin.com/in/bauhouse/');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 6, 'https-github-com-bauhouse', 'https://github.com/bauhouse/');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'https-bauhouse-ca', 'https://bauhouse.ca');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 8, 'https-www-behance-net-stephenbau', 'https://www.behance.net/stephenbau');

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (3, 17, 'yes');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (2, 18, 'yes');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`) VALUES (4, 19, 'yes');

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 1, 'builders-collective', 'Builders Collective');

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'https-builderscollective-com', 'https://builderscollective.com/');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `date`) VALUES (3, 17, '2012-10-14T22:51:00-07:00', '2012-10-15 05:51:00');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `date`) VALUES (2, 18, '2012-10-20T11:51:00-07:00', '2012-10-20 18:51:00');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `value`, `date`) VALUES (4, 19, '2012-10-20T12:30:00-07:00', '2012-10-20 19:30:00');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (3, 17, 'no');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (2, 18, 'no');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (4, 19, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 17, 'xslt', 'XSLT');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 17, 'html', 'HTML');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 18, 'xslt', 'XSLT');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 19, 'xslt', 'XSLT');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 9, 'applications', 'Applications');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 10, 'design', 'Design');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 11, 'development', 'Development');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 12, 'life', 'Life');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 13, 'projects', 'Projects');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 14, 'scripts', 'Scripts');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 15, 'travel', 'Travel');
INSERT INTO`tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 16, 'workflow', 'Workflow');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 12, 'Time and opportunity, actions and responses', '<p>Time and opportunity, actions and responses</p>\n');

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
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 6, 1, 1, '2020-03-26 11:25:56', '2020-03-26 18:25:56', '2020-03-26 12:55:15', '2020-03-26 19:55:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 7, 1, 1, '2020-03-26 11:43:09', '2020-03-26 18:43:09', '2020-03-26 11:50:07', '2020-03-26 18:50:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 7, 1, 1, '2020-03-26 11:50:35', '2020-03-26 18:50:35', '2020-03-26 11:50:35', '2020-03-26 18:50:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 7, 1, 1, '2020-03-26 11:50:54', '2020-03-26 18:50:54', '2020-03-26 11:50:54', '2020-03-26 18:50:54');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 7, 1, 1, '2020-03-26 11:51:36', '2020-03-26 18:51:36', '2020-03-26 11:51:36', '2020-03-26 18:51:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 7, 1, 1, '2020-03-26 11:52:09', '2020-03-26 18:52:09', '2020-03-26 11:52:09', '2020-03-26 18:52:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 7, 1, 1, '2020-03-26 11:52:48', '2020-03-26 18:52:48', '2020-03-26 11:52:48', '2020-03-26 18:52:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 7, 1, 1, '2020-03-26 11:53:12', '2020-03-26 18:53:12', '2020-03-26 11:53:12', '2020-03-26 18:53:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 2, 1, 1, '2020-03-26 12:18:15', '2020-03-26 19:18:15', '2020-03-26 12:18:15', '2020-03-26 19:18:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 2, 1, 1, '2020-03-26 12:18:26', '2020-03-26 19:18:26', '2020-03-26 12:18:26', '2020-03-26 19:18:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 2, 1, 1, '2020-03-26 12:18:34', '2020-03-26 19:18:34', '2020-03-26 12:18:34', '2020-03-26 19:18:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 2, 1, 1, '2020-03-26 12:18:48', '2020-03-26 19:18:48', '2020-03-26 12:18:48', '2020-03-26 19:18:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 2, 1, 1, '2020-03-26 12:18:59', '2020-03-26 19:18:59', '2020-03-26 12:18:59', '2020-03-26 19:18:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 2, 1, 1, '2020-03-26 12:19:07', '2020-03-26 19:19:07', '2020-03-26 12:19:07', '2020-03-26 19:19:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 2, 1, 1, '2020-03-26 12:19:13', '2020-03-26 19:19:13', '2020-03-26 12:19:13', '2020-03-26 19:19:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 2, 1, 1, '2020-03-26 12:19:22', '2020-03-26 19:19:22', '2020-03-26 12:19:22', '2020-03-26 19:19:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 1, 1, 1, '2020-03-26 12:22:34', '2020-03-26 19:22:34', '2020-03-26 12:38:32', '2020-03-26 19:38:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 1, 1, 1, '2020-03-26 12:31:38', '2020-03-26 19:31:38', '2020-03-26 12:31:38', '2020-03-26 19:31:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (19, 1, 1, 1, '2020-03-26 12:39:53', '2020-03-26 19:39:53', '2020-03-26 12:39:53', '2020-03-26 19:39:53');

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
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Manage Images', 'manage-images', 'checkbox', 1, 'no', 4, 'sidebar', 'yes');
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
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Article Images', 'article-images', 'selectbox_link', 1, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Name', 'name', 'input', 5, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Email', 'email', 'input', 5, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Subject', 'subject', 'input', 5, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Date', 'date', 'date', 5, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Message', 'message', 'textarea', 5, 'no', 4, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Photo', 'photo', 'uniqueupload', 6, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Summary', 'summary', 'textarea', 6, 'yes', 3, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Bio', 'bio', 'textarea', 6, 'yes', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Title', 'title', 'input', 7, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Link', 'link', 'input', 7, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Name', 'name', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Link', 'link', 'input', 6, 'no', 1, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'about_me,categories,homepage_articles,logged_in_author,navigation,tags,website_owner,elsewhere', NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Articles', 'articles', NULL, 'entry/cat', 'about_me,article,categories,comments,logged_in_author,navigation,tags,website_owner,elsewhere', NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Archive', 'archive', NULL, 'year', 'archive,categories,logged_in_author,navigation,tags,website_owner', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'Categories', 'category', 'archive', 'category', 'about_me,all_categories,archive_listing,categories,logged_in_author,navigation,tags,website_owner', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, 3, 'Tag', 'tag', 'archive', 'tag', 'about_me,archive_listing,categories,logged_in_author,navigation,tags,website_owner', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'About', 'about', NULL, NULL, 'about_me,logged_in_author,navigation,website_owner,elsewhere', 'save_message', 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'RSS', 'rss', NULL, NULL, 'rss_articles', NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Drafts', 'drafts', NULL, 'entry/cat', 'about_me,categories,drafts,logged_in_author,navigation,tags,website_owner,elsewhere', 'publish_article', 8);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Maintenance', 'maintenance', NULL, NULL, 'logged_in_author,navigation,website_owner', NULL, 9);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'Forbidden', 'forbidden', NULL, NULL, 'navigation,website_owner', NULL, 10);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, 'logged_in_author,navigation,website_owner', NULL, 11);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (34, 1, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (36, 2, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (35, 1, 'index');
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
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (1, 'Articles', 'articles', 1, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:21:02', '2020-03-26 15:21:02', '2020-03-26 12:22:14', '2020-03-26 19:22:14');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 'Categories', 'categories', 2, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:23:33', '2020-03-26 15:23:33', '2020-03-26 08:23:33', '2020-03-26 15:23:33');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 'Comments', 'comments', 3, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:28:44', '2020-03-26 15:28:44', '2020-03-26 08:28:44', '2020-03-26 15:28:44');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 'Images', 'images', 4, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:54:10', '2020-03-26 15:54:10', '2020-03-26 08:54:10', '2020-03-26 15:54:10');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 'Messages', 'messages', 5, 'no', 'no', 'Content', 1, 1, '2020-03-26 08:58:24', '2020-03-26 15:58:24', '2020-03-26 08:58:24', '2020-03-26 15:58:24');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 'About', 'about', 6, 'no', 'no', 'About', 1, 1, '2020-03-26 09:07:14', '2020-03-26 16:07:14', '2020-03-26 12:49:31', '2020-03-26 19:49:31');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 'Elsewhere', 'elsewhere', 7, 'no', 'no', 'About', 1, 1, '2020-03-26 09:12:22', '2020-03-26 16:12:22', '2020-03-26 09:37:34', '2020-03-26 16:37:34');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (1, 1, 1, 3, 13, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (11, 2, 7, 1, 15, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (10, 4, 16, 1, 18, 'no', NULL, NULL);
