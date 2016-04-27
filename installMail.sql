/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : installmail

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-04-27 00:13:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for celda
-- ----------------------------
DROP TABLE IF EXISTS `celda`;
CREATE TABLE `celda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `octeto` int(3) NOT NULL,
  `localidadID` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of celda
-- ----------------------------
INSERT INTO `celda` VALUES ('1', '13', '10', '1');
INSERT INTO `celda` VALUES ('2', 'Las Calandrias', '11', '1');
INSERT INTO `celda` VALUES ('3', 'Altos de San Lorenzo', '12', '1');
INSERT INTO `celda` VALUES ('4', 'Regimiento 7', '14', '1');
INSERT INTO `celda` VALUES ('5', '58', '20', '1');
INSERT INTO `celda` VALUES ('6', 'Escuela Naval', '40', '1');
INSERT INTO `celda` VALUES ('7', 'Citarella', '50', '1');
INSERT INTO `celda` VALUES ('8', 'Edificio 66', '53', '1');
INSERT INTO `celda` VALUES ('9', 'Mercado', '55', '1');
INSERT INTO `celda` VALUES ('10', '520', '60', '1');
INSERT INTO `celda` VALUES ('11', 'Red 92', '60', '1');
INSERT INTO `celda` VALUES ('12', 'El Peligro', '65', '2');
INSERT INTO `celda` VALUES ('13', 'Bosques', '66', '2');
INSERT INTO `celda` VALUES ('14', 'CIR2', '68', '1');
INSERT INTO `celda` VALUES ('15', '54', '80', '1');
INSERT INTO `celda` VALUES ('16', 'Lomas de Zamora', '105', '3');
INSERT INTO `celda` VALUES ('17', 'Echeverria', '107', '3');
INSERT INTO `celda` VALUES ('18', 'Mini Celda Bosques', '110', '2');
INSERT INTO `celda` VALUES ('19', 'Burzaco', '115', '3');
INSERT INTO `celda` VALUES ('20', 'Silos', '120', '2');
INSERT INTO `celda` VALUES ('21', 'Torre 1', '140', '1');
INSERT INTO `celda` VALUES ('22', 'Aeropuerto', '150', '1');
INSERT INTO `celda` VALUES ('23', 'Villa Elisa 1', '170', '1');
INSERT INTO `celda` VALUES ('24', 'Villa Elisa B', '172', '1');
INSERT INTO `celda` VALUES ('25', 'Vucetich', '175', '2');
INSERT INTO `celda` VALUES ('26', 'Yonamine', '180', '2');
INSERT INTO `celda` VALUES ('27', 'Miralagos', '190', '1');
INSERT INTO `celda` VALUES ('28', 'Olmos', '195', '1');
INSERT INTO `celda` VALUES ('29', 'UOCRA', '210', '1');
INSERT INTO `celda` VALUES ('30', 'Gutierrez', '220', '2');
INSERT INTO `celda` VALUES ('31', 'Escuela Santa Rosa', '230', '2');
INSERT INTO `celda` VALUES ('32', 'Mini Celda YPF', '240', '1');

-- ----------------------------
-- Table structure for cp
-- ----------------------------
DROP TABLE IF EXISTS `cp`;
CREATE TABLE `cp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `codigo` int(8) NOT NULL,
  `localidadID` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cp
