/*
Created		2016/8/18
Modified		2016/8/18
Project		
Model		
Company		
Author		
Version		
Database		mySQL 4.1 
*/
DROP TABLE
IF EXISTS t_htwx_gps;

CREATE TABLE t_htwx_gps (
	id BIGINT (20) UNSIGNED NOT NULL AUTO_INCREMENT,
	utctime Datetime,
	speed INT,
	dir INT,
	lat DOUBLE,
	lon DOUBLE,
	satellites INT,
	device_id VARCHAR (255),
	collection_time Datetime,
	PRIMARY KEY (id)
) ENGINE = MyISAM ROW_FORMAT = DEFAULT;

DROP TABLE
IF EXISTS t_htwx_stat;

CREATE TABLE t_htwx_stat (
	id BIGINT (20) UNSIGNED NOT NULL AUTO_INCREMENT,
	device_id VARCHAR (255),
	last_accon_time Datetime,
	utctime Datetime,
	total_trip_mileage BIGINT (20),
	current_trip_milea BIGINT (20),
	total_fuel DOUBLE,
	current_fuel DOUBLE,
	s07 INT,
	s06 INT,
	s05 INT,
	s04 INT,
	s03 INT,
	s02 INT,
	s01 INT,
	s00 INT,
	s17 INT,
	s16 INT,
	s15 INT,
	s14 INT,
	s13 INT,
	s12 INT,
	s11 INT,
	s10 INT,
	s27 INT,
	s26 INT,
	s25 INT,
	s24 INT,
	s23 INT,
	s22 INT,
	s21 INT,
	s20 INT,
	s37 INT,
	s36 INT,
	s35 INT,
	s34 INT,
	s33 INT,
	s32 INT,
	s31 INT,
	s30 INT,
	reserve VARCHAR (255),
	collection_time Datetime,
	PRIMARY KEY (id)
) ENGINE = MyISAM ROW_FORMAT = DEFAULT;

/* Users permissions */
DROP TABLE
IF EXISTS t_htwx_can;

CREATE TABLE t_htwx_can (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	device_id VARCHAR (255),
	utctime Datetime,
	collection_time Datetime,
	`f_2100` BIGINT,
	`f_2101` BIGINT,
	`f_2102` INT,
	`f_2103` INT,
	`f_2104` INT,
	`f_2105` INT,
	`f_2106` INT,
	`f_2107` INT,
	`f_2108` INT,
	`f_2109` INT,
	`f_210a` INT,
	`f_210b` INT,
	`f_210c` INT,
	`f_210d` INT,
	`f_210e` INT,
	`f_210f` INT,
	`f_2110` DOUBLE,
	`f_2111` INT,
	`f_2112` INT,
	`f_2113` INT,
	`f_2114` INT,
	`f_2115` INT,
	`f_2116` INT,
	`f_2117` INT,
	`f_2118` INT,
	`f_2119` INT,
	`f_211a` INT,
	`f_211b` INT,
	`f_211c` INT,
	`f_211d` INT,
	`f_211e` INT,
	`f_211f` INT,
	`f_2120` BIGINT,
	`f_2121` INT,
	`f_2122` INT,
	`f_2123` INT,
	`f_2124` INT,
	`f_2125` INT,
	`f_2126` INT,
	`f_2127` INT,
	`f_2128` INT,
	`f_2129` INT,
	`f_212a` INT,
	`f_212b` INT,
	`f_212c` INT,
	`f_212d` INT,
	`f_212e` INT,
	`f_212f` INT,
	`f_2130` INT,
	`f_2131` INT,
	`f_2132` INT,
	`f_2133` INT,
	`f_2134` INT,
	`f_2135` INT,
	`f_2136` INT,
	`f_2137` INT,
	`f_2138` INT,
	`f_2139` INT,
	`f_213a` INT,
	`f_213b` INT,
	`f_213c` INT,
	`f_213d` INT,
	`f_213e` INT,
	`f_213f` INT,
	`f_2140` BIGINT,
	`f_2141` BIGINT,
	`f_2142` INT,
	`f_2143` INT,
	`f_2144` INT,
	`f_2145` INT,
	`f_2146` INT,
	`f_2147` INT,
	`f_2148` INT,
	`f_2149` INT,
	`f_214a` INT,
	`f_214b` INT,
	`f_214c` INT,
	`f_214d` INT,
	`f_214e` INT,
	`f_214f` BIGINT,
	`f_2150` INT,
	`f_2151` INT,
	`f_2152` INT,
	`f_2153` INT,
	`f_2154` INT,
	`f_2155` INT,
	`f_2156` INT,
	`f_2157` INT,
	`f_2158` INT,
	`f_2159` INT,
	`f_215a` INT,
	`f_215b` INT,
	`f_215c` INT,
	`f_215d` INT,
	`f_215e` INT,
	`f_2160` BIGINT,
	`f_2161` INT,
	`f_2162` INT,
	`f_2163` INT,
	`f_2164` BIGINT,
	PRIMARY KEY (id)
) ENGINE = MyISAM ROW_FORMAT = DEFAULT;

