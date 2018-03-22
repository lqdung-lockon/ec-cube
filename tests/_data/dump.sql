CREATE TABLE IF NOT EXISTS `dtb_authority_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authority_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `deny_url` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4A1F70B181EC865B` (`authority_id`),
  KEY `IDX_4A1F70B161220EA6` (`creator_id`),
  CONSTRAINT `FK_4A1F70B161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4A1F70B181EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_authority_role: ~0 rows (approximately)
DELETE FROM `dtb_authority_role`;
/*!40000 ALTER TABLE `dtb_authority_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_authority_role` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_base_info
CREATE TABLE IF NOT EXISTS `dtb_base_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_kana` varchar(255) DEFAULT NULL,
  `zip01` varchar(3) DEFAULT NULL,
  `zip02` varchar(4) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `tel01` varchar(5) DEFAULT NULL,
  `tel02` varchar(4) DEFAULT NULL,
  `tel03` varchar(4) DEFAULT NULL,
  `fax01` varchar(5) DEFAULT NULL,
  `fax02` varchar(4) DEFAULT NULL,
  `fax03` varchar(4) DEFAULT NULL,
  `business_hour` varchar(255) DEFAULT NULL,
  `email01` varchar(255) DEFAULT NULL,
  `email02` varchar(255) DEFAULT NULL,
  `email03` varchar(255) DEFAULT NULL,
  `email04` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `shop_kana` varchar(255) DEFAULT NULL,
  `shop_name_eng` varchar(255) DEFAULT NULL,
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `good_traded` varchar(4000) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `delivery_free_amount` decimal(12,2) DEFAULT NULL,
  `delivery_free_quantity` int(10) unsigned DEFAULT NULL,
  `option_multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `option_mypage_order_status_display` tinyint(1) NOT NULL DEFAULT '1',
  `option_nostock_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `option_favorite_product` tinyint(1) NOT NULL DEFAULT '1',
  `option_product_delivery_fee` tinyint(1) NOT NULL DEFAULT '0',
  `option_product_tax_rule` tinyint(1) NOT NULL DEFAULT '0',
  `option_customer_activate` tinyint(1) NOT NULL DEFAULT '1',
  `option_remember_me` tinyint(1) NOT NULL DEFAULT '1',
  `authentication_key` varchar(255) DEFAULT NULL,
  `option_point` tinyint(1) NOT NULL DEFAULT '1',
  `basic_point_rate` decimal(10,0) DEFAULT '1',
  `point_conversion_rate` decimal(10,0) DEFAULT '1',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D3655F4F92F3E70` (`country_id`),
  KEY `IDX_1D3655F4E171EF5F` (`pref_id`),
  CONSTRAINT `FK_1D3655F4E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_1D3655F4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_base_info: ~0 rows (approximately)
DELETE FROM `dtb_base_info`;
/*!40000 ALTER TABLE `dtb_base_info` DISABLE KEYS */;
INSERT INTO `dtb_base_info` (`id`, `country_id`, `pref_id`, `company_name`, `company_kana`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `business_hour`, `email01`, `email02`, `email03`, `email04`, `shop_name`, `shop_kana`, `shop_name_eng`, `update_date`, `good_traded`, `message`, `delivery_free_amount`, `delivery_free_quantity`, `option_multiple_shipping`, `option_mypage_order_status_display`, `option_nostock_hidden`, `option_favorite_product`, `option_product_delivery_fee`, `option_product_tax_rule`, `option_customer_activate`, `option_remember_me`, `authentication_key`, `option_point`, `basic_point_rate`, `point_conversion_rate`, `discriminator_type`) VALUES
	(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@example.com', 'admin@example.com', 'admin@example.com', 'admin@example.com', 'EC-CUBE SHOP', NULL, NULL, '2018-02-26 07:46:31', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, 1, NULL, 1, 1, 1, 'baseinfo');
/*!40000 ALTER TABLE `dtb_base_info` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_block
CREATE TABLE IF NOT EXISTS `dtb_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `block_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `use_controller` tinyint(1) NOT NULL DEFAULT '0',
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_type_id` (`device_type_id`,`file_name`),
  KEY `IDX_6B54DCBD4FFA550E` (`device_type_id`),
  CONSTRAINT `FK_6B54DCBD4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_block: ~13 rows (approximately)
DELETE FROM `dtb_block`;
/*!40000 ALTER TABLE `dtb_block` DISABLE KEYS */;
INSERT INTO `dtb_block` (`id`, `device_type_id`, `block_name`, `file_name`, `use_controller`, `deletable`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 10, 'カテゴリ', 'category', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(2, 10, 'カゴの中', 'cart', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(3, 10, '商品検索', 'search_product', 1, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(4, 10, '新着情報', 'news', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(5, 10, 'ログインナビ', 'login', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(6, 10, 'ロゴ', 'logo', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(7, 10, 'フッター', 'footer', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(8, 10, '新着商品', 'new_product', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(9, 10, 'フリーエリア', 'free', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(10, 10, 'ギャラリー', 'garally', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(11, 10, 'グリッド(新着情報・フリーエリア)', 'grid_news_free', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(12, 10, 'ヘッダー(ロゴ・カート)', 'header', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
	(13, 10, 'ヘッダー(検索・ナビ)', 'header_nav', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block');
/*!40000 ALTER TABLE `dtb_block` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_block_position
CREATE TABLE IF NOT EXISTS `dtb_block_position` (
  `section` int(10) unsigned NOT NULL,
  `block_id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `block_row` int(10) unsigned DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`section`,`block_id`,`layout_id`),
  KEY `IDX_35DCD731E9ED820C` (`block_id`),
  KEY `IDX_35DCD731C4663E4` (`page_id`),
  KEY `IDX_35DCD7318C22AA1A` (`layout_id`),
  CONSTRAINT `FK_35DCD7318C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  CONSTRAINT `FK_35DCD731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page` (`id`),
  CONSTRAINT `FK_35DCD731E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `dtb_block` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_block_position: ~13 rows (approximately)
DELETE FROM `dtb_block_position`;
/*!40000 ALTER TABLE `dtb_block_position` DISABLE KEYS */;
INSERT INTO `dtb_block_position` (`section`, `block_id`, `layout_id`, `page_id`, `block_row`, `anywhere`, `discriminator_type`) VALUES
	(2, 1, 1, 1, 3, 1, 'blockposition'),
	(2, 1, 3, 1, 3, 1, 'blockposition'),
	(2, 6, 2, 1, 1, 1, 'blockposition'),
	(2, 12, 1, 1, 1, 1, 'blockposition'),
	(2, 12, 3, 1, 1, 1, 'blockposition'),
	(2, 13, 1, 1, 2, 1, 'blockposition'),
	(2, 13, 3, 1, 2, 1, 'blockposition'),
	(6, 8, 1, 1, 1, 0, 'blockposition'),
	(6, 10, 1, 1, 3, 0, 'blockposition'),
	(6, 11, 1, 1, 2, 0, 'blockposition'),
	(9, 7, 1, 1, 1, 1, 'blockposition'),
	(9, 7, 2, 1, 1, 1, 'blockposition'),
	(9, 7, 3, 1, 1, 1, 'blockposition');