-- ----------------------------
INSERT INTO `cp` VALUES ('1', 'Echeverria', '1804', '3');
INSERT INTO `cp` VALUES ('2', 'Banfield', '1828', '3');
INSERT INTO `cp` VALUES ('3', 'Lomas de Zamora', '1832', '3');
INSERT INTO `cp` VALUES ('4', 'La Capilla', '1888', '2');
INSERT INTO `cp` VALUES ('5', 'Bosques', '1889', '2');
INSERT INTO `cp` VALUES ('6', 'Gutierrez', '1890', '2');
INSERT INTO `cp` VALUES ('7', 'Pereyra', '1891', '2');
INSERT INTO `cp` VALUES ('8', 'Villa Elisa', '1894', '1');
INSERT INTO `cp` VALUES ('9', 'Arturo Segui', '1895', '1');
INSERT INTO `cp` VALUES ('10', 'Villa Elisa', '1896', '1');
INSERT INTO `cp` VALUES ('11', 'Gonnet', '1897', '1');
INSERT INTO `cp` VALUES ('12', 'La Plata', '1900', '1');
INSERT INTO `cp` VALUES ('13', 'El Peligro', '1903', '2');
INSERT INTO `cp` VALUES ('14', 'Arana', '1909', '1');
INSERT INTO `cp` VALUES ('15', 'Ensenada', '1923', '1');
INSERT INTO `cp` VALUES ('16', 'Berisso', '1925', '1');
INSERT INTO `cp` VALUES ('17', 'Escuela Naval', '1927', '1');
INSERT INTO `cp` VALUES ('18', 'Isla Santiago', '1929', '1');
INSERT INTO `cp` VALUES ('19', 'Punta Lara', '1931', '1');
INSERT INTO `cp` VALUES ('20', 'Gomez', '1983', '1');

-- ----------------------------
-- Table structure for equipo
-- ----------------------------
DROP TABLE IF EXISTS `equipo`;
CREATE TABLE `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of equipo
-- ----------------------------
INSERT INTO `equipo` VALUES ('1', 'NanoStation 2');
INSERT INTO `equipo` VALUES ('2', 'NanoStation 5');
INSERT INTO `equipo` VALUES ('3', 'NanoStation M2');
INSERT INTO `equipo` VALUES ('4', 'NanoStation M5');
INSERT INTO `equipo` VALUES ('5', 'NanoStation Loco M2');
INSERT INTO `equipo` VALUES ('6', 'NanoStation Loco M5');
INSERT INTO `equipo` VALUES ('7', 'AirGrid M2 HP');
INSERT INTO `equipo` VALUES ('8', 'AirGrid M5 HP');
INSERT INTO `equipo` VALUES ('9', 'Groove 2HPn');
INSERT INTO `equipo` VALUES ('10', 'Groove 5HPn');
INSERT INTO `equipo` VALUES ('11', 'Groove 52HPn');
INSERT INTO `equipo` VALUES ('12', 'Groove Metal 5');
INSERT INTO `equipo` VALUES ('13', 'SXT');
INSERT INTO `equipo` VALUES ('14', 'RB411');

-- ----------------------------
-- Table structure for localidad
-- ----------------------------
DROP TABLE IF EXISTS `localidad`;
CREATE TABLE `localidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of localidad
-- ----------------------------
INSERT INTO `localidad` VALUES ('1', 'La Plata');
INSERT INTO `localidad` VALUES ('2', 'Florencio Varela');
INSERT INTO `localidad` VALUES ('3', 'Lomas de Zamora');

