DROP TABLE IF EXISTS `ocenter_app_nav`;
CREATE TABLE IF NOT EXISTS `ocenter_app_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` char(30) NOT NULL COMMENT '系统模块名,如weibo',
  `title` char(30) NOT NULL COMMENT '文字标题,如微博',
  `url` char(100) NOT NULL COMMENT '导航连接',
  `type` CHAR(12) NOT NULL DEFAULT '0' COMMENT '导航类型(自定义或者系统)',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `target` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否新窗口打开',
  `icon` varchar(20) NOT NULL,
  `title_color` varchar(30) NOT NULL,
  `icon_color` varchar(30) NOT NULL,
  `remark` text NOT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE IF NOT EXISTS `ocenter_voice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '上传者id',
  `driver` varchar(20) NOT NULL COMMENT '上传驱动',
  `path` varchar(255) NOT NULL COMMENT '上传路径',
  `md5` varchar(50) NOT NULL COMMENT 'md5',
  `sha1` varchar(50) NOT NULL COMMENT 'sha1',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `type` CHAR(8) NOT NULL COMMENT '类型,文件后缀',
  `size` int(11) NOT NULL COMMENT '体积,单位byte',
  `extra` text NOT NULL COMMENT '额外信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
CREATE TABLE IF NOT EXISTS `ocenter_user_location` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `uid` INT(11) NOT NULL,
  `coords_type` CHAR(11) NOT NULL COMMENT '坐标系类型',
  `lng` DECIMAL(10,5) DEFAULT '0.000' COMMENT '经度',
  `lat` DECIMAL(10,5) NOT NULL DEFAULT '0.000' COMMENT '纬度',
  `altitude` INT(10) NOT NULL DEFAULT '0' COMMENT '海拔',
  `create_time` BIGINT(18)  NOT NULL COMMENT '地址的创建时间',
  `country` VARCHAR(30) NOT NULL COMMENT '国家',
  `province` VARCHAR(30) NOT NULL COMMENT '省',
  `city` VARCHAR(30) NOT NULL COMMENT '市',
  `district` VARCHAR(30) NOT NULL COMMENT '区',
  `street` VARCHAR(30) NOT NULL COMMENT '街道',
  `cityCode` INT(9) NOT NULL COMMENT '城市代码',
  `address` VARCHAR(128) NOT NULL COMMENT '详细地址',
  `only` INT(1) NOT NULL COMMENT '是否唯一',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户位置信息';
CREATE TABLE IF NOT EXISTS `ocenter_user_location` (
  `uid` int(11) NOT NULL,
  `lng` decimal(10,5) DEFAULT '0.00000' COMMENT '经度',
  `lat` decimal(10,5) NOT NULL DEFAULT '0.00000' COMMENT '纬度',
  `last_confirm_time` int(10) unsigned NOT NULL,
  `ClientID` char(128) NOT NULL COMMENT '客户端所在手机CID',
  `token` char( 128 ) NOT NULL COMMENT  'ios标识',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户定位';
CREATE TABLE IF NOT EXISTS `ocenter_store_order_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` int(18) NOT NULL,
  `uid` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品的id',
  `count` float NOT NULL DEFAULT '0' COMMENT '商品数',
  `collection` int(5) NOT NULL DEFAULT '0' COMMENT '是否收藏过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单表' AUTO_INCREMENT=236;
CREATE TABLE IF NOT EXISTS `ocenter_store_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `create_time` int(18) NOT NULL,
  `update_time` int(18) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_default` tinyint(2) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用于记录买家的配送地址信息';
ALTER TABLE  `ocenter_store_goods` ADD  `total_price` DECIMAL(10,2) NOT NULL ;
ALTER TABLE  `ocenter_weibo` ADD  `geolocation_id` INT (11) NOT NULL COMMENT '地理信息id';
ALTER TABLE  `ocenter_user_location` ADD  `geolocation_id` INT (11) NOT NULL COMMENT '地理信息id';
ALTER TABLE  `ocenter_weibo_long` ADD  `cover` INT(11) NOT NULL DEFAULT 0;
ALTER TABLE  `ocenter_picture` ADD  `size` INT(11) NOT NULL DEFAULT 0;
ALTER TABLE  `ocenter_module` ADD  `app_has` tinyint(2) NOT NULL DEFAULT 0;
ALTER TABLE  `ocenter_sync_login` ADD  `status` tinyint(4) NOT NULL DEFAULT 1;
ALTER TABLE  `ocenter_cat_entity` ADD  `app_icon` INT(9) NOT NULL;
ALTER TABLE  `ocenter_store_order` ADD  `r_id` INT(9) NOT NULL;