/*!40000 ALTER TABLE `dtb_block_position` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_category
CREATE TABLE IF NOT EXISTS `dtb_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_category_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `hierarchy` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5ED2C2B796A8F92` (`parent_category_id`),
  KEY `IDX_5ED2C2B61220EA6` (`creator_id`),
  CONSTRAINT `FK_5ED2C2B61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_5ED2C2B796A8F92` FOREIGN KEY (`parent_category_id`) REFERENCES `dtb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_category: ~6 rows (approximately)
DELETE FROM `dtb_category`;
/*!40000 ALTER TABLE `dtb_category` DISABLE KEYS */;
INSERT INTO `dtb_category` (`id`, `parent_category_id`, `creator_id`, `category_name`, `hierarchy`, `sort_no`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, NULL, 'キッチンツール', 1, 5, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
	(2, NULL, NULL, 'インテリア', 1, 6, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
	(3, 1, NULL, '食器', 2, 3, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
	(4, 1, NULL, '調理器具', 2, 4, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
	(5, 3, NULL, 'フォーク', 3, 2, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
	(6, NULL, NULL, '新入荷', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category');
/*!40000 ALTER TABLE `dtb_category` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_class_category
CREATE TABLE IF NOT EXISTS `dtb_class_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9B0D1DBAB462FB2A` (`class_name_id`),
  KEY `IDX_9B0D1DBA61220EA6` (`creator_id`),
  CONSTRAINT `FK_9B0D1DBA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_9B0D1DBAB462FB2A` FOREIGN KEY (`class_name_id`) REFERENCES `dtb_class_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_class_category: ~6 rows (approximately)
DELETE FROM `dtb_class_category`;
/*!40000 ALTER TABLE `dtb_class_category` DISABLE KEYS */;
INSERT INTO `dtb_class_category` (`id`, `class_name_id`, `creator_id`, `name`, `sort_no`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 1, NULL, '金', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
	(2, 1, NULL, '銀', 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
	(3, 1, NULL, 'プラチナ', 3, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
	(4, 2, NULL, '120mm', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
	(5, 2, NULL, '170mm', 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
	(6, 2, NULL, '150cm', 3, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory');
/*!40000 ALTER TABLE `dtb_class_category` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_class_name
CREATE TABLE IF NOT EXISTS `dtb_class_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_187C95AD61220EA6` (`creator_id`),
  CONSTRAINT `FK_187C95AD61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_class_name: ~3 rows (approximately)
DELETE FROM `dtb_class_name`;
/*!40000 ALTER TABLE `dtb_class_name` DISABLE KEYS */;
INSERT INTO `dtb_class_name` (`id`, `creator_id`, `name`, `sort_no`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 1, '材質', 1, '2017-03-07 10:14:52', '2018-03-16 09:17:10', 'classname'),
	(2, 1, 'サイズ', 2, '2017-03-07 10:14:52', '2018-03-16 09:17:10', 'classname'),
	(3, 1, 'test', 3, '2018-03-15 08:05:30', '2018-03-16 09:17:11', 'classname');
/*!40000 ALTER TABLE `dtb_class_name` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_csv
CREATE TABLE IF NOT EXISTS `dtb_csv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `csv_type_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `entity_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `reference_field_name` varchar(255) DEFAULT NULL,
  `disp_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F55F48C3E8507796` (`csv_type_id`),
  KEY `IDX_F55F48C361220EA6` (`creator_id`),
  CONSTRAINT `FK_F55F48C361220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_F55F48C3E8507796` FOREIGN KEY (`csv_type_id`) REFERENCES `mtb_csv_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_csv: ~195 rows (approximately)
DELETE FROM `dtb_csv`;
/*!40000 ALTER TABLE `dtb_csv` DISABLE KEYS */;
INSERT INTO `dtb_csv` (`id`, `csv_type_id`, `creator_id`, `entity_name`, `field_name`, `reference_field_name`, `disp_name`, `sort_no`, `enabled`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'id', NULL, '商品ID', 1, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(2, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'Status', 'id', '公開ステータス(ID)', 2, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(3, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'Status', 'name', '公開ステータス(名称)', 3, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(4, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'name', NULL, '商品名', 4, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(5, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'note', NULL, 'ショップ用メモ欄', 5, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(6, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'description_list', NULL, '商品説明(一覧)', 6, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(7, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'description_detail', NULL, '商品説明(詳細)', 7, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(8, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'search_word', NULL, '検索ワード', 8, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(9, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'free_area', NULL, 'フリーエリア', 9, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(10, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'id', NULL, '商品規格ID', 10, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(11, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'SaleType', 'id', '販売種別(ID)', 11, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(12, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'SaleType', 'name', '販売種別(名称)', 12, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(13, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory1', 'id', '規格分類1(ID)', 13, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(14, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory1', 'name', '規格分類1(名称)', 14, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(15, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory2', 'id', '規格分類2(ID)', 15, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(16, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory2', 'name', '規格分類2(名称)', 16, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(17, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'DeliveryDuration', 'id', '発送日目安(ID)', 17, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(18, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'DeliveryDuration', 'name', '発送日目安(名称)', 18, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(19, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'code', NULL, '商品コード', 19, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(20, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'stock', NULL, '在庫数', 20, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(21, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'stock_unlimited', NULL, '在庫数無制限フラグ', 21, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(22, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'sale_limit', NULL, '販売制限数', 22, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(23, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'price01', NULL, '通常価格', 23, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(24, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'price02', NULL, '販売価格', 24, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(25, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'delivery_fee', NULL, '送料', 25, 0, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(26, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductImage', 'file_name', '商品画像', 26, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(27, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductCategories', 'category_id', '商品カテゴリ(ID)', 27, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(28, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductCategories', 'Category', '商品カテゴリ(名称)', 28, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(29, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'id', NULL, '会員ID', 1, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(30, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'name01', NULL, 'お名前(姓)', 2, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(31, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'name02', NULL, 'お名前(名)', 3, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(32, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'kana01', NULL, 'お名前(セイ)', 4, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(33, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'kana02', NULL, 'お名前(メイ)', 5, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(34, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'company_name', NULL, '会社名', 6, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(35, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'zip01', NULL, '郵便番号1', 7, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(36, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'zip02', NULL, '郵便番号2', 8, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(37, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Pref', 'id', '都道府県(ID)', 9, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(38, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Pref', 'name', '都道府県(名称)', 10, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(39, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'addr01', NULL, '住所1', 11, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(40, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'addr02', NULL, '住所2', 12, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(41, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'email', NULL, 'メールアドレス', 13, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(42, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'tel01', NULL, 'TEL1', 14, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(43, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'tel02', NULL, 'TEL2', 15, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(44, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'tel03', NULL, 'TEL3', 16, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(45, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'fax01', NULL, 'FAX1', 17, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(46, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'fax02', NULL, 'FAX2', 18, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(47, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'fax03', NULL, 'FAX3', 19, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(48, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Sex', 'id', '性別(ID)', 20, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(49, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Sex', 'name', '性別(名称)', 21, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(50, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Job', 'id', '職業(ID)', 22, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(51, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Job', 'name', '職業(名称)', 23, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(52, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'birth', NULL, '誕生日', 24, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(53, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'first_buy_date', NULL, '初回購入日', 25, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(54, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'last_buy_date', NULL, '最終購入日', 26, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(55, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'buy_times', NULL, '購入回数', 27, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(56, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'note', NULL, 'ショップ用メモ欄', 28, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(57, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Status', 'id', '会員ステータス(ID)', 29, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(58, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Status', 'name', '会員ステータス(名称)', 30, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(59, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'create_date', NULL, '登録日', 31, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(60, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'update_date', NULL, '更新日', 32, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(61, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'id', NULL, '注文ID', 1, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(62, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Customer', 'id', '会員ID', 2, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(63, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(64, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(65, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(66, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(67, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'company_name', NULL, '会社名', 7, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(68, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(69, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(70, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(71, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(72, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'addr01', NULL, '住所1', 12, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(73, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'addr02', NULL, '住所2', 13, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(74, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(75, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(76, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(77, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(78, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(79, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(80, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(81, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(82, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(83, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(84, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(85, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'birth', NULL, '誕生日', 25, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(86, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(87, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'subtotal', NULL, '小計', 27, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(88, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'discount', NULL, '値引き', 28, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(89, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(90, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'tax', NULL, '税金', 30, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(91, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'total', NULL, '合計', 31, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(92, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(93, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(94, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(95, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(96, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(97, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'order_date', NULL, '受注日', 37, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(98, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_date', NULL, '入金日', 38, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(99, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'shipping_date', NULL, '発送日', 39, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(100, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'id', NULL, '注文詳細ID', 40, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(101, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'Product', 'id', '商品ID', 41, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(102, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'ProductClass', 'id', '商品規格ID', 42, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(103, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'product_name', NULL, '商品名', 43, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(104, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'product_code', NULL, '商品コード', 44, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(105, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'class_name1', NULL, '規格名1', 45, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(106, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'class_name2', NULL, '規格名2', 46, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(107, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'class_category_name1', NULL, '規格分類名1', 47, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(108, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'class_category_name2', NULL, '規格分類名2', 48, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(109, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'price', NULL, '価格', 49, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(110, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'quantity', NULL, '個数', 50, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(111, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'tax_rate', NULL, '税率', 51, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(112, 3, NULL, 'Eccube\\\\Entity\\\\OrderDetail', 'tax_rule', NULL, '税率ルール(ID)', 52, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(113, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'id', NULL, '注文ID', 1, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(114, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Customer', 'id', '会員ID', 2, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(115, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'name01', NULL, 'お名前(姓)', 3, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(116, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'name02', NULL, 'お名前(名)', 4, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(117, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'kana01', NULL, 'お名前(セイ)', 5, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(118, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'kana02', NULL, 'お名前(メイ)', 6, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(119, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'company_name', NULL, '会社名', 7, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(120, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'zip01', NULL, '郵便番号1', 8, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(121, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'zip02', NULL, '郵便番号2', 9, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(122, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'id', '都道府県(ID)', 10, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(123, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'name', '都道府県(名称)', 11, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(124, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'addr01', NULL, '住所1', 12, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(125, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'addr02', NULL, '住所2', 13, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(126, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'email', NULL, 'メールアドレス', 14, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(127, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'tel01', NULL, 'TEL1', 15, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(128, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'tel02', NULL, 'TEL2', 16, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(129, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'tel03', NULL, 'TEL3', 17, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(130, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'fax01', NULL, 'FAX1', 18, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(131, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'fax02', NULL, 'FAX2', 19, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(132, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'fax03', NULL, 'FAX3', 20, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(133, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'id', '性別(ID)', 21, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(134, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'name', '性別(名称)', 22, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(135, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'id', '職業(ID)', 23, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(136, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'name', '職業(名称)', 24, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(137, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'birth', NULL, '誕生日', 25, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(138, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'note', NULL, 'ショップ用メモ欄', 26, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(139, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'subtotal', NULL, '小計', 27, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(140, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'discount', NULL, '値引き', 28, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(141, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'delivery_fee_total', NULL, '送料', 29, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(142, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'tax', NULL, '税金', 30, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(143, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'total', NULL, '合計', 31, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(144, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_total', NULL, '支払合計', 32, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(145, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'id', '対応状況(ID)', 33, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(146, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'name', '対応状況(名称)', 34, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(147, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Payment', 'id', '支払方法(ID)', 35, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(148, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_method', NULL, '支払方法(名称)', 36, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(149, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'order_date', NULL, '受注日', 37, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(150, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_date', NULL, '入金日', 38, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(151, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'shipping_date', NULL, '発送日', 39, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(152, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'id', NULL, '配送ID', 40, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(153, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name01', NULL, '配送先_お名前(姓)', 41, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(154, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name02', NULL, '配送先_お名前(名)', 42, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(155, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'kana01', NULL, '配送先_お名前(セイ)', 43, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(156, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'kana02', NULL, '配送先_お名前(メイ)', 44, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(157, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'company_name', NULL, '配送先_会社名', 45, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(158, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'zip01', NULL, '配送先_郵便番号1', 46, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(159, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'zip02', NULL, '配送先_郵便番号2', 47, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(160, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'id', '配送先_都道府県(ID)', 48, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(161, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'name', '配送先_都道府県(名称)', 49, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(162, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr01', NULL, '配送先_住所1', 50, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(163, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr02', NULL, '配送先_住所2', 51, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(164, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'tel01', NULL, '配送先_TEL1', 52, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(165, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'tel02', NULL, '配送先_TEL2', 53, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(166, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'tel03', NULL, '配送先_TEL3', 54, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(167, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'fax01', NULL, '配送先_FAX1', 55, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(168, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'fax02', NULL, '配送先_FAX2', 56, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(169, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'fax03', NULL, '配送先_FAX3', 57, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(170, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Delivery', 'id', '配送業者(ID)', 58, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(171, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_name', NULL, '配送業者(名称)', 59, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(172, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryTime', 'id', 'お届け時間ID', 60, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(173, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_time', NULL, 'お届け時間(名称)', 61, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(174, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_date', NULL, 'お届け希望日', 62, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(175, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryFee', 'id', '送料ID', 63, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(176, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_fee', NULL, '送料', 64, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(177, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_date', NULL, '発送日', 65, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(178, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'id', NULL, '配送商品ID', 66, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(179, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'Product', 'id', '商品ID', 67, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(180, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'ProductClass', 'id', '商品規格ID', 68, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(181, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_name', NULL, '商品名', 69, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(182, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_code', NULL, '商品コード', 70, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(183, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name1', NULL, '規格名1', 71, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(184, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name2', NULL, '規格名2', 72, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(185, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name1', NULL, '規格分類名1', 73, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(186, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name2', NULL, '規格分類名2', 74, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(187, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'price', NULL, '価格', 75, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(188, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'quantity', NULL, '個数', 76, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(189, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'id', NULL, 'カテゴリID', 1, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(190, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'sort_no', NULL, '表示ランク', 2, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(191, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'name', NULL, 'カテゴリ名', 3, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(192, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'Parent', 'id', '親カテゴリID', 4, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(193, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'level', NULL, '階層', 5, 1, '2017-03-07 10:14:55', '2017-03-07 10:14:55', 'csv'),
	(194, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'tag_id', 'タグ(ID)', 29, 1, '2017-03-07 01:15:05', '2017-03-07 01:15:05', 'csv'),
	(195, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'Tag', 'タグ(名称)', 30, 1, '2017-03-07 01:15:05', '2017-03-07 01:15:05', 'csv');
/*!40000 ALTER TABLE `dtb_csv` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_customer
CREATE TABLE IF NOT EXISTS `dtb_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_status_id` smallint(5) unsigned DEFAULT NULL,
  `sex_id` smallint(5) unsigned DEFAULT NULL,
  `job_id` smallint(5) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `zip01` varchar(3) DEFAULT NULL,
  `zip02` varchar(4) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `tel01` varchar(5) DEFAULT NULL,
  `tel02` varchar(4) DEFAULT NULL,
  `tel03` varchar(4) DEFAULT NULL,
  `fax01` varchar(5) DEFAULT NULL,
  `fax02` varchar(4) DEFAULT NULL,
  `fax03` varchar(4) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) NOT NULL,
  `first_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `last_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(12,2) DEFAULT '0.00',
  `note` varchar(4000) DEFAULT NULL,
  `reset_key` varchar(255) DEFAULT NULL,
  `reset_expire` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `point` decimal(12,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `secret_key` (`secret_key`),
  KEY `IDX_8298BBE3C00AF8A7` (`customer_status_id`),
  KEY `IDX_8298BBE35A2DB2A0` (`sex_id`),
  KEY `IDX_8298BBE3BE04EA9` (`job_id`),
  KEY `IDX_8298BBE3F92F3E70` (`country_id`),
  KEY `IDX_8298BBE3E171EF5F` (`pref_id`),
  KEY `dtb_customer_buy_times_idx` (`buy_times`),
  KEY `dtb_customer_buy_total_idx` (`buy_total`),
  KEY `dtb_customer_create_date_idx` (`create_date`),
  KEY `dtb_customer_update_date_idx` (`update_date`),
  KEY `dtb_customer_last_buy_date_idx` (`last_buy_date`),
  KEY `dtb_customer_email_idx` (`email`),
  CONSTRAINT `FK_8298BBE35A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  CONSTRAINT `FK_8298BBE3BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  CONSTRAINT `FK_8298BBE3C00AF8A7` FOREIGN KEY (`customer_status_id`) REFERENCES `mtb_customer_status` (`id`),
  CONSTRAINT `FK_8298BBE3E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_8298BBE3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_customer: ~1 rows (approximately)
DELETE FROM `dtb_customer`;
/*!40000 ALTER TABLE `dtb_customer` DISABLE KEYS */;
INSERT INTO `dtb_customer` (`id`, `customer_status_id`, `sex_id`, `job_id`, `country_id`, `pref_id`, `name01`, `name02`, `kana01`, `kana02`, `company_name`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `email`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `birth`, `password`, `salt`, `secret_key`, `first_buy_date`, `last_buy_date`, `buy_times`, `buy_total`, `note`, `reset_key`, `reset_expire`, `point`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 1, NULL, NULL, NULL, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '0000', NULL, '札幌市中央区', '0000', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, NULL, '53b2eb8fb5121097164c897e1e0821c4638ea2e6cb7d1f95cde5134e05eb7514', '34b28a9765', 'dyvDByBUosJxp5bxMrjpMXYD2w7XThQC', '2018-02-26 08:06:03', '2018-03-12 03:35:40', 10, 1205408.00, NULL, NULL, NULL, 0, '2018-02-26 08:00:13', '2018-03-16 08:11:03', 'customer');
/*!40000 ALTER TABLE `dtb_customer` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_customer_address
CREATE TABLE IF NOT EXISTS `dtb_customer_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `name01` varchar(255) DEFAULT NULL,
  `name02` varchar(255) DEFAULT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `zip01` varchar(3) DEFAULT NULL,
  `zip02` varchar(4) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `tel01` varchar(5) DEFAULT NULL,
  `tel02` varchar(4) DEFAULT NULL,
  `tel03` varchar(4) DEFAULT NULL,
  `fax01` varchar(5) DEFAULT NULL,
  `fax02` varchar(4) DEFAULT NULL,
  `fax03` varchar(4) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6C38C0F89395C3F3` (`customer_id`),
  KEY `IDX_6C38C0F8F92F3E70` (`country_id`),
  KEY `IDX_6C38C0F8E171EF5F` (`pref_id`),
  CONSTRAINT `FK_6C38C0F89395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  CONSTRAINT `FK_6C38C0F8E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_6C38C0F8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_customer_address: ~2 rows (approximately)
DELETE FROM `dtb_customer_address`;
/*!40000 ALTER TABLE `dtb_customer_address` DISABLE KEYS */;
INSERT INTO `dtb_customer_address` (`id`, `customer_id`, `country_id`, `pref_id`, `name01`, `name02`, `kana01`, `kana02`, `company_name`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 1, NULL, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '0000', '0600000', '札幌市中央区', '0000', '060', '060', '060', NULL, NULL, NULL, '2018-02-26 08:00:13', '2018-02-26 08:00:13', 'customeraddress'),
	(2, 1, NULL, 2, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '992', '3525', NULL, 'address 1', '0000', '111', '060', '060', '060', '060', '060', '2018-02-26 08:03:59', '2018-02-26 08:03:59', 'customeraddress');
/*!40000 ALTER TABLE `dtb_customer_address` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_customer_favorite_product
CREATE TABLE IF NOT EXISTS `dtb_customer_favorite_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ED6313839395C3F3` (`customer_id`),
  KEY `IDX_ED6313834584665A` (`product_id`),
  CONSTRAINT `FK_ED6313834584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_ED6313839395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_customer_favorite_product: ~0 rows (approximately)
DELETE FROM `dtb_customer_favorite_product`;
/*!40000 ALTER TABLE `dtb_customer_favorite_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_customer_favorite_product` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_delivery
CREATE TABLE IF NOT EXISTS `dtb_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `sale_type_id` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `confirm_url` varchar(4000) DEFAULT NULL,
  `sort_no` int(10) unsigned DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3420D9FA61220EA6` (`creator_id`),
  KEY `IDX_3420D9FAB0524E01` (`sale_type_id`),
  CONSTRAINT `FK_3420D9FA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_3420D9FAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_delivery: ~3 rows (approximately)
DELETE FROM `dtb_delivery`;
/*!40000 ALTER TABLE `dtb_delivery` DISABLE KEYS */;
INSERT INTO `dtb_delivery` (`id`, `creator_id`, `sale_type_id`, `name`, `service_name`, `description`, `confirm_url`, `sort_no`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, 1, 'サンプル業者', 'サンプル業者', NULL, NULL, 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'delivery'),
	(2, NULL, 2, 'サンプル宅配', 'サンプル宅配', NULL, NULL, 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'delivery'),
	(3, NULL, 1, 'test A', 'test A', NULL, NULL, 3, 1, '2018-02-26 08:01:58', '2018-02-26 08:01:58', 'delivery');
/*!40000 ALTER TABLE `dtb_delivery` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_delivery_duration
CREATE TABLE IF NOT EXISTS `dtb_delivery_duration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `duration` smallint(6) NOT NULL DEFAULT '0',
  `sort_no` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_delivery_duration: ~9 rows (approximately)
DELETE FROM `dtb_delivery_duration`;
/*!40000 ALTER TABLE `dtb_delivery_duration` DISABLE KEYS */;
INSERT INTO `dtb_delivery_duration` (`id`, `name`, `duration`, `sort_no`, `discriminator_type`) VALUES
	(1, '即日', 0, 0, 'deliveryduration'),
	(2, '1～2日後', 1, 1, 'deliveryduration'),
	(3, '3～4日後', 3, 2, 'deliveryduration'),
	(4, '1週間以降', 7, 3, 'deliveryduration'),
	(5, '2週間以降', 14, 4, 'deliveryduration'),
	(6, '3週間以降', 21, 5, 'deliveryduration'),
	(7, '1ヶ月以降', 30, 6, 'deliveryduration'),
	(8, '2ヶ月以降', 60, 7, 'deliveryduration'),
	(9, 'お取り寄せ(商品入荷後)', -1, 8, 'deliveryduration');
/*!40000 ALTER TABLE `dtb_delivery_duration` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_delivery_fee
CREATE TABLE IF NOT EXISTS `dtb_delivery_fee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `fee` decimal(12,2) NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_491552412136921` (`delivery_id`),
  KEY `IDX_4915524E171EF5F` (`pref_id`),
  CONSTRAINT `FK_491552412136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_4915524E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_delivery_fee: ~141 rows (approximately)
DELETE FROM `dtb_delivery_fee`;
/*!40000 ALTER TABLE `dtb_delivery_fee` DISABLE KEYS */;
INSERT INTO `dtb_delivery_fee` (`id`, `delivery_id`, `pref_id`, `fee`, `discriminator_type`) VALUES
	(1, 1, 1, 3000.00, 'deliveryfee'),
	(2, 1, 2, 1000.00, 'deliveryfee'),
	(3, 1, 3, 1000.00, 'deliveryfee'),
	(4, 1, 4, 1000.00, 'deliveryfee'),
	(5, 1, 5, 1000.00, 'deliveryfee'),
	(6, 1, 6, 1000.00, 'deliveryfee'),
	(7, 1, 7, 1000.00, 'deliveryfee'),
	(8, 1, 8, 1000.00, 'deliveryfee'),
	(9, 1, 9, 1000.00, 'deliveryfee'),
	(10, 1, 10, 1000.00, 'deliveryfee'),
	(11, 1, 11, 1000.00, 'deliveryfee'),
	(12, 1, 12, 1000.00, 'deliveryfee'),
	(13, 1, 13, 1000.00, 'deliveryfee'),
	(14, 1, 14, 1000.00, 'deliveryfee'),
	(15, 1, 15, 1000.00, 'deliveryfee'),
	(16, 1, 16, 1000.00, 'deliveryfee'),
	(17, 1, 17, 1000.00, 'deliveryfee'),
	(18, 1, 18, 1000.00, 'deliveryfee'),
	(19, 1, 19, 1000.00, 'deliveryfee'),
	(20, 1, 20, 1000.00, 'deliveryfee'),
	(21, 1, 21, 1000.00, 'deliveryfee'),
	(22, 1, 22, 1000.00, 'deliveryfee'),
	(23, 1, 23, 1000.00, 'deliveryfee'),
	(24, 1, 24, 1000.00, 'deliveryfee'),
	(25, 1, 25, 1000.00, 'deliveryfee'),
	(26, 1, 26, 1000.00, 'deliveryfee'),
	(27, 1, 27, 1000.00, 'deliveryfee'),
	(28, 1, 28, 1000.00, 'deliveryfee'),
	(29, 1, 29, 1000.00, 'deliveryfee'),
	(30, 1, 30, 1000.00, 'deliveryfee'),
	(31, 1, 31, 1000.00, 'deliveryfee'),
	(32, 1, 32, 1000.00, 'deliveryfee'),
	(33, 1, 33, 1000.00, 'deliveryfee'),
	(34, 1, 34, 1000.00, 'deliveryfee'),
	(35, 1, 35, 1000.00, 'deliveryfee'),
	(36, 1, 36, 1000.00, 'deliveryfee'),
	(37, 1, 37, 1000.00, 'deliveryfee'),
	(38, 1, 38, 1000.00, 'deliveryfee'),
	(39, 1, 39, 1000.00, 'deliveryfee'),
	(40, 1, 40, 1000.00, 'deliveryfee'),
	(41, 1, 41, 1000.00, 'deliveryfee'),
	(42, 1, 42, 1000.00, 'deliveryfee'),
	(43, 1, 43, 1000.00, 'deliveryfee'),
	(44, 1, 44, 1000.00, 'deliveryfee'),
	(45, 1, 45, 1000.00, 'deliveryfee'),
	(46, 1, 46, 1000.00, 'deliveryfee'),
	(47, 1, 47, 1000.00, 'deliveryfee'),
	(48, 2, 1, 0.00, 'deliveryfee'),
	(49, 2, 2, 0.00, 'deliveryfee'),
	(50, 2, 3, 0.00, 'deliveryfee'),
	(51, 2, 4, 0.00, 'deliveryfee'),
	(52, 2, 5, 0.00, 'deliveryfee'),
	(53, 2, 6, 0.00, 'deliveryfee'),
	(54, 2, 7, 0.00, 'deliveryfee'),
	(55, 2, 8, 0.00, 'deliveryfee'),
	(56, 2, 9, 0.00, 'deliveryfee'),
	(57, 2, 10, 0.00, 'deliveryfee'),
	(58, 2, 11, 0.00, 'deliveryfee'),
	(59, 2, 12, 0.00, 'deliveryfee'),
	(60, 2, 13, 0.00, 'deliveryfee'),
	(61, 2, 14, 0.00, 'deliveryfee'),
	(62, 2, 15, 0.00, 'deliveryfee'),
	(63, 2, 16, 0.00, 'deliveryfee'),
	(64, 2, 17, 0.00, 'deliveryfee'),
	(65, 2, 18, 0.00, 'deliveryfee'),
	(66, 2, 19, 0.00, 'deliveryfee'),
	(67, 2, 20, 0.00, 'deliveryfee'),
	(68, 2, 21, 0.00, 'deliveryfee'),
	(69, 2, 22, 0.00, 'deliveryfee'),
	(70, 2, 23, 0.00, 'deliveryfee'),
	(71, 2, 24, 0.00, 'deliveryfee'),
	(72, 2, 25, 0.00, 'deliveryfee'),
	(73, 2, 26, 0.00, 'deliveryfee'),
	(74, 2, 27, 0.00, 'deliveryfee'),
	(75, 2, 28, 0.00, 'deliveryfee'),
	(76, 2, 29, 0.00, 'deliveryfee'),
	(77, 2, 30, 0.00, 'deliveryfee'),
	(78, 2, 31, 0.00, 'deliveryfee'),
	(79, 2, 32, 0.00, 'deliveryfee'),
	(80, 2, 33, 0.00, 'deliveryfee'),
	(81, 2, 34, 0.00, 'deliveryfee'),
	(82, 2, 35, 0.00, 'deliveryfee'),
	(83, 2, 36, 0.00, 'deliveryfee'),
	(84, 2, 37, 0.00, 'deliveryfee'),
	(85, 2, 38, 0.00, 'deliveryfee'),
	(86, 2, 39, 0.00, 'deliveryfee'),
	(87, 2, 40, 0.00, 'deliveryfee'),
	(88, 2, 41, 0.00, 'deliveryfee'),
	(89, 2, 42, 0.00, 'deliveryfee'),
	(90, 2, 43, 0.00, 'deliveryfee'),
	(91, 2, 44, 0.00, 'deliveryfee'),
	(92, 2, 45, 0.00, 'deliveryfee'),
	(93, 2, 46, 0.00, 'deliveryfee'),
	(94, 2, 47, 0.00, 'deliveryfee'),
	(95, 3, 1, 2000.00, 'deliveryfee'),
	(96, 3, 2, 300.00, 'deliveryfee'),
	(97, 3, 3, 300.00, 'deliveryfee'),
	(98, 3, 4, 300.00, 'deliveryfee'),
	(99, 3, 5, 300.00, 'deliveryfee'),
	(100, 3, 6, 300.00, 'deliveryfee'),
	(101, 3, 7, 300.00, 'deliveryfee'),
	(102, 3, 8, 300.00, 'deliveryfee'),
	(103, 3, 9, 300.00, 'deliveryfee'),
	(104, 3, 10, 300.00, 'deliveryfee'),
	(105, 3, 11, 300.00, 'deliveryfee'),
	(106, 3, 12, 300.00, 'deliveryfee'),
	(107, 3, 13, 300.00, 'deliveryfee'),
	(108, 3, 14, 300.00, 'deliveryfee'),
	(109, 3, 15, 300.00, 'deliveryfee'),
	(110, 3, 16, 300.00, 'deliveryfee'),
	(111, 3, 17, 300.00, 'deliveryfee'),
	(112, 3, 18, 300.00, 'deliveryfee'),
	(113, 3, 19, 300.00, 'deliveryfee'),
	(114, 3, 20, 300.00, 'deliveryfee'),
	(115, 3, 21, 300.00, 'deliveryfee'),
	(116, 3, 22, 300.00, 'deliveryfee'),
	(117, 3, 23, 300.00, 'deliveryfee'),
	(118, 3, 24, 300.00, 'deliveryfee'),
	(119, 3, 25, 300.00, 'deliveryfee'),
	(120, 3, 26, 300.00, 'deliveryfee'),
	(121, 3, 27, 300.00, 'deliveryfee'),
	(122, 3, 28, 300.00, 'deliveryfee'),
	(123, 3, 29, 300.00, 'deliveryfee'),
	(124, 3, 30, 300.00, 'deliveryfee'),
	(125, 3, 31, 300.00, 'deliveryfee'),
	(126, 3, 32, 300.00, 'deliveryfee'),
	(127, 3, 33, 300.00, 'deliveryfee'),
	(128, 3, 34, 300.00, 'deliveryfee'),
	(129, 3, 35, 300.00, 'deliveryfee'),
	(130, 3, 36, 300.00, 'deliveryfee'),
	(131, 3, 37, 300.00, 'deliveryfee'),
	(132, 3, 38, 300.00, 'deliveryfee'),
	(133, 3, 39, 300.00, 'deliveryfee'),
	(134, 3, 40, 300.00, 'deliveryfee'),
	(135, 3, 41, 300.00, 'deliveryfee'),
	(136, 3, 42, 300.00, 'deliveryfee'),
	(137, 3, 43, 300.00, 'deliveryfee'),
	(138, 3, 44, 300.00, 'deliveryfee'),
	(139, 3, 45, 300.00, 'deliveryfee'),
	(140, 3, 46, 300.00, 'deliveryfee'),
	(141, 3, 47, 300.00, 'deliveryfee');
/*!40000 ALTER TABLE `dtb_delivery_fee` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_delivery_time
CREATE TABLE IF NOT EXISTS `dtb_delivery_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E80EE3A612136921` (`delivery_id`),
  CONSTRAINT `FK_E80EE3A612136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_delivery_time: ~2 rows (approximately)
DELETE FROM `dtb_delivery_time`;
/*!40000 ALTER TABLE `dtb_delivery_time` DISABLE KEYS */;
INSERT INTO `dtb_delivery_time` (`id`, `delivery_id`, `delivery_time`, `discriminator_type`) VALUES
	(1, 1, '午前', 'deliverytime'),
	(2, 1, '午後', 'deliverytime');
/*!40000 ALTER TABLE `dtb_delivery_time` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_layout
CREATE TABLE IF NOT EXISTS `dtb_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `layout_name` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A62AA7C4FFA550E` (`device_type_id`),
  CONSTRAINT `FK_5A62AA7C4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_layout: ~3 rows (approximately)
DELETE FROM `dtb_layout`;
/*!40000 ALTER TABLE `dtb_layout` DISABLE KEYS */;
INSERT INTO `dtb_layout` (`id`, `device_type_id`, `layout_name`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 10, 'トップページ用レイアウト', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout'),
	(2, 2, 'トップページ用レイアウト(スマホ用)', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout'),
	(3, 10, '下層ページ用レイアウト', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout');
/*!40000 ALTER TABLE `dtb_layout` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_mail_history
CREATE TABLE IF NOT EXISTS `dtb_mail_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `send_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_body` longtext,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4870AB118D9F6D38` (`order_id`),
  KEY `IDX_4870AB1161220EA6` (`creator_id`),
  CONSTRAINT `FK_4870AB1161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4870AB118D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_mail_history: ~8 rows (approximately)
DELETE FROM `dtb_mail_history`;
/*!40000 ALTER TABLE `dtb_mail_history` DISABLE KEYS */;
INSERT INTO `dtb_mail_history` (`id`, `order_id`, `creator_id`, `send_date`, `mail_subject`, `mail_body`, `discriminator_type`) VALUES
	(1, 1, NULL, '2018-02-26 07:48:33', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Dung Le1 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：1\nご注文コード: \nお支払い合計：￥4,024\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024\n数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥1,080\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥3,024(うち消費税 ￥224)\n手数料 ￥0\n送　料 ￥1,000\n============================================\n合　計 ￥4,024\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Dung Le1 様\nお名前(フリガナ)：リ リ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区dsa\n電話番号：321-321-321\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Dung Le1 様\nお名前(フリガナ)：リ リ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：神奈川県札幌市中央区dsa\n電話番号：321-321-321\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(2, 4, NULL, '2018-02-26 08:06:04', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：4\nご注文コード: \nお支払い合計：￥322,680\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: fork-03\n商品名: ディナーフォーク  プラチナ  120mm\n単価： ￥79,920数量： 4\n\n商品コード: \n商品名: 送料    \n単価： ￥3,000数量： 1\n\n\n-------------------------------------------------\n小　計 ￥319,680(うち消費税 ￥23,680)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥322,680\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: fork-03\n商品名: ディナーフォーク  プラチナ  120mm\n数量：4\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(3, 5, NULL, '2018-02-26 08:09:09', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：5\nご注文コード: \nお支払い合計：￥6,024\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥3,000数量： 1\n\n\n-------------------------------------------------\n小　計 ￥3,024(うち消費税 ￥224)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥6,024\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(4, 6, NULL, '2018-02-26 08:09:52', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：6\nご注文コード: \nお支払い合計：￥6,024\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥3,000数量： 1\n\n\n-------------------------------------------------\n小　計 ￥3,024(うち消費税 ￥224)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥6,024\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(5, 7, NULL, '2018-02-26 08:11:49', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：7\nご注文コード: \nお支払い合計：￥6,024\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥3,000数量： 1\n\n\n-------------------------------------------------\n小　計 ￥3,024(うち消費税 ￥224)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥6,024\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(6, 8, NULL, '2018-02-26 08:14:11', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：8\nご注文コード: \nお支払い合計：￥9,048\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024\n数量： 2\n\n商品コード: \n商品名: 送料    \n単価： ￥3,000\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥6,048(うち消費税 ￥448)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥9,048\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：2\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(7, 9, NULL, '2018-02-26 08:35:35', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：9\nご注文コード: \nお支払い合計：￥373,440\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: fork-05\n商品名: ディナーフォーク  銀  170mm\n単価： ￥52,920\n数量： 7\n\n商品コード: \n商品名: 送料    \n単価： ￥3,240\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥370,440(うち消費税 ￥27,440)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥373,440\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: fork-05\n商品名: ディナーフォーク  銀  170mm\n数量：7\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(8, 10, NULL, '2018-02-26 08:36:24', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：10\nご注文コード: \nお支払い合計：￥101,520\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: fork-02\n商品名: ディナーフォーク  プラチナ  170mm\n単価： ￥100,440\n数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥1,080\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥100,440(うち消費税 ￥7,520)\n手数料 ￥0\n送　料 ￥1,080\n============================================\n合　計 ￥101,520\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：井 高直樹 様\nお名前(フリガナ)：フ フ 様\n配送業者　：株式会社 原田\n郵便番号：〒992-3525\n住所　　：青森県address 10000\n電話番号：111-060-060\nFAX番号 ：060-060-060\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: fork-02\n商品名: ディナーフォーク  プラチナ  170mm\n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(9, 11, NULL, '2018-02-26 08:38:36', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：11\nご注文コード: \nお支払い合計：￥359,400\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: fork-01\n商品名: ディナーフォーク  プラチナ  150cm\n単価： ￥118,800\n数量： 3\n\n商品コード: \n商品名: 送料    \n単価： ￥3,240\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥356,400(うち消費税 ￥26,400)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥359,400\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: fork-01\n商品名: ディナーフォーク  プラチナ  150cm\n数量：3\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(10, 66, NULL, '2018-02-27 07:11:41', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：66\nご注文コード: \nお支払い合計：￥6,264\nお支払い方法：代金引換\nメッセージ：test\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥3,024\n数量： 1\n\n商品コード: \n商品名: 送料    \n単価： ￥3,240\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥3,024(うち消費税 ￥464)\n手数料 ￥0\n送　料 ￥3,240\n============================================\n合　計 ￥6,264\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：井 高直樹 様\nお名前(フリガナ)：フ フ 様\n配送業者　：株式会社 原田\n郵便番号：〒992-3525\n住所　　：青森県address 10000\n電話番号：111-060-060\nFAX番号 ：060-060-060\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：1\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory'),
	(11, 72, NULL, '2018-03-12 03:35:40', '[EC-CUBE SHOP] ご注文ありがとうございます', 'Le Dung 様\n\nこの度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n\n\n************************************************\n　ご請求金額\n************************************************\n\nご注文番号：72\nご注文コード: \nお支払い合計：￥14,984\nお支払い方法：郵便振替\nメッセージ：\n\n\n************************************************\n　ご注文商品明細\n************************************************\n\n商品コード: cafe-01\n商品名: パーコレーター    \n単価： ￥2,996\n数量： 4\n\n商品コード: \n商品名: 送料    \n単価： ￥3,240\n数量： 1\n\n\n-------------------------------------------------\n小　計 ￥11,984(うち消費税 ￥784)\n手数料 ￥0\n送　料 ￥3,000\n============================================\n合　計 ￥14,984\n\n************************************************\n　ご注文者情報\n************************************************\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n会社名　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nメールアドレス：test.eccube@gmail.com\n\n************************************************\n　配送情報\n************************************************\n\n◎お届け先\nお名前　：Le Dung 様\nお名前(フリガナ)：フ フ 様\n配送業者　：Company\n郵便番号：〒060-0000\n住所　　：北海道札幌市中央区0000\n電話番号：060-060-060\nFAX番号 ：--\n\nお届け日：shopping.label.anytime\nお届け時間：shopping.label.anytime\n\n商品コード: cafe-01\n商品名: パーコレーター    \n数量：4\n\n商品コード: \n商品名: 送料    \n数量：1\n\n\n\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n\n', 'mailhistory');
/*!40000 ALTER TABLE `dtb_mail_history` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_mail_template
CREATE TABLE IF NOT EXISTS `dtb_mail_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_header` varchar(4000) DEFAULT NULL,
  `mail_footer` varchar(4000) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1CB16DB261220EA6` (`creator_id`),
  CONSTRAINT `FK_1CB16DB261220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_mail_template: ~7 rows (approximately)
DELETE FROM `dtb_mail_template`;
/*!40000 ALTER TABLE `dtb_mail_template` DISABLE KEYS */;
INSERT INTO `dtb_mail_template` (`id`, `creator_id`, `name`, `file_name`, `mail_subject`, `mail_header`, `mail_footer`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, '注文受付メール', 'Mail/order.twig', 'ご注文ありがとうございます', 'この度はご注文いただき誠にありがとうございます。下記ご注文内容にお間違えがないかご確認下さい。\r\n\r\n', '\r\n============================================\r\n\r\n\r\nこのメッセージはお客様へのお知らせ専用ですので、\r\nこのメッセージへの返信としてご質問をお送りいただいても回答できません。\r\nご了承ください。\r\n\r\nご質問やご不明な点がございましたら、こちらからお願いいたします。\r\n\r\n', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(2, NULL, '会員仮登録メール', 'Mail/entry_confirm.twig', '会員登録のご確認', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(3, NULL, '会員本登録メール', 'Mail/entry_complete.twig', '会員登録が完了しました。', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(4, NULL, '会員退会メール', 'Mail/customer_withdraw_mail.twig', '退会手続きのご完了', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(5, NULL, '問合受付メール', 'Mail/contact_mail.twig', 'お問い合わせを受け付けました。', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(6, NULL, 'パスワードリセット', 'Mail/forgot_mail.twig', 'パスワード変更のご確認', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
	(7, NULL, 'パスワードリマインダー', 'Mail/reset_complete_mail.twig', 'パスワード変更のお知らせ', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate');
/*!40000 ALTER TABLE `dtb_mail_template` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_member
CREATE TABLE IF NOT EXISTS `dtb_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` smallint(5) unsigned DEFAULT NULL,
  `authority_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `login_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_10BC3BE6BB3453DB` (`work_id`),
  KEY `IDX_10BC3BE681EC865B` (`authority_id`),
  KEY `IDX_10BC3BE661220EA6` (`creator_id`),
  CONSTRAINT `FK_10BC3BE661220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_10BC3BE681EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`),
  CONSTRAINT `FK_10BC3BE6BB3453DB` FOREIGN KEY (`work_id`) REFERENCES `mtb_work` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_member: ~2 rows (approximately)
DELETE FROM `dtb_member`;
/*!40000 ALTER TABLE `dtb_member` DISABLE KEYS */;
INSERT INTO `dtb_member` (`id`, `work_id`, `authority_id`, `creator_id`, `name`, `department`, `login_id`, `password`, `salt`, `sort_no`, `create_date`, `update_date`, `login_date`, `discriminator_type`) VALUES
	(1, 1, 0, 1, '管理者', 'EC-CUBE SHOP', 'admin', '67a726850bf277748adcba4f9499a8a5d34eae6e9b2abdd4e5c8a601a6818f32', '1YJkeYqw3WkLOy4r81frP5T7kf6ljytq', 1, '2018-02-26 07:46:31', '2018-03-21 03:02:51', '2018-03-21 03:02:51', 'member');
/*!40000 ALTER TABLE `dtb_member` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_news
CREATE TABLE IF NOT EXISTS `dtb_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `sort_no` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `url` varchar(4000) DEFAULT NULL,
  `link_method` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EA4C351761220EA6` (`creator_id`),
  CONSTRAINT `FK_EA4C351761220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_news: ~2 rows (approximately)
DELETE FROM `dtb_news`;
/*!40000 ALTER TABLE `dtb_news` DISABLE KEYS */;
INSERT INTO `dtb_news` (`id`, `creator_id`, `publish_date`, `sort_no`, `title`, `description`, `url`, `link_method`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, '2017-03-07 10:14:52', 1, 'サイトオープンいたしました!', '一人暮らしからオフィスなどさまざまなシーンで あなたの生活をサポートするグッズをご家庭へお届けします！', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'news'),
	(2, NULL, '2018-02-25 17:00:00', 2, 'dsa', '<script>alert(\'hello world\')</script>\r\ntest\r\n<div style="color:red;">sadsa</div>', NULL, 0, '2018-02-26 09:06:46', '2018-02-26 09:07:33', 'news');
/*!40000 ALTER TABLE `dtb_news` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_order
CREATE TABLE IF NOT EXISTS `dtb_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `sex_id` smallint(5) unsigned DEFAULT NULL,
  `job_id` smallint(5) unsigned DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `pre_order_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `name01` varchar(255) DEFAULT NULL,
  `name02` varchar(255) DEFAULT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel01` varchar(5) DEFAULT NULL,
  `tel02` varchar(4) DEFAULT NULL,
  `tel03` varchar(4) DEFAULT NULL,
  `fax01` varchar(5) DEFAULT NULL,
  `fax02` varchar(4) DEFAULT NULL,
  `fax03` varchar(4) DEFAULT NULL,
  `zip01` varchar(3) DEFAULT NULL,
  `zip02` varchar(4) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `delivery_fee_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `order_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `shipping_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `payment_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `add_point` decimal(12,0) NOT NULL DEFAULT '0',
  `use_point` decimal(12,0) NOT NULL DEFAULT '0',
  `order_status_id` smallint(5) unsigned DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D66D8079395C3F3` (`customer_id`),
  KEY `IDX_1D66D807F92F3E70` (`country_id`),
  KEY `IDX_1D66D807E171EF5F` (`pref_id`),
  KEY `IDX_1D66D8075A2DB2A0` (`sex_id`),
  KEY `IDX_1D66D807BE04EA9` (`job_id`),
  KEY `IDX_1D66D8074C3A3BB` (`payment_id`),
  KEY `IDX_1D66D8074FFA550E` (`device_type_id`),
  KEY `IDX_1D66D807D7707B45` (`order_status_id`),
  KEY `dtb_order_pre_order_id_idx` (`pre_order_id`),
  KEY `dtb_order_email_idx` (`email`),
  KEY `dtb_order_order_date_idx` (`order_date`),
  KEY `dtb_order_payment_date_idx` (`payment_date`),
  KEY `dtb_order_shipping_date_idx` (`shipping_date`),
  KEY `dtb_order_update_date_idx` (`update_date`),
  CONSTRAINT `FK_1D66D8074C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`),
  CONSTRAINT `FK_1D66D8074FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  CONSTRAINT `FK_1D66D8075A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  CONSTRAINT `FK_1D66D8079395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  CONSTRAINT `FK_1D66D807BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  CONSTRAINT `FK_1D66D807E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_1D66D807F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_order: ~70 rows (approximately)
DELETE FROM `dtb_order`;
/*!40000 ALTER TABLE `dtb_order` DISABLE KEYS */;
INSERT INTO `dtb_order` (`id`, `customer_id`, `country_id`, `pref_id`, `sex_id`, `job_id`, `payment_id`, `device_type_id`, `pre_order_id`, `code`, `message`, `name01`, `name02`, `kana01`, `kana02`, `company_name`, `email`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `birth`, `subtotal`, `discount`, `delivery_fee_total`, `charge`, `tax`, `total`, `payment_total`, `payment_method`, `note`, `create_date`, `update_date`, `order_date`, `shipping_date`, `payment_date`, `currency_code`, `add_point`, `use_point`, `order_status_id`, `discriminator_type`) VALUES
	(1, NULL, NULL, 1, NULL, NULL, 1, NULL, 'f5ecd2d21d07adcf2cbd69fdacf1ce1904153bdb', NULL, NULL, 'Dung', 'Le1', 'リ', 'リ', 'Company', 'test.eccube@gmail.com', '321', '321', '321', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', 'dsa', NULL, 3024.00, 0.00, 1000.00, 0.00, 224.00, 4024.00, 4024.00, '郵便振替', NULL, '2018-02-26 07:47:46', '2018-02-26 07:48:33', '2018-02-26 07:48:33', NULL, NULL, NULL, 40, 0, 1, 'order'),
	(2, 1, NULL, 1, NULL, NULL, 1, NULL, '43511f29afbb2a62b2d3c0f07e3ed6b652dbc33e', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 319680.00, 0.00, 1000.00, 0.00, 23680.00, 320680.00, 320680.00, '郵便振替', NULL, '2018-02-26 08:01:13', '2018-02-26 08:02:24', NULL, NULL, NULL, NULL, 3206, 0, 8, 'order'),
	(3, 1, NULL, 1, NULL, NULL, 1, NULL, '96e84b776e9ca0708c946ad8483eba03031a6923', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 319680.00, 0.00, 1000.00, 0.00, 23680.00, 320680.00, 320680.00, '郵便振替', NULL, '2018-02-26 08:03:24', '2018-02-26 08:05:35', NULL, NULL, NULL, NULL, 3206, 0, 8, 'order'),
	(4, 1, NULL, 1, NULL, NULL, 1, NULL, '3c2dac8c55b1aba756311af85615acdc5e9bbe1c', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 319680.00, 0.00, 3000.00, 0.00, 23680.00, 322680.00, 322680.00, '郵便振替', NULL, '2018-02-26 08:05:52', '2018-02-26 08:06:04', '2018-02-26 08:06:03', NULL, NULL, NULL, 3226, 0, 1, 'order'),
	(5, 1, NULL, 1, NULL, NULL, 1, NULL, 'f7e9e3402ab189b662cf92b635ce28adfba538d1', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-26 08:09:00', '2018-02-26 08:09:08', '2018-02-26 08:09:08', NULL, NULL, NULL, 60, 0, 1, 'order'),
	(6, 1, NULL, 1, NULL, NULL, 1, NULL, '580bc9bc9b5958063a5e306454d6c8a7d746f56c', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-26 08:09:41', '2018-02-26 08:09:51', '2018-02-26 08:09:51', NULL, NULL, NULL, 60, 0, 1, 'order'),
	(7, 1, NULL, 1, NULL, NULL, 1, NULL, '618a47f5d92358fd8b95443123f9bb511fb6e59b', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-26 08:11:44', '2018-02-26 08:11:49', '2018-02-26 08:11:49', NULL, NULL, NULL, 60, 0, 1, 'order'),
	(8, 1, NULL, 1, NULL, NULL, 1, NULL, '5214a8d2e83dcea6c123dc38442159c4244ec1a4', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 6048.00, 0.00, 3000.00, 0.00, 448.00, 9048.00, 9048.00, '郵便振替', NULL, '2018-02-26 08:14:06', '2018-02-26 08:14:11', '2018-02-26 08:14:11', NULL, NULL, NULL, 90, 0, 1, 'order'),
	(9, 1, NULL, 1, NULL, NULL, 1, NULL, 'e95b639103b1e27c6fc00e6154840ce0b4644db4', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 370440.00, 0.00, 3000.00, 0.00, 27440.00, 373440.00, 373440.00, '郵便振替', NULL, '2018-02-26 08:35:26', '2018-02-26 08:35:35', '2018-02-26 08:35:35', NULL, NULL, NULL, 3733, 0, 1, 'order'),
	(10, 1, NULL, 1, NULL, NULL, 1, NULL, 'b363c49065add24f5f559027123f7a7236362b6f', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 100440.00, 0.00, 1080.00, 0.00, 7520.00, 101520.00, 101520.00, '郵便振替', NULL, '2018-02-26 08:36:02', '2018-02-26 08:36:24', '2018-02-26 08:36:24', NULL, NULL, NULL, 1015, 0, 1, 'order'),
	(11, 1, NULL, 1, NULL, NULL, 1, NULL, '3ac6c1b47c35a61bc583dc1913f8707ab12ab3a2', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 356400.00, 0.00, 3000.00, 0.00, 26400.00, 359400.00, 359400.00, '郵便振替', NULL, '2018-02-26 08:38:30', '2018-02-26 08:38:36', '2018-02-26 08:38:36', NULL, NULL, NULL, 3594, 0, 1, 'order'),
	(12, 1, NULL, 1, NULL, NULL, 1, NULL, 'e4b1735ee26b1d83ec91fed6c78bcf2eed887ee6', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-26 10:10:56', '2018-02-26 10:10:56', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(13, 1, NULL, 1, NULL, NULL, 4, NULL, 'f93cf21c260d11886140ab2ccf31e3e3c37f8337', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '代金引換', NULL, '2018-02-26 10:17:18', '2018-02-26 10:17:38', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(14, 1, NULL, 1, NULL, NULL, 2, NULL, 'b50ebc3f33bd389e454f4164397d6d3c554007b0', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:19:22', '2018-02-26 10:20:50', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(15, 1, NULL, 1, NULL, NULL, 2, NULL, '5e9b42658d03acdb42662abf6b0ac7462bc82e30', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:21:33', '2018-02-26 10:21:33', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(16, 1, NULL, 1, NULL, NULL, 2, NULL, '453b338fdcefc62da16921d1c330eb9d29bd7703', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:22:27', '2018-02-26 10:22:27', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(17, 1, NULL, 1, NULL, NULL, 3, NULL, '8deb22b5611e7f686359abe3189ab84e1c231de1', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '銀行振込', NULL, '2018-02-26 10:31:27', '2018-02-26 10:34:02', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(18, 1, NULL, 1, NULL, NULL, 2, NULL, '2a0d3fa238e59e8cbf7bc528e4c4b25bcd8ea2ea', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:36:41', '2018-02-26 10:36:41', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(19, 1, NULL, 1, NULL, NULL, 2, NULL, '56ea6907d39e55073b05d388e7bd2700eacd154a', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:37:15', '2018-02-26 10:37:15', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(20, 1, NULL, 1, NULL, NULL, 2, NULL, 'f7e1cc444c411ebd9d7d74fd7ef959ada54a837f', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 1080.00, 0.00, 304.00, 4104.00, 4104.00, '現金書留', NULL, '2018-02-26 10:38:44', '2018-02-26 10:40:13', NULL, NULL, NULL, NULL, 41, 0, 8, 'order'),
	(21, 1, NULL, 1, NULL, NULL, 2, NULL, 'be17d19463190d49ac4327d224142e69c28a05ce', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-26 10:42:48', '2018-02-26 10:42:48', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(22, 1, NULL, 1, NULL, NULL, NULL, NULL, '172fe2d110e78f907d8c5558cea106104e6bd287', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2018-02-27 03:37:34', '2018-02-27 03:37:34', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(23, 1, NULL, 1, NULL, NULL, 1, NULL, '4b28cd2a1d7759b41a8af6e74549b9ade135442b', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 03:48:38', '2018-02-27 03:48:38', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(24, 1, NULL, 1, NULL, NULL, 1, NULL, '26e293865cbed111e058a7802e22165bb7e712f9', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 03:51:45', '2018-02-27 03:51:45', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(25, 1, NULL, 1, NULL, NULL, 2, NULL, 'fa83f7640ec13fabfc287bd7a535f880f0c91f03', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-27 03:52:59', '2018-02-27 03:52:59', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(26, 1, NULL, 1, NULL, NULL, 2, NULL, 'f9d42c3443cf6c5208029d8f332b5699991ae3fe', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-27 03:54:03', '2018-02-27 03:54:03', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(27, 1, NULL, 1, NULL, NULL, 2, NULL, '86f17df3a0deeefe7169e593278802999380b50c', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-27 03:55:23', '2018-02-27 03:55:23', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(28, 1, NULL, 1, NULL, NULL, 2, NULL, '15c411038d14707f5bb3bec84268ca1db2069ddd', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-27 03:56:36', '2018-02-27 03:56:36', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(29, 1, NULL, 1, NULL, NULL, 4, NULL, 'c8b976bf9aaa2488d3f4c26a87b8a45814674be2', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '代金引換', NULL, '2018-02-27 03:57:40', '2018-02-27 03:59:12', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(30, 1, NULL, 1, NULL, NULL, 1, NULL, '5b2cb172278da3f2529d31df4eb84fa9925a4275', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:00:38', '2018-02-27 04:00:38', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(31, 1, NULL, 1, NULL, NULL, 1, NULL, '3f3bec844eaf7219f6a4cbc7dbe9aa38bcc2968f', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:01:08', '2018-02-27 04:01:08', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(32, 1, NULL, 1, NULL, NULL, 1, NULL, '55439f17b964fffc6e9b1d16f8882bf3f9710611', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:02:44', '2018-02-27 04:02:44', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(33, 1, NULL, 1, NULL, NULL, 1, NULL, 'bd10f32dd59630f05dd6fb3e1470cb6c7095b91d', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:04:13', '2018-02-27 04:04:14', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(34, 1, NULL, 1, NULL, NULL, 1, NULL, 'b6c33decca1054d138893ef6e3e738fb94afc139', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:05:31', '2018-02-27 04:05:31', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(35, 1, NULL, 1, NULL, NULL, 1, NULL, '8bdbbd047ef0046ffa99e48a1a6f83337d5cd0f6', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:06:10', '2018-02-27 04:06:10', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(36, 1, NULL, 1, NULL, NULL, 1, NULL, '26197aec27329256e8d9de634cc7924d1f6d5eda', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:07:01', '2018-02-27 04:07:01', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(37, 1, NULL, 1, NULL, NULL, NULL, NULL, 'ad8f21055193c655a313b096042faf22fd3c859b', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2018-02-27 04:08:51', '2018-02-27 04:08:51', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(38, 1, NULL, 1, NULL, NULL, 4, NULL, 'f9b3aac395b415f02299c6278dcedd3b942cd3cc', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '代金引換', NULL, '2018-02-27 04:10:22', '2018-02-27 04:11:09', NULL, NULL, NULL, NULL, 60, 88, 8, 'order'),
	(39, 1, NULL, 1, NULL, NULL, NULL, NULL, 'a6dc6bdf296ba95a6dcbb9674c6a5c2ff86ef97c', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2018-02-27 04:16:07', '2018-02-27 04:16:07', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(40, 1, NULL, 1, NULL, NULL, NULL, NULL, 'ef98a037c90cf2a4744cc83f9f43f79ee1e83cf1', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2018-02-27 04:17:09', '2018-02-27 04:17:09', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(41, 1, NULL, 1, NULL, NULL, NULL, NULL, '998e0e4f067be7fac40d8324a9556ad8535883e7', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2018-02-27 04:19:56', '2018-02-27 04:19:56', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(42, 1, NULL, 1, NULL, NULL, 1, NULL, 'ea0fbcbf004ec1e68db316f354f80c6f12f8a322', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:22:56', '2018-02-27 04:22:56', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(43, 1, NULL, 1, NULL, NULL, 1, NULL, '7a38dee3136c6769a54988d056ef31dce35015aa', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:26:25', '2018-02-27 04:26:25', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(44, 1, NULL, 1, NULL, NULL, 1, NULL, '58996fb04b258d3d3d8129e015b3e1635dceeb9f', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:27:59', '2018-02-27 04:27:59', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(45, 1, NULL, 1, NULL, NULL, 1, NULL, 'ab6516853a1e3db12fd136507491e98af5534dfc', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:32:05', '2018-02-27 04:32:05', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(46, 1, NULL, 1, NULL, NULL, 1, NULL, '77201cfce55f4286ca49e49713690ef2ac459cd7', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:37:08', '2018-02-27 04:37:08', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(47, 1, NULL, 1, NULL, NULL, 1, NULL, '53bacd48c4447cf984750ad6249e30e8d899ab73', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3000.00, 0.00, 224.00, 6024.00, 6024.00, '郵便振替', NULL, '2018-02-27 04:41:26', '2018-02-27 04:41:26', NULL, NULL, NULL, NULL, 60, 0, 8, 'order'),
	(48, 1, NULL, 1, NULL, NULL, 1, NULL, 'ed6474c2efa4fdcef10ee37c5cbe7a16d225cf9e', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:45:48', '2018-02-27 04:45:48', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(49, 1, NULL, 1, NULL, NULL, 1, NULL, '969002d67aaaa14b120c72910f2863d58d388ce4', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:46:49', '2018-02-27 04:46:49', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(50, 1, NULL, 1, NULL, NULL, 2, NULL, 'b0f7b69810c57778094830e489f19d20eb436ae9', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '現金書留', NULL, '2018-02-27 04:48:57', '2018-02-27 04:49:02', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(51, 1, NULL, 1, NULL, NULL, 4, NULL, '61b0693832f8b39ccf2b100aed95b9023edf402b', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 1000.00, 0.00, 224.00, 4024.00, 4024.00, '代金引換', NULL, '2018-02-27 04:49:40', '2018-02-27 04:50:25', NULL, NULL, NULL, NULL, 40, 0, 8, 'order'),
	(52, 1, NULL, 1, NULL, NULL, 4, NULL, 'df1dd98ebb31326878f07593f0b0a2f21ad156ab', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 1080.00, 0.00, 304.00, 4104.00, 4104.00, '代金引換', NULL, '2018-02-27 04:52:10', '2018-02-27 04:55:43', NULL, NULL, NULL, NULL, 41, 0, 8, 'order'),
	(53, 1, NULL, 1, NULL, NULL, 4, NULL, '5070ca821c9a8c6db7ef44f9b7ef906d67c302f6', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '代金引換', NULL, '2018-02-27 04:55:52', '2018-02-27 04:56:04', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(54, 1, NULL, 1, NULL, NULL, 1, NULL, '06f0e72df4656a4a8eb689020679a03feb01be93', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:56:15', '2018-02-27 04:56:15', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(55, 1, NULL, 1, NULL, NULL, 1, NULL, '10677688506cdadaca09d37221a1fa4ac645a5b3', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 04:56:33', '2018-02-27 04:56:33', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(56, 1, NULL, 1, NULL, NULL, 3, NULL, '143dd0b7f69eaafd16a8a04420f826f11af1a52c', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '銀行振込', NULL, '2018-02-27 06:51:11', '2018-02-27 06:51:17', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(57, 1, NULL, 1, NULL, NULL, 1, NULL, '0ed6d561b1a4b0d92200babd480fb1461a143ddf', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 06:51:28', '2018-02-27 06:51:28', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(58, 1, NULL, 1, NULL, NULL, 1, NULL, 'c2881bf620494c2c62ec16d2f678cf23577ac6ee', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 06:55:17', '2018-02-27 06:55:17', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(59, 1, NULL, 1, NULL, NULL, 3, NULL, '33aeaa54429a7eed2bd6d43a9362cc3e35d306ee', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '銀行振込', NULL, '2018-02-27 06:59:01', '2018-02-27 06:59:17', NULL, NULL, NULL, NULL, 62, 0, 8, 'order'),
	(60, 1, NULL, 1, NULL, NULL, 1, NULL, 'f441570801d2069201a16c28fbbc4bddfe1138f7', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 07:00:05', '2018-02-27 07:00:05', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(61, 1, NULL, 1, NULL, NULL, 3, NULL, '52e7ef9be68ca1c3f331d3a45bea131e35dd3c26', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '銀行振込', NULL, '2018-02-27 07:00:45', '2018-02-27 07:01:14', NULL, NULL, NULL, NULL, 62, 99, 8, 'order'),
	(62, 1, NULL, 1, NULL, NULL, 3, NULL, '1913d3d068ac6967407f50a7a62e5081c99353a5', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '銀行振込', NULL, '2018-02-27 07:01:20', '2018-02-27 07:01:52', NULL, NULL, NULL, NULL, 62, 0, 8, 'order'),
	(63, 1, NULL, 1, NULL, NULL, 2, NULL, '9215c4506712b9a25e75832ea7febee69d0f96f0', NULL, 'test', 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '現金書留', NULL, '2018-02-27 07:02:16', '2018-02-27 07:04:07', NULL, NULL, NULL, NULL, 62, 0, 8, 'order'),
	(64, 1, NULL, 1, NULL, NULL, 2, NULL, 'cbaaf1d84a6262c1591b45dbc1ed783a6156400b', NULL, 'test', 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '現金書留', NULL, '2018-02-27 07:04:19', '2018-02-27 07:08:18', NULL, NULL, NULL, NULL, 62, 0, 8, 'order'),
	(66, 1, NULL, 1, NULL, NULL, 4, NULL, 'aeb10eac3ff66244b6f0153e3ff5ff3e1b94c395', NULL, 'test', 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 3240.00, 0.00, 464.00, 6264.00, 6264.00, '代金引換', NULL, '2018-02-27 07:09:42', '2018-02-27 07:11:40', '2018-02-27 07:11:40', NULL, NULL, NULL, 62, 0, 1, 'order'),
	(67, 1, NULL, 1, NULL, NULL, 1, NULL, 'add1c53e2125e4e16b291d77a3edf445f3733a40', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 09:01:49', '2018-02-27 09:01:49', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(68, 1, NULL, 1, NULL, NULL, 1, NULL, '97e2f6702d9dbaf7c99e74b1285196892e3ce362', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 09:04:20', '2018-02-27 09:04:29', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(69, 1, NULL, 1, NULL, NULL, 1, NULL, 'cdcf8e0104ecbc1a9ffe270767a372554e557f04', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '郵便振替', NULL, '2018-02-27 09:06:40', '2018-02-27 09:06:54', NULL, NULL, NULL, NULL, 0, 0, 8, 'order'),
	(70, 1, NULL, 1, NULL, NULL, 1, NULL, 'b89b6a1d4c1004b3986f43c03c296f4d0326fdc8', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 3024.00, 0.00, 324.00, 0.00, 248.00, 3348.00, 3348.00, '郵便振替', NULL, '2018-02-27 09:08:07', '2018-02-27 09:08:52', NULL, NULL, NULL, NULL, 33, 0, 8, 'order'),
	(72, 1, NULL, 1, 1, NULL, 1, NULL, '9b07bfc647552c6aa94740289ff4fb1ef576f431', NULL, NULL, 'Le', 'Dung', 'フ', 'フ', 'Company', 'test.eccube@gmail.com', '060', '060', '060', NULL, NULL, NULL, '060', '0000', NULL, '札幌市中央区', '0000', NULL, 847162.00, 0.00, 3000.00, 0.00, 103350.00, 850162.00, 850162.00, '郵便振替', NULL, '2018-03-12 03:32:57', '2018-03-19 09:44:35', '2018-03-12 03:35:40', NULL, NULL, 'JPY', 8502, 0, 1, 'order');
/*!40000 ALTER TABLE `dtb_order` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_order_item
CREATE TABLE IF NOT EXISTS `dtb_order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `shipping_id` int(10) unsigned DEFAULT NULL,
  `tax_type_id` smallint(5) unsigned DEFAULT NULL,
  `tax_display_type_id` smallint(5) unsigned DEFAULT NULL,
  `order_item_type_id` smallint(5) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `class_name1` varchar(255) DEFAULT NULL,
  `class_name2` varchar(255) DEFAULT NULL,
  `class_category_name1` varchar(255) DEFAULT NULL,
  `class_category_name2` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,0) NOT NULL DEFAULT '0',
  `tax_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `tax_rule` smallint(5) unsigned DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A0C8C3ED8D9F6D38` (`order_id`),
  KEY `IDX_A0C8C3ED4584665A` (`product_id`),
  KEY `IDX_A0C8C3ED21B06187` (`product_class_id`),
  KEY `IDX_A0C8C3ED4887F3F8` (`shipping_id`),
  KEY `IDX_A0C8C3ED84042C99` (`tax_type_id`),
  KEY `IDX_A0C8C3EDA2505856` (`tax_display_type_id`),
  KEY `IDX_A0C8C3EDCAD13EAD` (`order_item_type_id`),
  CONSTRAINT `FK_A0C8C3ED21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_A0C8C3ED4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_A0C8C3ED4887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `dtb_shipping` (`id`),
  CONSTRAINT `FK_A0C8C3ED84042C99` FOREIGN KEY (`tax_type_id`) REFERENCES `mtb_tax_type` (`id`),
  CONSTRAINT `FK_A0C8C3ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`),
  CONSTRAINT `FK_A0C8C3EDA2505856` FOREIGN KEY (`tax_display_type_id`) REFERENCES `mtb_tax_display_type` (`id`),
  CONSTRAINT `FK_A0C8C3EDCAD13EAD` FOREIGN KEY (`order_item_type_id`) REFERENCES `mtb_order_item_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_order_item: ~100 rows (approximately)
DELETE FROM `dtb_order_item`;
/*!40000 ALTER TABLE `dtb_order_item` DISABLE KEYS */;
INSERT INTO `dtb_order_item` (`id`, `order_id`, `product_id`, `product_class_id`, `shipping_id`, `tax_type_id`, `tax_display_type_id`, `order_item_type_id`, `product_name`, `product_code`, `class_name1`, `class_name2`, `class_category_name1`, `class_category_name2`, `price`, `quantity`, `tax_rate`, `tax_rule`, `currency_code`, `point_rate`, `discriminator_type`) VALUES
	(1, 1, 2, 10, 1, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(2, 1, NULL, NULL, 1, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(3, 2, 1, 3, 2, 1, 1, 1, 'ディナーフォーク', 'fork-03', '材質', 'サイズ', 'プラチナ', '120mm', 74000.00, 4, 8, 1, NULL, NULL, 'orderitem'),
	(4, 2, NULL, NULL, 2, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(5, 3, 1, 3, 3, 1, 1, 1, 'ディナーフォーク', 'fork-03', '材質', 'サイズ', 'プラチナ', '120mm', 74000.00, 4, 8, 1, NULL, NULL, 'orderitem'),
	(6, 3, NULL, NULL, 3, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(7, 4, 1, 3, 4, 1, 1, 1, 'ディナーフォーク', 'fork-03', '材質', 'サイズ', 'プラチナ', '120mm', 74000.00, 4, 8, 1, NULL, NULL, 'orderitem'),
	(8, 4, NULL, NULL, 4, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(9, 5, 2, 10, 5, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(10, 5, NULL, NULL, 5, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(11, 6, 2, 10, 6, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(12, 6, NULL, NULL, 6, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(13, 7, 2, 10, 7, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(14, 7, NULL, NULL, 7, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(15, 8, 2, 10, 8, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 2, 8, 1, NULL, NULL, 'orderitem'),
	(16, 8, NULL, NULL, 8, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(17, 9, 1, 5, 9, 1, 1, 1, 'ディナーフォーク', 'fork-05', '材質', 'サイズ', '銀', '170mm', 49000.00, 7, 8, 1, NULL, NULL, 'orderitem'),
	(18, 9, NULL, NULL, 9, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(19, 10, 1, 2, 10, 1, 1, 1, 'ディナーフォーク', 'fork-02', '材質', 'サイズ', 'プラチナ', '170mm', 93000.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(20, 10, NULL, NULL, 10, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(21, 11, 1, 1, 11, 1, 1, 1, 'ディナーフォーク', 'fork-01', '材質', 'サイズ', 'プラチナ', '150cm', 110000.00, 3, 8, 1, NULL, NULL, 'orderitem'),
	(22, 11, NULL, NULL, 11, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(23, 12, 2, 10, 12, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(24, 13, 2, 10, 13, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(25, 14, 2, 10, 14, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(26, 15, 2, 10, 15, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(27, 16, 2, 10, 16, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(28, 17, 2, 10, 17, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(29, 18, 2, 10, 18, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(30, 19, 2, 10, 19, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(31, 20, 2, 10, 20, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(32, 20, NULL, NULL, 20, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(33, 21, 2, 10, 21, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(34, 22, 2, 10, 22, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(35, 23, 2, 10, 23, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(36, 24, 2, 10, 24, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(37, 25, 2, 10, 25, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(38, 26, 2, 10, 26, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(39, 27, 2, 10, 27, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(40, 28, 2, 10, 28, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(41, 29, 2, 10, 29, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(42, 30, 2, 10, 30, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(43, 31, 2, 10, 31, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(44, 32, 2, 10, 32, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(45, 33, 2, 10, 33, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(46, 34, 2, 10, 34, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(47, 35, 2, 10, 35, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(48, 36, 2, 10, 36, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(49, 37, 2, 10, 37, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(50, 38, 2, 10, 38, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(51, 38, NULL, NULL, 38, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(52, 39, 2, 10, 39, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(53, 40, 2, 10, 40, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(54, 41, 2, 10, 41, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(55, 42, 2, 10, 42, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(56, 42, NULL, NULL, 42, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(57, 43, 2, 10, 43, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(58, 43, NULL, NULL, 43, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(59, 44, 2, 10, 44, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(60, 44, NULL, NULL, 44, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(61, 45, 2, 10, 45, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(62, 45, NULL, NULL, 45, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(63, 46, 2, 10, 46, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(64, 46, NULL, NULL, 46, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(65, 47, 2, 10, 47, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(66, 47, NULL, NULL, 47, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(67, 48, 2, 10, 48, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(68, 49, 2, 10, 49, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(69, 50, 2, 10, 50, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(70, 51, 2, 10, 51, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(71, 51, NULL, NULL, 51, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(72, 52, 2, 10, 52, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(73, 52, NULL, NULL, 52, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 1000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(74, 53, 2, 10, 53, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(75, 54, 2, 10, 54, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(76, 55, 2, 10, 55, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(77, 56, 2, 10, 56, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(78, 57, 2, 10, 57, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(79, 58, 2, 10, 58, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(80, 59, 2, 10, 59, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(81, 59, NULL, NULL, 59, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(82, 60, 2, 10, 60, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(83, 61, 2, 10, 61, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(84, 61, NULL, NULL, 61, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(85, 62, 2, 10, 62, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(86, 62, NULL, NULL, 62, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(87, 63, 2, 10, 63, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(88, 63, NULL, NULL, 63, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(89, 64, 2, 10, 64, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(90, 64, NULL, NULL, 64, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(92, 66, 2, 10, 66, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(93, 66, NULL, NULL, 66, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(94, 67, 2, 10, 67, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(95, 68, 2, 10, 68, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(96, 69, 2, 10, 69, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(97, 70, 2, 10, 70, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 1, 8, 1, NULL, NULL, 'orderitem'),
	(98, 70, NULL, NULL, 70, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 300.00, 1, 8, NULL, NULL, NULL, 'orderitem'),
	(99, 72, 2, 10, 71, 1, 1, 1, 'パーコレーター', 'cafe-01', NULL, NULL, NULL, NULL, 2800.00, 4, 7, 8, 'JPY', NULL, 'orderitem'),
	(100, 72, NULL, NULL, 71, 1, 2, 2, '送料', NULL, NULL, NULL, NULL, NULL, 3000.00, 1, 8, NULL, 'JPY', NULL, 'orderitem'),
	(101, 72, 26, 72, NULL, NULL, NULL, 1, 'A6', NULL, NULL, NULL, NULL, NULL, 366306.00, 2, 8, NULL, 'JPY', NULL, 'orderitem');
/*!40000 ALTER TABLE `dtb_order_item` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_page
CREATE TABLE IF NOT EXISTS `dtb_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `master_page_id` int(10) unsigned DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `edit_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `update_url` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `meta_robots` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(4000) DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E3951A674FFA550E` (`device_type_id`),
  KEY `IDX_E3951A67D0618E8C` (`master_page_id`),
  KEY `dtb_page_url_idx` (`url`),
  CONSTRAINT `FK_E3951A674FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  CONSTRAINT `FK_E3951A67D0618E8C` FOREIGN KEY (`master_page_id`) REFERENCES `dtb_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_page: ~40 rows (approximately)
DELETE FROM `dtb_page`;
/*!40000 ALTER TABLE `dtb_page` DISABLE KEYS */;
INSERT INTO `dtb_page` (`id`, `device_type_id`, `master_page_id`, `page_name`, `url`, `file_name`, `edit_type`, `author`, `description`, `keyword`, `update_url`, `create_date`, `update_date`, `meta_robots`, `meta_tags`, `discriminator_type`) VALUES
	(0, 10, NULL, 'プレビューデータ', 'preview', NULL, 1, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(1, 10, NULL, 'TOPページ', 'homepage', 'index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(2, 10, NULL, '商品一覧ページ', 'product_list', 'Product/list', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(3, 10, NULL, '商品詳細ページ', 'product_detail', 'Product/detail', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(4, 10, NULL, 'MYページ', 'mypage', 'Mypage/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(5, 10, NULL, 'MYページ/会員登録内容変更(入力ページ)', 'mypage_change', 'Mypage/change', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(6, 10, NULL, 'MYページ/会員登録内容変更(完了ページ)', 'mypage_change_complete', 'Mypage/change_complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(7, 10, NULL, 'MYページ/お届け先一覧', 'mypage_delivery', 'Mypage/delivery', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(8, 10, NULL, 'MYページ/お届け先追加', 'mypage_delivery_new', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(9, 10, NULL, 'MYページ/お気に入り一覧', 'mypage_favorite', 'Mypage/favorite', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(10, 10, NULL, 'MYページ/購入履歴詳細', 'mypage_history', 'Mypage/history', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(11, 10, NULL, 'MYページ/ログイン', 'mypage_login', 'Mypage/login', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(12, 10, NULL, 'MYページ/退会手続き(入力ページ)', 'mypage_withdraw', 'Mypage/withdraw', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(13, 10, NULL, 'MYページ/退会手続き(完了ページ)', 'mypage_withdraw_complete', 'Mypage/withdraw_complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(14, 10, NULL, '当サイトについて', 'help_about', 'Help/about', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(15, 10, NULL, '現在のカゴの中', 'cart', 'Cart/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(16, 10, NULL, 'お問い合わせ(入力ページ)', 'contact', 'Contact/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(17, 10, NULL, 'お問い合わせ(完了ページ)', 'contact_complete', 'Contact/complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(18, 10, NULL, '会員登録(入力ページ)', 'entry', 'Entry/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(19, 10, NULL, 'ご利用規約', 'help_agreement', 'Help/agreement', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(20, 10, NULL, '会員登録(完了ページ)', 'entry_complete', 'Entry/complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(21, 10, NULL, '特定商取引に関する法律に基づく表記', 'help_tradelaw', 'Help/tradelaw', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(22, 10, NULL, '本会員登録(完了ページ)', 'entry_activate', 'Entry/activate', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(23, 10, NULL, '商品購入', 'shopping', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(24, 10, NULL, '商品購入/お届け先の指定', 'shopping_shipping', 'Shopping/shipping', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(25, 10, NULL, '商品購入/お届け先の複数指定', 'shopping_shipping_multiple', 'Shopping/shipping_multiple', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(28, 10, NULL, '商品購入/ご注文完了', 'shopping_complete', 'Shopping/complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
	(29, 10, NULL, 'プライバシーポリシー', 'help_privacy', 'Help/privacy', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(30, 10, NULL, '商品購入ログイン', 'shopping_login', 'Shopping/login', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(31, 10, NULL, '非会員購入情報入力', 'shopping_nonmember', 'Shopping/nonmember', 2, NULL, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
	(32, 10, NULL, '商品購入/お届け先の追加', 'shopping_shipping_edit', 'Shopping/shipping_edit', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
	(33, 10, NULL, '商品購入/お届け先の複数指定(お届け先の追加)', 'shopping_shipping_multiple_edit', 'Shopping/shipping_multiple_edit', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
	(34, 10, NULL, '商品購入/購入エラー', 'shopping_error', 'Shopping/shopping_error', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
	(35, 10, NULL, 'ご利用ガイド', 'help_guide', 'Help/guide', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', NULL, NULL, 'page'),
	(36, 10, NULL, 'パスワード再発行(入力ページ)', 'forgot', 'Forgot/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', NULL, NULL, 'page'),
	(37, 10, NULL, 'パスワード再発行(完了ページ)', 'forgot_complete', 'Forgot/complete', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
	(38, 10, NULL, 'パスワード変更(完了ページ)', 'forgot_reset', 'Forgot/reset', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:05', 'noindex', NULL, 'page'),
	(42, 10, NULL, '商品購入/お届け先変更', 'shopping_shipping_edit_change', 'Shopping/index', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:03', '2017-03-07 01:15:03', 'noindex', NULL, 'page'),
	(44, 10, 8, 'MYページ/お届け先編集', 'mypage_delivery_edit', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:05', '2017-03-07 01:15:05', 'noindex', NULL, 'page'),
	(45, 10, NULL, '商品購入/ご注文確認', 'shopping_confirm', 'Shopping/confirm', 2, NULL, NULL, NULL, NULL, '2017-03-07 01:15:03', '2017-03-07 01:15:03', 'noindex', NULL, 'page');
/*!40000 ALTER TABLE `dtb_page` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_page_layout
CREATE TABLE IF NOT EXISTS `dtb_page_layout` (
  `page_id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`,`layout_id`),
  KEY `IDX_F2799941C4663E4` (`page_id`),
  KEY `IDX_F27999418C22AA1A` (`layout_id`),
  CONSTRAINT `FK_F27999418C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  CONSTRAINT `FK_F2799941C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_page_layout: ~41 rows (approximately)
DELETE FROM `dtb_page_layout`;
/*!40000 ALTER TABLE `dtb_page_layout` DISABLE KEYS */;
INSERT INTO `dtb_page_layout` (`page_id`, `layout_id`, `discriminator_type`) VALUES
	(0, 1, 'pagelayout'),
	(1, 1, 'pagelayout'),
	(1, 2, 'pagelayout'),
	(2, 3, 'pagelayout'),
	(3, 3, 'pagelayout'),
	(4, 3, 'pagelayout'),
	(5, 3, 'pagelayout'),
	(6, 3, 'pagelayout'),
	(7, 3, 'pagelayout'),
	(8, 3, 'pagelayout'),
	(9, 3, 'pagelayout'),
	(10, 3, 'pagelayout'),
	(11, 3, 'pagelayout'),
	(12, 3, 'pagelayout'),
	(13, 3, 'pagelayout'),
	(14, 3, 'pagelayout'),
	(15, 3, 'pagelayout'),
	(16, 3, 'pagelayout'),
	(17, 3, 'pagelayout'),
	(18, 3, 'pagelayout'),
	(19, 3, 'pagelayout'),
	(20, 3, 'pagelayout'),
	(21, 3, 'pagelayout'),
	(22, 3, 'pagelayout'),
	(23, 3, 'pagelayout'),
	(24, 3, 'pagelayout'),
	(25, 3, 'pagelayout'),
	(28, 3, 'pagelayout'),
	(29, 3, 'pagelayout'),
	(30, 3, 'pagelayout'),
	(31, 3, 'pagelayout'),
	(32, 3, 'pagelayout'),
	(33, 3, 'pagelayout'),
	(34, 3, 'pagelayout'),
	(35, 3, 'pagelayout'),
	(36, 3, 'pagelayout'),
	(37, 3, 'pagelayout'),
	(38, 3, 'pagelayout'),
	(42, 3, 'pagelayout'),
	(44, 3, 'pagelayout'),
	(45, 3, 'pagelayout');
/*!40000 ALTER TABLE `dtb_page_layout` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_payment
CREATE TABLE IF NOT EXISTS `dtb_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `charge` decimal(12,2) DEFAULT '0.00',
  `rule_max` decimal(12,2) DEFAULT NULL,
  `sort_no` smallint(5) unsigned DEFAULT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT '1',
  `payment_image` varchar(255) DEFAULT NULL,
  `rule_min` decimal(12,2) DEFAULT NULL,
  `method_class` varchar(255) DEFAULT NULL,
  `service_class` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7AFF628F61220EA6` (`creator_id`),
  CONSTRAINT `FK_7AFF628F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_payment: ~5 rows (approximately)
DELETE FROM `dtb_payment`;
/*!40000 ALTER TABLE `dtb_payment` DISABLE KEYS */;
INSERT INTO `dtb_payment` (`id`, `creator_id`, `payment_method`, `charge`, `rule_max`, `sort_no`, `fixed`, `payment_image`, `rule_min`, `method_class`, `service_class`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, '郵便振替', 0.00, 10000.00, 4, 1, NULL, 8000.00, 'Eccube\\Service\\Payment\\Method\\Cash', 'Eccube\\Service\\PaymentService', 1, '2017-03-07 10:14:52', '2018-02-27 04:52:01', 'payment'),
	(2, NULL, '現金書留', 0.00, 10000.00, 3, 1, NULL, 6000.00, 'Eccube\\Service\\Payment\\Method\\Cash', 'Eccube\\Service\\PaymentService', 1, '2017-03-07 10:14:52', '2018-02-27 07:03:46', 'payment'),
	(3, NULL, '銀行振込', 0.00, 5000.00, 2, 1, NULL, 3000.00, 'Eccube\\Service\\Payment\\Method\\Cash', 'Eccube\\Service\\PaymentService', 1, '2017-03-07 10:14:52', '2018-02-27 07:02:10', 'payment'),
	(4, NULL, '代金引換', 0.00, NULL, 1, 1, NULL, 0.00, 'Eccube\\Service\\Payment\\Method\\Cash', 'Eccube\\Service\\PaymentService', 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'payment'),
	(5, 1, 'test 1 dwqewq ewq ewq ewq ewqe wq etest 1 dwqewq ewq ewq ewq ewqe wq etest 1 dwqewq ewq ewq ewq ewqe wq etest 1 dwqewq ewq ewq ewq ewqe wq etest 1 dwqedsadsadsadsadsadsadsadwq ewq ewq ewq ewqe wq etest 1 dwqewq ewq ewq ewq ewqe wq etest 1 dwqewq ewq ewq e', 321.00, 321.00, 5, 1, '0308110435_5aa0b6534dbdf.jpeg', 321.00, NULL, NULL, 0, '2018-03-08 04:04:44', '2018-03-15 09:45:56', 'payment');
/*!40000 ALTER TABLE `dtb_payment` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_payment_option
CREATE TABLE IF NOT EXISTS `dtb_payment_option` (
  `delivery_id` int(10) unsigned NOT NULL,
  `payment_id` int(10) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`delivery_id`,`payment_id`),
  KEY `IDX_5631540D12136921` (`delivery_id`),
  KEY `IDX_5631540D4C3A3BB` (`payment_id`),
  CONSTRAINT `FK_5631540D12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_5631540D4C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_payment_option: ~9 rows (approximately)
DELETE FROM `dtb_payment_option`;
/*!40000 ALTER TABLE `dtb_payment_option` DISABLE KEYS */;
INSERT INTO `dtb_payment_option` (`delivery_id`, `payment_id`, `discriminator_type`) VALUES
	(1, 1, 'paymentoption'),
	(1, 2, 'paymentoption'),
	(1, 3, 'paymentoption'),
	(1, 4, 'paymentoption'),
	(2, 3, 'paymentoption'),
	(3, 1, 'paymentoption'),
	(3, 2, 'paymentoption'),
	(3, 3, 'paymentoption'),
	(3, 4, 'paymentoption');
/*!40000 ALTER TABLE `dtb_payment_option` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_plugin
CREATE TABLE IF NOT EXISTS `dtb_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_plugin: ~0 rows (approximately)
DELETE FROM `dtb_plugin`;
/*!40000 ALTER TABLE `dtb_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_plugin` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_plugin_event_handler
CREATE TABLE IF NOT EXISTS `dtb_plugin_event_handler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_id` int(10) unsigned NOT NULL,
  `event` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL,
  `handler_type` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_92639EBDEC942BCF` (`plugin_id`),
  CONSTRAINT `FK_92639EBDEC942BCF` FOREIGN KEY (`plugin_id`) REFERENCES `dtb_plugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_plugin_event_handler: ~0 rows (approximately)
DELETE FROM `dtb_plugin_event_handler`;
/*!40000 ALTER TABLE `dtb_plugin_event_handler` DISABLE KEYS */;
/*!40000 ALTER TABLE `dtb_plugin_event_handler` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product
CREATE TABLE IF NOT EXISTS `dtb_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `product_status_id` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `description_list` varchar(4000) DEFAULT NULL,
  `description_detail` varchar(4000) DEFAULT NULL,
  `search_word` varchar(4000) DEFAULT NULL,
  `free_area` longtext,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C49DE22F61220EA6` (`creator_id`),
  KEY `IDX_C49DE22F557B630` (`product_status_id`),
  CONSTRAINT `FK_C49DE22F557B630` FOREIGN KEY (`product_status_id`) REFERENCES `mtb_product_status` (`id`),
  CONSTRAINT `FK_C49DE22F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product: ~16 rows (approximately)
DELETE FROM `dtb_product`;
/*!40000 ALTER TABLE `dtb_product` DISABLE KEYS */;
INSERT INTO `dtb_product` (`id`, `creator_id`, `product_status_id`, `name`, `note`, `description_list`, `description_detail`, `search_word`, `free_area`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, 1, 'ディナーフォーク', NULL, NULL, 'セットで揃えたいディナー用のカトラリー。定番の銀製は、シルバー特有の美しい輝きと柔らかな曲線が特徴です。適度な重みと日本人の手に合いやすいサイズ感で長く愛用いただけます。\r\n最高級プラチナフォークは、贈り物としても人気です。', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'product'),
	(2, NULL, 1, 'パーコレーター', NULL, NULL, 'パーコレーターはコーヒーの粉をセットして直火にかけて抽出する器具です。\r\nアウトドアでも淹れたてのコーヒーをお楽しみいただけます。\r\nいまだけ、おいしい淹れ方の冊子つきです。', NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'product'),
	(5, 1, 3, 'パーコレーター2', NULL, NULL, 'パーコレーターはコーヒーの粉をセットして直火にかけて抽出する器具です。\r\nアウトドアでも淹れたてのコーヒーをお楽しみいただけます。\r\nいまだけ、おいしい淹れ方の冊子つきです。', NULL, NULL, '2018-02-28 03:11:24', '2018-03-20 09:19:16', 'product'),
	(6, NULL, 2, 'test maker 1', NULL, NULL, NULL, NULL, NULL, '2018-02-28 03:22:23', '2018-02-28 03:22:23', 'product'),
	(7, NULL, 2, '876', NULL, NULL, NULL, NULL, NULL, '2018-02-28 03:22:56', '2018-02-28 03:22:56', 'product'),
	(20, NULL, 1, 'aaa', NULL, NULL, NULL, NULL, NULL, '2018-03-05 03:39:38', '2018-03-05 03:39:38', 'product'),
	(21, NULL, 1, 'aaa', NULL, NULL, NULL, NULL, NULL, '2018-03-06 02:31:46', '2018-03-06 02:31:46', 'product'),
	(22, 1, 2, 'A2', NULL, NULL, NULL, NULL, NULL, '2018-03-12 09:57:48', '2018-03-12 09:58:01', 'product'),
	(23, 1, 2, 'A3', NULL, NULL, NULL, NULL, NULL, '2018-03-12 09:58:18', '2018-03-12 09:58:25', 'product'),
	(24, 1, 2, 'A4', NULL, NULL, NULL, NULL, NULL, '2018-03-12 09:58:37', '2018-03-12 09:58:48', 'product'),
	(25, 1, 2, 'A5', NULL, NULL, NULL, NULL, NULL, '2018-03-12 09:59:25', '2018-03-12 09:59:32', 'product'),
	(26, 1, 2, 'A6', NULL, NULL, NULL, NULL, NULL, '2018-03-12 10:00:34', '2018-03-12 10:00:40', 'product'),
	(27, 1, 2, 'test', NULL, NULL, NULL, NULL, NULL, '2018-03-15 04:57:41', '2018-03-15 04:57:41', 'product'),
	(28, 1, 2, 'test 2', NULL, NULL, NULL, NULL, NULL, '2018-03-15 06:55:28', '2018-03-15 06:55:29', 'product'),
	(29, 1, 3, 'A7', NULL, NULL, NULL, NULL, NULL, '2018-03-19 10:17:48', '2018-03-20 09:18:37', 'product'),
	(30, 1, 3, 'A8', NULL, NULL, NULL, NULL, NULL, '2018-03-19 10:18:25', '2018-03-20 09:18:37', 'product');
/*!40000 ALTER TABLE `dtb_product` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product_category
CREATE TABLE IF NOT EXISTS `dtb_product_category` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_B05778914584665A` (`product_id`),
  KEY `IDX_B057789112469DE2` (`category_id`),
  CONSTRAINT `FK_B057789112469DE2` FOREIGN KEY (`category_id`) REFERENCES `dtb_category` (`id`),
  CONSTRAINT `FK_B05778914584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product_category: ~12 rows (approximately)
DELETE FROM `dtb_product_category`;
/*!40000 ALTER TABLE `dtb_product_category` DISABLE KEYS */;
INSERT INTO `dtb_product_category` (`product_id`, `category_id`, `sort_no`, `discriminator_type`) VALUES
	(1, 5, 1, 'productcategory'),
	(1, 6, 1, 'productcategory'),
	(2, 1, 1, 'productcategory'),
	(2, 4, 1, 'productcategory'),
	(2, 6, 2, 'productcategory'),
	(5, 1, 1, 'productcategory'),
	(5, 4, 2, 'productcategory'),
	(5, 6, 3, 'productcategory'),
	(7, 1, 1, 'productcategory'),
	(7, 3, 3, 'productcategory'),
	(7, 4, 2, 'productcategory'),
	(7, 5, 4, 'productcategory');
/*!40000 ALTER TABLE `dtb_product_category` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product_class
CREATE TABLE IF NOT EXISTS `dtb_product_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `sale_type_id` smallint(5) unsigned DEFAULT NULL,
  `class_category_id1` int(10) unsigned DEFAULT NULL,
  `class_category_id2` int(10) unsigned DEFAULT NULL,
  `delivery_duration_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` tinyint(1) NOT NULL DEFAULT '0',
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(12,2) DEFAULT NULL,
  `price02` decimal(12,2) NOT NULL,
  `delivery_fee` decimal(12,2) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1A11D1BA4584665A` (`product_id`),
  KEY `IDX_1A11D1BAB0524E01` (`sale_type_id`),
  KEY `IDX_1A11D1BA248D128` (`class_category_id1`),
  KEY `IDX_1A11D1BA9B418092` (`class_category_id2`),
  KEY `IDX_1A11D1BABA4269E` (`delivery_duration_id`),
  KEY `IDX_1A11D1BA61220EA6` (`creator_id`),
  KEY `dtb_product_class_price02_idx` (`price02`),
  KEY `dtb_product_class_stock_stock_unlimited_idx` (`stock`,`stock_unlimited`),
  CONSTRAINT `FK_1A11D1BA248D128` FOREIGN KEY (`class_category_id1`) REFERENCES `dtb_class_category` (`id`),
  CONSTRAINT `FK_1A11D1BA4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_1A11D1BA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_1A11D1BA9B418092` FOREIGN KEY (`class_category_id2`) REFERENCES `dtb_class_category` (`id`),
  CONSTRAINT `FK_1A11D1BAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`),
  CONSTRAINT `FK_1A11D1BABA4269E` FOREIGN KEY (`delivery_duration_id`) REFERENCES `dtb_delivery_duration` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product_class: ~34 rows (approximately)
DELETE FROM `dtb_product_class`;
/*!40000 ALTER TABLE `dtb_product_class` DISABLE KEYS */;
INSERT INTO `dtb_product_class` (`id`, `product_id`, `sale_type_id`, `class_category_id1`, `class_category_id2`, `delivery_duration_id`, `creator_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `delivery_fee`, `visible`, `create_date`, `update_date`, `currency_code`, `point_rate`, `discriminator_type`) VALUES
	(0, 1, 1, NULL, NULL, NULL, NULL, 'fork-01', NULL, 1, NULL, 115000.00, 110000.00, NULL, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(1, 1, 1, 3, 6, NULL, NULL, 'fork-01', NULL, 1, NULL, 115000.00, 110000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(2, 1, 1, 3, 5, NULL, NULL, 'fork-02', NULL, 1, NULL, 95000.00, 93000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(3, 1, 1, 3, 4, NULL, NULL, 'fork-03', NULL, 1, NULL, 75000.00, 74000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(4, 1, 1, 2, 6, NULL, NULL, 'fork-04', NULL, 1, NULL, 95000.00, 93000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(5, 1, 1, 2, 5, NULL, NULL, 'fork-05', NULL, 1, NULL, 50000.00, 49000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(6, 1, 1, 2, 4, NULL, NULL, 'fork-06', NULL, 1, NULL, 35000.00, 34500.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(7, 1, 1, 1, 6, NULL, NULL, 'fork-07', NULL, 1, NULL, NULL, 18000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(8, 1, 1, 1, 5, NULL, NULL, 'fork-08', NULL, 1, NULL, NULL, 13000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(9, 1, 1, 1, 4, NULL, NULL, 'fork-09', NULL, 1, NULL, NULL, 5000.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(10, 2, 1, NULL, NULL, NULL, NULL, 'cafe-01', 100, 0, 5, 3000.00, 2800.00, NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
	(19, 5, 1, NULL, NULL, NULL, NULL, 'cafe-01', 100, 0, 5, 3000.00, 2800.00, NULL, 1, '2018-02-28 03:11:24', '2018-02-28 03:19:54', 'JPY', NULL, 'productclass'),
	(20, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 312321.00, NULL, 1, '2018-02-28 03:22:23', '2018-02-28 03:22:23', NULL, NULL, 'productclass'),
	(21, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 876.00, NULL, 1, '2018-02-28 03:22:56', '2018-02-28 03:22:56', NULL, NULL, 'productclass'),
	(66, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-05 03:39:38', '2018-03-05 03:39:38', NULL, NULL, 'productclass'),
	(67, 21, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-06 02:31:46', '2018-03-06 02:31:46', NULL, NULL, 'productclass'),
	(68, 22, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-12 09:57:48', '2018-03-12 09:58:01', 'JPY', NULL, 'productclass'),
	(69, 23, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-12 09:58:18', '2018-03-12 09:58:25', 'JPY', NULL, 'productclass'),
	(70, 24, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-12 09:58:37', '2018-03-12 09:58:48', 'JPY', NULL, 'productclass'),
	(71, 25, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-12 09:59:25', '2018-03-12 09:59:32', 'JPY', NULL, 'productclass'),
	(72, 26, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-12 10:00:34', '2018-03-12 10:00:40', 'JPY', NULL, 'productclass'),
	(73, 27, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 1, '2018-03-15 04:57:41', '2018-03-15 06:54:22', 'JPY', NULL, 'productclass'),
	(74, 27, 1, 3, 6, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(75, 27, 1, 3, 5, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(76, 27, 1, 3, 4, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(77, 27, 1, 2, 6, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(78, 27, 1, 2, 5, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(79, 27, 1, 2, 4, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(80, 27, 1, 1, 6, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:54:22', 'JPY', NULL, 'productclass'),
	(81, 27, 1, 1, 5, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(82, 27, 1, 1, 4, NULL, 1, NULL, NULL, 1, NULL, NULL, 444.00, NULL, 0, '2018-03-15 04:58:26', '2018-03-16 03:56:19', 'JPY', NULL, 'productclass'),
	(83, 28, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321.00, NULL, 1, '2018-03-15 06:55:28', '2018-03-15 06:55:28', 'JPY', NULL, 'productclass'),
	(84, 29, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-19 10:17:48', '2018-03-19 10:18:00', 'JPY', NULL, 'productclass'),
	(85, 30, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 321321.00, NULL, 1, '2018-03-19 10:18:25', '2018-03-19 10:18:34', 'JPY', NULL, 'productclass');
/*!40000 ALTER TABLE `dtb_product_class` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product_image
CREATE TABLE IF NOT EXISTS `dtb_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3267CC7A4584665A` (`product_id`),
  KEY `IDX_3267CC7A61220EA6` (`creator_id`),
  CONSTRAINT `FK_3267CC7A4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_3267CC7A61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product_image: ~10 rows (approximately)
DELETE FROM `dtb_product_image`;
/*!40000 ALTER TABLE `dtb_product_image` DISABLE KEYS */;
INSERT INTO `dtb_product_image` (`id`, `product_id`, `creator_id`, `file_name`, `sort_no`, `create_date`, `discriminator_type`) VALUES
	(1, 1, NULL, 'fork-1.jpg', 1, '2017-03-07 10:14:52', 'productimage'),
	(2, 1, NULL, 'fork-2.jpg', 2, '2017-03-07 10:14:52', 'productimage'),
	(3, 1, NULL, 'fork-3.jpg', 3, '2017-03-07 10:14:52', 'productimage'),
	(4, 2, NULL, 'cafe-1.jpg', 1, '2017-03-07 10:14:52', 'productimage'),
	(5, 2, NULL, 'cafe-2.jpg', 2, '2017-03-07 10:14:52', 'productimage'),
	(6, 2, NULL, 'cafe-3.jpg', 3, '2017-03-07 10:14:52', 'productimage'),
	(16, 5, NULL, '0228101804_5a961f6c3df67.jpg', 2, '2018-02-28 03:18:18', 'productimage'),
	(20, 5, NULL, '0228101935_5a961fc7b2b7f.jpg', 1, '2018-02-28 03:19:48', 'productimage'),
	(22, 6, NULL, '0228102215_5a9620673d513.jpg', 1, '2018-02-28 03:22:23', 'productimage'),
	(23, 7, NULL, '0228102252_5a96208c4799a.jpg', 1, '2018-02-28 03:22:56', 'productimage');
/*!40000 ALTER TABLE `dtb_product_image` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product_stock
CREATE TABLE IF NOT EXISTS `dtb_product_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC6C9E4521B06187` (`product_class_id`),
  KEY `IDX_BC6C9E4561220EA6` (`creator_id`),
  CONSTRAINT `FK_BC6C9E4521B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_BC6C9E4561220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product_stock: ~34 rows (approximately)
DELETE FROM `dtb_product_stock`;
/*!40000 ALTER TABLE `dtb_product_stock` DISABLE KEYS */;
INSERT INTO `dtb_product_stock` (`id`, `product_class_id`, `creator_id`, `stock`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 0, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(2, 1, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(3, 2, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(4, 3, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(5, 4, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(6, 5, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(7, 6, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(8, 7, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(9, 8, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(10, 9, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(11, 10, NULL, 100, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
	(20, 19, NULL, 100, '2018-02-28 03:11:24', '2018-02-28 03:19:54', 'productstock'),
	(21, 20, NULL, NULL, '2018-02-28 03:22:23', '2018-02-28 03:22:23', 'productstock'),
	(22, 21, NULL, NULL, '2018-02-28 03:22:56', '2018-02-28 03:22:56', 'productstock'),
	(67, 66, NULL, NULL, '2018-03-05 03:39:38', '2018-03-05 03:39:38', 'productstock'),
	(68, 67, NULL, NULL, '2018-03-06 02:31:46', '2018-03-06 02:31:46', 'productstock'),
	(69, 68, 1, NULL, '2018-03-12 09:57:48', '2018-03-12 09:57:48', 'productstock'),
	(70, 69, 1, NULL, '2018-03-12 09:58:18', '2018-03-12 09:58:18', 'productstock'),
	(71, 70, 1, NULL, '2018-03-12 09:58:37', '2018-03-12 09:58:37', 'productstock'),
	(72, 71, 1, NULL, '2018-03-12 09:59:25', '2018-03-12 09:59:25', 'productstock'),
	(73, 72, 1, NULL, '2018-03-12 10:00:34', '2018-03-12 10:00:34', 'productstock'),
	(74, 73, 1, NULL, '2018-03-15 04:57:41', '2018-03-15 04:57:41', 'productstock'),
	(75, 74, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(76, 75, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(77, 76, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(78, 77, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(79, 78, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(80, 79, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(81, 80, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(82, 81, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(83, 82, 1, NULL, '2018-03-15 04:58:26', '2018-03-15 04:58:26', 'productstock'),
	(84, 83, 1, NULL, '2018-03-15 06:55:28', '2018-03-15 06:55:28', 'productstock'),
	(85, 84, 1, NULL, '2018-03-19 10:17:48', '2018-03-19 10:17:48', 'productstock'),
	(86, 85, 1, NULL, '2018-03-19 10:18:25', '2018-03-19 10:18:25', 'productstock');
/*!40000 ALTER TABLE `dtb_product_stock` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_product_tag
CREATE TABLE IF NOT EXISTS `dtb_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `tag_id` smallint(5) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4433E7214584665A` (`product_id`),
  KEY `IDX_4433E721BAD26311` (`tag_id`),
  KEY `IDX_4433E72161220EA6` (`creator_id`),
  CONSTRAINT `FK_4433E7214584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_4433E72161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_4433E721BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `dtb_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_product_tag: ~2 rows (approximately)
DELETE FROM `dtb_product_tag`;
/*!40000 ALTER TABLE `dtb_product_tag` DISABLE KEYS */;
INSERT INTO `dtb_product_tag` (`id`, `product_id`, `tag_id`, `creator_id`, `create_date`, `discriminator_type`) VALUES
	(1, 7, 3, NULL, '2018-02-28 03:22:56', 'producttag'),
	(2, 7, 2, NULL, '2018-02-28 03:22:56', 'producttag');
/*!40000 ALTER TABLE `dtb_product_tag` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_shipping
CREATE TABLE IF NOT EXISTS `dtb_shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `delivery_id` int(10) unsigned DEFAULT NULL,
  `shipping_status_id` smallint(5) unsigned DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) NOT NULL,
  `kana02` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tel01` varchar(5) DEFAULT NULL,
  `tel02` varchar(4) DEFAULT NULL,
  `tel03` varchar(4) DEFAULT NULL,
  `fax01` varchar(5) DEFAULT NULL,
  `fax02` varchar(4) DEFAULT NULL,
  `fax03` varchar(4) DEFAULT NULL,
  `zip01` varchar(3) DEFAULT NULL,
  `zip02` varchar(4) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `delivery_name` varchar(255) DEFAULT NULL,
  `time_id` int(10) unsigned DEFAULT NULL,
  `fee_id` int(10) unsigned DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `delivery_fee` decimal(12,2) DEFAULT '0.00',
  `shipping_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `tracking_number` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `sort_no` smallint(5) unsigned DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2EBD22CEF92F3E70` (`country_id`),
  KEY `IDX_2EBD22CEE171EF5F` (`pref_id`),
  KEY `IDX_2EBD22CE12136921` (`delivery_id`),
  KEY `IDX_2EBD22CE2D02518A` (`shipping_status_id`),
  KEY `IDX_2EBD22CE61220EA6` (`creator_id`),
  CONSTRAINT `FK_2EBD22CE12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  CONSTRAINT `FK_2EBD22CE2D02518A` FOREIGN KEY (`shipping_status_id`) REFERENCES `mtb_shipping_status` (`id`),
  CONSTRAINT `FK_2EBD22CE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_2EBD22CEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_2EBD22CEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_shipping: ~70 rows (approximately)
DELETE FROM `dtb_shipping`;
/*!40000 ALTER TABLE `dtb_shipping` DISABLE KEYS */;
INSERT INTO `dtb_shipping` (`id`, `country_id`, `pref_id`, `delivery_id`, `shipping_status_id`, `name01`, `name02`, `kana01`, `kana02`, `company_name`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `zip01`, `zip02`, `zipcode`, `addr01`, `addr02`, `delivery_name`, `time_id`, `fee_id`, `delivery_time`, `delivery_date`, `delivery_fee`, `shipping_date`, `tracking_number`, `note`, `sort_no`, `create_date`, `update_date`, `discriminator_type`, `creator_id`) VALUES
	(1, NULL, 14, 1, 1, 'Dung', 'Le1', 'リ', 'リ', 'Company', '321', '321', '321', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', 'dsa', 'サンプル業者', NULL, 14, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-26 07:47:46', '2018-02-26 07:48:14', 'shipping', NULL),
	(2, NULL, 1, 3, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'test A', NULL, 95, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:01:13', '2018-02-26 08:02:16', 'shipping', NULL),
	(3, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:03:24', '2018-02-26 08:05:35', 'shipping', NULL),
	(4, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:05:52', '2018-02-26 08:05:52', 'shipping', NULL),
	(5, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:09:00', '2018-02-26 08:09:00', 'shipping', NULL),
	(6, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:09:41', '2018-02-26 08:09:41', 'shipping', NULL),
	(7, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:11:44', '2018-02-26 08:11:44', 'shipping', NULL),
	(8, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:14:06', '2018-02-26 08:14:06', 'shipping', NULL),
	(9, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:35:26', '2018-02-26 08:35:26', 'shipping', NULL),
	(10, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:36:02', '2018-02-26 08:36:15', 'shipping', NULL),
	(11, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 08:38:30', '2018-02-26 08:38:30', 'shipping', NULL),
	(12, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:10:56', '2018-02-26 10:10:56', 'shipping', NULL),
	(13, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:17:18', '2018-02-26 10:17:18', 'shipping', NULL),
	(14, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:19:22', '2018-02-26 10:19:22', 'shipping', NULL),
	(15, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:21:33', '2018-02-26 10:21:33', 'shipping', NULL),
	(16, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:22:27', '2018-02-26 10:22:27', 'shipping', NULL),
	(17, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:31:27', '2018-02-26 10:31:27', 'shipping', NULL),
	(18, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:36:41', '2018-02-26 10:36:41', 'shipping', NULL),
	(19, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:37:15', '2018-02-26 10:37:15', 'shipping', NULL),
	(20, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:38:44', '2018-02-26 10:40:13', 'shipping', NULL),
	(21, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-26 10:42:48', '2018-02-26 10:42:48', 'shipping', NULL),
	(22, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:37:34', '2018-02-27 03:37:34', 'shipping', NULL),
	(23, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:48:38', '2018-02-27 03:48:38', 'shipping', NULL),
	(24, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:51:45', '2018-02-27 03:51:45', 'shipping', NULL),
	(25, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:52:59', '2018-02-27 03:52:59', 'shipping', NULL),
	(26, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:54:03', '2018-02-27 03:54:03', 'shipping', NULL),
	(27, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:55:23', '2018-02-27 03:55:23', 'shipping', NULL),
	(28, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:56:36', '2018-02-27 03:56:36', 'shipping', NULL),
	(29, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 03:57:40', '2018-02-27 03:57:40', 'shipping', NULL),
	(30, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:00:38', '2018-02-27 04:00:38', 'shipping', NULL),
	(31, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:01:08', '2018-02-27 04:01:08', 'shipping', NULL),
	(32, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:02:44', '2018-02-27 04:02:44', 'shipping', NULL),
	(33, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:04:13', '2018-02-27 04:04:13', 'shipping', NULL),
	(34, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:05:31', '2018-02-27 04:05:31', 'shipping', NULL),
	(35, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:06:10', '2018-02-27 04:06:10', 'shipping', NULL),
	(36, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:07:01', '2018-02-27 04:07:01', 'shipping', NULL),
	(37, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:08:51', '2018-02-27 04:08:51', 'shipping', NULL),
	(38, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:10:22', '2018-02-27 04:10:40', 'shipping', NULL),
	(39, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:16:07', '2018-02-27 04:16:07', 'shipping', NULL),
	(40, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:17:09', '2018-02-27 04:17:09', 'shipping', NULL),
	(41, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:19:56', '2018-02-27 04:19:56', 'shipping', NULL),
	(42, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:22:56', '2018-02-27 04:22:56', 'shipping', NULL),
	(43, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:26:25', '2018-02-27 04:26:25', 'shipping', NULL),
	(44, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:27:59', '2018-02-27 04:27:59', 'shipping', NULL),
	(45, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:32:05', '2018-02-27 04:32:05', 'shipping', NULL),
	(46, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:37:08', '2018-02-27 04:37:08', 'shipping', NULL),
	(47, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:41:26', '2018-02-27 04:41:26', 'shipping', NULL),
	(48, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:45:48', '2018-02-27 04:45:48', 'shipping', NULL),
	(49, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:46:49', '2018-02-27 04:46:49', 'shipping', NULL),
	(50, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:48:57', '2018-02-27 04:48:57', 'shipping', NULL),
	(51, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:49:40', '2018-02-27 04:50:06', 'shipping', NULL),
	(52, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:52:10', '2018-02-27 04:55:43', 'shipping', NULL),
	(53, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:55:52', '2018-02-27 04:55:52', 'shipping', NULL),
	(54, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:56:15', '2018-02-27 04:56:15', 'shipping', NULL),
	(55, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 04:56:33', '2018-02-27 04:56:33', 'shipping', NULL),
	(56, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 06:51:11', '2018-02-27 06:51:11', 'shipping', NULL),
	(57, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 06:51:28', '2018-02-27 06:51:28', 'shipping', NULL),
	(58, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 06:55:17', '2018-02-27 06:55:17', 'shipping', NULL),
	(59, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 06:59:01', '2018-02-27 06:59:11', 'shipping', NULL),
	(60, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:00:05', '2018-02-27 07:00:05', 'shipping', NULL),
	(61, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:00:45', '2018-02-27 07:00:45', 'shipping', NULL),
	(62, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:01:20', '2018-02-27 07:01:46', 'shipping', NULL),
	(63, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:02:16', '2018-02-27 07:04:06', 'shipping', NULL),
	(64, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:04:19', '2018-02-27 07:08:04', 'shipping', NULL),
	(66, NULL, 2, 1, 1, '井', '高直樹', 'フ', 'フ', '株式会社 原田', '111', '060', '060', '060', '060', '060', '992', '3525', '9923525', 'address 1', '0000', 'サンプル業者', NULL, 2, NULL, NULL, 1000.00, NULL, NULL, NULL, NULL, '2018-02-27 07:09:42', '2018-02-27 07:10:43', 'shipping', NULL),
	(67, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 09:01:49', '2018-02-27 09:01:49', 'shipping', NULL),
	(68, NULL, 1, 3, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'test A', NULL, 95, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 09:04:20', '2018-02-27 09:04:29', 'shipping', NULL),
	(69, NULL, 1, 3, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'test A', NULL, 95, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 09:06:40', '2018-02-27 09:06:54', 'shipping', NULL),
	(70, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-02-27 09:08:07', '2018-02-27 09:08:52', 'shipping', NULL),
	(71, NULL, 1, 1, 1, 'Le', 'Dung', 'フ', 'フ', 'Company', '060', '060', '060', NULL, NULL, NULL, '060', '0000', '0600000', '札幌市中央区', '0000', 'サンプル業者', NULL, 1, NULL, NULL, 3000.00, NULL, NULL, NULL, NULL, '2018-03-12 03:32:57', '2018-03-12 03:32:57', 'shipping', NULL);
/*!40000 ALTER TABLE `dtb_shipping` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_tag
CREATE TABLE IF NOT EXISTS `dtb_tag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_tag: ~3 rows (approximately)
DELETE FROM `dtb_tag`;
/*!40000 ALTER TABLE `dtb_tag` DISABLE KEYS */;
INSERT INTO `dtb_tag` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '新商品', 1, 'tag'),
	(2, 'おすすめ商品', 2, 'tag'),
	(3, '限定品', 3, 'tag');
/*!40000 ALTER TABLE `dtb_tag` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_tax_rule
CREATE TABLE IF NOT EXISTS `dtb_tax_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_class_id` int(10) unsigned DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  `pref_id` smallint(5) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `rounding_type_id` smallint(5) unsigned DEFAULT NULL,
  `tax_rate` decimal(10,0) NOT NULL DEFAULT '8',
  `tax_adjust` decimal(10,0) NOT NULL DEFAULT '0',
  `apply_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_59F696DE21B06187` (`product_class_id`),
  KEY `IDX_59F696DE61220EA6` (`creator_id`),
  KEY `IDX_59F696DEF92F3E70` (`country_id`),
  KEY `IDX_59F696DEE171EF5F` (`pref_id`),
  KEY `IDX_59F696DE4584665A` (`product_id`),
  KEY `IDX_59F696DE1BD5C574` (`rounding_type_id`),
  CONSTRAINT `FK_59F696DE1BD5C574` FOREIGN KEY (`rounding_type_id`) REFERENCES `mtb_rounding_type` (`id`),
  CONSTRAINT `FK_59F696DE21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  CONSTRAINT `FK_59F696DE4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  CONSTRAINT `FK_59F696DE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  CONSTRAINT `FK_59F696DEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  CONSTRAINT `FK_59F696DEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_tax_rule: ~2 rows (approximately)
DELETE FROM `dtb_tax_rule`;
/*!40000 ALTER TABLE `dtb_tax_rule` DISABLE KEYS */;
INSERT INTO `dtb_tax_rule` (`id`, `product_class_id`, `creator_id`, `country_id`, `pref_id`, `product_id`, `rounding_type_id`, `tax_rate`, `tax_adjust`, `apply_date`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, NULL, 1, NULL, NULL, NULL, 1, 10, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', '2018-03-09 10:21:03', 'taxrule'),
	(5, NULL, 1, NULL, NULL, NULL, 3, 14, 0, '2018-03-03 17:00:00', '2018-03-09 07:21:31', '2018-03-09 07:21:42', 'taxrule');
/*!40000 ALTER TABLE `dtb_tax_rule` ENABLE KEYS */;

-- Dumping structure for table sf.dtb_template
CREATE TABLE IF NOT EXISTS `dtb_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_type_id` smallint(5) unsigned DEFAULT NULL,
  `template_code` varchar(255) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_94C12A694FFA550E` (`device_type_id`),
  CONSTRAINT `FK_94C12A694FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table sf.dtb_template: ~3 rows (approximately)
DELETE FROM `dtb_template`;
/*!40000 ALTER TABLE `dtb_template` DISABLE KEYS */;
INSERT INTO `dtb_template` (`id`, `device_type_id`, `template_code`, `template_name`, `create_date`, `update_date`, `discriminator_type`) VALUES
	(1, 10, 'default', 'デフォルト', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'template'),
	(2, 1, 'mobile', 'モバイル', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'template'),
	(4, 2, 'sphone', 'スマートフォン', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'template');
/*!40000 ALTER TABLE `dtb_template` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_authority
CREATE TABLE IF NOT EXISTS `mtb_authority` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_authority: ~2 rows (approximately)
DELETE FROM `mtb_authority`;
/*!40000 ALTER TABLE `mtb_authority` DISABLE KEYS */;
INSERT INTO `mtb_authority` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(0, 'システム管理者', 0, 'authority'),
	(1, '店舗オーナー', 1, 'authority');
/*!40000 ALTER TABLE `mtb_authority` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_country
CREATE TABLE IF NOT EXISTS `mtb_country` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_country: ~249 rows (approximately)
DELETE FROM `mtb_country`;
/*!40000 ALTER TABLE `mtb_country` DISABLE KEYS */;
INSERT INTO `mtb_country` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(4, 'アフガニスタン', 4, 'country'),
	(8, 'アルバニア', 12, 'country'),
	(10, '南極', 149, 'country'),
	(12, 'アルジェリア', 9, 'country'),
	(16, 'アメリカ領サモア', 7, 'country'),
	(20, 'アンドラ', 17, 'country'),
	(24, 'アンゴラ', 15, 'country'),
	(28, 'アンティグア・バーブーダ', 16, 'country'),
	(31, 'アゼルバイジャン', 3, 'country'),
	(32, 'アルゼンチン', 10, 'country'),
	(36, 'オーストラリア', 39, 'country'),
	(40, 'オーストリア', 40, 'country'),
	(44, 'バハマ', 167, 'country'),
	(48, 'バーレーン', 161, 'country'),
	(50, 'バングラデシュ', 175, 'country'),
	(51, 'アルメニア', 13, 'country'),
	(52, 'バルバドス', 172, 'country'),
	(56, 'ベルギー', 201, 'country'),
	(60, 'バミューダ諸島|バミューダ', 169, 'country'),
	(64, 'ブータン', 181, 'country'),
	(68, 'ボリビア|ボリビア多民族国', 206, 'country'),
	(70, 'ボスニア・ヘルツェゴビナ', 203, 'country'),
	(72, 'ボツワナ', 204, 'country'),
	(74, 'ブーベ島', 182, 'country'),
	(76, 'ブラジル', 186, 'country'),
	(84, 'ベリーズ', 199, 'country'),
	(86, 'イギリス領インド洋地域', 20, 'country'),
	(90, 'ソロモン諸島', 121, 'country'),
	(92, 'イギリス領ヴァージン諸島', 21, 'country'),
	(96, 'ブルネイ|ブルネイ・ダルサラーム', 193, 'country'),
	(100, 'ブルガリア', 191, 'country'),
	(104, 'ミャンマー', 224, 'country'),
	(108, 'ブルンジ', 194, 'country'),
	(112, 'ベラルーシ', 198, 'country'),
	(116, 'カンボジア', 55, 'country'),
	(120, 'カメルーン', 53, 'country'),
	(124, 'カナダ', 51, 'country'),
	(132, 'カーボベルデ', 45, 'country'),
	(136, 'ケイマン諸島', 75, 'country'),
	(140, '中央アフリカ共和国', 130, 'country'),
	(144, 'スリランカ', 108, 'country'),
	(148, 'チャド', 129, 'country'),
	(152, 'チリ', 134, 'country'),
	(156, '中華人民共和国|中国', 131, 'country'),
	(158, '台湾', 125, 'country'),
	(162, 'クリスマス島 (オーストラリア)|クリスマス島', 71, 'country'),
	(166, 'ココス諸島|ココス（キーリング）諸島', 78, 'country'),
	(170, 'コロンビア', 81, 'country'),
	(174, 'コモロ', 80, 'country'),
	(175, 'マヨット', 214, 'country'),
	(178, 'コンゴ共和国', 82, 'country'),
	(180, 'コンゴ民主共和国', 83, 'country'),
	(184, 'クック諸島', 69, 'country'),
	(188, 'コスタリカ', 79, 'country'),
	(191, 'クロアチア', 74, 'country'),
	(192, 'キューバ', 60, 'country'),
	(196, 'キプロス', 59, 'country'),
	(203, 'チェコ', 128, 'country'),
	(204, 'ベナン', 196, 'country'),
	(208, 'デンマーク', 136, 'country'),
	(212, 'ドミニカ国', 141, 'country'),
	(214, 'ドミニカ共和国', 140, 'country'),
	(218, 'エクアドル', 33, 'country'),
	(222, 'エルサルバドル', 38, 'country'),
	(226, '赤道ギニア', 113, 'country'),
	(231, 'エチオピア', 36, 'country'),
	(232, 'エリトリア', 37, 'country'),
	(233, 'エストニア', 35, 'country'),
	(234, 'フェロー諸島', 184, 'country'),
	(238, 'フォークランド諸島|フォークランド（マルビナス）諸島', 185, 'country'),
	(239, 'サウスジョージア・サウスサンドウィッチ諸島', 85, 'country'),
	(242, 'フィジー', 178, 'country'),
	(246, 'フィンランド', 180, 'country'),
	(248, 'オーランド諸島', 41, 'country'),
	(250, 'フランス', 187, 'country'),
	(254, 'フランス領ギアナ', 188, 'country'),
	(258, 'フランス領ポリネシア', 189, 'country'),
	(260, 'フランス領南方・南極地域', 190, 'country'),
	(262, 'ジブチ', 94, 'country'),
	(266, 'ガボン', 52, 'country'),
	(268, 'グルジア', 72, 'country'),
	(270, 'ガンビア', 54, 'country'),
	(275, 'パレスチナ', 173, 'country'),
	(276, 'ドイツ', 137, 'country'),
	(288, 'ガーナ', 44, 'country'),
	(292, 'ジブラルタル', 95, 'country'),
	(296, 'キリバス', 63, 'country'),
	(300, 'ギリシャ', 62, 'country'),
	(304, 'グリーンランド', 70, 'country'),
	(308, 'グレナダ', 73, 'country'),
	(312, 'グアドループ', 66, 'country'),
	(316, 'グアム', 67, 'country'),
	(320, 'グアテマラ', 65, 'country'),
	(324, 'ギニア', 57, 'country'),
	(328, 'ガイアナ', 47, 'country'),
	(332, 'ハイチ', 162, 'country'),
	(334, 'ハード島とマクドナルド諸島', 160, 'country'),
	(336, 'バチカン|バチカン市国', 164, 'country'),
	(340, 'ホンジュラス', 209, 'country'),
	(344, '香港', 208, 'country'),
	(348, 'ハンガリー', 174, 'country'),
	(352, 'アイスランド', 1, 'country'),
	(356, 'インド', 26, 'country'),
	(360, 'インドネシア', 27, 'country'),
	(364, 'イラン|イラン・イスラム共和国', 25, 'country'),
	(368, 'イラク', 24, 'country'),
	(372, 'アイルランド', 2, 'country'),
	(376, 'イスラエル', 22, 'country'),
	(380, 'イタリア', 23, 'country'),
	(384, 'コートジボワール', 77, 'country'),
	(388, 'ジャマイカ', 97, 'country'),
	(392, '日本', 153, 'country'),
	(398, 'カザフスタン', 48, 'country'),
	(400, 'ヨルダン', 236, 'country'),
	(404, 'ケニア', 76, 'country'),
	(408, '朝鮮民主主義人民共和国', 133, 'country'),
	(410, '大韓民国', 124, 'country'),
	(414, 'クウェート', 68, 'country'),
	(417, 'キルギス', 64, 'country'),
	(418, 'ラオス|ラオス人民民主共和国', 237, 'country'),
	(422, 'レバノン', 247, 'country'),
	(426, 'レソト', 246, 'country'),
	(428, 'ラトビア', 238, 'country'),
	(430, 'リベリア', 242, 'country'),
	(434, 'リビア', 240, 'country'),
	(438, 'リヒテンシュタイン', 241, 'country'),
	(440, 'リトアニア', 239, 'country'),
	(442, 'ルクセンブルク', 244, 'country'),
	(446, 'マカオ', 211, 'country'),
	(450, 'マダガスカル', 213, 'country'),
	(454, 'マラウイ', 215, 'country'),
	(458, 'マレーシア', 219, 'country'),
	(462, 'モルディブ', 230, 'country'),
	(466, 'マリ共和国|マリ', 216, 'country'),
	(470, 'マルタ', 217, 'country'),
	(474, 'マルティニーク', 218, 'country'),
	(478, 'モーリタニア', 227, 'country'),
	(480, 'モーリシャス', 226, 'country'),
	(484, 'メキシコ', 225, 'country'),
	(492, 'モナコ', 229, 'country'),
	(496, 'モンゴル国|モンゴル', 233, 'country'),
	(498, 'モルドバ|モルドバ共和国', 231, 'country'),
	(499, 'モンテネグロ', 234, 'country'),
	(500, 'モントセラト', 235, 'country'),
	(504, 'モロッコ', 232, 'country'),
	(508, 'モザンビーク', 228, 'country'),
	(512, 'オマーン', 42, 'country'),
	(516, 'ナミビア', 148, 'country'),
	(520, 'ナウル', 147, 'country'),
	(524, 'ネパール', 157, 'country'),
	(528, 'オランダ', 43, 'country'),
	(531, 'キュラソー島|キュラソー', 61, 'country'),
	(533, 'アルバ', 11, 'country'),
	(534, 'シント・マールテン|シント・マールテン（オランダ領）', 100, 'country'),
	(535, 'BES諸島|ボネール、シント・ユースタティウスおよびサバ', 205, 'country'),
	(540, 'ニューカレドニア', 155, 'country'),
	(548, 'バヌアツ', 166, 'country'),
	(554, 'ニュージーランド', 156, 'country'),
	(558, 'ニカラグア', 151, 'country'),
	(562, 'ニジェール', 152, 'country'),
	(566, 'ナイジェリア', 146, 'country'),
	(570, 'ニウエ', 150, 'country'),
	(574, 'ノーフォーク島', 158, 'country'),
	(578, 'ノルウェー', 159, 'country'),
	(580, '北マリアナ諸島', 56, 'country'),
	(581, '合衆国領有小離島', 50, 'country'),
	(583, 'ミクロネシア連邦', 221, 'country'),
	(584, 'マーシャル諸島', 210, 'country'),
	(585, 'パラオ', 170, 'country'),
	(586, 'パキスタン', 163, 'country'),
	(591, 'パナマ', 165, 'country'),
	(598, 'パプアニューギニア', 168, 'country'),
	(600, 'パラグアイ', 171, 'country'),
	(604, 'ペルー', 200, 'country'),
	(608, 'フィリピン', 179, 'country'),
	(612, 'ピトケアン諸島|ピトケアン', 177, 'country'),
	(616, 'ポーランド', 202, 'country'),
	(620, 'ポルトガル', 207, 'country'),
	(624, 'ギニアビサウ', 58, 'country'),
	(626, '東ティモール', 176, 'country'),
	(630, 'プエルトリコ', 183, 'country'),
	(634, 'カタール', 49, 'country'),
	(638, 'レユニオン', 248, 'country'),
	(642, 'ルーマニア', 243, 'country'),
	(643, 'ロシア|ロシア連邦', 249, 'country'),
	(646, 'ルワンダ', 245, 'country'),
	(652, 'サン・バルテルミー島|サン・バルテルミー', 88, 'country'),
	(654, 'セントヘレナ・アセンションおよびトリスタンダクーニャ', 118, 'country'),
	(659, 'セントクリストファー・ネイビス', 116, 'country'),
	(660, 'アンギラ', 14, 'country'),
	(662, 'セントルシア', 119, 'country'),
	(663, 'サン・マルタン (西インド諸島)|サン・マルタン（フランス領）', 92, 'country'),
	(666, 'サンピエール島・ミクロン島', 90, 'country'),
	(670, 'セントビンセント・グレナディーン|セントビンセントおよびグレナディーン諸島', 117, 'country'),
	(674, 'サンマリノ', 91, 'country'),
	(678, 'サントメ・プリンシペ', 87, 'country'),
	(682, 'サウジアラビア', 84, 'country'),
	(686, 'セネガル', 114, 'country'),
	(688, 'セルビア', 115, 'country'),
	(690, 'セーシェル', 112, 'country'),
	(694, 'シエラレオネ', 93, 'country'),
	(702, 'シンガポール', 99, 'country'),
	(703, 'スロバキア', 109, 'country'),
	(704, 'ベトナム', 195, 'country'),
	(705, 'スロベニア', 110, 'country'),
	(706, 'ソマリア', 120, 'country'),
	(710, '南アフリカ共和国|南アフリカ', 222, 'country'),
	(716, 'ジンバブエ', 101, 'country'),
	(724, 'スペイン', 106, 'country'),
	(728, '南スーダン', 223, 'country'),
	(729, 'スーダン', 104, 'country'),
	(732, '西サハラ', 154, 'country'),
	(740, 'スリナム', 107, 'country'),
	(744, 'スヴァールバル諸島およびヤンマイエン島', 105, 'country'),
	(748, 'スワジランド', 111, 'country'),
	(752, 'スウェーデン', 103, 'country'),
	(756, 'スイス', 102, 'country'),
	(760, 'シリア|シリア・アラブ共和国', 98, 'country'),
	(762, 'タジキスタン', 126, 'country'),
	(764, 'タイ王国|タイ', 123, 'country'),
	(768, 'トーゴ', 138, 'country'),
	(772, 'トケラウ', 139, 'country'),
	(776, 'トンガ', 145, 'country'),
	(780, 'トリニダード・トバゴ', 142, 'country'),
	(784, 'アラブ首長国連邦', 8, 'country'),
	(788, 'チュニジア', 132, 'country'),
	(792, 'トルコ', 144, 'country'),
	(795, 'トルクメニスタン', 143, 'country'),
	(796, 'タークス・カイコス諸島', 122, 'country'),
	(798, 'ツバル', 135, 'country'),
	(800, 'ウガンダ', 29, 'country'),
	(804, 'ウクライナ', 30, 'country'),
	(807, 'マケドニア共和国|マケドニア旧ユーゴスラビア共和国', 212, 'country'),
	(818, 'エジプト', 34, 'country'),
	(826, 'イギリス', 19, 'country'),
	(831, 'ガーンジー', 46, 'country'),
	(832, 'ジャージー', 96, 'country'),
	(833, 'マン島', 220, 'country'),
	(834, 'タンザニア', 127, 'country'),
	(840, 'アメリカ合衆国', 5, 'country'),
	(850, 'アメリカ領ヴァージン諸島', 6, 'country'),
	(854, 'ブルキナファソ', 192, 'country'),
	(858, 'ウルグアイ', 32, 'country'),
	(860, 'ウズベキスタン', 31, 'country'),
	(862, 'ベネズエラ|ベネズエラ・ボリバル共和国', 197, 'country'),
	(876, 'ウォリス・フツナ', 28, 'country'),
	(882, 'サモア', 86, 'country'),
	(887, 'イエメン', 18, 'country'),
	(894, 'ザンビア', 89, 'country');
/*!40000 ALTER TABLE `mtb_country` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_csv_type
CREATE TABLE IF NOT EXISTS `mtb_csv_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_csv_type: ~5 rows (approximately)
DELETE FROM `mtb_csv_type`;
/*!40000 ALTER TABLE `mtb_csv_type` DISABLE KEYS */;
INSERT INTO `mtb_csv_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '商品CSV', 3, 'csvtype'),
	(2, '会員CSV', 4, 'csvtype'),
	(3, '受注CSV', 1, 'csvtype'),
	(4, '配送CSV', 2, 'csvtype'),
	(5, 'カテゴリCSV', 5, 'csvtype');
/*!40000 ALTER TABLE `mtb_csv_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_customer_order_status
CREATE TABLE IF NOT EXISTS `mtb_customer_order_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_customer_order_status: ~8 rows (approximately)
DELETE FROM `mtb_customer_order_status`;
/*!40000 ALTER TABLE `mtb_customer_order_status` DISABLE KEYS */;
INSERT INTO `mtb_customer_order_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '注文受付', 1, 'customerorderstatus'),
	(2, '入金待ち', 2, 'customerorderstatus'),
	(3, 'キャンセル', 4, 'customerorderstatus'),
	(4, '注文受付', 5, 'customerorderstatus'),
	(5, '発送済み', 6, 'customerorderstatus'),
	(6, '注文受付', 3, 'customerorderstatus'),
	(7, '注文未完了', 0, 'customerorderstatus'),
	(8, '注文未完了', 7, 'customerorderstatus');
/*!40000 ALTER TABLE `mtb_customer_order_status` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_customer_status
CREATE TABLE IF NOT EXISTS `mtb_customer_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_customer_status: ~3 rows (approximately)
DELETE FROM `mtb_customer_status`;
/*!40000 ALTER TABLE `mtb_customer_status` DISABLE KEYS */;
INSERT INTO `mtb_customer_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '仮会員', 0, 'customerstatus'),
	(2, '本会員', 1, 'customerstatus'),
	(3, '退会', 2, 'customerstatus');
/*!40000 ALTER TABLE `mtb_customer_status` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_device_type
CREATE TABLE IF NOT EXISTS `mtb_device_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_device_type: ~4 rows (approximately)
DELETE FROM `mtb_device_type`;
/*!40000 ALTER TABLE `mtb_device_type` DISABLE KEYS */;
INSERT INTO `mtb_device_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, 'モバイル', 0, 'devicetype'),
	(2, 'スマートフォン', 1, 'devicetype'),
	(10, 'PC', 2, 'devicetype'),
	(99, '管理画面', 3, 'devicetype');
/*!40000 ALTER TABLE `mtb_device_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_job
CREATE TABLE IF NOT EXISTS `mtb_job` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_job: ~18 rows (approximately)
DELETE FROM `mtb_job`;
/*!40000 ALTER TABLE `mtb_job` DISABLE KEYS */;
INSERT INTO `mtb_job` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '公務員', 0, 'job'),
	(2, 'コンサルタント', 1, 'job'),
	(3, 'コンピューター関連技術職', 2, 'job'),
	(4, 'コンピューター関連以外の技術職', 3, 'job'),
	(5, '金融関係', 4, 'job'),
	(6, '医師', 5, 'job'),
	(7, '弁護士', 6, 'job'),
	(8, '総務・人事・事務', 7, 'job'),
	(9, '営業・販売', 8, 'job'),
	(10, '研究・開発', 9, 'job'),
	(11, '広報・宣伝', 10, 'job'),
	(12, '企画・マーケティング', 11, 'job'),
	(13, 'デザイン関係', 12, 'job'),
	(14, '会社経営・役員', 13, 'job'),
	(15, '出版・マスコミ関係', 14, 'job'),
	(16, '学生・フリーター', 15, 'job'),
	(17, '主婦', 16, 'job'),
	(18, 'その他', 17, 'job');
/*!40000 ALTER TABLE `mtb_job` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_order_item_type
CREATE TABLE IF NOT EXISTS `mtb_order_item_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_order_item_type: ~5 rows (approximately)
DELETE FROM `mtb_order_item_type`;
/*!40000 ALTER TABLE `mtb_order_item_type` DISABLE KEYS */;
INSERT INTO `mtb_order_item_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '商品', 0, 'orderitemtype'),
	(2, '送料', 1, 'orderitemtype'),
	(3, '手数料', 2, 'orderitemtype'),
	(4, '割引', 3, 'orderitemtype'),
	(5, '税', 4, 'orderitemtype');
/*!40000 ALTER TABLE `mtb_order_item_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_order_status
CREATE TABLE IF NOT EXISTS `mtb_order_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_order_status: ~8 rows (approximately)
DELETE FROM `mtb_order_status`;
/*!40000 ALTER TABLE `mtb_order_status` DISABLE KEYS */;
INSERT INTO `mtb_order_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '新規受付', 1, 'orderstatus'),
	(2, '入金待ち', 2, 'orderstatus'),
	(3, 'キャンセル', 4, 'orderstatus'),
	(4, '取り寄せ中', 5, 'orderstatus'),
	(5, '発送済み', 6, 'orderstatus'),
	(6, '入金済み', 3, 'orderstatus'),
	(7, '決済処理中', 0, 'orderstatus'),
	(8, '購入処理中', 7, 'orderstatus');
/*!40000 ALTER TABLE `mtb_order_status` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_page_max
CREATE TABLE IF NOT EXISTS `mtb_page_max` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_page_max: ~10 rows (approximately)
DELETE FROM `mtb_page_max`;
/*!40000 ALTER TABLE `mtb_page_max` DISABLE KEYS */;
INSERT INTO `mtb_page_max` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(10, '10', 0, 'pagemax'),
	(20, '20', 1, 'pagemax'),
	(30, '30', 2, 'pagemax'),
	(40, '40', 3, 'pagemax'),
	(50, '50', 4, 'pagemax'),
	(60, '60', 5, 'pagemax'),
	(70, '70', 6, 'pagemax'),
	(80, '80', 7, 'pagemax'),
	(90, '90', 8, 'pagemax'),
	(100, '100', 9, 'pagemax');
/*!40000 ALTER TABLE `mtb_page_max` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_pref
CREATE TABLE IF NOT EXISTS `mtb_pref` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_pref: ~47 rows (approximately)
DELETE FROM `mtb_pref`;
/*!40000 ALTER TABLE `mtb_pref` DISABLE KEYS */;
INSERT INTO `mtb_pref` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '北海道', 1, 'pref'),
	(2, '青森県', 2, 'pref'),
	(3, '岩手県', 3, 'pref'),
	(4, '宮城県', 4, 'pref'),
	(5, '秋田県', 5, 'pref'),
	(6, '山形県', 6, 'pref'),
	(7, '福島県', 7, 'pref'),
	(8, '茨城県', 8, 'pref'),
	(9, '栃木県', 9, 'pref'),
	(10, '群馬県', 10, 'pref'),
	(11, '埼玉県', 11, 'pref'),
	(12, '千葉県', 12, 'pref'),
	(13, '東京都', 13, 'pref'),
	(14, '神奈川県', 14, 'pref'),
	(15, '新潟県', 15, 'pref'),
	(16, '富山県', 16, 'pref'),
	(17, '石川県', 17, 'pref'),
	(18, '福井県', 18, 'pref'),
	(19, '山梨県', 19, 'pref'),
	(20, '長野県', 20, 'pref'),
	(21, '岐阜県', 21, 'pref'),
	(22, '静岡県', 22, 'pref'),
	(23, '愛知県', 23, 'pref'),
	(24, '三重県', 24, 'pref'),
	(25, '滋賀県', 25, 'pref'),
	(26, '京都府', 26, 'pref'),
	(27, '大阪府', 27, 'pref'),
	(28, '兵庫県', 28, 'pref'),
	(29, '奈良県', 29, 'pref'),
	(30, '和歌山県', 30, 'pref'),
	(31, '鳥取県', 31, 'pref'),
	(32, '島根県', 32, 'pref'),
	(33, '岡山県', 33, 'pref'),
	(34, '広島県', 34, 'pref'),
	(35, '山口県', 35, 'pref'),
	(36, '徳島県', 36, 'pref'),
	(37, '香川県', 37, 'pref'),
	(38, '愛媛県', 38, 'pref'),
	(39, '高知県', 39, 'pref'),
	(40, '福岡県', 40, 'pref'),
	(41, '佐賀県', 41, 'pref'),
	(42, '長崎県', 42, 'pref'),
	(43, '熊本県', 43, 'pref'),
	(44, '大分県', 44, 'pref'),
	(45, '宮崎県', 45, 'pref'),
	(46, '鹿児島県', 46, 'pref'),
	(47, '沖縄県', 47, 'pref');
/*!40000 ALTER TABLE `mtb_pref` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_product_list_max
CREATE TABLE IF NOT EXISTS `mtb_product_list_max` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_product_list_max: ~3 rows (approximately)
DELETE FROM `mtb_product_list_max`;
/*!40000 ALTER TABLE `mtb_product_list_max` DISABLE KEYS */;
INSERT INTO `mtb_product_list_max` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(15, '15件', 0, 'productlistmax'),
	(30, '30件', 1, 'productlistmax'),
	(50, '50件', 2, 'productlistmax');
/*!40000 ALTER TABLE `mtb_product_list_max` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_product_list_order_by
CREATE TABLE IF NOT EXISTS `mtb_product_list_order_by` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_product_list_order_by: ~3 rows (approximately)
DELETE FROM `mtb_product_list_order_by`;
/*!40000 ALTER TABLE `mtb_product_list_order_by` DISABLE KEYS */;
INSERT INTO `mtb_product_list_order_by` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '価格が低い順', 0, 'productlistorderby'),
	(2, '新着順', 2, 'productlistorderby'),
	(3, '価格が高い順', 1, 'productlistorderby');
/*!40000 ALTER TABLE `mtb_product_list_order_by` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_product_status
CREATE TABLE IF NOT EXISTS `mtb_product_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_product_status: ~3 rows (approximately)
DELETE FROM `mtb_product_status`;
/*!40000 ALTER TABLE `mtb_product_status` DISABLE KEYS */;
INSERT INTO `mtb_product_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '公開', 0, 'productstatus'),
	(2, '非公開', 1, 'productstatus'),
	(3, '廃止', 2, 'productstatus');
/*!40000 ALTER TABLE `mtb_product_status` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_rounding_type
CREATE TABLE IF NOT EXISTS `mtb_rounding_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_rounding_type: ~3 rows (approximately)
DELETE FROM `mtb_rounding_type`;
/*!40000 ALTER TABLE `mtb_rounding_type` DISABLE KEYS */;
INSERT INTO `mtb_rounding_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '四捨五入', 0, 'roundingtype'),
	(2, '切り捨て', 1, 'roundingtype'),
	(3, '切り上げ', 2, 'roundingtype');
/*!40000 ALTER TABLE `mtb_rounding_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_sale_type
CREATE TABLE IF NOT EXISTS `mtb_sale_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_sale_type: ~2 rows (approximately)
DELETE FROM `mtb_sale_type`;
/*!40000 ALTER TABLE `mtb_sale_type` DISABLE KEYS */;
INSERT INTO `mtb_sale_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '販売種別A', 0, 'saletype'),
	(2, '販売種別B', 1, 'saletype');
/*!40000 ALTER TABLE `mtb_sale_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_sex
CREATE TABLE IF NOT EXISTS `mtb_sex` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_sex: ~2 rows (approximately)
DELETE FROM `mtb_sex`;
/*!40000 ALTER TABLE `mtb_sex` DISABLE KEYS */;
INSERT INTO `mtb_sex` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '男性', 0, 'sex'),
	(2, '女性', 1, 'sex');
/*!40000 ALTER TABLE `mtb_sex` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_shipping_status
CREATE TABLE IF NOT EXISTS `mtb_shipping_status` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_shipping_status: ~3 rows (approximately)
DELETE FROM `mtb_shipping_status`;
/*!40000 ALTER TABLE `mtb_shipping_status` DISABLE KEYS */;
INSERT INTO `mtb_shipping_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '出荷準備中', 0, 'shippingstatus'),
	(2, '出荷済み', 1, 'shippingstatus'),
	(3, 'キャンセル', 2, 'shippingstatus');
/*!40000 ALTER TABLE `mtb_shipping_status` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_tax_display_type
CREATE TABLE IF NOT EXISTS `mtb_tax_display_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_tax_display_type: ~2 rows (approximately)
DELETE FROM `mtb_tax_display_type`;
/*!40000 ALTER TABLE `mtb_tax_display_type` DISABLE KEYS */;
INSERT INTO `mtb_tax_display_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '税抜', 0, 'taxdisplaytype'),
	(2, '税込', 1, 'taxdisplaytype');
/*!40000 ALTER TABLE `mtb_tax_display_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_tax_type
CREATE TABLE IF NOT EXISTS `mtb_tax_type` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_tax_type: ~3 rows (approximately)
DELETE FROM `mtb_tax_type`;
/*!40000 ALTER TABLE `mtb_tax_type` DISABLE KEYS */;
INSERT INTO `mtb_tax_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(1, '課税', 0, 'taxtype'),
	(2, '不課税', 1, 'taxtype'),
	(3, '非課税', 2, 'taxtype');
/*!40000 ALTER TABLE `mtb_tax_type` ENABLE KEYS */;

-- Dumping structure for table sf.mtb_work
CREATE TABLE IF NOT EXISTS `mtb_work` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) unsigned NOT NULL,
  `discriminator_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sf.mtb_work: ~2 rows (approximately)
DELETE FROM `mtb_work`;
/*!40000 ALTER TABLE `mtb_work` DISABLE KEYS */;
INSERT INTO `mtb_work` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
	(0, '非稼働', 0, 'work'),
	(1, '稼働', 1, 'work');
