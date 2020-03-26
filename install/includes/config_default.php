<?php
	$settings = array(


        ###### ADMIN ######
        'admin' => array(
            'max_upload_size' => '5242880',
            'upload_blacklist' => '/\\.(?:php[34567s]?|phtml)$/i',
        ),
        ########


        ###### SYMPHONY ######
        'symphony' => array(
            'admin-path' => 'symphony',
            'pagination_maximum_rows' => '20',
            'association_maximum_rows' => '5',
            'lang' => 'en',
            'pages_table_nest_children' => 'no',
            'version' => '2.7.10',
            'cookie_prefix' => 'sym-',
            'session_gc_divisor' => '10',
            'cell_truncation_length' => '75',
            'enable_xsrf' => 'yes',
            'error_reporting_all' => 'no',
        ),
        ########


        ###### LOG ######
        'log' => array(
            'archive' => '1',
            'maxsize' => '102400',
            'filter' => 24575,
        ),
        ########


        ###### DATABASE ######
        'database' => array(
            'host' => 'localhost',
            'port' => '3306',
            'user' => null,
            'password' => null,
            'db' => null,
            'tbl_prefix' => 'sym_',
            'query_caching' => 'on',
            'query_logging' => 'on',
        ),
        ########


        ###### PUBLIC ######
        'public' => array(
            'display_event_xml_in_source' => 'no',
        ),
        ########


        ###### GENERAL ######
        'general' => array(
            'sitename' => 'The Lab',
            'useragent' => 'Symphony/2.7.10',
        ),
        ########


        ###### FILE ######
        'file' => array(
            'write_mode' => '0644',
        ),
        ########


        ###### DIRECTORY ######
        'directory' => array(
            'write_mode' => '0755',
        ),
        ########


        ###### REGION ######
        'region' => array(
            'time_format' => 'g:i a',
            'date_format' => 'd F Y',
            'datetime_separator' => ' ',
            'timezone' => 'America/Vancouver',
        ),
        ########


        ###### CACHE_DRIVER ######
        'cache_driver' => array(
            'default' => 'database',
        ),
        ########


        ###### MAINTENANCE_MODE ######
        'maintenance_mode' => array(
            'enabled' => 'no',
        ),
        ########


        ###### IMAGE ######
        'image' => array(
            'cache' => '1',
            'quality' => '90',
        ),
        ########


        ###### REMOTE_DATASOURCE ######
        'remote_datasource' => array(
            'csv-delimiter' => ',',
            'csv-enclosure' => '"',
            'csv-escape' => '\\',
        ),
        ########
    );