DROP TABLE
IF EXISTS t_htwx_fault;

CREATE TABLE t_htwx_fault (
	id BIGINT (20) UNSIGNED NOT NULL AUTO_INCREMENT,
	device_id VARCHAR (255),
	utctime Datetime,
	collection_time Datetime,
	fault_flag INT,
	fault_count INT,
	fault_code VARCHAR (255),
	PRIMARY KEY (id)
) ENGINE = MyISAM ROW_FORMAT = DEFAULT;


DROP TABLE
IF EXISTS t_htwx_alarm;

CREATE TABLE t_htwx_alarm (
	id BIGINT (20) UNSIGNED NOT NULL AUTO_INCREMENT,
	device_id VARCHAR (255),
	utctime Datetime,
	collection_time Datetime,
	new_alarm_flag INT,
	alarm_type varchar(20),
	alarm_desc INT,
	alarm_threshold INT,
	PRIMARY KEY (id)
) ENGINE = MyISAM ROW_FORMAT = DEFAULT;



-- ----------------------------
-- Table structure for t_htwx_snap
-- ----------------------------
DROP TABLE IF EXISTS `t_htwx_snap`;
CREATE TABLE `t_htwx_snap` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) DEFAULT NULL,
  `utctime` datetime DEFAULT NULL,
  `device_uid` varchar(255) DEFAULT NULL,
  `last_accon_time` datetime DEFAULT NULL,
  `collection_time` datetime DEFAULT NULL,
  `f_2100` bigint(20) DEFAULT NULL,
  `f_2101` bigint(20) DEFAULT NULL,
  `f_2102` int(11) DEFAULT NULL,
  `f_2103` varchar(25) DEFAULT NULL,
  `f_2104` int(11) DEFAULT NULL,
  `f_2105` int(11) DEFAULT NULL,
  `f_2106` int(11) DEFAULT NULL,
  `f_2107` int(11) DEFAULT NULL,
  `f_2108` int(11) DEFAULT NULL,
  `f_2109` int(11) DEFAULT NULL,
  `f_210a` int(11) DEFAULT NULL,
  `f_210b` int(11) DEFAULT NULL,
  `f_210c` int(11) DEFAULT NULL,
  `f_210d` int(11) DEFAULT NULL,
  `f_210e` int(11) DEFAULT NULL,
  `f_210f` int(11) DEFAULT NULL,
  `f_2110` double DEFAULT NULL,
  `f_2111` int(11) DEFAULT NULL,
  `f_2112` int(11) DEFAULT NULL,
  `f_2113` int(11) DEFAULT NULL,
  `f_2114` varchar(25) DEFAULT NULL,
  `f_2115` varchar(25) DEFAULT NULL,
  `f_2116` varchar(25) DEFAULT NULL,
  `f_2117` varchar(25) DEFAULT NULL,
  `f_2118` varchar(25) DEFAULT NULL,
  `f_2119` varchar(25) DEFAULT NULL,
  `f_211a` varchar(25) DEFAULT NULL,
  `f_211b` varchar(25) DEFAULT NULL,
  `f_211c` int(11) DEFAULT NULL,
  `f_211d` int(11) DEFAULT NULL,
  `f_211e` int(11) DEFAULT NULL,
  `f_211f` int(11) DEFAULT NULL,
  `f_2120` varchar(25) DEFAULT NULL,
  `f_2121` int(11) DEFAULT NULL,
  `f_2122` int(11) DEFAULT NULL,
  `f_2123` int(11) DEFAULT NULL,
  `f_2124` varchar(25) DEFAULT NULL,
  `f_2125` varchar(25) DEFAULT NULL,
  `f_2126` varchar(25) DEFAULT NULL,
  `f_2127` varchar(25) DEFAULT NULL,
  `f_2128` varchar(25) DEFAULT NULL,
  `f_2129` varchar(25) DEFAULT NULL,
  `f_212a` varchar(25) DEFAULT NULL,
  `f_212b` varchar(25) DEFAULT NULL,
  `f_212c` int(11) DEFAULT NULL,
  `f_212d` int(11) DEFAULT NULL,
  `f_212e` int(11) DEFAULT NULL,
  `f_212f` int(11) DEFAULT NULL,
  `f_2130` int(11) DEFAULT NULL,
  `f_2131` int(11) DEFAULT NULL,
  `f_2132` int(11) DEFAULT NULL,
  `f_2133` int(11) DEFAULT NULL,
  `f_2134` varchar(25) DEFAULT NULL,
  `f_2135` varchar(25) DEFAULT NULL,
  `f_2136` varchar(25) DEFAULT NULL,
  `f_2137` varchar(25) DEFAULT NULL,
  `f_2138` varchar(25) DEFAULT NULL,
  `f_2139` varchar(25) DEFAULT NULL,
  `f_213a` varchar(25) DEFAULT NULL,
  `f_213b` varchar(25) DEFAULT NULL,
  `f_213c` int(11) DEFAULT NULL,
  `f_213d` int(11) DEFAULT NULL,
  `f_213e` int(11) DEFAULT NULL,
  `f_213f` int(11) DEFAULT NULL,
  `f_2140` varchar(25) DEFAULT NULL,
  `f_2141` varchar(25) DEFAULT NULL,
  `f_2142` int(11) DEFAULT NULL,
  `f_2143` int(11) DEFAULT NULL,
  `f_2144` int(11) DEFAULT NULL,
  `f_2145` int(11) DEFAULT NULL,
  `f_2146` int(11) DEFAULT NULL,
  `f_2147` int(11) DEFAULT NULL,
  `f_2148` int(11) DEFAULT NULL,
  `f_2149` int(11) DEFAULT NULL,
  `f_214a` int(11) DEFAULT NULL,
  `f_214b` int(11) DEFAULT NULL,
  `f_214c` int(11) DEFAULT NULL,
  `f_214d` int(11) DEFAULT NULL,
  `f_214e` int(11) DEFAULT NULL,
  `f_214f` varchar(25) DEFAULT NULL,
  `f_2150` int(11) DEFAULT NULL,
  `f_2151` int(11) DEFAULT NULL,
  `f_2152` int(11) DEFAULT NULL,
  `f_2153` int(11) DEFAULT NULL,
  `f_2154` int(11) DEFAULT NULL,
  `f_2155` varchar(25) DEFAULT NULL,
  `f_2156` varchar(25) DEFAULT NULL,
  `f_2157` varchar(25) DEFAULT NULL,
  `f_2158` varchar(25) DEFAULT NULL,
  `f_2159` int(11) DEFAULT NULL,
  `f_215a` int(11) DEFAULT NULL,
  `f_215b` int(11) DEFAULT NULL,
  `f_215c` int(11) DEFAULT NULL,
  `f_215d` int(11) DEFAULT NULL,
  `f_215e` int(11) DEFAULT NULL,
  `f_2160` varchar(25) DEFAULT NULL,
  `f_2161` int(11) DEFAULT NULL,
  `f_2162` int(11) DEFAULT NULL,
  `f_2163` int(11) DEFAULT NULL,
  `f_2164` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=702 DEFAULT CHARSET=utf8;