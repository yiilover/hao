alter table `v9_special` add column   `tgbd` mediumtext NOT NULL DEFAULT '';
alter table `v9_special` add column   `zgdw` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `zbdw` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `gnkh` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `gjkh` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `yfdh` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `cbzq` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `yuyan` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `leibie` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `zhubian` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `cbd` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `cknf` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `qkjb` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `fhyxyz` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `zhyxyz` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `qq` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `email` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `tel` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special` add column   `is_recommend` smallint(3) NOT NULL DEFAULT 0;
alter table `v9_special` add column   `is_hot` smallint(3) NOT NULL DEFAULT 0;
alter table `v9_special` add column   `catid` smallint(5) unsigned NOT NULL ;
alter table `v9_special` modify column  `description` mediumtext NOT NULL DEFAULT '';


alter table `v9_special_content` add column  `cid` smallint(3) unsigned  DEFAULT '0' ;
alter table `v9_special_content` add column  `status` smallint(3) unsigned  DEFAULT '0' ;
alter table `v9_special_content` add column  `uploadfile` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `writer` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `tel` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `email` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `company` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `qq` varchar(255) NOT NULL DEFAULT '';
alter table `v9_special_content` add column  `info` varchar(255) NOT NULL DEFAULT '';