-- ----------------------------
-- Table structure for panel
-- ----------------------------
DROP TABLE IF EXISTS `panel`;
CREATE TABLE `panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `octeto` int(3) NOT NULL,
  `celdaID` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of panel
-- ----------------------------
INSERT INTO `panel` VALUES ('1', 'COMPAQ', '200', '1');
INSERT INTO `panel` VALUES ('2', 'C07IP10', '210', '1');
INSERT INTO `panel` VALUES ('3', 'AP135GSIP10', '240', '1');
INSERT INTO `panel` VALUES ('4', 'AP135OIP00', '250', '1');
INSERT INTO `panel` VALUES ('5', 'APLCSO5GNIP19', '190', '2');
INSERT INTO `panel` VALUES ('6', 'APLCNIP00', '200', '2');
INSERT INTO `panel` VALUES ('7', 'APLCSIP10', '210', '2');
INSERT INTO `panel` VALUES ('8', 'APLCOIP20', '220', '2');
INSERT INTO `panel` VALUES ('9', 'APLCO5GIP30', '230', '2');
INSERT INTO `panel` VALUES ('10', 'APLCQRTNIP35', '235', '2');
INSERT INTO `panel` VALUES ('11', 'APLC5GNEIP40', '240', '2');
INSERT INTO `panel` VALUES ('12', 'APLC5GSEIP50', '250', '2');
INSERT INTO `panel` VALUES ('13', 'APAS5NNIP17', '170', '3');
INSERT INTO `panel` VALUES ('14', 'APAS5NCIP18', '180', '3');
INSERT INTO `panel` VALUES ('15', 'APAS2GCIP19', '190', '3');
INSERT INTO `panel` VALUES ('16', 'APAS5GIP15', '200', '3');
INSERT INTO `panel` VALUES ('17', 'APAS5GIP05', '205', '3');
INSERT INTO `panel` VALUES ('18', 'APAS2GIP10', '210', '3');
INSERT INTO `panel` VALUES ('19', 'APAS5GIP15', '215', '3');
INSERT INTO `panel` VALUES ('20', 'APAS2GIP20', '220', '3');
INSERT INTO `panel` VALUES ('21', 'APAS2GIP20', '225', '3');
INSERT INTO `panel` VALUES ('22', 'APASNIP30', '230', '3');
INSERT INTO `panel` VALUES ('23', 'APAS2GIP10', '235', '3');
INSERT INTO `panel` VALUES ('24', 'APASOIP40', '240', '3');
INSERT INTO `panel` VALUES ('25', 'APASSEIP50', '250', '3');
INSERT INTO `panel` VALUES ('26', 'APR7E2G', '180', '4');
INSERT INTO `panel` VALUES ('27', 'APR7NE5G', '190', '4');
INSERT INTO `panel` VALUES ('28', 'AP58N-E', '170', '5');
INSERT INTO `panel` VALUES ('29', 'AP58N-O', '180', '5');
INSERT INTO `panel` VALUES ('30', 'AP58N-S', '190', '5');
INSERT INTO `panel` VALUES ('31', 'AP58NEIP00', '200', '5');
INSERT INTO `panel` VALUES ('32', 'AP585GIP40', '205', '5');
INSERT INTO `panel` VALUES ('33', 'AP58SEIP10', '210', '5');
INSERT INTO `panel` VALUES ('34', 'AP58EIP60', '215', '5');
INSERT INTO `panel` VALUES ('35', 'AP582GSIP12', '220', '5');
INSERT INTO `panel` VALUES ('36', 'AP58IP450', '225', '5');
INSERT INTO `panel` VALUES ('37', 'AP58SEIP30', '230', '5');
INSERT INTO `panel` VALUES ('38', 'AP585GIP40', '235', '5');
INSERT INTO `panel` VALUES ('39', 'AP58IP400', '240', '5');
INSERT INTO `panel` VALUES ('40', 'AP58IP450', '245', '5');
INSERT INTO `panel` VALUES ('41', 'AP585GIP50', '250', '5');
INSERT INTO `panel` VALUES ('42', 'APENISIP20', '180', '6');
INSERT INTO `panel` VALUES ('43', 'APEIP00', '200', '6');
INSERT INTO `panel` VALUES ('44', 'APENPLIP05', '205', '6');
INSERT INTO `panel` VALUES ('45', 'APENLPIP15', '215', '6');
INSERT INTO `panel` VALUES ('46', 'APENIP32', '220', '6');
INSERT INTO `panel` VALUES ('47', 'APENBIP25', '225', '6');
INSERT INTO `panel` VALUES ('48', 'AP2ESIP30', '230', '6');
INSERT INTO `panel` VALUES ('49', 'APENIP45', '245', '6');
INSERT INTO `panel` VALUES ('50', 'AP2EIP50', '250', '6');
INSERT INTO `panel` VALUES ('51', 'AP2NVNEIP00', '200', '7');
INSERT INTO `panel` VALUES ('52', 'AP2NEIP10', '210', '7');
INSERT INTO `panel` VALUES ('53', 'AP25GIP15', '215', '7');
INSERT INTO `panel` VALUES ('54', 'AP25GNOIP20', '220', '7');
INSERT INTO `panel` VALUES ('55', 'AP25GNOIP20', '225', '7');
INSERT INTO `panel` VALUES ('56', 'AP2NOIP30', '230', '7');
INSERT INTO `panel` VALUES ('57', 'AP25GEIP40', '240', '7');
INSERT INTO `panel` VALUES ('58', 'AP2SOIP50', '250', '7');
INSERT INTO `panel` VALUES ('59', 'APE662GIP00', '200', '8');
INSERT INTO `panel` VALUES ('60', 'APE665GNIP10', '210', '8');
INSERT INTO `panel` VALUES ('61', 'APE665GSEIP20', '220', '8');
INSERT INTO `panel` VALUES ('62', 'APMERCIP00', '200', '9');
INSERT INTO `panel` VALUES ('63', 'APMERCIP10', '210', '9');
INSERT INTO `panel` VALUES ('64', 'APMERCIP20', '220', '9');
INSERT INTO `panel` VALUES ('65', 'APMERCIP30', '230', '9');
INSERT INTO `panel` VALUES ('66', 'APMERCIP40', '240', '9');
INSERT INTO `panel` VALUES ('67', 'APMERCIP50', '250', '9');
INSERT INTO `panel` VALUES ('68', 'AP520ARIP40', '40', '10');
INSERT INTO `panel` VALUES ('69', 'AP5202GO', '50', '10');
INSERT INTO `panel` VALUES ('70', 'AP520SEIP60', '60', '10');
INSERT INTO `panel` VALUES ('71', 'APQRT12', '65', '10');
INSERT INTO `panel` VALUES ('72', 'AP520OIP70', '70', '10');
INSERT INTO `panel` VALUES ('73', 'AP520OIP70', '75', '10');
INSERT INTO `panel` VALUES ('74', 'AP520SOIP80', '80', '10');
INSERT INTO `panel` VALUES ('75', 'APQRT11', '85', '10');
INSERT INTO `panel` VALUES ('76', 'AP520NOIP90', '90', '10');
INSERT INTO `panel` VALUES ('77', 'AP92N15', '115', '11');
INSERT INTO `panel` VALUES ('78', 'AP925GIP40', '140', '11');
INSERT INTO `panel` VALUES ('79', 'AP925GIP30', '145', '11');
INSERT INTO `panel` VALUES ('80', 'AP925GIP30', '150', '11');
INSERT INTO `panel` VALUES ('81', 'AP5G-AS', '160', '10');
INSERT INTO `panel` VALUES ('82', 'AP520OIP17', '170', '10');
INSERT INTO `panel` VALUES ('83', 'AP520OIP17', '175', '10');
INSERT INTO `panel` VALUES ('84', 'AP520SIP80', '180', '10');
INSERT INTO `panel` VALUES ('85', 'AP520SIP80', '185', '10');
INSERT INTO `panel` VALUES ('86', 'AP520NIP90', '190', '10');
INSERT INTO `panel` VALUES ('87', '5GCIU', '205', '10');
INSERT INTO `panel` VALUES ('88', 'C01IP61', '210', '10');
INSERT INTO `panel` VALUES ('89', 'AP520-2IP52', '215', '10');
INSERT INTO `panel` VALUES ('90', 'AP1nIP220', '220', '10');
INSERT INTO `panel` VALUES ('91', 'AP520-2IP52', '225', '10');
INSERT INTO `panel` VALUES ('92', 'APC520IP30', '230', '10');
INSERT INTO `panel` VALUES ('93', 'APnIP235', '235', '10');
INSERT INTO `panel` VALUES ('94', '5GCIU', '240', '10');
INSERT INTO `panel` VALUES ('95', 'APnIP245', '245', '10');
INSERT INTO `panel` VALUES ('96', 'AP520IP50', '250', '10');
INSERT INTO `panel` VALUES ('97', 'APELPNIP00', '200', '12');
INSERT INTO `panel` VALUES ('98', 'APELPSIP10', '210', '12');
INSERT INTO `panel` VALUES ('99', 'APBOSIP80', '180', '13');
INSERT INTO `panel` VALUES ('100', 'APBOSIP19', '190', '13');
INSERT INTO `panel` VALUES ('101', 'APBOSIP00', '200', '13');
INSERT INTO `panel` VALUES ('102', 'APBOSIP10', '210', '13');
INSERT INTO `panel` VALUES ('103', 'APBOSIP30', '230', '13');
INSERT INTO `panel` VALUES ('104', 'APBOSIP40', '240', '13');
INSERT INTO `panel` VALUES ('105', 'APBOSIP50', '250', '13');
INSERT INTO `panel` VALUES ('106', 'APCIR2QRTIP19', '190', '14');
INSERT INTO `panel` VALUES ('107', 'APCIR5GIP00', '200', '14');
INSERT INTO `panel` VALUES ('108', 'APCIR2GIP10', '210', '14');
INSERT INTO `panel` VALUES ('109', 'APCIR5GIP40', '240', '14');
INSERT INTO `panel` VALUES ('110', 'AP180IPSUR', '200', '15');
INSERT INTO `panel` VALUES ('111', 'AP54SOIP05', '205', '15');
INSERT INTO `panel` VALUES ('112', 'AP54SEIP10', '210', '15');
INSERT INTO `panel` VALUES ('113', 'AP54N-SUR', '215', '15');
INSERT INTO `panel` VALUES ('114', 'AP54NOIP20', '220', '15');
INSERT INTO `panel` VALUES ('115', 'AP54NOIP30', '230', '15');
INSERT INTO `panel` VALUES ('116', 'AP54NOIP30', '235', '15');
INSERT INTO `panel` VALUES ('117', 'APLONE2GIP00', '200', '16');
INSERT INTO `panel` VALUES ('118', 'APLONO2GIP10', '210', '16');
INSERT INTO `panel` VALUES ('119', 'APLOE5GIP20', '220', '16');
INSERT INTO `panel` VALUES ('120', 'APLOE5GIP20', '225', '16');
INSERT INTO `panel` VALUES ('121', 'APLOE5GIP30', '230', '16');
INSERT INTO `panel` VALUES ('122', 'APLOE5GIP40', '240', '16');
INSERT INTO `panel` VALUES ('123', 'APLOPI5GIP50', '250', '16');
INSERT INTO `panel` VALUES ('124', 'APEC5GIP00', '200', '17');
INSERT INTO `panel` VALUES ('125', 'APEC5GIP10', '210', '17');
INSERT INTO `panel` VALUES ('126', 'APBOS1IP100', '200', '18');
INSERT INTO `panel` VALUES ('127', 'APLO5GIP60', '200', '19');
INSERT INTO `panel` VALUES ('128', 'APCB2GIP00', '200', '20');
INSERT INTO `panel` VALUES ('129', 'APCB5NIP15', '215', '20');
INSERT INTO `panel` VALUES ('130', 'APCB5GIP20', '220', '20');
INSERT INTO `panel` VALUES ('131', 'APCB5GIP30', '230', '20');
INSERT INTO `panel` VALUES ('132', 'APCB5GIP40', '240', '20');
INSERT INTO `panel` VALUES ('133', 'APCB2GIP45', '245', '20');
INSERT INTO `panel` VALUES ('134', 'APCB5GIP10', '250', '20');
INSERT INTO `panel` VALUES ('135', 'TOSEN', '200', '21');
INSERT INTO `panel` VALUES ('136', 'TOSURIP10', '210', '21');
INSERT INTO `panel` VALUES ('137', 'TOSURIP10', '215', '21');
INSERT INTO `panel` VALUES ('138', 'APT1IP20', '220', '21');
INSERT INTO `panel` VALUES ('139', 'APT1IP30', '230', '21');
INSERT INTO `panel` VALUES ('140', 'APT1IP40', '240', '21');
INSERT INTO `panel` VALUES ('141', 'APT1IP45', '245', '21');
INSERT INTO `panel` VALUES ('142', 'APT1IP50', '250', '21');
INSERT INTO `panel` VALUES ('143', 'APANEIP19', '190', '22');
INSERT INTO `panel` VALUES ('144', 'APANOIP00', '200', '22');
INSERT INTO `panel` VALUES ('145', 'APA5GNIP05', '205', '22');
INSERT INTO `panel` VALUES ('146', 'APANEIP10', '210', '22');
INSERT INTO `panel` VALUES ('147', 'APA2GNEIP15', '215', '22');
INSERT INTO `panel` VALUES ('148', 'APASEIP20', '220', '22');
INSERT INTO `panel` VALUES ('149', 'APA2GSEIP25', '225', '22');
INSERT INTO `panel` VALUES ('150', 'APA2GIP30', '230', '22');
INSERT INTO `panel` VALUES ('151', 'APA2GIP30', '235', '22');
INSERT INTO `panel` VALUES ('152', 'APT1IP40', '240', '22');
INSERT INTO `panel` VALUES ('153', 'APA5NIP50', '250', '22');
INSERT INTO `panel` VALUES ('154', 'VEOIP10', '210', '23');
INSERT INTO `panel` VALUES ('155', 'VES5GIP20', '220', '23');
INSERT INTO `panel` VALUES ('156', 'VEO5GIP30', '230', '23');
INSERT INTO `panel` VALUES ('157', 'VESIP40', '240', '23');
INSERT INTO `panel` VALUES ('158', 'VEN-IP190', '190', '24');
INSERT INTO `panel` VALUES ('159', 'VOEIP10-B', '210', '24');
INSERT INTO `panel` VALUES ('160', 'VOEIP10-B', '215', '24');
INSERT INTO `panel` VALUES ('161', 'VES5GIP20-B', '220', '24');
INSERT INTO `panel` VALUES ('162', 'VEO5GIP30-B', '230', '24');
INSERT INTO `panel` VALUES ('163', 'VESIP40-B', '240', '24');
INSERT INTO `panel` VALUES ('164', 'APVU2GEIP00', '200', '25');
INSERT INTO `panel` VALUES ('165', 'APVU5GOIP05', '205', '25');
INSERT INTO `panel` VALUES ('166', 'APYOR6IP00', '200', '26');
INSERT INTO `panel` VALUES ('167', 'APYOBOIP10', '210', '26');
INSERT INTO `panel` VALUES ('168', 'APYO2GIP15', '215', '26');
INSERT INTO `panel` VALUES ('169', 'APYOR6IP00', '220', '26');
INSERT INTO `panel` VALUES ('170', 'APYO2GIP30', '230', '26');
INSERT INTO `panel` VALUES ('171', 'APYO2GIP30', '235', '26');
INSERT INTO `panel` VALUES ('172', 'APYOR62IP40', '240', '26');
INSERT INTO `panel` VALUES ('173', 'APYOR210IP45', '245', '26');
INSERT INTO `panel` VALUES ('174', 'APYO5GIP50', '250', '26');
INSERT INTO `panel` VALUES ('175', 'APMir5GAlCruceIP00', '200', '27');
INSERT INTO `panel` VALUES ('176', 'APMir2GSurIP10', '210', '27');
INSERT INTO `panel` VALUES ('177', 'APMir5GSurIP20', '220', '27');
INSERT INTO `panel` VALUES ('178', 'APOLOm2GIP00', '200', '28');
INSERT INTO `panel` VALUES ('179', 'APOLOm5GIP10', '210', '28');
INSERT INTO `panel` VALUES ('180', 'APOLOIP20', '220', '28');
INSERT INTO `panel` VALUES ('181', 'APU2', '200', '29');
INSERT INTO `panel` VALUES ('182', 'APU2PL', '210', '29');
INSERT INTO `panel` VALUES ('183', 'APU5', '220', '29');
INSERT INTO `panel` VALUES ('184', 'APU5LP', '230', '29');
INSERT INTO `panel` VALUES ('185', 'APGUIP00', '200', '30');
INSERT INTO `panel` VALUES ('186', 'APGU2IP10', '210', '30');
INSERT INTO `panel` VALUES ('187', 'APGUI2IP30', '230', '30');
INSERT INTO `panel` VALUES ('188', 'APEB2G-1', '200', '31');
INSERT INTO `panel` VALUES ('189', 'APEB2G-2', '210', '31');
INSERT INTO `panel` VALUES ('190', 'APEB5G', '220', '31');
INSERT INTO `panel` VALUES ('191', 'APEBn-1', '230', '31');
INSERT INTO `panel` VALUES ('192', 'APEBn-2', '240', '31');
INSERT INTO `panel` VALUES ('193', 'APYPF5GNEIP00', '200', '32');
INSERT INTO `panel` VALUES ('194', 'APYPF5GSEIP10', '210', '32');

-- ----------------------------
-- Table structure for tarifa
-- ----------------------------
DROP TABLE IF EXISTS `tarifa`;
CREATE TABLE `tarifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precio` int(11) NOT NULL,
  `empresa` int(1) NOT NULL,
  `velocidadID` int(2) NOT NULL,
  `localidadID` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tarifa
-- ----------------------------
INSERT INTO `tarifa` VALUES ('1', '313', '0', '3', '1');
INSERT INTO `tarifa` VALUES ('2', '495', '0', '5', '1');
INSERT INTO `tarifa` VALUES ('3', '618', '0', '7', '1');
INSERT INTO `tarifa` VALUES ('4', '599', '1', '3', '1');
INSERT INTO `tarifa` VALUES ('5', '795', '1', '5', '1');
INSERT INTO `tarifa` VALUES ('6', '905', '1', '7', '1');
INSERT INTO `tarifa` VALUES ('7', '390', '0', '3', '2');
INSERT INTO `tarifa` VALUES ('8', '615', '0', '5', '2');
INSERT INTO `tarifa` VALUES ('9', '780', '0', '7', '2');
INSERT INTO `tarifa` VALUES ('10', '720', '1', '3', '2');
INSERT INTO `tarifa` VALUES ('11', '945', '1', '5', '2');
INSERT INTO `tarifa` VALUES ('12', '1070', '1', '7', '2');
INSERT INTO `tarifa` VALUES ('13', '380', '0', '3', '3');
INSERT INTO `tarifa` VALUES ('14', '560', '0', '5', '3');
INSERT INTO `tarifa` VALUES ('15', '670', '0', '7', '3');
INSERT INTO `tarifa` VALUES ('16', '656', '1', '3', '3');
INSERT INTO `tarifa` VALUES ('17', '850', '1', '5', '3');
INSERT INTO `tarifa` VALUES ('18', '957', '1', '7', '3');

-- ----------------------------
-- Table structure for tecnico
-- ----------------------------
DROP TABLE IF EXISTS `tecnico`;
CREATE TABLE `tecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `localidadID` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tecnico
-- ----------------------------
INSERT INTO `tecnico` VALUES ('1', 'Citarella', '1');
INSERT INTO `tecnico` VALUES ('2', 'Vicente', '2');
INSERT INTO `tecnico` VALUES ('3', 'Gabriel', '2');
INSERT INTO `tecnico` VALUES ('4', 'Electro Telcia', '3');

-- ----------------------------
-- Table structure for velocidad
-- ----------------------------
DROP TABLE IF EXISTS `velocidad`;
CREATE TABLE `velocidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kbps` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of velocidad
-- ----------------------------
INSERT INTO `velocidad` VALUES ('1', '256');
INSERT INTO `velocidad` VALUES ('2', '384');
INSERT INTO `velocidad` VALUES ('3', '448');
INSERT INTO `velocidad` VALUES ('4', '512');
INSERT INTO `velocidad` VALUES ('5', '768');
INSERT INTO `velocidad` VALUES ('6', '1024');
INSERT INTO `velocidad` VALUES ('7', '1280');
INSERT INTO `velocidad` VALUES ('8', '2048');
INSERT INTO `velocidad` VALUES ('9', '3072');
INSERT INTO `velocidad` VALUES ('10', '4096');
