# Host: 192.168.5.119  (Version 5.6.39)
# Date: 2019-09-05 09:50:11
# Generator: MySQL-Front 5.4  (Build 4.114) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "dtl_lokasi"
#

DROP TABLE IF EXISTS `dtl_lokasi`;
CREATE TABLE `dtl_lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(150) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` int(11) DEFAULT NULL,
  `kabupaten` int(11) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kordinat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`),
  KEY `kabupaten_dtl` (`kabupaten`),
  KEY `kecamatan_dtl` (`kecamatan`),
  KEY `provinsi_dtl` (`provinsi`),
  CONSTRAINT `kabupaten_dtl` FOREIGN KEY (`kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kecamatan_dtl` FOREIGN KEY (`kecamatan`) REFERENCES `kecamatan` (`id_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `provinsi_dtl` FOREIGN KEY (`provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_lokasi"
#

INSERT INTO `dtl_lokasi` VALUES (2,'Salon Eva','Jakarta','005','006','15060','',43,6,1,'-6.173318010678013,106.86967085717777'),(8,'Gym Center Sunter','Jl. Yos Sudarso No. 89','01','05','14351','Sunter',43,6,1,'-6.173926007734689,106.86804007409671'),(9,'Mini Teater','JL. Pademangan Barat no. 77','04','14','14056','-',40,6,1,'-6.173520676441118,106.87042187570194');

#
# Structure for table "mst_bank"
#

DROP TABLE IF EXISTS `mst_bank`;
CREATE TABLE `mst_bank` (
  `id_bank` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) DEFAULT NULL,
  `kode_atm` varchar(5) DEFAULT NULL,
  `bank_logo` varchar(100) DEFAULT NULL,
  KEY `id_bank` (`id_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

#
# Data for table "mst_bank"
#

INSERT INTO `mst_bank` VALUES (1,'Bank Mandiri','008','bank-default.png'),(2,'Bank Negara Indonesia (BNI)','009','bank-default.png'),(3,'Bank Rakyat Indonesia (BRI)','002','bank-default.png'),(4,'Bank Tabungan Negara (BTN)','200','bank-default.png'),(5,'Bank Agris','945','bank-default.png'),(6,'Bank Amar Indonesia','531','bank-default.png'),(7,'Bank Andara','466','bank-default.png'),(8,'Bank Antar Daerah','088','bank-default.png'),(9,'Bank ANZ Indonesia','061','bank-default.png'),(10,'Bank Artha Graha Internasional','037','bank-default.png'),(11,'Bank Artos Indonesia','542','bank-default.png'),(12,'Bank BCA Syariah','536','bank-default.png'),(13,'Bank Bisinis Internasional','459','bank-default.png'),(14,'Bank BJB Syariah','425','bank-default.png'),(15,'Bank BNI Syariah','422','bank-default.png'),(16,'Bank BNP Paribas Indonesia','057','bank-default.png'),(17,'Bank BRI Agroniaga','494','bank-default.png'),(18,'Bank BRI Syariah','422','bank-default.png'),(19,'Bank BTPN Syariah','547','bank-default.png'),(20,'Bank Bukopin','441','bank-default.png'),(21,'Bank Bumi Arta','076','bank-default.png'),(22,'Bank Capital Indonesia','054','bank-default.png'),(23,'Bank Central Asia (BCA)','014','bank-default.png'),(24,'Bank CIMB Niaga','022','bank-default.png'),(25,'Bank Commonwealth','950','bank-default.png'),(26,'Bank CTBC Indonesia','949',NULL),(27,'Bank Danamon Indonesia','011',NULL),(28,'Bank DBS Indonesia','046',NULL),(29,'Bank Dinar Indonesia','526',NULL),(30,'Bank Ekonomi Raharja','087',NULL),(31,'Bank Fama Internasional','562',NULL),(32,'Bank Ganesha','161',NULL),(33,'Bank Harda Internasional','567',NULL),(34,'Bank ICBC Indonesia','164',NULL),(35,'Bank Ina Perdana','513',NULL),(36,'Bank Index Selindo','555',NULL),(37,'Bank J Trust Indonesia','095',NULL),(38,'Bank Jasa Jakarta','472',NULL),(39,'Bank KEB Hana Indonesia','484',NULL),(40,'Bank Kesejahteraan Ekonomi','535',NULL),(41,'Bank Maspion Indonesia','157',NULL),(42,'Bank Mayapada Internasional','097',NULL),(43,'Bank Maybank Indonesia','016',NULL),(44,'Bank Maybank Syariah Indonesia','947',NULL),(45,'Bank Mayora','553',NULL),(46,'Bank Mega','526',NULL),(47,'Bank Mega Syariah','506',NULL),(48,'Bank Mestika Dharma','151',NULL),(49,'Bank Metro Express','152',NULL),(50,'Bank Mitraniaga','491',NULL),(51,'Bank Mizuho Indonesia','048',NULL),(52,'Bank MNC Internasional','485',NULL),(53,'Bank Muamalat Indonesia','147',NULL),(54,'Bank OCBC NISP','028',NULL),(55,'Bank Panin','019',NULL),(56,'Bank Panin Syariah','130',NULL),(57,'Bank Permata','013',NULL),(58,'Bank Prima Master','520',NULL),(59,'Bank Sinarmas','153',NULL),(60,'Bank Syariah Bukopin','521',NULL),(61,'Bank Syariah Mandiri','451',NULL),(62,'Bank UOB Indonesia','023',NULL),(63,NULL,NULL,'bank-default.png'),(64,NULL,NULL,'bank-default.png'),(65,NULL,NULL,'bank-default.png'),(66,NULL,NULL,'bank-default.png'),(68,NULL,NULL,'bank-default.png'),(69,'Bank DKI Jakarta','111','bank-default.png');

#
# Structure for table "mst_group"
#

DROP TABLE IF EXISTS `mst_group`;
CREATE TABLE `mst_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(11) DEFAULT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "mst_group"
#

INSERT INTO `mst_group` VALUES (1,'2','User'),(2,'1','Admin');

#
# Structure for table "mst_pajak"
#

DROP TABLE IF EXISTS `mst_pajak`;
CREATE TABLE `mst_pajak` (
  `id_pajak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pajak` varchar(100) DEFAULT NULL,
  `jenis_pajak` varchar(100) DEFAULT NULL,
  `biaya_pajak` double DEFAULT NULL,
  PRIMARY KEY (`id_pajak`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

#
# Data for table "mst_pajak"
#

INSERT INTO `mst_pajak` VALUES (1,'Film Bioskop','Daily',10),(2,'Kesenian dan Musik,Tari, dan Busana Tradisional','Insedental',0),(3,'Kesenian, Musik, tari dan busana berkelas nasional','Insedental',5),(4,'Pagelaran kesenian, musik, tari dan busana berkelas internasional','Insedental',15),(5,'Sirkus, Akrobat, Sulap','Insedental',10),(6,'Kontes kecantikan yang berkelas lokal/tradisional','Insedental',0),(7,'Kontes kecantikan berkelas nasional','Insedental',5),(8,'Kontes kecantikan berkelas internasional','Insedental',0),(9,'Pameran yang bersifat komersil','Insedental',10),(10,'Diskotik, Karaoke, Klab Malam, Pub, Bar, Live Musik, Musik Disc Jockey','Daily',25),(11,'Sirkus, Akrobat dan Tulip berkelas lokas/tradisional','Insedental',0),(12,'Sirkus, Akrobat, dan sulap yang berkelas nasional dan internasional','Insedental',10),(13,'Permainan Bilyar, Bowling','Daily',10),(14,'Pacuan Kuda berkelas lokal/tradisional','Daily',5),(15,'Pacuan Kuda berkelas nasional dan internasional','Daily',15),(16,'Pacuan kendaraan bermotor','Daily',15),(17,'Permainan Ketangkasan','Insedental',10),(18,'Panti Pijat, Mandi Uap, dan SPA','Daily',35),(19,'Pusat Kebugaran / Stress Center','Daily',10),(20,'Pertandingan olahraga berkelas lokas/tradisional','Insedental',0),(21,'Pertandingan olahraga berkelas nasional','Insedental',5),(22,'Pertendingan olahraga berkelas internasional','Insedental',15);

#
# Structure for table "mst_user"
#

DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE `mst_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `group_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `id` (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `mst_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `mst_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "mst_user"
#

INSERT INTO `mst_user` VALUES (8,'001','admin','21232f297a57a5a743894a0e4a801fc3','Admin','-',NULL,'-','1'),(7,'002','user1','ee11cbb19052e40b07aac0ca060c23ee','User 1','-',NULL,'-','2'),(4,'003','user2','ee11cbb19052e40b07aac0ca060c23ee','User 2','10.100.100.100',NULL,'-','2'),(12,'004','naufal123','81dc9bdb52d04dc20036dbd8313ed055','Naufal Syawal','327501071219970018','noval@gmail.com','0877990011','2');

#
# Structure for table "notification"
#

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id_notification` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(50) DEFAULT NULL,
  `body` varchar(300) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `group_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_notification`),
  KEY `notification_touser` (`user_id`),
  CONSTRAINT `notification_touser` FOREIGN KEY (`user_id`) REFERENCES `mst_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "notification"
#


#
# Structure for table "pajak_usaha"
#

DROP TABLE IF EXISTS `pajak_usaha`;
CREATE TABLE `pajak_usaha` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOP` varchar(20) NOT NULL,
  `ID_PAJAK` int(11) DEFAULT NULL,
  `NAMA_WAJIB_PAJAK` varchar(100) DEFAULT NULL,
  `NIK_NPWP` varchar(100) DEFAULT NULL,
  `TELEPON` varchar(20) DEFAULT NULL,
  `STATUS_PAJAK_USAHA` varchar(50) DEFAULT NULL,
  `TANGGAL_VALIDASI` date DEFAULT NULL,
  `REMARK` varchar(150) DEFAULT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`NOP`),
  KEY `id` (`ID`),
  KEY `pajak_usaha_touser` (`user_id`),
  KEY `constraint_jenispajak` (`ID_PAJAK`),
  CONSTRAINT `constraint_jenispajak` FOREIGN KEY (`ID_PAJAK`) REFERENCES `mst_pajak` (`id_pajak`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pajak_usaha_touser` FOREIGN KEY (`user_id`) REFERENCES `mst_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Data for table "pajak_usaha"
#

INSERT INTO `pajak_usaha` VALUES (2,'190528103058',18,'Annas','327501071219900046','087783133033','Valid','2019-06-10',NULL,'002'),(8,'190610083721',19,'Deddy','3275013001900015','08130045901','Valid','2019-06-10',NULL,'002'),(9,'190610083952',1,'Irwan','3275012502900016','08130045901','Tidak Valid',NULL,'Data tidak valid','003');

#
# Structure for table "dtl_usaha"
#

DROP TABLE IF EXISTS `dtl_usaha`;
CREATE TABLE `dtl_usaha` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOP` varchar(20) DEFAULT NULL,
  `NAMA_OBJEK_PAJAK` varchar(200) DEFAULT NULL,
  `NPWP_USAHA` varchar(20) DEFAULT NULL,
  `TELEPON_USAHA` varchar(15) DEFAULT NULL,
  `STATUS_USAHA` varchar(100) DEFAULT NULL,
  `STATUS_KEPEMILIKAN` varchar(100) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `constraint_dtlusaha` (`NOP`),
  KEY `constraint_lokasi` (`id_lokasi`),
  CONSTRAINT `constraint_dtlusaha` FOREIGN KEY (`NOP`) REFERENCES `pajak_usaha` (`NOP`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `constraint_lokasi` FOREIGN KEY (`id_lokasi`) REFERENCES `dtl_lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_usaha"
#

INSERT INTO `dtl_usaha` VALUES (1,'190528103058','Salon Eva','10.100.100','081394151610','Induk','Milik Sendiri',2),(7,'190610083721','Gym Center Sunter','10.100.100','(021)88340016','Induk','Milik Sendiri',8),(8,'190610083952','Mini Teater','10.100.100','(021) 88345630','Induk','Milik Sendiri',9);

#
# Structure for table "pelaporan_pajak_usaha"
#

DROP TABLE IF EXISTS `pelaporan_pajak_usaha`;
CREATE TABLE `pelaporan_pajak_usaha` (
  `ID_PELAPORAN` int(11) NOT NULL AUTO_INCREMENT,
  `TGL_LAPORAN` date DEFAULT NULL,
  `BESAR_PENDAPATAN` int(11) DEFAULT NULL,
  `STATUS_LAPORAN` varchar(100) DEFAULT NULL,
  `TGL_VALIDASI` date DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PELAPORAN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "pelaporan_pajak_usaha"
#

INSERT INTO `pelaporan_pajak_usaha` VALUES (4,'2019-06-17',25000000,'Menunggu Validasi',NULL,NULL);

#
# Structure for table "dtl_pajak_usaha"
#

DROP TABLE IF EXISTS `dtl_pajak_usaha`;
CREATE TABLE `dtl_pajak_usaha` (
  `ID_PAJAK_USAHA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PELAPORAN` int(11) DEFAULT NULL,
  `NOP` varchar(20) DEFAULT NULL,
  `MASA_PAJAK` date DEFAULT NULL,
  `BESAR_PAJAK` int(15) DEFAULT NULL,
  `JUMLAH_PAJAK` int(15) DEFAULT NULL,
  `DENDA_PAJAK` int(15) DEFAULT NULL,
  `STATUS_PEMBAYARAN` varchar(100) DEFAULT NULL,
  `BUKTI_PEMBAYARAN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PAJAK_USAHA`),
  KEY `id` (`ID_PAJAK_USAHA`),
  KEY `DTLPajak_Usaha` (`NOP`),
  KEY `DTLPelaporan` (`ID_PELAPORAN`),
  CONSTRAINT `DTLPajak_Usaha` FOREIGN KEY (`NOP`) REFERENCES `pajak_usaha` (`NOP`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `DTLPelaporan` FOREIGN KEY (`ID_PELAPORAN`) REFERENCES `pelaporan_pajak_usaha` (`ID_PELAPORAN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_pajak_usaha"
#

INSERT INTO `dtl_pajak_usaha` VALUES (38,4,'190528103058','2019-06-14',35,8750000,NULL,'Belum Dibayar',NULL),(39,NULL,'190610083721','2019-06-14',10,NULL,NULL,'Belum Dibayar',NULL),(41,NULL,'190528103058','2019-07-01',35,NULL,NULL,'Belum Dibayar',NULL),(42,NULL,'190610083721','2019-07-01',10,NULL,NULL,'Belum Dibayar',NULL),(44,NULL,'190528103058','2019-08-01',35,NULL,NULL,'Belum Dibayar',NULL),(45,NULL,'190610083721','2019-08-01',10,NULL,NULL,'Belum Dibayar',NULL),(47,NULL,'190528103058','2019-09-01',35,NULL,NULL,'Belum Dibayar',NULL),(48,NULL,'190610083721','2019-09-01',10,NULL,NULL,'Belum Dibayar',NULL);

#
# Structure for table "provinsi"
#

DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "provinsi"
#

INSERT INTO `provinsi` VALUES (1,'DKI JAKARTA');

#
# Structure for table "kabupaten"
#

DROP TABLE IF EXISTS `kabupaten`;
CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kabupaten`),
  KEY `provinsi` (`id_provinsi`),
  CONSTRAINT `provinsi` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "kabupaten"
#

INSERT INTO `kabupaten` VALUES (1,1,'KABUPATEN KEPULAUAN SERIBU'),(2,1,'KOTA JAKARTA SELATAN'),(3,1,'KOTA JAKARTA TIMUR'),(4,1,'KOTA JAKARTA PUSAT'),(5,1,'KOTA JAKARTA BARAT'),(6,1,'KOTA JAKARTA UTARA');

#
# Structure for table "kecamatan"
#

DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kecamatan`),
  KEY `kabupaten` (`id_kabupaten`),
  CONSTRAINT `kabupaten` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "kecamatan"
#

INSERT INTO `kecamatan` VALUES (1,1,'KEPULAUAN SERIBU SELATAN'),(2,1,'\tKEPULAUAN SERIBU UTARA\t'),(3,2,'\tJAGAKARSA\t'),(4,2,'\tPASAR MINGGU\t'),(5,2,'\tCILANDAK\t'),(6,2,'\tPESANGGRAHAN\t'),(7,2,'\tKEBAYORAN LAMA\t'),(8,2,'\tKEBAYORAN BARU\t'),(9,2,'\tMAMPANG PRAPATAN\t'),(10,2,'\tPANCORAN\t'),(11,2,'\tTEBET\t'),(12,2,'\tSETIA BUDI\t'),(13,3,'\tPASAR REBO\t'),(14,3,'\tCIRACAS\t'),(15,3,'\tCIPAYUNG\t'),(16,3,'\tMAKASAR\t'),(17,3,'\tKRAMAT JATI\t'),(18,3,'\tJATINEGARA\t'),(19,3,'\tDUREN SAWIT\t'),(20,3,'\tCAKUNG\t'),(21,3,'\tPULO GADUNG\t'),(22,3,'\tMATRAMAN\t'),(23,4,'\tTANAH ABANG\t'),(24,4,'\tMENTENG\t'),(25,4,'\tSENEN\t'),(26,4,'\tJOHAR BARU\t'),(27,4,'\tCEMPAKA PUTIH\t'),(28,4,'\tKEMAYORAN\t'),(29,4,'\tSAWAH BESAR\t'),(30,4,'\tGAMBIR\t'),(31,5,'\tKEMBANGAN\t'),(32,5,'\tKEBON JERUK\t'),(33,5,'\tPALMERAH\t'),(34,5,'\tGROGOL PETAMBURAN\t'),(35,5,'\tTAMBORA\t'),(36,5,'\tTAMAN SARI\t'),(37,5,'\tCENGKARENG\t'),(38,5,'\tKALI DERES\t'),(39,6,'\tPENJARINGAN\t'),(40,6,'\tPADEMANGAN\t'),(41,6,'\tTANJUNG PRIOK\t'),(42,6,'\tKOJA\t'),(43,6,'\tKELAPA GADING\t'),(44,6,'\tCILINCING\t');

#
# Structure for table "mst_lokasi"
#

DROP TABLE IF EXISTS `mst_lokasi`;
CREATE TABLE `mst_lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  `jenis_lokasi` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kabupaten` int(11) DEFAULT NULL,
  `kecamatan` int(11) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kordinat` varchar(100) DEFAULT NULL,
  `status_lokasi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`),
  UNIQUE KEY `uniqName` (`nama_lokasi`),
  KEY `provinsiToLokasi` (`provinsi`),
  KEY `kabupatenToLokasi` (`kabupaten`),
  KEY `kecamatanToLokasi` (`kecamatan`),
  CONSTRAINT `kabupatenToLokasi` FOREIGN KEY (`kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kecamatanToLokasi` FOREIGN KEY (`kecamatan`) REFERENCES `kecamatan` (`id_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `provinsiToLokasi` FOREIGN KEY (`provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

#
# Data for table "mst_lokasi"
#

INSERT INTO `mst_lokasi` VALUES (6,'Pasar Seni Ancol','Outdoor','Taman Impian Jaya, Jalan Lodan Timur No.1/7, RW.10, Ancol, Pademangan, Kota Jkt Utara, Daerah Khusus',1,6,40,'Ancol','-6.1265961548533205,106.83902930139163','show'),(8,'JIEXPO Kemayoran','Indoor','Jakarta International Expo RW.10, Pademangan Timur, Pademangan, Kota Jakarta Utara\r\nDaerah Khusus Ib',1,6,40,'Pademangan Timur','-6.143877319492506,106.84703301309207','show'),(9,'The Space Senayan City','Indoor','Jl. Asia Afrika Lot 19\r\nJakarta Pusat 10270 Indonesia',1,2,8,'Senayan','-6.176176657431839,106.8648321521149','show'),(10,'Gelora Bung Karno','Outdoor','Jalan Pintu Satu Senayan, Gelora, Kec. Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakart',1,4,23,'Gelor','-6.2191398282831285,106.80461119531253','show');

#
# Structure for table "event"
#

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acara` varchar(14) NOT NULL,
  `nama_acara` varchar(50) DEFAULT NULL,
  `id_pajak` int(11) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `tanggal_pengajuan` datetime DEFAULT NULL,
  `tanggal_acara` datetime DEFAULT NULL,
  `tanggal_disetujui` datetime DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `id_penyelenggara` varchar(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `estimasi_pajak` int(20) DEFAULT NULL,
  `lokasi_image` varchar(100) DEFAULT NULL,
  `nama_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_acara`),
  KEY `id` (`id`),
  KEY `Penyelenggara` (`id_penyelenggara`),
  KEY `Lokasi` (`lokasi`),
  KEY `JenisPajak` (`id_pajak`),
  CONSTRAINT `JenisPajak` FOREIGN KEY (`id_pajak`) REFERENCES `mst_pajak` (`id_pajak`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Lokasi` FOREIGN KEY (`lokasi`) REFERENCES `mst_lokasi` (`id_lokasi`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Penyelenggara` FOREIGN KEY (`id_penyelenggara`) REFERENCES `mst_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

#
# Data for table "event"
#

INSERT INTO `event` VALUES (141,'03100519002001','Test',3,6,'2019-05-10 00:00:00','2019-01-01 00:00:00',NULL,'User 1','-','002','Ditolak','Data Tidak Valid',3600000,'https://103.234.195.141/e-pajak/assets/img/event/','03100519002001.jpg'),(146,'03290519002001','Colour Run',3,6,'2019-05-29 00:00:00','2019-07-28 00:00:00',NULL,'Hengki','10.100.100.100','002','Menunggu Validasi',NULL,1125000,'https://103.234.195.141/e-pajak/assets/img/event/','03290519002001.jpg'),(143,'04240519002001','BLACK PINK 2019 WORLD TOUR JAKARTA',4,10,'2019-05-24 00:00:00','2019-07-01 00:00:00','2019-05-24 00:00:00','Hendra','129.129.1.120','002','Disetujui',NULL,1612500000,'https://103.234.195.141/e-pajak/assets/img/event/','04240519002001.jpg'),(147,'05200619002001','Test',5,8,'2019-06-20 00:00:00','2018-01-01 00:00:00',NULL,'User 1','-','002','Draft',NULL,9000000,'https://103.234.195.141/e-pajak/assets/img/event/','05200619002001.png'),(140,'09100519002001','Gaikindo Indonesia International Auto Show',9,8,'2019-05-10 00:00:00','2019-07-18 00:00:00','2019-05-13 00:00:00','Marno Sumarno','13.105.100','002','Disetujui',NULL,112500000,'https://103.234.195.141/e-pajak/assets/img/event/','09100519002001.jpg'),(142,'09140519003001','PARA-SITE 2019',9,9,'2019-05-14 00:00:00','2019-12-05 00:00:00','2019-05-14 00:00:00','Indra','10.100.100.100','003','Disetujui',NULL,13000000,'https://103.234.195.141/e-pajak/assets/img/event/','09140519003001.jpg');

#
# Structure for table "dtl_event"
#

DROP TABLE IF EXISTS `dtl_event`;
CREATE TABLE `dtl_event` (
  `id_dtlevent` int(11) NOT NULL AUTO_INCREMENT,
  `id_acara` varchar(14) NOT NULL,
  `nama_file` varchar(100) DEFAULT NULL,
  `lokasi_file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dtlevent`),
  KEY `dtl_doc` (`id_acara`),
  CONSTRAINT `dtl_doc` FOREIGN KEY (`id_acara`) REFERENCES `event` (`id_acara`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_event"
#

INSERT INTO `dtl_event` VALUES (9,'09100519002001','Surat Izin Keramaian','091005190020011.pdf'),(10,'03100519002001','a','031005190020011.pdf'),(11,'09140519003001','Dokumen Pendukung','091405190030011.pdf'),(12,'04240519002001','Dokumen Pendukung','042405190020011.pdf'),(15,'03290519002001','Dokumen Pendukung','032905190020011.pdf'),(19,'05200619002001','Dokumen Pendukung','052006190020011.pdf'),(20,'05200619002001','Dokumen Pendukung','052006190020011.pdf');

#
# Structure for table "dtl_tiket"
#

DROP TABLE IF EXISTS `dtl_tiket`;
CREATE TABLE `dtl_tiket` (
  `id_dtltiket` int(11) NOT NULL AUTO_INCREMENT,
  `id_acara` varchar(14) NOT NULL,
  `tipe_tiket` varchar(10) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL,
  `tiket_terjual` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dtltiket`),
  KEY `ID Acara` (`id_acara`),
  CONSTRAINT `ID Acara` FOREIGN KEY (`id_acara`) REFERENCES `event` (`id_acara`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_tiket"
#

INSERT INTO `dtl_tiket` VALUES (7,'09100519002001','VIP',750000,1000,1000),(8,'09100519002001','Regular',125000,3000,2900),(9,'03100519002001','Reg',6000,600,NULL),(10,'09140519003001','Regular',65000,2000,NULL),(11,'04240519002001','VIP',4500000,500,NULL),(12,'04240519002001','BLOK A',4000000,750,NULL),(13,'04240519002001','BLOK B',3500000,1000,NULL),(14,'04240519002001','BLOK C',2000000,1000,NULL),(17,'03290519002001','Regular',45000,500,NULL),(18,'05200619002001','Reg',90000,1000,NULL);

#
# Structure for table "pajak_insidental"
#

DROP TABLE IF EXISTS `pajak_insidental`;
CREATE TABLE `pajak_insidental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NOP` varchar(20) NOT NULL,
  `ID_ACARA` varchar(14) DEFAULT NULL,
  `BESAR_PAJAK` int(11) DEFAULT NULL,
  `JUMLAH_PAJAK` int(11) DEFAULT NULL,
  `DENDA_PAJAK` int(11) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NOP`),
  KEY `RELASI_EVENT` (`ID_ACARA`),
  KEY `id` (`id`),
  CONSTRAINT `RELASI_EVENT` FOREIGN KEY (`id_acara`) REFERENCES `event` (`id_acara`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "pajak_insidental"
#

INSERT INTO `pajak_insidental` VALUES (5,'190513113345','09100519002001',10,112500000,0,'Sudah Dibayar'),(6,'190514095837','09140519003001',10,13000000,0,'Menunggu Verifikasi'),(8,'190524094059','04240519002001',15,1612500000,0,'Sudah Dibayar');

#
# Structure for table "dtl_pajak_insidental"
#

DROP TABLE IF EXISTS `dtl_pajak_insidental`;
CREATE TABLE `dtl_pajak_insidental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_LAPORAN` int(20) NOT NULL,
  `NOP` varchar(20) DEFAULT NULL,
  `TOTAL_PENDAPATAN` int(11) DEFAULT NULL,
  `TOTAL_PAJAK` int(11) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `TGL_VALIDASI` date DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_LAPORAN`),
  KEY `id` (`id`),
  KEY `DTL_PAJAK_INSIDENTAL` (`NOP`),
  CONSTRAINT `DTL_PAJAK_INSIDENTAL` FOREIGN KEY (`NOP`) REFERENCES `pajak_insidental` (`NOP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Data for table "dtl_pajak_insidental"
#


#
# Structure for table "settlement"
#

DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SETTLEMENT` varchar(20) NOT NULL,
  `NOP` varchar(20) DEFAULT NULL,
  `JUMLAH_SETTLEMENT` int(11) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `REKENING` int(20) DEFAULT NULL,
  `NAMA_REKENING` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_SETTLEMENT`),
  KEY `id` (`id`),
  KEY `SETT_TO_PAJAK_INSIDENTL` (`NOP`),
  KEY `SETT_TO_MSTBANK` (`id_bank`),
  CONSTRAINT `SETT_TO_MSTBANK` FOREIGN KEY (`id_bank`) REFERENCES `mst_bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SETT_TO_PAJAK_INSIDENTL` FOREIGN KEY (`NOP`) REFERENCES `pajak_insidental` (`NOP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "settlement"
#

INSERT INTO `settlement` VALUES (8,'190612033050','190513113345',1250000,'Belum Diproses',NULL,NULL,NULL),(5,'2147483647','190513113345',11250000,'Sudah Dibayar',23,7304007,'Khairul Annas Triambodo');

#
# Structure for table "transaction"
#

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TRANSAKSI` varchar(20) NOT NULL,
  `NOP` varchar(20) DEFAULT NULL,
  `JENIS_TRANSAKSI` varchar(50) DEFAULT NULL,
  `TGL_PEMBAYARAN` date DEFAULT NULL,
  `BANK` varchar(100) DEFAULT NULL,
  `REKENING` int(11) DEFAULT NULL,
  `DEBIT` int(11) DEFAULT NULL,
  `KREDIT` int(11) DEFAULT NULL,
  `STATUS_PEMBAYARAN` varchar(50) DEFAULT NULL,
  `TGL_VALIDASI` date DEFAULT NULL,
  `LOKASI_FILE` varchar(100) DEFAULT NULL,
  `BUKTI_PEMBAYARAN` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANSAKSI`),
  KEY `ID` (`ID`),
  KEY `NOP_INSIDENTAL` (`NOP`),
  CONSTRAINT `NOP_INSIDENTAL` FOREIGN KEY (`NOP`) REFERENCES `pajak_insidental` (`NOP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "transaction"
#

INSERT INTO `transaction` VALUES (8,'190513022758','190513113345','Pembayaran Uang Jaminan','2019-12-05','Bank Negara Indonesia (BNI)',7379018,112500000,NULL,'Valid','2019-05-15',NULL,'190513022758.jpg',NULL),(10,'190523025909','190513113345','Pembayaran Uang Settlement','2019-05-23','Bank DKI Jakarta',1001001,NULL,11250000,'Belum Diverifikasi',NULL,'http://10.1.19.119/e-pajak/assets/upload/','190523025909.jpg',NULL),(9,'190523104824','190514095837','Pembayaran Uang Jaminan','2019-05-22','Bank Negara Indonesia (BNI)',650080,13000000,NULL,'Belum Diverifikasi',NULL,NULL,'190523104824.jpg',NULL),(11,'190531100722','190524094059','Pembayaran Uang Jaminan','2019-05-31','Bank Negara Indonesia (BNI)',7379018,1612500000,NULL,'Valid','2019-05-31',NULL,'190531100722.PNG',NULL);

#
# Event "test"
#

DROP EVENT IF EXISTS `test`;
CREATE EVENT `test` ON SCHEDULE EVERY 1 MONTH STARTS '2019-06-01 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	    INSERT INTO dtl_pajak_usaha (NOP,MASA_PAJAK,BESAR_PAJAK,STATUS_PEMBAYARAN)
		SELECT NOP,CURDATE(),mst_pajak.biaya_pajak,'Belum Dibayar' FROM pajak_usaha 
		INNER JOIN mst_pajak ON pajak_usaha.ID_PAJAK = mst_pajak.id_pajak
		WHERE STATUS_PAJAK_USAHA = 'Valid';
	END;
