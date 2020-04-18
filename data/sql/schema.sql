BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "usd_ars_xrate" (
	"day"	TEXT,
	"month"	TEXT,
	"year"	TEXT,
	"official_buy_rate"	REAL,
	"official_sell_rate"	REAL,
	"blue_in_effect"	TEXT,
	"blue_buy_rate"	REAL,
	"blue_sell_rate"	REAL
);
CREATE TABLE IF NOT EXISTS "invoices" (
	"id"	INTEGER,
	"year"	TEXT,
	"month"	TEXT,
	"day"	TEXT,
	"client_name"	TEXT,
	"client_street"	TEXT,
	"client_province"	TEXT,
	"client_id_type"	TEXT,
	"client_id_number"	TEXT,
	"client_vat_status"	TEXT,
	"ars_amount"	REAL
);
CREATE TABLE IF NOT EXISTS "expenses" (
	"id"	INTEGER,
	"year"	INTEGER,
	"month"	INTEGER,
	"ars_amount"	REAL
);
CREATE TABLE IF NOT EXISTS "earnings" (
	"id"	INTEGER,
	"year"	INTEGER,
	"month"	INTEGER,
	"day"	INTEGER,
	"client_name"	TEXT,
	"ars_amount"	REAL,
	"person_or_company"	TEXT
);
INSERT INTO "usd_ars_xrate" VALUES ('4','1','2016',12.9,13.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','1','2016',13.4,13.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','1','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','1','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','1','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','1','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','1','2016',13.4,13.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','1','2016',13.4,13.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','1','2016',13.1,13.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','1','2016',13.2,13.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','1','2016',13.2,13.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','1','2016',13.2,13.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','1','2016',13.2,13.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','1','2016',13.3,13.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','1','2016',13.4,13.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','1','2016',13.5,13.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','1','2016',13.5,13.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','1','2016',13.58,13.98,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','1','2016',13.58,13.98,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','1','2016',13.58,13.98,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','2','2016',13.85,14.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','2','2016',13.85,14.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','2','2016',13.85,14.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','2','2016',13.9,14.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','2','2016',14.5,14.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','2','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','2','2016',14.3,14.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','2','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','2','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','2','2016',14.55,14.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','2','2016',14.65,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','2','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','2','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','2','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','2','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','2','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','2','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','2','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','2','2016',15.5,15.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','3','2016',15.55,15.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','3','2016',15.55,15.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','3','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','3','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','3','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','3','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','3','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','3','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','3','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','3','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','3','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','3','2016',14.3,14.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','3','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','3','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','3','2016',14.3,14.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','3','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','3','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','3','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','3','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','3','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','3','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','4','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','4','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','4','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','4','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','4','2016',14.3,14.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','4','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','4','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','4','2016',14.3,14.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','4','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','4','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','4','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','4','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','4','2016',14.2,14.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','4','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','4','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','4','2016',14.1,14.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','5','2016',14.0,14.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','5','2016',13.9,14.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','5','2016',13.9,14.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','5','2016',13.9,14.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','5','2016',13.9,14.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','5','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','6','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','6','2016',13.6,14.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','6','2016',13.7,14.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','6','2016',13.8,14.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','6','2016',14.25,14.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','6','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','6','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','6','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','6','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','6','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','7','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','7','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','7','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','7','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','7','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','7','2016',14.4,14.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','7','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','7','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','7','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','7','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','7','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','7','2016',14.75,15.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','7','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','8','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','8','2016',14.65,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','8','2016',14.65,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','8','2016',14.65,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','8','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','8','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','8','2016',14.5,14.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','8','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','8','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','8','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','8','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','8','2016',14.6,15.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','8','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','8','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','8','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','8','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','8','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','9','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','9','2016',14.85,15.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','9','2016',14.75,15.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','9','2016',14.8,15.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','9','2016',14.85,15.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','9','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','9','2016',14.95,15.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','9','2016',14.95,15.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','9','2016',14.95,15.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','9','2016',14.95,15.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','9','2016',14.95,15.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','9','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','9','2016',15.5,15.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','9','2016',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','9','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','9','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','10','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','10','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','10','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','10','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','10','2016',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','11','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','11','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','11','2016',14.9,15.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','11','2016',14.85,15.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','11','2016',14.85,15.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','11','2016',14.75,15.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','11','2016',14.7,15.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','11','2016',14.85,15.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','11','2016',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','11','2016',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','11','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','11','2016',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','11','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','11','2016',15.5,15.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','11','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','12','2016',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','12','2016',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','12','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','12','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','12','2016',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','12','2016',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','12','2016',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','12','2016',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','12','2016',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','12','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','12','2016',15.6,16.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','12','2016',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','12','2016',15.6,16.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','12','2016',15.55,15.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','12','2016',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','12','2016',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','12','2016',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','12','2016',15.55,15.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','12','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','12','2016',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','1','2017',15.9,16.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','1','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','1','2017',15.6,16.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','1','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','1','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','1','2017',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','1','2017',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','1','2017',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','1','2017',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','1','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','2','2017',15.6,16.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','2','2017',15.5,15.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','2','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','2','2017',15.6,16.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','2','2017',15.45,15.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','2','2017',15.45,15.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','2','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','2','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','2','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','2','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','2','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','2','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','2','2017',15.5,15.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','2','2017',15.5,15.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','2','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','2','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','2','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','2','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','3','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','3','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','3','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','3','2017',15.25,15.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','3','2017',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','3','2017',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','3','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','3','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','3','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','3','2017',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','3','2017',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','3','2017',15.35,15.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','3','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','3','2017',15.25,15.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','3','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','3','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','4','2017',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','4','2017',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','4','2017',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','4','2017',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','4','2017',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','4','2017',15.5,15.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','4','2017',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','4','2017',15.0,15.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','4','2017',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','4','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','4','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','4','2017',15.2,15.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','5','2017',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','5','2017',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','5','2017',15.1,15.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','5','2017',15.15,15.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','5','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','5','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','5','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','5','2017',15.25,15.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','5','2017',15.25,15.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','5','2017',15.3,15.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','5','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','5','2017',15.4,15.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','5','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','5','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','5','2017',15.98,16.38,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','5','2017',15.9,16.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','5','2017',15.9,16.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','5','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','5','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','5','2017',15.95,16.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','5','2017',15.9,16.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','6','2017',15.85,16.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','6','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','6','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','6','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','6','2017',15.8,16.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','6','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','6','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','6','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','6','2017',15.7,16.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','6','2017',15.65,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','6','2017',15.75,16.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','6','2017',15.85,16.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','6','2017',15.95,16.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','6','2017',16.5,16.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','6','2017',15.95,16.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','6','2017',15.95,16.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','6','2017',16.1,16.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','6','2017',16.2,16.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','6','2017',16.25,16.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','6','2017',16.3,16.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','6','2017',16.4,16.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','7','2017',16.6,17.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','7','2017',16.76,17.16,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','7','2017',16.97,17.37,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','7','2017',16.93,17.33,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','7','2017',16.81,17.21,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','7','2017',16.78,17.18,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','7','2017',16.8,17.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','7','2017',16.75,17.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','7','2017',16.75,17.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','7','2017',16.65,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','7','2017',16.7,17.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','7','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','7','2017',16.95,17.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','7','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','7','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','7','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','7','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','7','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','7','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','7','2017',17.59,17.99,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','7','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','8','2017','17,385','17,785','false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','8','2017',17.4,17.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','8','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','8','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','8','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','8','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','8','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','8','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','8','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','8','2017',16.95,17.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','8','2017',16.85,17.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','8','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','8','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','8','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','8','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','8','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','8','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','8','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','8','2017',17.3,17.43,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','8','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','8','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','8','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','9','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','9','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','9','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','9','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','9','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','9','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','9','2017',16.95,17.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','9','2017',16.9,17.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','9','2017',16.85,17.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','9','2017',16.8,17.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','9','2017',16.8,17.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','9','2017',16.9,17.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','9','2017',16.95,17.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','9','2017',17.0,17.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','9','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','9','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','9','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','9','2017',17.4,17.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','9','2017',17.4,17.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','9','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','9','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','10','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','10','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','10','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','10','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','10','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','10','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','10','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','10','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','10','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','10','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','10','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','10','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','10','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','10','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','10','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','10','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','11','2017',17.4,17.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','11','2017',17.35,17.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','11','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','11','2017',17.45,17.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','11','2017',17.35,17.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','11','2017',17.35,17.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','11','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','11','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','11','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','11','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','11','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','11','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','11','2017',17.2,17.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','11','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','12','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','12','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','12','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','12','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','12','2017',17.1,17.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','12','2017',17.5,17.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','12','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','12','2017',17.15,17.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','12','2017',17.25,17.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','12','2017',17.3,17.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','12','2017',17.35,17.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','12','2017',17.5,17.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','12','2017',17.55,17.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','12','2017',17.7,18.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','12','2017',17.8,18.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','12','2017',18.5,18.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','12','2017',18.2,18.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','12','2017',18.95,19.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','12','2017',18.4,18.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','1','2018',18.15,18.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','1','2018',18.2,18.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','1','2018',18.4,18.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','1','2018',18.6,19.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','1','2018',18.8,19.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','1','2018',18.7,19.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','1','2018',18.35,18.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','1','2018',18.45,18.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','1','2018',18.45,18.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','1','2018',18.5,19.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','1','2018',18.65,19.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','1','2018',18.6,19.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','1','2018',18.6,19.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','1','2018',18.75,19.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','1','2018',18.85,19.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','1','2018',19.1,19.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','1','2018',19.4,19.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','1','2018',19.3,19.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','1','2018',19.3,19.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','1','2018',19.3,19.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','1','2018',19.35,19.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','1','2018',19.4,19.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','2','2018',19.15,19.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','2','2018',19.25,19.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','2','2018',19.25,19.75,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','2','2018',19.35,19.85,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','2','2018',19.4,19.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','2','2018',19.7,20.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','2','2018',19.75,20.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','2','2018',19.65,20.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','2','2018',19.45,19.95,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','2','2018',19.5,20.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','2','2018',19.65,20.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','2','2018',19.6,20.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','2','2018',19.65,20.15,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','2','2018',19.7,20.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','2','2018',19.7,20.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','2','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','2','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','2','2018',19.85,20.35,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','3','2018',19.9,20.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','3','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','3','2018',20.1,20.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','3','2018',20.15,20.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','3','2018',20.15,20.65,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','3','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','3','2018',20.1,20.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','3','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','3','2018',20.5,20.55,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','3','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','3','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','3','2018',19.9,20.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','4','2018',19.9,20.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','4','2018',19.9,20.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','4','2018',19.9,20.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','4','2018',19.95,20.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','4','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','4','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','4','2018',20.0,20.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','4','2018',20.3,20.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','4','2018',20.3,20.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','5','2018',20.95,21.45,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','5','2018',22.7,23.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','5','2018',21.4,22.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','5','2018',21.5,22.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','5','2018',22.0,22.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','5','2018',22.3,23.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','5','2018',22.3,23.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','5','2018',22.7,23.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','5','2018',24.3,25.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','5','2018',23.5,24.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','5','2018',23.8,24.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','5','2018',23.8,24.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','5','2018',23.9,24.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','5','2018',23.9,24.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','5','2018',23.8,24.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','5','2018',23.9,24.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','5','2018',24.1,25.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','5','2018',24.2,25.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','5','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','5','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','5','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','6','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','6','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','6','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','6','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','6','2018',24.4,25.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','6','2018',24.8,25.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','6','2018',25.5,26.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','6','2018',25.3,26.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','6','2018',25.5,26.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','6','2018',27.2,28.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','6','2018',27.8,28.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','6','2018',27.1,28.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','6','2018',27.2,28.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','6','2018',27.0,28.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','6','2018',26.5,27.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','6','2018',26.5,27.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','6','2018',26.6,27.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','6','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','6','2018',27.6,28.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','6','2018',28.4,29.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','7','2018',27.8,28.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','7','2018',27.3,28.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','7','2018',27.6,28.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','7','2018',27.5,28.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','7','2018',27.4,28.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','7','2018',26.8,27.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','7','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','7','2018',26.7,27.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','7','2018',26.7,27.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','7','2018',26.8,27.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','7','2018',27.0,28.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','7','2018',27.1,28.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','7','2018',27.2,28.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','7','2018',27.1,28.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','7','2018',27.1,28.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','7','2018',27.0,28.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','7','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','7','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','7','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','7','2018',26.8,27.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','7','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','8','2018',27.0,28.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','8','2018',27.0,28.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','8','2018',26.8,27.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','8','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','8','2018',26.9,27.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','8','2018',27.1,28.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','8','2018',27.6,28.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','8','2018',28.7,29.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','8','2018',29.5,30.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','8','2018',29.1,30.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','8','2018',29.5,30.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','8','2018',29.3,30.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','8','2018',29.3,30.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','8','2018',29.5,30.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','8','2018',29.7,30.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','8','2018',30.0,31.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','8','2018',30.4,31.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','8','2018',30.4,31.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','8','2018',30.9,31.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','8','2018',33.5,34.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','8','2018',37.0,38.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','8','2018',36.2,37.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','9','2018',36.8,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','9','2018',38.3,39.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','9','2018',37.8,39.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','9','2018',36.8,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','9','2018',36.4,37.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','9','2018',36.8,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','9','2018',37.3,38.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','9','2018',37.6,38.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','9','2018',38.9,40.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','9','2018',39.2,40.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','9','2018',39.0,40.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','9','2018',39.1,40.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','9','2018',38.6,39.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','9','2018',37.6,38.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','9','2018',36.6,37.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','9','2018',36.7,37.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','9','2018',37.5,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','9','2018',38.0,39.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','9','2018',38.8,40.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','9','2018',40.3,42.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','10','2018',38.7,40.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','10','2018',37.2,39.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','10','2018',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','10','2018',37.4,39.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','10','2018',36.9,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','10','2018',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','10','2018',36.2,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','10','2018',36.3,38.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','10','2018',35.7,37.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','10','2018',35.8,37.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','10','2018',35.1,36.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','10','2018',35.3,37.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','10','2018',35.7,37.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','10','2018',35.7,37.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','10','2018',35.5,37.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','10','2018',35.7,37.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','10','2018',36.1,37.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','10','2018',35.9,37.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','10','2018',36.0,37.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','10','2018',36.0,37.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','10','2018',35.8,37.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','10','2018',35.0,36.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','11','2018',34.8,36.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','11','2018',34.6,36.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','11','2018',34.6,36.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','11','2018',34.8,36.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','11','2018',34.6,36.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','11','2018',34.5,36.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','11','2018',34.7,36.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','11','2018',35.1,36.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','11','2018',35.1,36.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','11','2018',35.1,36.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','11','2018',35.1,36.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','11','2018',35.3,37.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','11','2018',35.3,37.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','11','2018',35.6,37.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','11','2018',36.7,38.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','11','2018',38.1,39.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','11','2018',37.7,39.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','11','2018',37.6,39.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','11','2018',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','12','2018',35.6,37.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','12','2018',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','12','2018',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','12','2018',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','12','2018',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','12','2018',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','12','2018',36.9,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','12','2018',36.7,38.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','12','2018',36.9,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','12','2018',37.2,39.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','12','2018',37.3,39.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','12','2018',37.3,39.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','12','2018',37.4,39.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','12','2018',37.2,39.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','12','2018',37.1,38.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','12','2018',37.7,39.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','12','2018',37.5,39.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','12','2018',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','1','2019',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','1','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','1','2019',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','1','2019',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','1','2019',36.7,38.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','1','2019',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','1','2019',36.2,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','1','2019',36.0,37.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','1','2019',36.1,37.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','1','2019',36.2,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','1','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','1','2019',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','1','2019',36.7,38.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','1','2019',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','1','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','1','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','1','2019',36.5,38.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','1','2019',36.2,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','1','2019',36.2,38.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','1','2019',36.8,38.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','1','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','1','2019',36.4,38.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','2','2019',36.3,38.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','2','2019',36.3,38.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','2','2019',36.3,38.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','2','2019',36.6,38.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','2','2019',36.9,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','2','2019',36.9,38.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','2','2019',37.0,38.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','2','2019',37.1,38.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','2','2019',37.3,39.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','2','2019',37.3,39.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','2','2019',37.7,39.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','2','2019',37.9,39.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','2','2019',38.4,40.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','2','2019',38.8,40.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','2','2019',38.6,40.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','2','2019',38.3,40.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','2','2019',38.1,39.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','2','2019',38.0,39.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','2','2019',37.9,39.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','2','2019',38.3,40.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','3','2019',38.9,40.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','3','2019',39.8,41.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','3','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','3','2019',40.2,42.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','3','2019',40.3,42.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','3','2019',40.5,42.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','3','2019',40.2,42.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','3','2019',39.8,41.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','3','2019',39.0,41.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','3','2019',39.0,41.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','3','2019',39.5,41.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','3','2019',39.8,41.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','3','2019',40.0,42.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','3','2019',40.8,42.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','3','2019',41.0,43.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','3','2019',41.6,43.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','3','2019',42.9,44.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','3','2019',42.6,44.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','3','2019',42.3,44.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','4','2019',41.7,43.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','4','2019',41.9,43.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','4','2019',42.4,44.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','4','2019',42.9,44.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','4','2019',42.7,44.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','4','2019',42.4,44.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','4','2019',42.0,44.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','4','2019',41.8,43.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','4','2019',41.2,43.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','4','2019',40.6,42.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','4','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','4','2019',40.9,42.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','4','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','4','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','4','2019',42.9,44.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','4','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','4','2019',45.0,47.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','4','2019',43.3,45.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','4','2019',43.2,45.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','5','2019',43.4,45.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','5','2019',43.7,45.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','5','2019',44.3,46.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','5','2019',44.1,46.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','5','2019',44.3,46.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','5','2019',44.1,46.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','5','2019',44.0,46.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','5','2019',44.0,46.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','5','2019',44.0,46.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','5','2019',44.2,46.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','5','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','5','2019',44.1,46.1,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','5','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','5','2019',43.7,45.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','5','2019',43.4,45.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','5','2019',43.5,45.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','5','2019',43.8,45.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','6','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','6','2019',43.7,45.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','6','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','6','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','6','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','6','2019',43.9,45.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','6','2019',43.7,45.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','6','2019',42.7,44.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','6','2019',42.4,44.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','6','2019',43.0,45.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','6','2019',42.5,44.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','6','2019',42.3,44.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','6','2019',41.8,43.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','6','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','6','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','6','2019',41.7,43.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','6','2019',41.7,43.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','6','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','7','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','7','2019',41.2,43.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','7','2019',41.0,43.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','7','2019',40.8,42.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','7','2019',40.8,42.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','7','2019',40.8,42.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','7','2019',40.7,42.7,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','7','2019',40.6,42.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','7','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','7','2019',41.6,43.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','7','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','7','2019',41.5,43.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','7','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','7','2019',41.4,43.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','7','2019',41.6,43.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','7','2019',41.9,43.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','7','2019',42.4,44.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','7','2019',42.4,44.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','7','2019',42.8,44.8,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','7','2019',42.9,44.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('31','7','2019',42.9,44.9,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','8','2019',43.4,45.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','8','2019',43.6,45.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','8','2019',44.5,46.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','8','2019',44.3,46.3,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','8','2019',44.6,46.6,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','8','2019',44.2,46.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','8','2019',44.2,46.2,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','8','2019',51.0,55.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','8','2019',53.0,58.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('14','8','2019',57.0,63.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('15','8','2019',54.0,59.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','8','2019',52.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','8','2019',52.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('21','8','2019',52.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('22','8','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','8','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','8','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','8','2019',54.0,58.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('28','8','2019',56.0,60.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('29','8','2019',56.0,60.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','8','2019',57.0,61.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','9','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','9','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','9','2019',53.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('5','9','2019',54.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('6','9','2019',54.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','9','2019',54.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','9','2019',54.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('11','9','2019',54.0,57.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('12','9','2019',54.25,57.25,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('13','9','2019',54.25,57.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('16','9','2019',54.5,58.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('17','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('18','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('19','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('20','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('23','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('24','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('25','9','2019',55.0,58.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('26','9','2019',55.5,59.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('27','9','2019',55.5,59.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('30','9','2019',55.5,59.0,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('1','10','2019',56.0,59.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('2','10','2019',56.0,59.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('3','10','2019',56.0,59.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('4','10','2019',55.9,59.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('7','10','2019',55.9,59.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('8','10','2019',55.9,59.4,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('9','10','2019',56.0,59.5,'false',NULL,NULL);
INSERT INTO "usd_ars_xrate" VALUES ('10','10','2019',56.0,59.5,'true',59.75,61.75);
INSERT INTO "usd_ars_xrate" VALUES ('11','10','2019',56.0,59.5,'true',61.0,63.0);
INSERT INTO "usd_ars_xrate" VALUES ('15','10','2019',56.0,59.5,'true',61.5,63.5);
INSERT INTO "usd_ars_xrate" VALUES ('16','10','2019',56.0,59.5,'true',61.5,63.5);
INSERT INTO "usd_ars_xrate" VALUES ('17','10','2019',56.0,59.5,'true',61.5,64.5);
INSERT INTO "usd_ars_xrate" VALUES ('18','10','2019',56.5,60.0,'true',64.5,67.5);
INSERT INTO "usd_ars_xrate" VALUES ('21','10','2019',57.0,60.5,'true',63.25,66.25);
INSERT INTO "usd_ars_xrate" VALUES ('22','10','2019',57.25,60.75,'true',63.25,66.25);
INSERT INTO "usd_ars_xrate" VALUES ('23','10','2019',58.0,61.5,'true',67.25,69.0);
INSERT INTO "usd_ars_xrate" VALUES ('24','10','2019',59.0,62.5,'true',68.0,69.75);
INSERT INTO "usd_ars_xrate" VALUES ('25','10','2019',60.0,65.0,'true',67.58,69.75);
INSERT INTO "usd_ars_xrate" VALUES ('28','10','2019',58.5,63.5,'true',73.2,75.5);
INSERT INTO "usd_ars_xrate" VALUES ('29','10','2019',58.5,63.5,'true',71.5,74.0);
INSERT INTO "usd_ars_xrate" VALUES ('30','10','2019',58.5,63.5,'true',64.5,67.0);
INSERT INTO "usd_ars_xrate" VALUES ('31','10','2019',58.5,63.5,'true',64.75,67.25);
INSERT INTO "usd_ars_xrate" VALUES ('1','11','2019',58.5,63.5,'true',66.5,69.0);
INSERT INTO "usd_ars_xrate" VALUES ('4','11','2019',58.5,63.5,'true',65.0,67.5);
INSERT INTO "usd_ars_xrate" VALUES ('5','11','2019',59.0,63.5,'true',63.5,65.5);
INSERT INTO "usd_ars_xrate" VALUES ('6','11','2019','null','null','true',62.5,64.5);
INSERT INTO "usd_ars_xrate" VALUES ('7','11','2019',58.0,63.0,'true',62.75,64.75);
INSERT INTO "usd_ars_xrate" VALUES ('8','11','2019',58.0,63.0,'true',61.75,63.75);
INSERT INTO "usd_ars_xrate" VALUES ('11','11','2019',58.0,63.0,'true',63.25,65.25);
INSERT INTO "usd_ars_xrate" VALUES ('12','11','2019',57.75,62.75,'true',62.5,64.5);
INSERT INTO "usd_ars_xrate" VALUES ('13','11','2019',57.75,62.75,'true',63.5,65.5);
INSERT INTO "usd_ars_xrate" VALUES ('14','11','2019',57.75,62.75,'true',64.75,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('15','11','2019',57.5,62.5,'true',64.75,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('19','11','2019',57.5,62.5,'true',64.75,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('20','11','2019',57.5,62.5,'true',64.5,66.5);
INSERT INTO "usd_ars_xrate" VALUES ('21','11','2019',57.5,62.5,'true',64.75,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('22','11','2019',57.5,62.5,'true',65.0,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('25','11','2019',57.5,62.5,'true',66.75,68.5);
INSERT INTO "usd_ars_xrate" VALUES ('26','11','2019',57.75,62.25,'true',66.0,68.0);
INSERT INTO "usd_ars_xrate" VALUES ('27','11','2019',57.75,62.25,'true',66.25,68.25);
INSERT INTO "usd_ars_xrate" VALUES ('28','11','2019',57.75,62.25,'true',67.25,69.25);
INSERT INTO "usd_ars_xrate" VALUES ('29','11','2019',57.75,62.25,'true',67.75,69.75);
INSERT INTO "usd_ars_xrate" VALUES ('2','12','2019',57.75,62.25,'true',67.25,69.25);
INSERT INTO "usd_ars_xrate" VALUES ('3','12','2019',57.75,62.25,'true',65.75,68.25);
INSERT INTO "usd_ars_xrate" VALUES ('4','12','2019',57.75,62.25,'true',66.0,68.5);
INSERT INTO "usd_ars_xrate" VALUES ('5','12','2019',57.75,62.25,'true',66.5,69.0);
INSERT INTO "usd_ars_xrate" VALUES ('6','12','2019',57.75,62.25,'true',67.5,70.0);
INSERT INTO "usd_ars_xrate" VALUES ('9','12','2019',58.0,62.5,'true',69.0,71.0);
INSERT INTO "usd_ars_xrate" VALUES ('10','12','2019',58.0,62.75,'true',67.9,69.9);
INSERT INTO "usd_ars_xrate" VALUES ('11','12','2019',58.0,63.0,'true',67.0,69.5);
INSERT INTO "usd_ars_xrate" VALUES ('12','12','2019',58.0,63.0,'true',66.0,68.5);
INSERT INTO "usd_ars_xrate" VALUES ('13','12','2019',58.0,63.0,'true',64.0,66.5);
INSERT INTO "usd_ars_xrate" VALUES ('16','12','2019',58.0,63.0,'true',63.75,66.75);
INSERT INTO "usd_ars_xrate" VALUES ('17','12','2019',58.0,63.0,'true',69.5,72.5);
INSERT INTO "usd_ars_xrate" VALUES ('18','12','2019','null','null','true',70.4,73.4);
INSERT INTO "usd_ars_xrate" VALUES ('19','12','2019','null','null','true',73.15,75.65);
INSERT INTO "usd_ars_xrate" VALUES ('20','12','2019',58.0,63.0,'true',73.25,75.25);
INSERT INTO "usd_ars_xrate" VALUES ('23','12','2019',58.0,63.0,'true',71.15,74.15);
INSERT INTO "usd_ars_xrate" VALUES ('26','12','2019',58.0,63.0,'true',73.75,76.75);
INSERT INTO "usd_ars_xrate" VALUES ('27','12','2019',58.0,63.0,'true',76.5,79.0);
INSERT INTO "usd_ars_xrate" VALUES ('30','12','2019',58.0,63.0,'true',74.5,77.5);
INSERT INTO "usd_ars_xrate" VALUES ('2','1','2020',58.0,63.0,'true',74.9,77.9);
INSERT INTO "usd_ars_xrate" VALUES ('3','1','2020',58.0,63.0,'true',74.15,77.15);
INSERT INTO "usd_ars_xrate" VALUES ('6','1','2020',58.0,63.0,'true',73.5,76.5);
INSERT INTO "usd_ars_xrate" VALUES ('7','1','2020',58.0,63.0,'true',73.25,76.25);
INSERT INTO "usd_ars_xrate" VALUES ('8','1','2020',58.0,63.0,'true',72.9,75.9);
INSERT INTO "usd_ars_xrate" VALUES ('9','1','2020',58.0,63.0,'true',73.0,76.0);
INSERT INTO "usd_ars_xrate" VALUES ('10','1','2020',58.0,63.0,'true',73.0,76.0);
INSERT INTO "usd_ars_xrate" VALUES ('13','1','2020',58.0,63.0,'true',72.9,75.9);
INSERT INTO "usd_ars_xrate" VALUES ('14','1','2020',58.0,63.0,'true',73.15,76.15);
INSERT INTO "usd_ars_xrate" VALUES ('15','1','2020',58.0,63.0,'true',74.65,77.15);
INSERT INTO "usd_ars_xrate" VALUES ('16','1','2020',58.0,63.0,'true',75.15,77.65);
INSERT INTO "usd_ars_xrate" VALUES ('17','1','2020',58.0,63.0,'true',74.65,77.15);
INSERT INTO "usd_ars_xrate" VALUES ('20','1','2020',58.0,63.0,'true',75.0,77.5);
INSERT INTO "usd_ars_xrate" VALUES ('21','1','2020',58.0,63.0,'true',75.15,77.65);
INSERT INTO "usd_ars_xrate" VALUES ('22','1','2020',58.0,63.0,'true',74.5,77.0);
INSERT INTO "usd_ars_xrate" VALUES ('23','1','2020',58.0,63.0,'true',74.75,77.25);
INSERT INTO "usd_ars_xrate" VALUES ('24','1','2020',58.0,63.0,'true',74.75,77.25);
INSERT INTO "usd_ars_xrate" VALUES ('27','1','2020',58.0,63.0,'true',75.9,78.4);
INSERT INTO "usd_ars_xrate" VALUES ('28','1','2020',58.0,63.0,'true',75.4,77.75);
INSERT INTO "usd_ars_xrate" VALUES ('29','1','2020',58.0,63.0,'true',75.5,77.9);
INSERT INTO "usd_ars_xrate" VALUES ('30','1','2020',58.0,63.0,'true',75.5,78.0);
INSERT INTO "usd_ars_xrate" VALUES ('31','1','2020',58.0,63.0,'true',75.0,77.5);
INSERT INTO "usd_ars_xrate" VALUES ('3','2','2020',58.0,63.0,'true',75.15,77.4);
INSERT INTO "usd_ars_xrate" VALUES ('4','2','2020',58.0,63.0,'true',75.15,77.4);
INSERT INTO "usd_ars_xrate" VALUES ('5','2','2020',58.0,63.0,'true',75.0,77.4);
INSERT INTO "usd_ars_xrate" VALUES ('6','2','2020',58.0,63.0,'true',75.0,77.4);
INSERT INTO "usd_ars_xrate" VALUES ('7','2','2020',58.0,63.0,'true',74.4,76.9);
INSERT INTO "usd_ars_xrate" VALUES ('10','2','2020',58.0,63.0,'true',74.4,76.9);
INSERT INTO "usd_ars_xrate" VALUES ('11','2','2020',58.25,63.25,'true',74.0,76.5);
INSERT INTO "usd_ars_xrate" VALUES ('12','2','2020',58.25,63.25,'true',74.65,77.15);
INSERT INTO "usd_ars_xrate" VALUES ('13','2','2020',58.25,63.25,'true',75.4,77.9);
INSERT INTO "usd_ars_xrate" VALUES ('14','2','2020',58.25,63.25,'true',76.35,78.85);
INSERT INTO "usd_ars_xrate" VALUES ('17','2','2020',58.25,63.25,'true',75.1,77.6);
INSERT INTO "usd_ars_xrate" VALUES ('18','2','2020',58.25,63.25,'true',75.0,77.5);
INSERT INTO "usd_ars_xrate" VALUES ('19','2','2020',58.5,63.5,'true',75.85,78.35);
INSERT INTO "usd_ars_xrate" VALUES ('20','2','2020',58.5,63.5,'true',75.95,78.45);
INSERT INTO "invoices" VALUES (265,'2017','7','17','Patricia Tiernan','1282 Big Elm','Missouri','CUIT','27217712974','IVA Responsable Inscripto',423.0);
INSERT INTO "invoices" VALUES (267,'2017','7','20','Mary Blanche','931 Tibbs Avenue','Montana','CUIT','27298533394','IVA Responsable Inscripto',4058.0);
INSERT INTO "invoices" VALUES (268,'2017','7','20','Russell Smith','2596 Benson Street','Wisconsin','CUIT','27152651264','IVA Responsable Inscripto',4029.0);
INSERT INTO "invoices" VALUES (269,'2017','7','26','Vicki Merrick','702 Tipple Road','Pennsylvania','CUIT','27299301194','Consumidor Final',1380.0);
INSERT INTO "invoices" VALUES (270,'2017','7','28','Emerson Tharp','2537 Shingleton Road','Michigan','CUIT','27356516424','IVA Responsable Inscripto',6432.0);
INSERT INTO "invoices" VALUES (271,'2017','7','31','Robert Huntley','1102 Saint Francis Way','Wisconsin','CUIT','27224633744','Consumidor Final',6615.0);
INSERT INTO "invoices" VALUES (272,'2017','8','1','Heather White','2211 Arron Smith Drive','Hawaii','CUIT','27198917474','IVA Responsable Inscripto',6009.0);
INSERT INTO "invoices" VALUES (273,'2017','8','2','William Gonzales','4925 Woodridge Lane','Tennessee','CUIT','27104438334','IVA Responsable Inscripto',6016.0);
INSERT INTO "invoices" VALUES (274,'2017','8','3','Jose Biggerstaff','2142 Prudence Street','Michigan','CUIT','27254723984','Consumidor Final',552.0);
INSERT INTO "invoices" VALUES (276,'2017','8','4','Billye Izquierdo','109 Sardis Station','Minnesota','DNI','14099346','Consumidor Final',2339.0);
INSERT INTO "invoices" VALUES (277,'2017','8','7','Douglas Hagen','4349 McVaney Road','North Carolina','DNI','37251714','Consumidor Final',3106.0);
INSERT INTO "invoices" VALUES (278,'2017','8','8','Emily Federico','547 Summit Street','Iowa','CUIT','27235433424','IVA Responsable Inscripto',2506.0);
INSERT INTO "invoices" VALUES (279,'2017','8','8','Sherrie Francis','796 Mudlick Road','Washington','CUIT','27317874874','IVA Responsable Inscripto',6704.0);
INSERT INTO "invoices" VALUES (281,'2017','8','15','David Brown','595 Lucky Duck Drive','Pennsylvania','CUIT','27259510794','IVA Sujeto Exento',5671.0);
INSERT INTO "invoices" VALUES (282,'2017','8','15','Phillip Johnston','3076 Davis Street','Georgia','CUIT','27212680464','IVA Responsable Inscripto',4227.0);
INSERT INTO "invoices" VALUES (283,'2017','8','15','Jackie Kiel','285 Buck Drive','Utah','CUIT','27119606584','IVA Responsable Inscripto',1973.0);
INSERT INTO "invoices" VALUES (284,'2017','8','17','Spencer Mills','2218 Davis Street','Georgia','CUIT','27236323324','IVA Responsable Inscripto',5112.0);
INSERT INTO "invoices" VALUES (285,'2017','8','19','David Burnell','1971 Warner Street','Wyoming','DNI','34127106','Consumidor Final',2607.0);
INSERT INTO "invoices" VALUES (287,'2017','8','23','Frances Puente','3164 Blair Court','Missouri','DNI','12984771','Consumidor Final',6729.0);
INSERT INTO "invoices" VALUES (288,'2017','8','24','Lavern Johnson','4270 Front Street','Michigan','CUIT','27241278664','IVA Responsable Inscripto',661.0);
INSERT INTO "invoices" VALUES (289,'2017','8','24','Martha Thompson','89 Riverwood Drive','California','CUIT','27283025134','IVA Responsable Inscripto',2668.0);
INSERT INTO "invoices" VALUES (290,'2017','8','25','Connie Maio','1711 Desert Broom Court','New Jersey','CUIT','27258228924','IVA Responsable Inscripto',4484.0);
INSERT INTO "invoices" VALUES (291,'2017','8','25','Edna Baldwin','2838 Calvin Street','Maryland','CUIT','27165998414','IVA Responsable Inscripto',1401.0);
INSERT INTO "invoices" VALUES (292,'2017','8','30','Deanna Myricks','4189 Rubaiyat Road','Michigan','DNI','36950570','Consumidor Final',5585.0);
INSERT INTO "invoices" VALUES (293,'2017','8','30','Alexander Troia','1592 Gnatty Creek Road','New York','DNI','26101851','Consumidor Final',4529.0);
INSERT INTO "invoices" VALUES (294,'2017','8','31','Mary Downey','4013 Pallet Street','New York','CUIT','27154971854','IVA Responsable Inscripto',4929.0);
INSERT INTO "invoices" VALUES (295,'2017','9','1','Kimberly Busch','4735 Del Dew Drive','Maryland','CUIT','27362200844','IVA Responsable Inscripto',4367.0);
INSERT INTO "invoices" VALUES (296,'2017','9','1','Richard Shaw','820 Pretty View Lane','California','CUIT','27222712474','IVA Responsable Inscripto',1000.0);
INSERT INTO "invoices" VALUES (297,'2017','9','1','Elaine Bennett','1741 Public Works Drive','Tennessee','DNI','39056943','Consumidor Final',6353.0);
INSERT INTO "invoices" VALUES (298,'2017','9','1','Hazel Titus','4252 Farland Street','Massachusetts','DNI','34085922','Consumidor Final',4591.0);
INSERT INTO "invoices" VALUES (299,'2017','9','1','Joella Deen','4501 Rollins Road','Nebraska','CUIT','27100966354','IVA Responsable Inscripto',780.0);
INSERT INTO "invoices" VALUES (300,'2017','9','7','Victoria Allen','3457 Gambler Lane','Texas','CUIT','27393444034','Consumidor Final',4880.0);
INSERT INTO "invoices" VALUES (301,'2017','9','13','Virginia Jolly','4173 Crosswind Drive','Kentucky','CUIT','27213114324','IVA Responsable Inscripto',2411.0);
INSERT INTO "invoices" VALUES (302,'2017','9','13','Otis Cargill','76 Wayback Lane','New York','CUIT','27302287504','IVA Responsable Inscripto',5210.0);
INSERT INTO "invoices" VALUES (303,'2017','9','13','Clarence Garcia','68 Carriage Court','California','CUIT','27322214474','IVA Responsable Inscripto',6845.0);
INSERT INTO "invoices" VALUES (304,'2017','9','14','Randy Laliberte','4140 Sheila Lane','Nevada','DNI','21297836','Consumidor Final',5085.0);
INSERT INTO "invoices" VALUES (305,'2017','9','15','Tasha Meyer','3133 Buffalo Creek Road','Tennessee','CUIT','27272735064','IVA Responsable Inscripto',4123.0);
INSERT INTO "invoices" VALUES (306,'2017','9','18','Elizabeth Milam','600 Sunny Day Drive','California','CUIT','27326050224','IVA Responsable Inscripto',1612.0);
INSERT INTO "invoices" VALUES (307,'2017','9','19','Renee Johnson','252 White Lane','Arkansas','CUIT','27336347574','Consumidor Final',6267.0);
INSERT INTO "invoices" VALUES (308,'2017','9','19','Mabel Bryant','788 Boggess Street','Texas','CUIT','27292849944','Consumidor Final',4360.0);
INSERT INTO "invoices" VALUES (309,'2017','9','20','Clara Halvorson','2321 Hoffman Avenue','New York','CUIT','27192596444','IVA Responsable Inscripto',1982.0);
INSERT INTO "invoices" VALUES (310,'2017','9','20','Katherine Sexton','2613 Overlook Drive','Indiana','CUIT','27110498354','IVA Responsable Inscripto',2889.0);
INSERT INTO "invoices" VALUES (311,'2017','9','24','Roy Guerrero','3044 Raccoon Run','Washington','CUIT','27329745894','IVA Responsable Inscripto',1580.0);
INSERT INTO "invoices" VALUES (312,'2017','9','25','Marsha Watkins','2476 Watson Lane','North Carolina','CUIT','27187356534','IVA Responsable Inscripto',2626.0);
INSERT INTO "invoices" VALUES (313,'2017','9','25','Catherine Johnson','1005 Agriculture Lane','Florida','CUIT','27366762894','IVA Responsable Inscripto',2954.0);
INSERT INTO "invoices" VALUES (314,'2017','9','25','Michael Shealey','2145 Broad Street','Alabama','CUIT','27288334894','IVA Responsable Inscripto',2724.0);
INSERT INTO "invoices" VALUES (315,'2017','9','25','Dale Johnsen','4056 Main Street','Washington','CUIT','27365253914','IVA Responsable Inscripto',3961.0);
INSERT INTO "invoices" VALUES (316,'2017','10','1','Christina Murrah','3491 Ferrell Street','Minnesota','CUIT','27146571384','IVA Responsable Inscripto',3365.0);
INSERT INTO "invoices" VALUES (317,'2017','10','1','Marion Meriwether','234 Cottonwood Lane','Michigan','CUIT','27135901594','IVA Responsable Inscripto',5450.0);
INSERT INTO "invoices" VALUES (318,'2017','10','3','Gordon Morrison','927 Reynolds Alley','California','CUIT','27378424704','IVA Responsable Inscripto',6284.0);
INSERT INTO "invoices" VALUES (319,'2017','10','6','Rafael Garcia','808 Duff Avenue','Vermont','CUIT','27129918474','IVA Responsable Inscripto',6200.0);
INSERT INTO "invoices" VALUES (320,'2017','10','6','Mary Petry','4735 Godfrey Street','Oregon','CUIT','27329596514','IVA Responsable Inscripto',1356.0);
INSERT INTO "invoices" VALUES (321,'2017','10','6','Alma Shelton','2323 Asylum Avenue','Connecticut','CUIT','27269144994','IVA Responsable Inscripto',6071.0);
INSERT INTO "invoices" VALUES (322,'2017','10','9','Donna Winkleman','1854 Ocello Street','California','CUIT','27231240374','Consumidor Final',5072.0);
INSERT INTO "invoices" VALUES (323,'2017','10','10','Kirstin Childs','2502 Ocala Street','Florida','CUIT','27153654104','IVA Responsable Inscripto',6961.0);
INSERT INTO "invoices" VALUES (324,'2017','10','13','Kenneth Blalock','3821 Walt Nuzum Farm Road','New York','CUIT','27278472144','IVA Responsable Inscripto',2338.0);
INSERT INTO "invoices" VALUES (325,'2017','10','17','Kenneth Keenan','304 Williams Avenue','California','CUIT','27336213354','Consumidor Final',5180.0);
INSERT INTO "invoices" VALUES (326,'2017','10','20','Danny Broussard','2116 Goldie Lane','Ohio','CUIT','27379314174','Consumidor Final',3404.0);
INSERT INTO "invoices" VALUES (327,'2017','10','21','Nancy McAlexander','3926 Goldcliff Circle','Washington DC','CUIT','27323819854','IVA Responsable Inscripto',3272.0);
INSERT INTO "invoices" VALUES (328,'2017','10','21','Jeffrey Thompson','897 Jewell Road','Minnesota','CUIT','27329694944','IVA Responsable Inscripto',5402.0);
INSERT INTO "invoices" VALUES (329,'2017','10','25','David Bonenfant','3816 Rafe Lane','Mississippi','CUIT','27183131614','IVA Responsable Inscripto',5760.0);
INSERT INTO "invoices" VALUES (330,'2017','10','26','Frank Albright','4 Sherman Street','Kansas','CUIT','27310430524','IVA Responsable Inscripto',944.0);
INSERT INTO "invoices" VALUES (331,'2017','10','27','Richard Patel','3000 Davis Street','Georgia','CUIT','27254490354','Consumidor Final',1250.0);
INSERT INTO "invoices" VALUES (332,'2017','10','30','Patricia Taylor','1462 Wexford Way','South Carolina','CUIT','27372716684','IVA Responsable Inscripto',2254.0);
INSERT INTO "invoices" VALUES (333,'2017','10','30','Robert McNeely','2904 Charter Street','Kansas','CUIT','27234121644','IVA Responsable Inscripto',1865.0);
INSERT INTO "invoices" VALUES (334,'2017','10','30','Joy Clark','3802 Golf Course Drive','Virginia','CUIT','27350259774','IVA Responsable Inscripto',3547.0);
INSERT INTO "invoices" VALUES (335,'2017','10','31','Matthew Ross','4260 Snowbird Lane','Nebraska','CUIT','27395200074','Consumidor Final',4934.0);
INSERT INTO "invoices" VALUES (336,'2017','11','3','Tiffany Smiley','2279 Dawson Drive','Kentucky','CUIT','27102266944','Consumidor Final',3183.0);
INSERT INTO "invoices" VALUES (337,'2017','11','7','Adele Koepke','2642 Oakridge Lane','Texas','CUIT','27377186414','IVA Responsable Inscripto',6141.0);
INSERT INTO "invoices" VALUES (338,'2017','11','7','Jane Costello','2000 Dog Hill Lane','Kansas','CUIT','27238289644','IVA Responsable Inscripto',2671.0);
INSERT INTO "invoices" VALUES (339,'2017','11','7','Patrick Reed','922 Melrose Street','Washington','CUIT','27248291894','IVA Responsable Inscripto',6241.0);
INSERT INTO "invoices" VALUES (340,'2017','11','10','Randall Lemieux','581 Sunny Day Drive','California','CUIT','27105902244','IVA Responsable Inscripto',1296.0);
INSERT INTO "invoices" VALUES (341,'2017','11','14','Flora Goulette','4657 Wilson Street','California','CUIT','27340415514','IVA Responsable Inscripto',3952.0);
INSERT INTO "invoices" VALUES (342,'2017','11','15','Candace Martin','3904 Terra Cotta Street','Minnesota','CUIT','27378538624','IVA Responsable Inscripto',1701.0);
INSERT INTO "invoices" VALUES (343,'2017','11','15','Lisa Hinojosa','2504 Stratford Court','North Carolina','CUIT','27148455534','Consumidor Final',3147.0);
INSERT INTO "invoices" VALUES (344,'2017','11','21','William Witherspoon','4907 Gorby Lane','Mississippi','CUIT','27375555954','Consumidor Final',5829.0);
INSERT INTO "invoices" VALUES (345,'2017','11','23','Linda Sanders','4668 Fairway Drive','California','CUIT','27383885164','IVA Responsable Inscripto',2050.0);
INSERT INTO "invoices" VALUES (346,'2017','11','24','Linda Reinhard','3349 Brooklyn Street','Virginia','CUIT','27209029404','IVA Responsable Inscripto',6449.0);
INSERT INTO "invoices" VALUES (347,'2017','11','26','George Vargas','3401 Mill Street','Florida','CUIT','27256892084','IVA Responsable Inscripto',1897.0);
INSERT INTO "invoices" VALUES (348,'2017','11','27','Curtis Morales','2797 Woodland Terrace','California','CUIT','27271138884','IVA Responsable Inscripto',2162.0);
INSERT INTO "invoices" VALUES (349,'2017','12','1','Dianna Balls','1225 Big Indian','Louisiana','CUIT','27313209514','Consumidor Final',2835.0);
INSERT INTO "invoices" VALUES (350,'2017','12','4','Nancy Garner','4415 Oak Way','Nebraska','CUIT','27328257064','IVA Responsable Inscripto',4762.0);
INSERT INTO "invoices" VALUES (351,'2017','12','6','Bernice Williams','74 Bel Meadow Drive','California','CUIT','27111319044','Consumidor Final',1479.0);
INSERT INTO "invoices" VALUES (352,'2017','12','6','Viola Bruning','262 Argonne Street','Delaware','CUIT','27135936104','IVA Responsable Inscripto',5460.0);
INSERT INTO "invoices" VALUES (353,'2017','12','7','Mary Bailey','1660 Wyatt Street','Florida','CUIT','27167380564','IVA Responsable Inscripto',538.0);
INSERT INTO "invoices" VALUES (354,'2017','12','13','Patricia Paradiso','4889 Massachusetts Avenue','Washington DC','CUIT','27352699064','Consumidor Final',4070.0);
INSERT INTO "invoices" VALUES (355,'2017','12','15','Christopher Foster','4392 Leverton Cove Road','Massachusetts','CUIT','27157187724','IVA Responsable Inscripto',4441.0);
INSERT INTO "invoices" VALUES (356,'2018','1','2','Robert Tarver','3182 Francis Mine','California','CUIT','27142957884','Consumidor Final',6344.0);
INSERT INTO "invoices" VALUES (357,'2018','1','4','Jimmie Gibbons','1782 Green Street','Tennessee','CUIT','27114849034','IVA Responsable Inscripto',6202.0);
INSERT INTO "invoices" VALUES (358,'2018','1','4','Francisco Zenon','2951 Lady Bug Drive','New York','CUIT','27135896114','IVA Responsable Inscripto',3836.0);
INSERT INTO "invoices" VALUES (359,'2018','1','4','Gary Houk','4539 Coleman Avenue','California','CUIT','27320506694','IVA Responsable Inscripto',5973.0);
INSERT INTO "invoices" VALUES (360,'2018','1','5','Audrey Hill','222 Fannie Street','Texas','CUIT','27296241814','IVA Responsable Inscripto',2443.0);
INSERT INTO "invoices" VALUES (361,'2018','1','5','Dana Howell','1742 Vine Street','Illinois','CUIT','27300966084','IVA Responsable Inscripto',2631.0);
INSERT INTO "invoices" VALUES (362,'2018','1','5','Jose Sinclair','4789 Ashton Lane','Texas','CUIT','27335721934','IVA Responsable Inscripto',4416.0);
INSERT INTO "invoices" VALUES (363,'2018','1','8','Christopher Dumont','1240 Woodland Avenue','Louisiana','CUIT','27151381664','IVA Responsable Inscripto',2997.0);
INSERT INTO "invoices" VALUES (364,'2018','1','8','John Barra','3110 Marion Drive','Florida','CUIT','27326462564','Consumidor Final',4340.0);
INSERT INTO "invoices" VALUES (365,'2018','1','11','Danny Frick','3553 Reel Avenue','New Mexico','CUIT','27271567424','IVA Responsable Inscripto',4081.0);
INSERT INTO "invoices" VALUES (366,'2018','1','15','Colleen Thomas','2188 Pinnickinick Street','Washington','CUIT','27359635964','Consumidor Final',1743.0);
INSERT INTO "invoices" VALUES (367,'2018','1','15','William Thompson','477 Harry Place','North Carolina','CUIT','27109152164','IVA Responsable Inscripto',3875.0);
INSERT INTO "invoices" VALUES (368,'2018','1','17','Linda Martin','3302 Sycamore Circle','Texas','CUIT','27140625104','IVA Responsable Inscripto',4468.0);
INSERT INTO "invoices" VALUES (369,'2018','1','17','Dante Ward','25 Primrose Lane','Wisconsin','CUIT','27180836604','IVA Responsable Inscripto',4196.0);
INSERT INTO "invoices" VALUES (370,'2018','1','17','Frank Smith','4399 Elm Drive','New York','CUIT','27223074934','IVA Responsable Inscripto',4171.0);
INSERT INTO "invoices" VALUES (371,'2018','1','18','Stephen Whitman','3795 Delaware Avenue','California','CUIT','27103457114','IVA Responsable Inscripto',4124.0);
INSERT INTO "invoices" VALUES (372,'2018','1','22','Glenn Maples','3672 Timberbrook Lane','Colorado','CUIT','27242580794','Consumidor Final',540.0);
INSERT INTO "invoices" VALUES (373,'2018','1','22','Ryan Hart','4423 Boring Lane','California','CUIT','27216512224','IVA Responsable Inscripto',1805.0);
INSERT INTO "invoices" VALUES (374,'2018','1','22','Emanuel Perez','1458 Conifer Drive','Washington','CUIT','27214892544','IVA Responsable Inscripto',5375.0);
INSERT INTO "invoices" VALUES (375,'2018','1','22','Juanita Ricketts','1025 Robinson Lane','Ohio','CUIT','27262452294','IVA Responsable Inscripto',1271.0);
INSERT INTO "invoices" VALUES (376,'2018','1','23','Angela Betts','2358 Crowfield Road','Arizona','CUIT','27290429474','IVA Responsable Inscripto',985.0);
INSERT INTO "invoices" VALUES (377,'2018','1','24','Jamie Pitts','4272 Parrill Court','Indiana','CUIT','27232994074','Consumidor Final',1556.0);
INSERT INTO "invoices" VALUES (378,'2018','1','24','Beverly Simpson','1635 Owagner Lane','Washington','CUIT','27301531664','Consumidor Final',1478.0);
INSERT INTO "invoices" VALUES (379,'2018','1','25','John Young','4564 Limer Street','Georgia','CUIT','27137966004','Consumidor Final',3087.0);
INSERT INTO "invoices" VALUES (380,'2018','1','26','Rogelio Rodriguez','1327 Leroy Lane','South Dakota','CUIT','27351263414','IVA Responsable Inscripto',3983.0);
INSERT INTO "invoices" VALUES (381,'2018','1','26','Linda Schlegel','3732 Biddie Lane','Virginia','CUIT','27242737614','IVA Responsable Inscripto',4426.0);
INSERT INTO "invoices" VALUES (382,'2018','1','29','John Nelson','2363 Sunset Drive','Arkansas','CUIT','27222918404','IVA Responsable Inscripto',1619.0);
INSERT INTO "invoices" VALUES (383,'2018','1','31','Ione Harris','1459 Layman Court','Georgia','CUIT','27101263304','IVA Responsable Inscripto',5911.0);
INSERT INTO "invoices" VALUES (384,'2018','1','31','Keith Wason','2310 Duffy Street','Indiana','CUIT','27181847874','IVA Responsable Inscripto',3210.0);
INSERT INTO "invoices" VALUES (385,'2018','2','2','Chris Bell','423 Grim Avenue','California','CUIT','27316517434','Consumidor Final',2148.0);
INSERT INTO "invoices" VALUES (386,'2018','2','3','Michael Rue','307 Oak Street','New York','CUIT','27320226704','IVA Responsable Inscripto',2773.0);
INSERT INTO "invoices" VALUES (387,'2018','2','5','Anne Douglas','3172 Hog Camp Road','Illinois','CUIT','27376478104','Consumidor Final',1182.0);
INSERT INTO "invoices" VALUES (388,'2018','2','6','Jessie Hayden','3851 John Calvin Drive','Illinois','CUIT','27318330384','IVA Responsable Inscripto',1160.0);
INSERT INTO "invoices" VALUES (389,'2018','2','9','Patrick Sipes','2291 Kuhl Avenue','Georgia','CUIT','27296072164','IVA Responsable Inscripto',2110.0);
INSERT INTO "invoices" VALUES (390,'2018','2','13','Miranda Reily','2596 Circle Drive','Texas','CUIT','27338786554','IVA Responsable Inscripto',1237.0);
INSERT INTO "invoices" VALUES (391,'2018','2','14','Jolene Woodside','3418 Franklin Street','Alabama','CUIT','27183545974','Consumidor Final',5822.0);
INSERT INTO "invoices" VALUES (392,'2018','2','14','Larry Bicknell','4131 Bungalow Road','Nebraska','CUIT','27394619234','IVA Responsable Inscripto',5934.0);
INSERT INTO "invoices" VALUES (393,'2018','2','15','John Blair','1524 Lakeland Park Drive','Georgia','CUIT','27333178924','Consumidor Final',4393.0);
INSERT INTO "invoices" VALUES (394,'2018','2','16','Jean James','4116 Horseshoe Lane','Pennsylvania','CUIT','27165959164','IVA Responsable Inscripto',6423.0);
INSERT INTO "invoices" VALUES (395,'2018','2','16','Rose Stephens','4404 White Pine Lane','Virginia','CUIT','27372043904','IVA Responsable Inscripto',4778.0);
INSERT INTO "invoices" VALUES (396,'2018','2','16','Mary Bowers','2389 Lindale Avenue','California','CUIT','27186066044','IVA Responsable Inscripto',6905.0);
INSERT INTO "invoices" VALUES (397,'2018','2','16','Evelyn Westbrook','1944 Whitman Court','Connecticut','CUIT','27276935414','IVA Responsable Inscripto',5359.0);
INSERT INTO "invoices" VALUES (398,'2018','2','16','Ramona Cheney','3596 Rubaiyat Road','Michigan','DNI','26752720','Consumidor Final',2431.0);
INSERT INTO "invoices" VALUES (399,'2018','2','21','Cynthia Albro','3193 Ben Street','New York','CUIT','27117742244','IVA Responsable Inscripto',3224.0);
INSERT INTO "invoices" VALUES (400,'2018','2','21','Gary Harris','2598 Desert Broom Court','New Jersey','CUIT','27126617494','Consumidor Final',4854.0);
INSERT INTO "invoices" VALUES (401,'2018','2','22','Vernon Eliason','1969 Mapleview Drive','Tennessee','DNI','27328030','Consumidor Final',519.0);
INSERT INTO "invoices" VALUES (402,'2018','2','23','Patrick Barnwell','3791 Koontz Lane','California','CUIT','27185419954','IVA Responsable Inscripto',6930.0);
INSERT INTO "invoices" VALUES (403,'2018','2','23','William Smith','3861 Scenic Way','Illinois','CUIT','27253560174','IVA Responsable Inscripto',6625.0);
INSERT INTO "invoices" VALUES (404,'2018','2','27','Terrance Branum','2206 Mount Street','Michigan','CUIT','27179121644','IVA Responsable Inscripto',5535.0);
INSERT INTO "invoices" VALUES (405,'2018','3','2','Edwin Davis','4006 Formula Lane','Texas','CUIT','27277818224','IVA Responsable Inscripto',5739.0);
INSERT INTO "invoices" VALUES (406,'2018','3','6','Brittany Brown','4984 Hickory Lane','Connecticut','CUIT','27362016424','IVA Responsable Inscripto',6945.0);
INSERT INTO "invoices" VALUES (407,'2018','3','8','Steven Suiter','4184 Raintree Boulevard','Minnesota','CUIT','27194616904','IVA Responsable Inscripto',6884.0);
INSERT INTO "invoices" VALUES (408,'2018','3','8','Norman Lattimore','3709 Deans Lane','New York','CUIT','27243316844','IVA Responsable Inscripto',3215.0);
INSERT INTO "invoices" VALUES (409,'2018','3','8','Heriberto Espinoza','4249 Byrd Lane','New Mexico','CUIT','27308815094','IVA Responsable Inscripto',6413.0);
INSERT INTO "invoices" VALUES (410,'2018','3','8','Brandon Perryman','3968 Brooklyn Street','Virginia','CUIT','27170798964','IVA Responsable Inscripto',4670.0);
INSERT INTO "invoices" VALUES (411,'2018','3','9','Douglas Davis','3407 Ocello Street','Kansas','CUIT','27234490264','IVA Responsable Inscripto',4969.0);
INSERT INTO "invoices" VALUES (412,'2018','3','9','Lori Granados','1971 Khale Street','South Carolina','CUIT','27256863864','IVA Responsable Inscripto',6106.0);
INSERT INTO "invoices" VALUES (413,'2018','3','9','Jane Cole','2249 Tyler Avenue','Florida','CUIT','27189234684','IVA Responsable Inscripto',2793.0);
INSERT INTO "invoices" VALUES (414,'2018','3','15','Michael Durst','4929 Rose Street','Illinois','CUIT','27321681704','IVA Responsable Inscripto',2752.0);
INSERT INTO "invoices" VALUES (415,'2018','3','20','Dennis Burks','4442 Sarah Drive','Louisiana','CUIT','27212357364','IVA Responsable Inscripto',1693.0);
INSERT INTO "invoices" VALUES (416,'2018','3','20','Janet Rodriguez','1925 Hudson Street','New Jersey','CUIT','27231685504','IVA Responsable Inscripto',6096.0);
INSERT INTO "invoices" VALUES (417,'2018','3','21','Ralph Friedman','4108 Ashford Drive','Virginia','CUIT','27301529984','IVA Responsable Inscripto',485.0);
INSERT INTO "invoices" VALUES (418,'2018','3','26','Arthur Fontenot','618 Ethels Lane','Florida','CUIT','27334007264','IVA Responsable Inscripto',5199.0);
INSERT INTO "invoices" VALUES (419,'2018','4','8','Paul Salinas','4941 Walnut Street','Mississippi','CUIT','27211851214','IVA Responsable Inscripto',5709.0);
INSERT INTO "invoices" VALUES (420,'2018','4','9','Janice Faucher','3014 Tipple Road','Pennsylvania','CUIT','27140299034','IVA Responsable Inscripto',6218.0);
INSERT INTO "invoices" VALUES (421,'2018','4','9','Robert Carter','1977 Maxwell Farm Road','Virginia','CUIT','27399771614','IVA Responsable Inscripto',6830.0);
INSERT INTO "invoices" VALUES (422,'2018','4','10','Ray Copeland','3818 Harvest Lane','Missouri','CUIT','27282320374','IVA Responsable Inscripto',5304.0);
INSERT INTO "invoices" VALUES (423,'2018','4','11','Grant Reese','504 Brannon Avenue','Florida','CUIT','27221690454','IVA Responsable Inscripto',6796.0);
INSERT INTO "invoices" VALUES (424,'2018','4','11','Linda Hillenbrand','1937 Black Stallion Road','Kentucky','CUIT','27151607474','IVA Responsable Inscripto',3096.0);
INSERT INTO "invoices" VALUES (425,'2018','4','15','Aaron Anderson','183 Romano Street','Massachusetts','CUIT','27137761604','IVA Responsable Inscripto',2606.0);
INSERT INTO "invoices" VALUES (426,'2018','4','16','Micheal Ramirez','1749 Goff Avenue','Michigan','DNI','37383978','Consumidor Final',911.0);
INSERT INTO "invoices" VALUES (427,'2018','4','16','Isreal Simpson','1614 Larry Street','Wisconsin','CUIT','27100240884','IVA Responsable Inscripto',3835.0);
INSERT INTO "invoices" VALUES (428,'2018','4','16','Theresa Shore','3429 Quilly Lane','Ohio','CUIT','27285230244','IVA Responsable Inscripto',4314.0);
INSERT INTO "invoices" VALUES (429,'2018','4','17','Harold Hickman','193 West Side Avenue','New Jersey','CUIT','27242104654','IVA Responsable Inscripto',2289.0);
INSERT INTO "invoices" VALUES (430,'2018','4','17','Ernesto Johnson','3796 Beeghley Street','Texas','CUIT','27376932824','IVA Responsable Inscripto',5040.0);
INSERT INTO "invoices" VALUES (431,'2018','4','18','Christopher Reed','2769 Fidler Drive','Texas','CUIT','27357047214','IVA Responsable Inscripto',3340.0);
INSERT INTO "invoices" VALUES (432,'2018','4','18','Jeff Smith','3432 Tree Frog Lane','Missouri','CUIT','27153189744','IVA Responsable Inscripto',2748.0);
INSERT INTO "invoices" VALUES (433,'2018','4','23','Francie Rau','3016 Luke Lane','Oklahoma','CUIT','27190361414','IVA Responsable Inscripto',1603.0);
INSERT INTO "invoices" VALUES (434,'2018','4','24','Joyce Miller','4671 Hott Street','Oklahoma','CUIT','27244646754','IVA Responsable Inscripto',2156.0);
INSERT INTO "invoices" VALUES (435,'2018','4','26','Lindsay Smith','4371 Settlers Lane','New York','CUIT','27135727674','IVA Responsable Inscripto',5553.0);
INSERT INTO "invoices" VALUES (436,'2018','4','27','Elaine Cummings','3313 Walnut Avenue','New Jersey','CUIT','27168708224','IVA Sujeto Exento',1868.0);
INSERT INTO "invoices" VALUES (437,'2018','4','27','Helen Anderson','888 Boggess Street','Ohio','DNI','38718453','Consumidor Final',2097.0);
INSERT INTO "invoices" VALUES (438,'2018','4','27','Ida Burdett','1066 Oliver Street','Texas','DNI','29676641','Consumidor Final',5859.0);
INSERT INTO "invoices" VALUES (439,'2018','5','1','Michael Frazier','3853 Fort Street','Washington','DNI','25816936','Consumidor Final',4474.0);
INSERT INTO "invoices" VALUES (440,'2018','5','2','Juanita Carr','1305 Breezewood Court','Kansas','CUIT','27266420064','IVA Responsable Inscripto',2057.0);
INSERT INTO "invoices" VALUES (441,'2018','5','8','Liliana Vargas','28 Fulton Street','West Virginia','CUIT','27345992534','IVA Responsable Inscripto',3333.0);
INSERT INTO "invoices" VALUES (442,'2018','5','15','Fay Jones','3141 Martha Street','Arizona','CUIT','27136174244','Consumidor Final',5253.0);
INSERT INTO "invoices" VALUES (443,'2018','5','15','Willis Lee','3586 Fannie Street','Texas','CUIT','27132174544','IVA Responsable Inscripto',6256.0);
INSERT INTO "invoices" VALUES (444,'2018','5','16','Migdalia Ratcliffe','4210 Benson Park Drive','Oklahoma','CUIT','27245906794','Consumidor Final',6217.0);
INSERT INTO "invoices" VALUES (445,'2018','5','18','Misty Reeves','3768 Jones Street','Texas','CUIT','27277899144','Consumidor Final',5442.0);
INSERT INTO "invoices" VALUES (446,'2018','5','18','Elizabeth Jones','4514 Cottrill Lane','Missouri','CUIT','27322394864','Consumidor Final',5051.0);
INSERT INTO "invoices" VALUES (447,'2018','5','22','Melissa Jaynes','1904 Mount Street','Michigan','CUIT','27129834364','IVA Responsable Inscripto',4569.0);
INSERT INTO "invoices" VALUES (448,'2018','5','23','Aida Crosby','1731 Hinkle Lake Road','Massachusetts','CUIT','27316285334','IVA Responsable Inscripto',5934.0);
INSERT INTO "invoices" VALUES (449,'2018','5','28','Brett Tucker','1867 Chardonnay Drive','Washington','CUIT','27177185354','Consumidor Final',4233.0);
INSERT INTO "invoices" VALUES (450,'2018','6','4','Belle Hunter','4910 Redbud Drive','New York','CUIT','27357705524','Consumidor Final',842.0);
INSERT INTO "invoices" VALUES (451,'2018','6','4','Amanda Benford','4884 Parrish Avenue','Texas','CUIT','27155740394','IVA Responsable Inscripto',638.0);
INSERT INTO "invoices" VALUES (452,'2018','6','4','Janet Gish','3858 Traders Alley','Missouri','CUIT','27301585624','IVA Responsable Inscripto',6925.0);
INSERT INTO "invoices" VALUES (453,'2018','6','6','Brett Collins','3449 Dancing Dove Lane','New York','CUIT','27195385784','Consumidor Final',6218.0);
INSERT INTO "invoices" VALUES (454,'2018','6','7','Malinda Arthur','2325 Post Avenue','Minnesota','DNI','20912714','Consumidor Final',2818.0);
INSERT INTO "invoices" VALUES (455,'2018','6','7','Judy Johnson','2623 Midway Road','Arkansas','DNI','10440521','Consumidor Final',712.0);
INSERT INTO "invoices" VALUES (456,'2018','6','8','Richard Marrone','3646 Glen Street','Kentucky','CUIT','27396692644','IVA Responsable Inscripto',521.0);
INSERT INTO "invoices" VALUES (457,'2018','6','9','Scott Cohen','2653 Simons Hollow Road','Pennsylvania','CUIT','27313143954','Consumidor Final',3742.0);
INSERT INTO "invoices" VALUES (458,'2018','6','12','Patricia Slocum','2140 White Avenue','Texas','CUIT','27235254654','IVA Responsable Inscripto',1419.0);
INSERT INTO "invoices" VALUES (459,'2018','6','19','Charles Richardson','180 Zappia Drive','Kentucky','CUIT','27122915474','IVA Responsable Inscripto',3536.0);
INSERT INTO "invoices" VALUES (460,'2018','6','21','Margaret Harris','2977 Lost Creek Road','Pennsylvania','CUIT','27292422334','IVA Responsable Inscripto',3522.0);
INSERT INTO "invoices" VALUES (461,'2018','6','23','Gwendolyn Leslie','2725 Morris Street','Texas','CUIT','27178211394','Consumidor Final',716.0);
INSERT INTO "invoices" VALUES (462,'2018','6','26','James Howell','610 Summit Street','Iowa','CUIT','27361751444','Consumidor Final',5178.0);
INSERT INTO "invoices" VALUES (463,'2018','6','27','Andrea Maldonado','799 Alpaca Way','California','CUIT','27178099064','IVA Responsable Inscripto',5213.0);
INSERT INTO "invoices" VALUES (464,'2018','7','4','Katy Jacobs','3147 Hardesty Street','New York','CUIT','27299084264','IVA Responsable Inscripto',1089.0);
INSERT INTO "invoices" VALUES (465,'2018','7','4','Tim Spillman','3163 Stratford Drive','Hawaii','CUIT','27219097384','IVA Responsable Inscripto',6506.0);
INSERT INTO "invoices" VALUES (466,'2018','7','4','Krista Schuetz','2650 Hiney Road','North Dakota','CUIT','27124953714','IVA Responsable Inscripto',2065.0);
INSERT INTO "invoices" VALUES (467,'2018','7','6','Randall Christopher','3159 Harter Street','Ohio','CUIT','27282252854','Consumidor Final',2297.0);
INSERT INTO "invoices" VALUES (468,'2018','7','6','Raphael Adair','1526 Amethyst Drive','Michigan','CUIT','27106628134','IVA Responsable Inscripto',2469.0);
INSERT INTO "invoices" VALUES (469,'2018','7','13','Opal Huntsberry','520 Breezewood Court','Kansas','CUIT','27100202844','IVA Responsable Inscripto',846.0);
INSERT INTO "invoices" VALUES (470,'2018','7','20','Joseph Shannon','2021 Hidden Pond Road','Tennessee','CUIT','27223583534','IVA Responsable Inscripto',5124.0);
INSERT INTO "invoices" VALUES (471,'2018','7','24','Estella Cronk','4215 Mayo Street','Kentucky','CUIT','27291209354','Consumidor Final',5963.0);
INSERT INTO "invoices" VALUES (472,'2018','7','24','Jose McGowan','1108 Fowler Avenue','Georgia','CUIT','27199220364','IVA Responsable Inscripto',6559.0);
INSERT INTO "invoices" VALUES (473,'2018','7','24','Mark Corson','2756 Half and Half Drive','California','CUIT','27192924634','IVA Responsable Inscripto',737.0);
INSERT INTO "invoices" VALUES (474,'2018','7','24','Natasha Fehr','1054 Flynn Street','Ohio','CUIT','27107829134','Consumidor Final',2952.0);
INSERT INTO "invoices" VALUES (475,'2018','7','27','Willie Williams','3472 Romines Mill Road','Texas','CUIT','27130126414','IVA Responsable Inscripto',3541.0);
INSERT INTO "invoices" VALUES (476,'2018','7','27','John Benton','420 Hardesty Street','New York','CUIT','27297348104','IVA Responsable Inscripto',6792.0);
INSERT INTO "invoices" VALUES (477,'2018','8','6','Blanche Leitner','2253 Lightning Point Drive','Tennessee','CUIT','27200752824','IVA Responsable Inscripto',6198.0);
INSERT INTO "invoices" VALUES (478,'2018','8','7','Howard Correia','1633 Hart Ridge Road','Michigan','CUIT','27252582454','IVA Responsable Inscripto',4286.0);
INSERT INTO "invoices" VALUES (479,'2018','8','8','Sue Rodriquez','1356 Yorkie Lane','Georgia','CUIT','27258963394','Consumidor Final',5624.0);
INSERT INTO "invoices" VALUES (480,'2018','8','9','Jamie Fortner','1315 Melody Lane','Virginia','CUIT','27139070394','IVA Responsable Inscripto',5062.0);
INSERT INTO "invoices" VALUES (481,'2018','8','13','Glennie Clark','4964 Centennial Farm Road','Iowa','CUIT','27156452104','Consumidor Final',5642.0);
INSERT INTO "invoices" VALUES (482,'2018','8','15','Karen Sanders','3337 Bottom Lane','New York','CUIT','27351867654','IVA Responsable Inscripto',4966.0);
INSERT INTO "invoices" VALUES (483,'2018','8','16','Donald Courville','3972 Meadow Drive','Montana','CUIT','27249819424','IVA Responsable Inscripto',1631.0);
INSERT INTO "invoices" VALUES (484,'2018','8','21','Carlos Cantrell','344 Sweetwood Drive','Colorado','CUIT','27152391454','Consumidor Final',2875.0);
INSERT INTO "invoices" VALUES (485,'2018','8','21','Christine Obrien','4053 Oak Lane','Missouri','DNI','21027552','Consumidor Final',917.0);
INSERT INTO "invoices" VALUES (486,'2018','8','22','Susan Dickson','4991 Hemlock Lane','Texas','DNI','27096529','Consumidor Final',6111.0);
INSERT INTO "invoices" VALUES (487,'2018','8','22','Evelyn Vega','4228 Hillcrest Avenue','Massachusetts','CUIT','27359328614','IVA Responsable Inscripto',5634.0);
INSERT INTO "invoices" VALUES (488,'2018','8','22','John Jeanbaptiste','3351 Medical Center Drive','Florida','CUIT','27204502264','IVA Responsable Inscripto',4370.0);
INSERT INTO "invoices" VALUES (489,'2018','8','23','Gloria Wallace','3841 Michigan Avenue','Pennsylvania','CUIT','27107957824','Consumidor Final',2689.0);
INSERT INTO "invoices" VALUES (490,'2018','8','24','Paul Dickson','3767 South Street','Texas','CUIT','27154615764','Consumidor Final',1330.0);
INSERT INTO "invoices" VALUES (491,'2018','8','27','William Page','908 Wines Lane','Texas','CUIT','27376553644','IVA Responsable Inscripto',5609.0);
INSERT INTO "invoices" VALUES (492,'2018','8','28','Helen Clowers','2349 Vesta Drive','Illinois','CUIT','27205410454','IVA Responsable Inscripto',3741.0);
INSERT INTO "invoices" VALUES (493,'2018','8','31','Thomas Stidham','1288 College Avenue','Ohio','CUIT','27131227744','IVA Responsable Inscripto',3657.0);
INSERT INTO "invoices" VALUES (494,'2018','8','31','Kristie Childers','220 Timberbrook Lane','Colorado','CUIT','27122667864','Consumidor Final',3457.0);
INSERT INTO "invoices" VALUES (495,'2018','8','31','Ferdinand Partridge','3793 Layman Court','Georgia','CUIT','27166827804','IVA Responsable Inscripto',4608.0);
INSERT INTO "invoices" VALUES (496,'2018','8','31','Henry Sullivan','1924 Elk Street','California','CUIT','27108717744','IVA Responsable Inscripto',2326.0);
INSERT INTO "invoices" VALUES (497,'2018','9','10','Dominique Nixon','2553 Kinney Street','Massachusetts','CUIT','27178007794','Consumidor Final',2682.0);
INSERT INTO "invoices" VALUES (498,'2018','9','11','Sondra Gilbreath','2558 Filbert Street','Pennsylvania','CUIT','27234974624','IVA Responsable Inscripto',2225.0);
INSERT INTO "invoices" VALUES (499,'2018','9','17','Janice Ramos','4167 Evergreen Lane','California','CUIT','27312930354','IVA Responsable Inscripto',2733.0);
INSERT INTO "invoices" VALUES (500,'2018','9','20','Kristin Montes','2790 Dale Avenue','Washington','CUIT','27225028454','IVA Responsable Inscripto',3869.0);
INSERT INTO "invoices" VALUES (501,'2018','9','20','Irene McCraney','3905 Dovetail Drive','Illinois','CUIT','27248343964','Consumidor Final',6515.0);
INSERT INTO "invoices" VALUES (502,'2018','9','20','Jessica Whitmire','3160 Pyramid Valley Road','Iowa','CUIT','27364709614','Consumidor Final',1098.0);
INSERT INTO "invoices" VALUES (503,'2018','9','21','Margaret Nunnery','174 Aspen Court','Massachusetts','CUIT','27299089194','Consumidor Final',6978.0);
INSERT INTO "invoices" VALUES (504,'2018','9','26','Jackie Sullivan','1359 Settlers Lane','New York','CUIT','27352595554','Consumidor Final',2156.0);
INSERT INTO "invoices" VALUES (505,'2018','9','26','Lora Carter','554 Roguski Road','Louisiana','CUIT','27335299514','IVA Responsable Inscripto',5939.0);
INSERT INTO "invoices" VALUES (506,'2018','9','26','Susan Lambert','2942 Watson Lane','Texas','CUIT','27130271084','IVA Responsable Inscripto',1505.0);
INSERT INTO "invoices" VALUES (507,'2018','9','26','Aline Campfield','4198 Meadowview Drive','Virginia','CUIT','27159128074','IVA Responsable Inscripto',4382.0);
INSERT INTO "invoices" VALUES (508,'2018','10','1','Connie Sumner','216 Robinson Lane','Ohio','CUIT','27162120624','IVA Responsable Inscripto',5882.0);
INSERT INTO "invoices" VALUES (509,'2018','10','16','Laura Garcia','4059 Brownton Road','Mississippi','CUIT','27136635774','Consumidor Final',1600.0);
INSERT INTO "invoices" VALUES (510,'2018','10','16','Robert Fortner','86 Hamilton Drive','Maryland','CUIT','27110879534','IVA Responsable Inscripto',5767.0);
INSERT INTO "invoices" VALUES (511,'2018','10','24','Francina McCullough','1684 Melville Street','Tennessee','CUIT','27340011274','IVA Responsable Inscripto',3604.0);
INSERT INTO "invoices" VALUES (512,'2018','10','26','Kim Westbrook','869 Sundown Lane','Texas','DNI','35879184','Consumidor Final',1596.0);
INSERT INTO "invoices" VALUES (513,'2018','11','5','Kimberley Deluca','553 Arthur Avenue','Illinois','CUIT','27189660794','IVA Responsable Inscripto',3595.0);
INSERT INTO "invoices" VALUES (514,'2018','11','5','Rebecca Baltazar','962 Duff Avenue','Vermont','CUIT','27233330224','IVA Responsable Inscripto',5778.0);
INSERT INTO "invoices" VALUES (515,'2018','11','5','Earl Grossman','3982 Village View Drive','Florida','CUIT','27179113424','IVA Responsable Inscripto',4472.0);
INSERT INTO "invoices" VALUES (516,'2018','11','11','Sherry Gallardo','3858 Cambridge Place','Maryland','CUIT','27313843634','Consumidor Final',5552.0);
INSERT INTO "invoices" VALUES (517,'2018','11','13','Janet Benites','1074 Quincy Street','Pennsylvania','CUIT','27378759464','IVA Responsable Inscripto',4590.0);
INSERT INTO "invoices" VALUES (518,'2018','11','14','Melissa Doerr','2434 Sardis Station','Minnesota','CUIT','27114673494','IVA Responsable Inscripto',4845.0);
INSERT INTO "invoices" VALUES (519,'2018','11','22','Ruth Hill','1895 Brooke Street','Texas','CUIT','27228015914','IVA Responsable Inscripto',3237.0);
INSERT INTO "invoices" VALUES (520,'2018','11','23','Joe Harris','3902 Melm Street','Rhode Island','DNI','20914282','Consumidor Final',3620.0);
INSERT INTO "invoices" VALUES (521,'2018','11','27','Walter Mitchell','1986 Chipmunk Lane','Maine','CUIT','27178217894','Consumidor Final',4652.0);
INSERT INTO "invoices" VALUES (522,'2018','11','28','Amber Galbreath','3639 Blackwell Street','Alaska','CUIT','27278784574','IVA Responsable Inscripto',2401.0);
INSERT INTO "invoices" VALUES (523,'2018','12','5','Raymond Collins','2191 McKinley Avenue','Colorado','CUIT','27246131284','IVA Responsable Inscripto',2352.0);
INSERT INTO "invoices" VALUES (524,'2018','12','6','Patrick Williams','1953 Virginia Street','Illinois','CUIT','27162906974','IVA Responsable Inscripto',2542.0);
INSERT INTO "invoices" VALUES (525,'2018','12','9','Samantha Sanders','2121 Elliott Street','New Hampshire','CUIT','27118540784','IVA Responsable Inscripto',407.0);
INSERT INTO "invoices" VALUES (526,'2018','12','10','Guy Callahan','1558 Marshall Street','Maryland','DNI','30264275','Consumidor Final',5613.0);
INSERT INTO "invoices" VALUES (527,'2018','12','17','Lucia Munoz','574 Pooz Street','Tennessee','CUIT','27296216514','Consumidor Final',5135.0);
INSERT INTO "invoices" VALUES (528,'2018','12','19','Julian Jackson','2069 Pooh Bear Lane','South Carolina','CUIT','27330134804','Consumidor Final',1609.0);
INSERT INTO "invoices" VALUES (529,'2018','12','21','Walter Martinez','1414 Bailey Drive','Iowa','CUIT','27181566004','IVA Responsable Inscripto',4257.0);
INSERT INTO "invoices" VALUES (530,'2019','1','4','Rita Howard','1800 Hartway Street','South Dakota','CUIT','27360495614','IVA Responsable Inscripto',2524.0);
INSERT INTO "invoices" VALUES (531,'2019','1','7','Robert Janes','586 Bastin Drive','Pennsylvania','CUIT','27309023374','Consumidor Final',876.0);
INSERT INTO "invoices" VALUES (532,'2019','1','8','Angelo Myers','3914 School Street','Connecticut','CUIT','27171448284','IVA Responsable Inscripto',1849.0);
INSERT INTO "invoices" VALUES (533,'2019','1','11','Gene White','1237 Terry Lane','Florida','CUIT','27335675464','IVA Responsable Inscripto',3548.0);
INSERT INTO "invoices" VALUES (534,'2019','1','14','Melia Jensen','3658 Waldeck Street','Texas','CUIT','27304366524','IVA Responsable Inscripto',6057.0);
INSERT INTO "invoices" VALUES (535,'2019','1','16','Jose Slagle','1229 Kuhl Avenue','Georgia','CUIT','27183462264','IVA Responsable Inscripto',4401.0);
INSERT INTO "invoices" VALUES (536,'2019','1','18','James Cervantes','1762 Goldcliff Circle','Washington DC','CUIT','27351888214','IVA Responsable Inscripto',704.0);
INSERT INTO "invoices" VALUES (537,'2019','1','21','Joseph Blevins','4680 Payne Street','Virginia','CUIT','27107525284','Consumidor Final',5447.0);
INSERT INTO "invoices" VALUES (538,'2019','1','22','Jewell Davidson','377 Carson Street','Kentucky','CUIT','27347371094','IVA Responsable Inscripto',1987.0);
INSERT INTO "invoices" VALUES (539,'2019','1','29','Tammy Freeman','2177 Beeghley Street','Texas','CUIT','27129776614','IVA Responsable Inscripto',3485.0);
INSERT INTO "invoices" VALUES (540,'2019','1','29','Jesus Messina','4485 Callison Lane','Delaware','DNI','38194771','Consumidor Final',2851.0);
INSERT INTO "invoices" VALUES (541,'2019','2','1','Marshall Bates','3671 C Street','Massachusetts','CUIT','27159041644','Consumidor Final',6375.0);
INSERT INTO "invoices" VALUES (542,'2019','2','6','Scott Macias','685 Coal Street','Pennsylvania','CUIT','27144517234','IVA Responsable Inscripto',2564.0);
INSERT INTO "invoices" VALUES (543,'2019','2','8','Shirley Sipe','3873 Trymore Road','Minnesota','CUIT','27322230964','IVA Responsable Inscripto',1201.0);
INSERT INTO "invoices" VALUES (544,'2019','2','14','Norma Mullins','4998 Eagles Nest Drive','California','CUIT','27275662554','IVA Responsable Inscripto',1293.0);
INSERT INTO "invoices" VALUES (545,'2019','2','19','Mary Watkin','1741 Hayhurst Lane','Michigan','CUIT','27135191284','IVA Responsable Inscripto',741.0);
INSERT INTO "invoices" VALUES (546,'2019','2','21','George Miller','2760 Cessna Drive','Indiana','CUIT','27167365654','IVA Responsable Inscripto',648.0);
INSERT INTO "invoices" VALUES (547,'2019','3','11','Michael Dotson','2024 Wright Court','Alabama','CUIT','27126996154','Consumidor Final',5682.0);
INSERT INTO "invoices" VALUES (548,'2019','3','12','John Rousey','2647 Cheshire Road','Connecticut','CUIT','27376273704','IVA Responsable Inscripto',4844.0);
INSERT INTO "invoices" VALUES (549,'2019','3','12','Jack Garcia','3178 Duke Lane','New Jersey','DNI','39045148','Consumidor Final',864.0);
INSERT INTO "invoices" VALUES (550,'2019','3','12','Della Barber','1629 Selah Way','Vermont','CUIT','27127311084','IVA Responsable Inscripto',918.0);
INSERT INTO "invoices" VALUES (551,'2019','3','14','Scarlet Okelly','3515 Jarvis Street','New York','CUIT','27166723934','Consumidor Final',3332.0);
INSERT INTO "invoices" VALUES (552,'2019','3','14','John Rogers','3361 Bryan Street','North Carolina','DNI','18992439','Consumidor Final',2130.0);
INSERT INTO "invoices" VALUES (553,'2019','3','14','Brian Rich','950 Melville Street','Tennessee','CUIT','27113300704','Consumidor Final',6882.0);
INSERT INTO "invoices" VALUES (554,'2019','3','14','Robin Millsaps','955 Sardis Station','Minnesota','DNI','28206672','Consumidor Final',6789.0);
INSERT INTO "invoices" VALUES (555,'2019','3','14','Joseph Campos','2960 Sunny Day Drive','California','CUIT','27276235584','IVA Responsable Inscripto',1003.0);
INSERT INTO "invoices" VALUES (556,'2019','3','22','Terri Moore','4160 Lindale Avenue','California','CUIT','27119499564','IVA Responsable Inscripto',6897.0);
INSERT INTO "invoices" VALUES (557,'2019','3','22','David Martin','1218 Chestnut Street','Florida','CUIT','27258875214','IVA Responsable Inscripto',2319.0);
INSERT INTO "invoices" VALUES (558,'2019','3','26','Gene Feliciano','1345 Quarry Drive','Alabama','CUIT','27209140574','IVA Responsable Inscripto',5140.0);
INSERT INTO "invoices" VALUES (559,'2019','3','27','Charles Hammack','3710 Stockert Hollow Road','Washington','CUIT','27353463934','IVA Responsable Inscripto',4390.0);
INSERT INTO "invoices" VALUES (560,'2019','3','28','Justin Lane','4228 Hart Ridge Road','Michigan','CUIT','27239087324','IVA Responsable Inscripto',513.0);
INSERT INTO "invoices" VALUES (561,'2019','3','29','Reva Vaughan','4120 Breezewood Court','Kansas','CUIT','27209350754','IVA Responsable Inscripto',3015.0);
INSERT INTO "invoices" VALUES (562,'2019','4','3','Christine Marable','1267 Bridge Avenue','Louisiana','CUIT','27290981394','IVA Responsable Inscripto',2112.0);
INSERT INTO "invoices" VALUES (563,'2019','4','5','Sally Dock','4534 Post Avenue','Minnesota','CUIT','27239044714','IVA Responsable Inscripto',4544.0);
INSERT INTO "invoices" VALUES (564,'2019','4','11','Benjamin Dale','464 Norma Lane','Louisiana','CUIT','27300681464','IVA Responsable Inscripto',3705.0);
INSERT INTO "invoices" VALUES (565,'2019','4','15','Lauren Goldstein','2037 Doctors Drive','California','CUIT','27365472954','Consumidor Final',3819.0);
INSERT INTO "invoices" VALUES (566,'2019','4','16','Betty Waltrip','2057 Devils Hill Road','Mississippi','CUIT','27399724534','IVA Responsable Inscripto',2826.0);
INSERT INTO "invoices" VALUES (567,'2019','4','16','Evelyn Hermes','3675 Haymond Rocks Road','Oregon','CUIT','27150171964','Consumidor Final',415.0);
INSERT INTO "invoices" VALUES (568,'2019','4','16','Raymond Carrico','3742 Jerry Dove Drive','South Carolina','CUIT','27114138924','IVA Responsable Inscripto',2252.0);
INSERT INTO "invoices" VALUES (569,'2019','4','17','Dorcas Bosworth','1527 Parrish Avenue','California','CUIT','27253790524','IVA Responsable Inscripto',1831.0);
INSERT INTO "invoices" VALUES (570,'2019','4','17','Robert Boe','1685 Walkers Ridge Way','Illinois','DNI','13926376','Consumidor Final',4358.0);
INSERT INTO "invoices" VALUES (571,'2019','4','22','John Gardin','2723 Center Street','California','CUIT','27188092634','IVA Responsable Inscripto',2539.0);
INSERT INTO "invoices" VALUES (572,'2019','4','22','Terri Rodgers','847 Snider Street','Colorado','CUIT','27219599324','IVA Responsable Inscripto',2000.0);
INSERT INTO "invoices" VALUES (573,'2019','4','23','Brandy Kovacs','1718 Walkers Ridge Way','Illinois','CUIT','27126517524','Consumidor Final',6082.0);
INSERT INTO "invoices" VALUES (574,'2019','4','29','James Hill','1711 Roosevelt Wilson Lane','California','CUIT','27125299924','IVA Responsable Inscripto',965.0);
INSERT INTO "invoices" VALUES (575,'2019','4','29','Dorothy Best','4179 Byrd Lane','New Mexico','CUIT','27185793724','IVA Responsable Inscripto',2374.0);
INSERT INTO "invoices" VALUES (576,'2019','5','2','Paul Kerr','3800 Tenmile','Virginia','CUIT','27353741044','IVA Responsable Inscripto',6769.0);
INSERT INTO "invoices" VALUES (577,'2019','5','3','Rhonda Deady','1856 Whiteman Street','New Jersey','CUIT','27278361754','IVA Responsable Inscripto',3500.0);
INSERT INTO "invoices" VALUES (578,'2019','5','4','Savanna Schuler','1849 Adams Avenue','Maryland','CUIT','27348090404','Consumidor Final',4073.0);
INSERT INTO "invoices" VALUES (579,'2019','5','6','Jennifer Johnson','4276 Powder House Road','Florida','CUIT','27382028354','Consumidor Final',6112.0);
INSERT INTO "invoices" VALUES (580,'2019','5','6','Carolyn Thomas','677 Pearcy Avenue','Wisconsin','CUIT','27347517624','IVA Responsable Inscripto',1399.0);
INSERT INTO "invoices" VALUES (581,'2019','5','7','Annie Torpey','2804 Payne Street','Texas','CUIT','27186931694','IVA Responsable Inscripto',1362.0);
INSERT INTO "invoices" VALUES (582,'2019','5','9','Irma Davis','340 Coal Road','Pennsylvania','CUIT','27299205814','Consumidor Final',4816.0);
INSERT INTO "invoices" VALUES (583,'2019','5','10','Pamela Gamble','4153 Franklee Lane','Pennsylvania','CUIT','27306045614','Consumidor Final',1013.0);
INSERT INTO "invoices" VALUES (584,'2019','5','13','Berta Brock','1533 Midway Road','Arkansas','DNI','16671460','Consumidor Final',6309.0);
INSERT INTO "invoices" VALUES (585,'2019','5','13','Matthew White','2897 Ashmor Drive','Minnesota','CUIT','27261617404','IVA Responsable Inscripto',4067.0);
INSERT INTO "invoices" VALUES (586,'2019','5','13','Tony Bray','3928 Stoney Lonesome Road','Pennsylvania','CUIT','27145953044','IVA Responsable Inscripto',5617.0);
INSERT INTO "invoices" VALUES (587,'2019','5','14','William Bongiorno','3126 Cardinal Lane','Illinois','CUIT','27168781754','Consumidor Final',2585.0);
INSERT INTO "invoices" VALUES (588,'2019','5','16','Stanley Cook','2181 Chatham Way','Maryland','CUIT','27148703554','IVA Responsable Inscripto',3007.0);
INSERT INTO "invoices" VALUES (589,'2019','5','22','Mary Castro','4248 Lincoln Street','New Jersey','CUIT','27274992604','IVA Responsable Inscripto',6537.0);
INSERT INTO "invoices" VALUES (590,'2019','5','22','Kenneth Stanberry','4242 Joanne Lane','Massachusetts','DNI','21281818','Consumidor Final',6815.0);
INSERT INTO "invoices" VALUES (591,'2019','5','24','Billy Straley','3862 Sunburst Drive','Florida','CUIT','27311286944','IVA Responsable Inscripto',6055.0);
INSERT INTO "invoices" VALUES (592,'2019','5','30','Otto Queen','190 Heliport Loop','Indiana','CUIT','27228738714','IVA Responsable Inscripto',5918.0);
INSERT INTO "invoices" VALUES (593,'2019','6','6','Claretta Baker','4179 Wood Street','Louisiana','CUIT','27146898154','IVA Responsable Inscripto',415.0);
INSERT INTO "invoices" VALUES (594,'2019','6','7','Pansy Canady','2961 Cessna Drive','Indiana','CUIT','27352272424','IVA Responsable Inscripto',6871.0);
INSERT INTO "invoices" VALUES (595,'2019','6','11','Carolyn Shane','4135 Cessna Drive','Indiana','CUIT','27335894034','IVA Responsable Inscripto',4262.0);
INSERT INTO "invoices" VALUES (596,'2019','6','12','Kristen Connolly','1339 Cimmaron Road','California','CUIT','27291322034','IVA Responsable Inscripto',3353.0);
INSERT INTO "invoices" VALUES (597,'2019','6','12','Cheryl Russ','4114 Gorby Lane','Mississippi','CUIT','27356534734','IVA Responsable Inscripto',5588.0);
INSERT INTO "invoices" VALUES (598,'2019','6','13','Jason Seaton','4341 Liberty Street','Texas','CUIT','27117481174','IVA Responsable Inscripto',1921.0);
INSERT INTO "invoices" VALUES (599,'2019','6','18','Lance Guillermo','2495 Briarwood Drive','New Jersey','CUIT','27333186434','IVA Responsable Inscripto',4151.0);
INSERT INTO "invoices" VALUES (600,'2019','6','25','Scott Baur','3695 Heliport Loop','Indiana','CUIT','27229847194','IVA Responsable Inscripto',6895.0);
INSERT INTO "invoices" VALUES (601,'2019','6','25','Margie Miller','2723 Pinchelone Street','Virginia','CUIT','27301481144','IVA Responsable Inscripto',2293.0);
INSERT INTO "invoices" VALUES (602,'2019','6','27','Roger McMurray','4109 Parkway Drive','Arizona','DNI','10368975','Consumidor Final',6128.0);
INSERT INTO "invoices" VALUES (603,'2019','6','28','Edith Carpenter','4500 Retreat Avenue','Maine','DNI','35288222','Consumidor Final',3229.0);
INSERT INTO "invoices" VALUES (604,'2019','7','3','Marcy McKnight','2629 Friendship Lane','California','CUIT','27368030144','IVA Responsable Inscripto',6205.0);
INSERT INTO "invoices" VALUES (605,'2019','7','4','Annie Ferrante','1552 Musgrave Street','Georgia','DNI','21748250','Consumidor Final',3787.0);
INSERT INTO "invoices" VALUES (606,'2019','7','10','Larry Whitener','248 Masonic Drive','Montana','CUIT','27350477554','IVA Responsable Inscripto',972.0);
INSERT INTO "invoices" VALUES (607,'2019','7','10','Rosa Rosenbaum','2965 Ottis Street','Oklahoma','CUIT','27321713314','Cliente del Exterior',5336.0);
INSERT INTO "invoices" VALUES (608,'2019','7','11','Norman Silva','798 Swick Hill Street','Louisiana','CUIT','27203294714','IVA Responsable Inscripto',5477.0);
INSERT INTO "invoices" VALUES (609,'2019','7','12','Rebecca Williams','3245 Clarksburg Park Road','Arizona','CUIT','27369250044','IVA Responsable Inscripto',5327.0);
INSERT INTO "invoices" VALUES (610,'2019','7','16','Teresia Hofer','2650 Lewis Street','Illinois','DNI','19882993','Consumidor Final',5692.0);
INSERT INTO "invoices" VALUES (611,'2019','7','23','Minnie Behn','2685 Hill Street','Ohio','DNI','34565462','Consumidor Final',6981.0);
INSERT INTO "invoices" VALUES (612,'2019','7','23','Darla Jacobson','4386 Lake Road','New Jersey','CUIT','27299096594','IVA Responsable Inscripto',1972.0);
INSERT INTO "invoices" VALUES (613,'2019','7','24','Gaston Knight','412 Bobcat Drive','Michigan','CUIT','27147067944','IVA Responsable Inscripto',6399.0);
INSERT INTO "invoices" VALUES (614,'2019','7','24','Beulah Baumgarten','1578 Neville Street','Indiana','CUIT','27148473734','IVA Responsable Inscripto',6981.0);
INSERT INTO "invoices" VALUES (615,'2019','7','24','Brandy Tyson','564 Morris Street','Texas','CUIT','27168270584','IVA Responsable Inscripto',1210.0);
INSERT INTO "invoices" VALUES (616,'2019','7','25','Joe Jackson','3342 Sigley Road','Kansas','CUIT','27330133184','Consumidor Final',2187.0);
INSERT INTO "invoices" VALUES (617,'2019','7','25','Karen Arevalo','934 Timberbrook Lane','Colorado','CUIT','27386919314','IVA Responsable Inscripto',5435.0);
INSERT INTO "invoices" VALUES (618,'2019','7','31','Aaron Coleman','508 Shinn Avenue','Pennsylvania','CUIT','27227635254','IVA Responsable Inscripto',2823.0);
INSERT INTO "invoices" VALUES (619,'2019','7','31','Michele Straus','2122 Graystone Lakes','Georgia','CUIT','27274056464','IVA Responsable Inscripto',3931.0);
INSERT INTO "invoices" VALUES (620,'2019','8','1','Maria Bender','1818 Pleasant Hill Road','California','CUIT','27242253894','Consumidor Final',2072.0);
INSERT INTO "invoices" VALUES (621,'2019','8','2','Mayme Whitesides','3655 Ben Street','Michigan','CUIT','27203301764','IVA Responsable Inscripto',3762.0);
INSERT INTO "invoices" VALUES (622,'2019','8','5','Nicholas Hill','3418 Ash Street','Texas','CUIT','27145908004','IVA Responsable Inscripto',3669.0);
INSERT INTO "invoices" VALUES (623,'2019','8','6','Shirley Bunch','4737 Henry Ford Avenue','Oklahoma','CUIT','27336950004','IVA Responsable Inscripto',1150.0);
INSERT INTO "invoices" VALUES (624,'2019','8','7','Anthony Reed','2541 Rafe Lane','Mississippi','DNI','16487672','Consumidor Final',5807.0);
INSERT INTO "invoices" VALUES (625,'2019','8','7','Kelly Rodriguez','1778 Saint James Drive','Pennsylvania','CUIT','27101221754','IVA Responsable Inscripto',2589.0);
INSERT INTO "invoices" VALUES (626,'2019','8','13','Carmen Roberson','4188 Walnut Avenue','New Jersey','CUIT','27131939384','IVA Responsable Inscripto',5689.0);
INSERT INTO "invoices" VALUES (627,'2019','8','13','Ronald Biggerstaff','3878 Elk Street','California','CUIT','27153109514','IVA Responsable Inscripto',3032.0);
INSERT INTO "invoices" VALUES (628,'2019','8','14','Lorraine Dow','3439 Buckhannan Avenue','New York','CUIT','27130728224','Cliente del Exterior',1670.0);
INSERT INTO "invoices" VALUES (629,'2019','8','15','Paul Arreola','4053 Woodlawn Drive','Wisconsin','CUIT','27179176374','IVA Responsable Inscripto',2785.0);
INSERT INTO "invoices" VALUES (630,'2019','8','21','Leslie Fortune','1249 Richards Avenue','California','CUIT','27298775574','IVA Responsable Inscripto',2596.0);
INSERT INTO "invoices" VALUES (631,'2019','8','21','Candice Collins','3675 Clay Lick Road','Colorado','CUIT','27239887884','IVA Responsable Inscripto',734.0);
INSERT INTO "invoices" VALUES (632,'2019','8','27','Elizabeth Powell','1636 Romrog Way','Nebraska','CUIT','27227077194','IVA Responsable Inscripto',4600.0);
INSERT INTO "invoices" VALUES (633,'2019','8','28','Arnold Atkinson','4291 American Drive','New Jersey','CUIT','27124959704','IVA Responsable Inscripto',4336.0);
INSERT INTO "invoices" VALUES (634,'2019','9','5','Lou Hunt','1861 Edgewood Road','Arkansas','CUIT','27294494514','IVA Responsable Inscripto',3343.0);
INSERT INTO "invoices" VALUES (635,'2019','9','17','Terrie Smith','2455 Williams Mine Road','New Jersey','CUIT','27237579024','IVA Responsable Inscripto',1453.0);
INSERT INTO "invoices" VALUES (636,'2019','9','17','Monica Sanders','3903 Pringle Drive','Illinois','CUIT','27335373944','IVA Responsable Inscripto',3547.0);
INSERT INTO "invoices" VALUES (637,'2019','9','18','Thomas Sims','3990 Jewell Road','Minnesota','CUIT','27301660734','IVA Responsable Inscripto',6007.0);
INSERT INTO "invoices" VALUES (638,'2019','9','19','Linda Gonzalez','4562 Cantebury Drive','New York','CUIT','27299734884','IVA Responsable Inscripto',4862.0);
INSERT INTO "invoices" VALUES (639,'2019','9','20','Ruth Platt','981 Flanigan Oaks Drive','Maryland','CUIT','27341657744','IVA Responsable Inscripto',6521.0);
INSERT INTO "invoices" VALUES (640,'2019','9','20','Gudrun McLaughlin','1200 Simpson Street','Illinois','CUIT','27123518724','IVA Responsable Inscripto',578.0);
INSERT INTO "invoices" VALUES (641,'2019','9','21','Adam Wages','2353 Briercliff Road','New York','CUIT','27246955214','IVA Responsable Inscripto',2469.0);
INSERT INTO "invoices" VALUES (642,'2019','9','30','Caroline Brown','1478 Reel Avenue','New Mexico','CUIT','27156815554','IVA Responsable Inscripto',5675.0);
INSERT INTO "invoices" VALUES (643,'2019','10','1','Marie Rustin','808 Green Gate Lane','Maryland','CUIT','27397971004','IVA Responsable Inscripto',4528.0);
INSERT INTO "invoices" VALUES (644,'2019','10','2','Dinah Johnston','972 Raoul Wallenberg Place','Connecticut','CUIT','27359006504','Consumidor Final',6025.0);
INSERT INTO "invoices" VALUES (645,'2019','10','3','Joshua Jones','1065 Sheila Lane','Nevada','CUIT','27297740354','IVA Sujeto Exento',2460.0);
INSERT INTO "invoices" VALUES (646,'2019','10','3','Thomas Pollard','4181 May Street','Kentucky','DNI','32396088','Consumidor Final',1352.0);
INSERT INTO "invoices" VALUES (647,'2019','10','4','Sadie Williams','1909 Angus Road','New York','','24064426','Cliente del Exterior',1816.0);
INSERT INTO "invoices" VALUES (648,'2019','10','7','Olivia Lee','1663 Hinkle Deegan Lake Road','Kentucky','CUIT','27116395154','IVA Responsable Inscripto',884.0);
INSERT INTO "invoices" VALUES (649,'2019','10','7','Steven Brott','4506 Kembery Drive','Illinois','CUIT','27369167324','IVA Sujeto Exento',404.0);
INSERT INTO "invoices" VALUES (650,'2019','10','8','Raymond Corriveau','2359 Essex Court','Vermont','CUIT','27105566544','IVA Responsable Inscripto',1032.0);
INSERT INTO "invoices" VALUES (651,'2019','10','9','Erik White','2775 Clarksburg Park Road','Arizona','DNI','19798505','Consumidor Final',3526.0);
INSERT INTO "invoices" VALUES (652,'2019','10','10','Jessica Zander','4270 Geraldine Lane','New York','DNI','39795558','Consumidor Final',5817.0);
INSERT INTO "invoices" VALUES (653,'2019','10','10','Juana Hawks','3894 Eva Pearl Street','Louisiana','DNI','18857629','Consumidor Final',3952.0);
INSERT INTO "invoices" VALUES (654,'2019','10','11','Anna Ryan','1356 Skips Lane','Arizona','CUIT','27340480064','IVA Responsable Inscripto',1463.0);
INSERT INTO "invoices" VALUES (655,'2019','10','17','Jo Reid','1893 Christie Way','Massachusetts','CUIT','27241671934','IVA Sujeto Exento',5328.0);
INSERT INTO "invoices" VALUES (656,'2019','10','17','Michael Sherlock','1874 Coulter Lane','Virginia','CUIT','27366370694','Consumidor Final',1301.0);
INSERT INTO "invoices" VALUES (657,'2019','10','17','Jesse Wilson','695 Cardinal Lane','Ohio','DNI','30331528','Consumidor Final',3474.0);
INSERT INTO "invoices" VALUES (658,'2019','10','17','Marcia Brown','1427 Jefferson Street','Virginia','CUIT','27255478004','IVA Responsable Inscripto',6027.0);
INSERT INTO "invoices" VALUES (659,'2019','10','28','Karla Garcia','4512 Ethels Lane','Florida','CUIT','27383545824','IVA Responsable Inscripto',2517.0);
INSERT INTO "invoices" VALUES (660,'2019','10','29','Berta McGinley','2647 Yorkie Lane','Georgia','CUIT','27353511734','Consumidor Final',3380.0);
INSERT INTO "invoices" VALUES (661,'2019','10','31','Carol Wynn','2064 Hall Valley Drive','West Virginia','CUIT','27364022354','IVA Responsable Inscripto',1244.0);
INSERT INTO "invoices" VALUES (662,'2019','11','1','Karen Smith','2282 Hannah Street','North Carolina','DNI','23447740','Consumidor Final',5114.0);
INSERT INTO "invoices" VALUES (663,'2019','11','7','Linda Phillips','23 Colony Street','Connecticut','CUIT','27157653454','IVA Responsable Inscripto',1447.0);
INSERT INTO "invoices" VALUES (664,'2019','11','8','Nathan Purington','2207 Calvin Street','Maryland','CUIT','27139369234','IVA Responsable Inscripto',1871.0);
INSERT INTO "invoices" VALUES (665,'2019','11','12','Calvin Perez','3979 Central Avenue','New Jersey','Pasaporte','26983747','Cliente del Exterior',701.0);
INSERT INTO "invoices" VALUES (666,'2019','11','12','Richard Heller','2232 Ashton Lane','Texas','CUIT','27216540984','IVA Responsable Inscripto',1947.0);
INSERT INTO "invoices" VALUES (667,'2019','11','12','Kathy Worrall','1920 Rosemont Avenue','Florida','CUIT','27211752814','IVA Responsable Inscripto',1537.0);
INSERT INTO "invoices" VALUES (668,'2019','11','14','John Wittig','401 Pinnickinick Street','Washington','CUIT','27103894804','IVA Responsable Inscripto',1610.0);
INSERT INTO "invoices" VALUES (669,'2019','11','20','Geraldine Ward','3414 Hidden Valley Road','Pennsylvania','DNI','12208276','Consumidor Final',1095.0);
INSERT INTO "invoices" VALUES (670,'2019','11','20','Cheryl Otis','309 Jones Avenue','North Carolina','CUIT','27165319544','Consumidor Final',763.0);
INSERT INTO "invoices" VALUES (671,'2019','11','21','Robert Francis','1342 Cherry Ridge Drive','Michigan','CUIT','27114568934','IVA Responsable Inscripto',6497.0);
INSERT INTO "invoices" VALUES (672,'2019','11','22','Byron Paxson','927 Finwood Road','New Jersey','DNI','20604097','Consumidor Final',2589.0);
INSERT INTO "invoices" VALUES (673,'2019','11','25','Peggy Williams','2129 Tail Ends Road','Wisconsin','CUIT','27146452084','Consumidor Final',1982.0);
INSERT INTO "invoices" VALUES (674,'2019','11','26','Tasha Corbett','4015 Broadcast Drive','North Carolina','CUIT','27196067044','IVA Responsable Inscripto',3730.0);
INSERT INTO "invoices" VALUES (675,'2019','12','3','Derrick Macmillan','2723 Kembery Drive','Illinois','CUIT','27192951694','IVA Responsable Inscripto',6749.0);
INSERT INTO "invoices" VALUES (676,'2019','12','3','Russell Rogers','184 Hershell Hollow Road','Washington','CUIT','27135213364','IVA Responsable Inscripto',4791.0);
INSERT INTO "invoices" VALUES (677,'2019','12','10','Robert Russell','2859 Rogers Street','Ohio','CUIT','27135823924','IVA Responsable Inscripto',1467.0);
INSERT INTO "invoices" VALUES (678,'2019','12','11','Harold Farmer','2194 Aspen Court','Massachusetts','CUIT','27229846214','IVA Responsable Inscripto',2316.0);
INSERT INTO "invoices" VALUES (679,'2019','12','11','Evelyn Lockard','2410 Lamberts Branch Road','Florida','CUIT','27345185904','IVA Responsable Inscripto',2256.0);
INSERT INTO "invoices" VALUES (680,'2019','12','11','Ignacio Lewis','1599 Bell Street','New York','CUIT','27362149614','Consumidor Final',5069.0);
INSERT INTO "invoices" VALUES (681,'2019','12','11','Albert McNeill','175 Plainfield Avenue','New York','CUIT','27263566924','Consumidor Final',1043.0);
INSERT INTO "invoices" VALUES (682,'2019','12','11','Kimberly Huckaby','2454 Cabell Avenue','Virginia','CUIT','27162159964','Consumidor Final',2728.0);
INSERT INTO "invoices" VALUES (683,'2019','12','11','Erna Clark','173 Clair Street','Texas','CUIT','27256666234','IVA Responsable Inscripto',6194.0);
INSERT INTO "invoices" VALUES (684,'2019','12','12','Byron Cannella','4640 Fancher Drive','Texas','CUIT','27394708734','IVA Responsable Inscripto',6666.0);
INSERT INTO "invoices" VALUES (685,'2019','12','13','Verna Kaufman','3041 Holden Street','California','CUIT','27275589664','Consumidor Final',2632.0);
INSERT INTO "invoices" VALUES (686,'2019','12','16','William Held','4560 Wood Street','Louisiana','CUIT','27290129964','Consumidor Final',590.0);
INSERT INTO "invoices" VALUES (687,'2019','12','17','Stacey Pruett','4728 Jessie Street','Ohio','CUIT','27382092824','IVA Responsable Inscripto',2469.0);
INSERT INTO "invoices" VALUES (688,'2019','12','18','Steve Williams','2464 Tipple Road','Pennsylvania','DNI','15405976','Consumidor Final',1236.0);
INSERT INTO "invoices" VALUES (689,'2019','12','19','Cynthia Powell','4788 Henry Ford Avenue','Oklahoma','CUIT','27294196854','Consumidor Final',3951.0);
INSERT INTO "invoices" VALUES (690,'2019','12','20','Earnest Kalb','4892 Nancy Street','North Carolina','CUIT','27191515504','IVA Responsable Inscripto',904.0);
INSERT INTO "invoices" VALUES (691,'2019','12','22','Tommie Lee','3597 Baker Avenue','Texas','CUIT','27242908774','IVA Responsable Inscripto',1268.0);
INSERT INTO "invoices" VALUES (692,'2019','12','23','Thomas Hall','4166 Creekside Lane','California','DNI','23952623','Consumidor Final',1631.0);
INSERT INTO "invoices" VALUES (693,'2019','12','24','Heidi Palacios','2151 Ottis Street','Oklahoma','CUIT','27135338994','IVA Responsable Inscripto',5584.0);
INSERT INTO "invoices" VALUES (694,'2019','12','25','Karen Lively','344 Emily Renzelli Boulevard','California','CUIT','27167358514','IVA Responsable Inscripto',4897.0);
INSERT INTO "invoices" VALUES (695,'2019','12','26','Ann Jones','3395 John Daniel Drive','Missouri','CUIT','27170349084','IVA Responsable Inscripto',3892.0);
INSERT INTO "invoices" VALUES (1,'2016','4','3','Willie Wheless','3152 Twin Willow Lane','North Carolina','CUIT','27293406914','Consumidor Final',1180.0);
INSERT INTO "invoices" VALUES (3,'2016','4','4','Alexander Jarrett','3530 Burke Street','Massachusetts','CUIT','27175114314','Consumidor Final',1042.0);
INSERT INTO "invoices" VALUES (4,'2016','4','4','Bobby Rogers','1879 Cabell Avenue','Virginia','CUIT','27131771464','Consumidor Final',6462.0);
INSERT INTO "invoices" VALUES (5,'2016','4','7','Nora Tate','159 Saint James Drive','Pennsylvania','CUIT','27382095744','Consumidor Final',1221.0);
INSERT INTO "invoices" VALUES (6,'2016','4','14','William Coley','3393 Lawman Avenue','Virginia','CUIT','27253394654','Consumidor Final',3609.0);
INSERT INTO "invoices" VALUES (7,'2016','4','14','Jose Chavarria','1050 Richison Drive','Montana','CUIT','27387523134','IVA Responsable Inscripto',855.0);
INSERT INTO "invoices" VALUES (8,'2016','4','15','Richard Montemayor','1478 Bailey Drive','Iowa','CUIT','27118102524','IVA Responsable Inscripto',4392.0);
INSERT INTO "invoices" VALUES (9,'2016','4','15','Joseph Turner','3839 Cecil Street','Illinois','CUIT','27146986144','IVA Responsable Inscripto',729.0);
INSERT INTO "invoices" VALUES (10,'2016','4','20','Mark Smith','804 Steve Hunt Road','Florida','CUIT','27283276124','IVA Responsable Inscripto',1539.0);
INSERT INTO "invoices" VALUES (11,'2016','4','20','Edward Rick','1805 Bird Street','New Mexico','CUIT','27135217394','IVA Responsable Inscripto',2992.0);
INSERT INTO "invoices" VALUES (12,'2016','4','21','Alma Allred','2801 Chatham Way','Maryland','CUIT','27107036694','Consumidor Final',5580.0);
INSERT INTO "invoices" VALUES (13,'2016','4','21','Celeste Rogers','676 Burwell Heights Road','Texas','CUIT','27127294874','Consumidor Final',3263.0);
INSERT INTO "invoices" VALUES (14,'2016','4','25','Miriam Stanley','2661 Mount Tabor','New York','CUIT','27319594084','IVA Responsable Inscripto',2082.0);
INSERT INTO "invoices" VALUES (15,'2016','4','26','Christopher Utz','396 Cheshire Road','Connecticut','CUIT','27101740734','IVA Responsable Inscripto',5717.0);
INSERT INTO "invoices" VALUES (17,'2016','4','29','John Beckham','1089 Joyce Street','North Carolina','CUIT','27175722184','IVA Responsable Inscripto',703.0);
INSERT INTO "invoices" VALUES (18,'2016','4','29','Terry Raab','4306 Still Street','Ohio','CUIT','27311534374','Consumidor Final',1658.0);
INSERT INTO "invoices" VALUES (19,'2016','5','3','Mary Martin','4205 Lucy Lane','Indiana','CUIT','27193214914','IVA Responsable Inscripto',5764.0);
INSERT INTO "invoices" VALUES (20,'2016','5','9','Ian Miller','1935 Creekside Lane','California','CUIT','27387586544','IVA Responsable Inscripto',4101.0);
INSERT INTO "invoices" VALUES (21,'2016','5','9','Gregory Levine','4555 Karen Lane','Kentucky','CUIT','27162363424','Consumidor Final',519.0);
INSERT INTO "invoices" VALUES (22,'2016','5','11','Teresa Nunez','880 Locust View Drive','California','CUIT','27267792144','IVA Responsable Inscripto',6686.0);
INSERT INTO "invoices" VALUES (23,'2016','5','13','John Utsey','3232 Lunetta Street','Florida','CUIT','27231230974','IVA Responsable Inscripto',6263.0);
INSERT INTO "invoices" VALUES (24,'2016','5','15','Darryl Le','3187 Sheila Lane','Nevada','CUIT','27335876024','IVA Responsable Inscripto',445.0);
INSERT INTO "invoices" VALUES (25,'2016','5','16','Tammy Miller','1585 Brooklyn Street','Oregon','CUIT','27188464034','IVA Responsable Inscripto',4178.0);
INSERT INTO "invoices" VALUES (26,'2016','5','17','Gabrielle France','1588 Tenmile Road','Massachusetts','CUIT','27396202424','Consumidor Final',1204.0);
INSERT INTO "invoices" VALUES (27,'2016','5','18','Yon Fitzpatrick','2110 Beeghley Street','Texas','CUIT','27348700404','Consumidor Final',3502.0);
INSERT INTO "invoices" VALUES (29,'2016','5','23','Dwight Reynolds','4112 Leo Street','Colorado','CUIT','27309366064','Consumidor Final',607.0);
INSERT INTO "invoices" VALUES (30,'2016','5','23','Martha Paquin','3787 Briarwood Road','Missouri','CUIT','27114466244','IVA Responsable Inscripto',1115.0);
INSERT INTO "invoices" VALUES (31,'2016','6','1','Thomas Pillsbury','726 Mutton Town Road','Washington','DNI','22225814','Consumidor Final',944.0);
INSERT INTO "invoices" VALUES (32,'2016','6','8','Margaret Torres','2143 Spring Avenue','Pennsylvania','CUIT','27279633984','IVA Responsable Inscripto',1960.0);
INSERT INTO "invoices" VALUES (33,'2016','6','8','Leona Lopez','2169 Courtright Street','North Dakota','CUIT','27164884304','IVA Responsable Inscripto',5634.0);
INSERT INTO "invoices" VALUES (34,'2016','6','8','Manuel Martin','1771 George Avenue','Alabama','CUIT','27341938044','IVA Responsable Inscripto',3435.0);
INSERT INTO "invoices" VALUES (35,'2016','6','8','Billy Reed','196 Ripple Street','Michigan','CUIT','27172899364','IVA Responsable Inscripto',3960.0);
INSERT INTO "invoices" VALUES (36,'2016','6','8','Janet Smith','3668 Hamill Avenue','California','CUIT','27251113824','IVA Responsable Inscripto',6630.0);
INSERT INTO "invoices" VALUES (37,'2016','6','8','Diana Timothy','3906 Oliver Street','Texas','CUIT','27191082934','IVA Responsable Inscripto',3731.0);
INSERT INTO "invoices" VALUES (38,'2016','6','8','Esther McCollum','1029 Buckhannan Avenue','New York','CUIT','27198235654','IVA Responsable Inscripto',2932.0);
INSERT INTO "invoices" VALUES (39,'2016','6','8','Linda Holland','854 Richland Avenue','Texas','CUIT','27202889354','IVA Responsable Inscripto',3320.0);
INSERT INTO "invoices" VALUES (40,'2016','6','15','Jean Zayas','952 South Street','Virginia','CUIT','27332101684','Consumidor Final',822.0);
INSERT INTO "invoices" VALUES (42,'2016','6','21','Marlene Chapman','480 Despard Street','Georgia','DNI','20967855','Consumidor Final',6152.0);
INSERT INTO "invoices" VALUES (43,'2016','6','21','Terry Burch','4719 Timberbrook Lane','Colorado','CUIT','27117681964','IVA Responsable Inscripto',6536.0);
INSERT INTO "invoices" VALUES (44,'2016','6','28','Janet Pauls','4551 Grey Fox Farm Road','Texas','DNI','34647949','Consumidor Final',4635.0);
INSERT INTO "invoices" VALUES (45,'2016','6','28','Annie Cotton','3147 Graystone Lakes','Georgia','CUIT','27389771114','IVA Responsable Inscripto',2383.0);
INSERT INTO "invoices" VALUES (46,'2016','6','28','Cynthia Merino','3220 Kembery Drive','Illinois','CUIT','27214063044','IVA Responsable Inscripto',3618.0);
INSERT INTO "invoices" VALUES (47,'2016','6','28','Cindy Coffee','1896 North Street','Virginia','CUIT','27341091334','IVA Responsable Inscripto',4839.0);
INSERT INTO "invoices" VALUES (48,'2016','6','28','Curtis Ricci','3811 Elliott Street','New Hampshire','CUIT','27237146804','IVA Responsable Inscripto',1860.0);
INSERT INTO "invoices" VALUES (49,'2016','7','1','Jessie Johnson','3366 Sycamore Road','Oregon','CUIT','27205599464','Consumidor Final',5963.0);
INSERT INTO "invoices" VALUES (50,'2016','7','5','William Torres','2669 Coleman Avenue','California','CUIT','27381500834','Consumidor Final',410.0);
INSERT INTO "invoices" VALUES (51,'2016','7','12','Benjamin Roper','2371 Petunia Way','Alabama','Pasaporte','23040611','Cliente del Exterior',2934.0);
INSERT INTO "invoices" VALUES (52,'2016','7','15','Frances Owens','4525 Jehovah Drive','Virginia','CUIT','27276386374','IVA Responsable Inscripto',4455.0);
INSERT INTO "invoices" VALUES (53,'2016','7','21','Sean Ferrell','4256 Leverton Cove Road','Massachusetts','DNI','18977544','Consumidor Final',1204.0);
INSERT INTO "invoices" VALUES (54,'2016','7','26','Doris Andrews','4489 Clay Street','Indiana','CUIT','27273553214','IVA Responsable Inscripto',3573.0);
INSERT INTO "invoices" VALUES (55,'2016','7','26','Randi Brown','1991 Hart Ridge Road','Michigan','CUIT','27199065904','IVA Responsable Inscripto',4671.0);
INSERT INTO "invoices" VALUES (56,'2016','7','26','Vanesa Durham','1205 Poe Lane','Kansas','CUIT','27229134434','IVA Responsable Inscripto',3558.0);
INSERT INTO "invoices" VALUES (57,'2016','7','27','Joann Gaynor','4678 Turkey Pen Lane','Alabama','CUIT','27206830224','IVA Responsable Inscripto',6183.0);
INSERT INTO "invoices" VALUES (58,'2016','8','1','Mayra Webster','4490 Mercer Street','Wisconsin','CUIT','27283250174','IVA Responsable Inscripto',2926.0);
INSERT INTO "invoices" VALUES (59,'2016','8','1','Joseph Vincent','4377 Pretty View Lane','California','CUIT','27138479624','IVA Responsable Inscripto',6860.0);
INSERT INTO "invoices" VALUES (60,'2016','8','1','Paul Bell','3928 Bird Street','New Mexico','CUIT','27102015454','IVA Responsable Inscripto',4082.0);
INSERT INTO "invoices" VALUES (61,'2016','8','1','Louise Luna','2270 Tavern Place','West Virginia','CUIT','27184818594','IVA Responsable Inscripto',629.0);
INSERT INTO "invoices" VALUES (62,'2016','8','1','Jimmie Burford','2794 Briarhill Lane','Ohio','CUIT','27313937944','IVA Responsable Inscripto',4579.0);
INSERT INTO "invoices" VALUES (63,'2016','8','1','Brenda Norris','2749 Desert Broom Court','New Jersey','CUIT','27219254514','IVA Responsable Inscripto',1455.0);
INSERT INTO "invoices" VALUES (64,'2016','8','1','Blair Davis','3793 Thrash Trail','Texas','CUIT','27221770244','IVA Responsable Inscripto',6908.0);
INSERT INTO "invoices" VALUES (65,'2016','8','1','Christopher Kuhns','3918 Brookview Drive','Texas','CUIT','27363953254','IVA Responsable Inscripto',1216.0);
INSERT INTO "invoices" VALUES (66,'2016','8','1','Jamie Warren','4011 Ward Road','New York','CUIT','27285816604','IVA Responsable Inscripto',4197.0);
INSERT INTO "invoices" VALUES (67,'2016','8','2','Karin Lenz','3022 Duffy Street','Indiana','CUIT','27238409714','IVA Responsable Inscripto',5217.0);
INSERT INTO "invoices" VALUES (68,'2016','8','4','Richard Farnsworth','1561 Steve Hunt Road','Florida','DNI','14957785','Consumidor Final',3574.0);
INSERT INTO "invoices" VALUES (70,'2016','8','7','Harvey Smith','383 Wakefield Street','Pennsylvania','DNI','13660261','Consumidor Final',2521.0);
INSERT INTO "invoices" VALUES (71,'2016','8','8','Timothy Porter','818 Ash Street','Texas','CUIT','27337685134','IVA Responsable Inscripto',2626.0);
INSERT INTO "invoices" VALUES (72,'2016','8','18','Jesus Meyer','4160 Alexander Drive','Texas','CUIT','27202598444','IVA Responsable Inscripto',6659.0);
INSERT INTO "invoices" VALUES (73,'2016','8','19','Amber James','3586 Liberty Avenue','California','CUIT','27300269514','IVA Responsable Inscripto',4315.0);
INSERT INTO "invoices" VALUES (74,'2016','8','19','Annette Barnes','851 Bubby Drive','Texas','CUIT','27280567474','IVA Responsable Inscripto',5326.0);
INSERT INTO "invoices" VALUES (75,'2016','8','19','James Odom','3327 Fire Access Road','North Carolina','CUIT','27167765144','IVA Responsable Inscripto',2780.0);
INSERT INTO "invoices" VALUES (76,'2016','8','22','Hazel Griffin','3854 Green Street','Tennessee','CUIT','27284611734','IVA Responsable Inscripto',6838.0);
INSERT INTO "invoices" VALUES (77,'2016','8','29','William Letourneau','4522 Pritchard Court','Minnesota','CUIT','27322138444','Consumidor Final',5584.0);
INSERT INTO "invoices" VALUES (78,'2016','8','30','Christopher Vann','770 Bell Street','Texas','CUIT','27362437674','IVA Responsable Inscripto',1479.0);
INSERT INTO "invoices" VALUES (79,'2016','9','5','Richard Cooper','1197 Aviation Way','California','CUIT','27128656534','IVA Responsable Inscripto',2996.0);
INSERT INTO "invoices" VALUES (80,'2016','9','7','Suzanne Huerta','443 Upland Avenue','Ohio','CUIT','27184694334','IVA Responsable Inscripto',6373.0);
INSERT INTO "invoices" VALUES (81,'2016','9','7','Leslie Brand','3393 Camden Place','South Carolina','CUIT','27263820404','IVA Responsable Inscripto',1527.0);
INSERT INTO "invoices" VALUES (82,'2016','9','7','Alison Taft','1680 Oliverio Drive','Kansas','CUIT','27355165074','IVA Responsable Inscripto',4362.0);
INSERT INTO "invoices" VALUES (83,'2016','9','7','Dennis Caldwell','3838 Austin Avenue','Georgia','CUIT','27134653264','IVA Responsable Inscripto',4313.0);
INSERT INTO "invoices" VALUES (84,'2016','9','7','Linda Conroy','3932 Villa Drive','Indiana','CUIT','27351027234','IVA Responsable Inscripto',6757.0);
INSERT INTO "invoices" VALUES (85,'2016','9','7','Marcia Fox','1261 Kessla Way','South Carolina','CUIT','27150898314','IVA Responsable Inscripto',646.0);
INSERT INTO "invoices" VALUES (86,'2016','9','8','Michelle Kennedy','4351 Colony Street','Connecticut','CUIT','27318157464','IVA Responsable Inscripto',5856.0);
INSERT INTO "invoices" VALUES (87,'2016','9','8','Peggy Meeks','4017 Better Street','Kansas','CUIT','27172980294','IVA Responsable Inscripto',3292.0);
INSERT INTO "invoices" VALUES (88,'2016','9','9','Alfred Madden','3505 Hidden Pond Road','Tennessee','CUIT','27190892594','IVA Responsable Inscripto',6765.0);
INSERT INTO "invoices" VALUES (90,'2016','9','13','Mark Wages','2453 Bee Street','Michigan','CUIT','27149829164','IVA Sujeto Exento',6357.0);
INSERT INTO "invoices" VALUES (91,'2016','9','13','David Ahearn','4950 Pearlman Avenue','Massachusetts','CUIT','27295526114','IVA Responsable Inscripto',4548.0);
INSERT INTO "invoices" VALUES (92,'2016','9','20','Christine Stewart','3245 Rafe Lane','Mississippi','CUIT','27151897104','IVA Responsable Inscripto',5383.0);
INSERT INTO "invoices" VALUES (93,'2016','9','20','April Coe','864 Berkshire Circle','Tennessee','CUIT','27302577254','IVA Responsable Inscripto',6970.0);
INSERT INTO "invoices" VALUES (94,'2016','9','20','Mara Wofford','3777 Holt Street','Florida','CUIT','27384957844','IVA Responsable Inscripto',2691.0);
INSERT INTO "invoices" VALUES (96,'2016','9','26','Ellen Hudson','1226 Marshall Street','Maryland','CUIT','27262675804','IVA Responsable Inscripto',1243.0);
INSERT INTO "invoices" VALUES (97,'2016','9','27','Justin Celaya','931 Stratford Drive','Hawaii','CUIT','27227016994','IVA Responsable Inscripto',454.0);
INSERT INTO "invoices" VALUES (98,'2016','9','27','Sheila Jackson','2186 Linden Avenue','Florida','CUIT','27105485164','IVA Responsable Inscripto',1233.0);
INSERT INTO "invoices" VALUES (99,'2016','9','27','Star Noah','2409 Ella Street','California','CUIT','27288173444','IVA Responsable Inscripto',4883.0);
INSERT INTO "invoices" VALUES (100,'2016','9','27','James Walsh','1785 Doe Meadow Drive','Maryland','CUIT','27359055164','IVA Responsable Inscripto',915.0);
INSERT INTO "invoices" VALUES (101,'2016','9','27','Raul Colon','2072 Ritter Street','Alabama','CUIT','27387873054','IVA Responsable Inscripto',6996.0);
INSERT INTO "invoices" VALUES (104,'2016','9','30','Gay Chung','4707 Gerald L. Bates Drive','Massachusetts','CUIT','27144339804','Consumidor Final',3864.0);
INSERT INTO "invoices" VALUES (105,'2016','10','3','Amy Woodall','1033 George Street','Florida','CUIT','27389305684','IVA Responsable Inscripto',2553.0);
INSERT INTO "invoices" VALUES (106,'2016','10','3','Gary Wainwright','1162 Losh Lane','Pennsylvania','CUIT','27289518954','IVA Responsable Inscripto',2872.0);
INSERT INTO "invoices" VALUES (107,'2016','10','6','Michael James','3096 Cabell Avenue','Virginia','CUIT','27207013124','IVA Responsable Inscripto',2442.0);
INSERT INTO "invoices" VALUES (108,'2016','10','6','Francis Greenwood','4313 Hannah Street','North Carolina','CUIT','27219465654','IVA Responsable Inscripto',1886.0);
INSERT INTO "invoices" VALUES (110,'2016','10','11','Gloria Morales','3020 Roosevelt Wilson Lane','California','CUIT','27166873354','IVA Responsable Inscripto',3608.0);
INSERT INTO "invoices" VALUES (111,'2016','10','11','Mark Kennedy','4754 Chenoweth Drive','Tennessee','CUIT','27213554564','IVA Responsable Inscripto',6081.0);
INSERT INTO "invoices" VALUES (112,'2016','10','17','Stephan Karlson','240 Traders Alley','Missouri','CUIT','27151823824','IVA Responsable Inscripto',3201.0);
INSERT INTO "invoices" VALUES (113,'2016','10','17','Mark White','4546 Butternut Lane','Illinois','CUIT','27295826934','IVA Responsable Inscripto',5275.0);
INSERT INTO "invoices" VALUES (114,'2016','10','17','Corinne Calderon','131 Edington Drive','Georgia','CUIT','27280995044','IVA Responsable Inscripto',1847.0);
INSERT INTO "invoices" VALUES (115,'2016','10','17','Charles Acosta','240 Lyon Avenue','Massachusetts','CUIT','27390119864','IVA Responsable Inscripto',6909.0);
INSERT INTO "invoices" VALUES (116,'2016','10','19','Frank Cogburn','4136 Maple Lane','Alabama','CUIT','27395898654','IVA Responsable Inscripto',4207.0);
INSERT INTO "invoices" VALUES (117,'2016','10','20','Celeste Acres','4537 Fort Street','Washington','CUIT','27294429764','IVA Responsable Inscripto',3020.0);
INSERT INTO "invoices" VALUES (118,'2016','10','21','Jennifer Spence','4347 Conference Center Way','Pennsylvania','CUIT','27103397804','IVA Responsable Inscripto',1437.0);
INSERT INTO "invoices" VALUES (119,'2016','10','25','Robert Lis','3443 James Avenue','Kansas','CUIT','27178042064','IVA Responsable Inscripto',3839.0);
INSERT INTO "invoices" VALUES (120,'2016','10','25','Brent Hart','2855 Stratford Drive','Hawaii','CUIT','27101118214','IVA Responsable Inscripto',2035.0);
INSERT INTO "invoices" VALUES (121,'2016','10','26','Scott McNair','619 Traders Alley','Missouri','CUIT','27198343734','IVA Responsable Inscripto',1475.0);
INSERT INTO "invoices" VALUES (122,'2016','10','26','Melanie Marshall','4845 Prospect Valley Road','California','CUIT','27111790484','IVA Responsable Inscripto',1568.0);
INSERT INTO "invoices" VALUES (123,'2016','11','3','Ellis Thomas','1779 Johnstown Road','Illinois','CUIT','27290092814','IVA Responsable Inscripto',4854.0);
INSERT INTO "invoices" VALUES (124,'2016','11','7','Monica Rogers','2450 White Oak Drive','Missouri','CUIT','27374790894','IVA Responsable Inscripto',4789.0);
INSERT INTO "invoices" VALUES (125,'2016','11','7','Carolina Davis','2976 Wood Street','Michigan','CUIT','27148818704','IVA Responsable Inscripto',1457.0);
INSERT INTO "invoices" VALUES (127,'2016','11','8','Tera Espino','2226 Hood Avenue','California','CUIT','27123225334','IVA Responsable Inscripto',2021.0);
INSERT INTO "invoices" VALUES (128,'2016','11','8','Ernesto Riley','222 Collins Avenue','Ohio','CUIT','27100568644','IVA Responsable Inscripto',5850.0);
INSERT INTO "invoices" VALUES (129,'2016','11','8','Victor Bailey','238 Terra Street','Washington','CUIT','27241300704','IVA Responsable Inscripto',4005.0);
INSERT INTO "invoices" VALUES (130,'2016','11','8','Marsha Russ','198 Kembery Drive','Illinois','CUIT','27381741654','IVA Responsable Inscripto',3807.0);
INSERT INTO "invoices" VALUES (131,'2016','11','8','John Leslie','4614 Colony Street','Connecticut','CUIT','27272793994','IVA Responsable Inscripto',5170.0);
INSERT INTO "invoices" VALUES (132,'2016','11','15','Barbara Vila','4484 Coal Street','Pennsylvania','CUIT','27336296294','IVA Responsable Inscripto',704.0);
INSERT INTO "invoices" VALUES (133,'2016','11','16','Benjamin Griggs','2649 Romines Mill Road','Texas','CUIT','27162816894','IVA Responsable Inscripto',420.0);
INSERT INTO "invoices" VALUES (135,'2016','11','17','Christopher Brewster','671 Gordon Street','California','CUIT','27218067214','IVA Responsable Inscripto',3855.0);
INSERT INTO "invoices" VALUES (136,'2016','11','17','Yvone Colon','3885 Havanna Street','North Carolina','CUIT','27224051024','IVA Responsable Inscripto',630.0);
INSERT INTO "invoices" VALUES (137,'2016','11','17','Robert Grandy','1477 Franklin Street','Alabama','CUIT','27236832014','IVA Responsable Inscripto',3642.0);
INSERT INTO "invoices" VALUES (138,'2016','11','17','Charles Strain','3786 Lighthouse Drive','Missouri','CUIT','27236020184','IVA Responsable Inscripto',1778.0);
INSERT INTO "invoices" VALUES (139,'2016','11','19','Henry Kelly','2630 Bird Street','New Mexico','CUIT','27366028944','IVA Responsable Inscripto',772.0);
INSERT INTO "invoices" VALUES (140,'2016','11','21','Sammie Lincoln','2788 Raver Croft Drive','Tennessee','CUIT','27308036794','IVA Responsable Inscripto',3633.0);
INSERT INTO "invoices" VALUES (141,'2016','11','22','Marguerite Clark','3945 Hide A Way Road','Florida','CUIT','27183539024','IVA Responsable Inscripto',5057.0);
INSERT INTO "invoices" VALUES (142,'2016','11','22','Luke Osborne','1373 Sugarfoot Lane','Indiana','CUIT','27209593694','IVA Responsable Inscripto',2267.0);
INSERT INTO "invoices" VALUES (143,'2016','11','24','Douglas Joyce','3310 Berry Street','Colorado','CUIT','27175200484','Consumidor Final',6114.0);
INSERT INTO "invoices" VALUES (144,'2016','11','25','Venus Hall','68 White Pine Lane','Virginia','CUIT','27184158504','IVA Responsable Inscripto',1518.0);
INSERT INTO "invoices" VALUES (145,'2016','11','29','Roberta Knuth','2476 Mulberry Lane','Florida','CUIT','27240747234','IVA Responsable Inscripto',6067.0);
INSERT INTO "invoices" VALUES (146,'2016','11','29','Clare Donahue','2633 Millbrook Road','Illinois','CUIT','27313582924','IVA Responsable Inscripto',3262.0);
INSERT INTO "invoices" VALUES (147,'2016','12','2','Robert Colby','3995 Old House Drive','Ohio','CUIT','27377265154','IVA Responsable Inscripto',6022.0);
INSERT INTO "invoices" VALUES (148,'2016','12','2','Lisa Thomas','41 Scheuvront Drive','Colorado','CUIT','27154497594','IVA Responsable Inscripto',1879.0);
INSERT INTO "invoices" VALUES (149,'2016','12','6','Patrick Garcia','3962 Langtown Road','Ohio','CUIT','27395972814','IVA Responsable Inscripto',2399.0);
INSERT INTO "invoices" VALUES (151,'2016','12','18','Leonel Miller','3582 B Street','Minnesota','CUIT','27338700734','IVA Responsable Inscripto',3722.0);
INSERT INTO "invoices" VALUES (152,'2016','12','18','Alice Huff','738 Frederick Street','Texas','CUIT','27183351934','IVA Responsable Inscripto',3798.0);
INSERT INTO "invoices" VALUES (153,'2016','12','27','William Ping','3567 Pine Tree Lane','Maryland','CUIT','27118884174','IVA Responsable Inscripto',5879.0);
INSERT INTO "invoices" VALUES (154,'2016','12','29','Denise Wyman','1097 Despard Street','Georgia','CUIT','27282904104','IVA Responsable Inscripto',4826.0);
INSERT INTO "invoices" VALUES (155,'2016','12','29','Linda Hallett','4406 Alpaca Way','California','CUIT','27382002734','Consumidor Final',5089.0);
INSERT INTO "invoices" VALUES (156,'2017','1','8','Paula Madison','3340 Valley Lane','Texas','CUIT','27304316464','IVA Responsable Inscripto',3151.0);
INSERT INTO "invoices" VALUES (157,'2017','1','13','Edgar Garcia','4635 Cemetery Street','California','CUIT','27343451074','IVA Responsable Inscripto',1415.0);
INSERT INTO "invoices" VALUES (158,'2017','1','16','Amy Wilson','2303 Whispering Pines Circle','Texas','CUIT','27351002374','IVA Responsable Inscripto',3615.0);
INSERT INTO "invoices" VALUES (159,'2017','1','16','Harold Bennett','34 Spadafore Drive','Pennsylvania','CUIT','27101286124','IVA Responsable Inscripto',4019.0);
INSERT INTO "invoices" VALUES (160,'2017','1','16','Loren Mahone','1275 Pine Garden Lane','Georgia','CUIT','27314292564','Consumidor Final',3026.0);
INSERT INTO "invoices" VALUES (161,'2017','1','17','Patrick Smith','4888 Coulter Lane','Virginia','CUIT','27281880304','IVA Responsable Inscripto',5002.0);
INSERT INTO "invoices" VALUES (162,'2017','1','23','Lauren Kirkpatrick','4209 Marshall Street','Maryland','CUIT','27259635444','IVA Responsable Inscripto',4616.0);
INSERT INTO "invoices" VALUES (163,'2017','1','23','Julie John','3517 Rosewood Lane','New York','CUIT','27202993984','IVA Responsable Inscripto',4222.0);
INSERT INTO "invoices" VALUES (164,'2017','1','24','James Mundy','1376 Cooks Mine Road','New Mexico','CUIT','27149445844','IVA Responsable Inscripto',1069.0);
INSERT INTO "invoices" VALUES (165,'2017','1','25','Donna McCollough','520 Sycamore Street','California','CUIT','27250545504','IVA Responsable Inscripto',6934.0);
INSERT INTO "invoices" VALUES (166,'2017','1','28','Victor Vang','3338 Gore Street','Texas','CUIT','27371266794','IVA Responsable Inscripto',5324.0);
INSERT INTO "invoices" VALUES (167,'2017','2','3','Claude Miller','852 Alpha Avenue','Texas','CUIT','27335250964','Consumidor Final',3217.0);
INSERT INTO "invoices" VALUES (168,'2017','2','3','Jana Laird','287 Daylene Drive','Michigan','CUIT','27243005804','IVA Responsable Inscripto',2924.0);
INSERT INTO "invoices" VALUES (169,'2017','2','7','Allison Jennings','4996 Cody Ridge Road','Oklahoma','CUIT','27272690414','IVA Responsable Inscripto',5703.0);
INSERT INTO "invoices" VALUES (170,'2017','2','7','Nora Miller','4268 Tennessee Avenue','Michigan','CUIT','27284522914','Consumidor Final',6180.0);
INSERT INTO "invoices" VALUES (171,'2017','2','7','James Young','1851 Carriage Lane','Pennsylvania','CUIT','27194891764','IVA Responsable Inscripto',3012.0);
INSERT INTO "invoices" VALUES (172,'2017','2','9','Steven Robinson','4289 Colonial Drive','Texas','CUIT','27159084694','IVA Responsable Inscripto',6198.0);
INSERT INTO "invoices" VALUES (173,'2017','2','9','Abigail Mullen','1654 Evergreen Lane','California','CUIT','27309462074','IVA Responsable Inscripto',4896.0);
INSERT INTO "invoices" VALUES (174,'2017','2','9','Mary Fortney','1850 Pinewood Avenue','Michigan','CUIT','27110168474','IVA Responsable Inscripto',948.0);
INSERT INTO "invoices" VALUES (175,'2017','2','13','Evelyn Steele','3393 Frum Street','Tennessee','CUIT','27139411944','IVA Responsable Inscripto',2935.0);
INSERT INTO "invoices" VALUES (176,'2017','2','16','Judith Carter','1882 O Conner Street','Mississippi','CUIT','27135172164','IVA Responsable Inscripto',1102.0);
INSERT INTO "invoices" VALUES (177,'2017','2','16','Bo Lynch','2120 Hood Avenue','California','CUIT','27164050804','Consumidor Final',2021.0);
INSERT INTO "invoices" VALUES (178,'2017','2','20','Alan Owens','2051 Centennial Farm Road','Iowa','CUIT','27323300484','IVA Responsable Inscripto',6557.0);
INSERT INTO "invoices" VALUES (179,'2017','2','20','William Johnson','4738 Ventura Drive','California','CUIT','27373664284','IVA Responsable Inscripto',4671.0);
INSERT INTO "invoices" VALUES (180,'2017','2','22','Elizabeth Schneider','4833 Kembery Drive','Illinois','CUIT','27295424574','IVA Responsable Inscripto',2780.0);
INSERT INTO "invoices" VALUES (181,'2017','2','23','Deborah Pooley','563 Goff Avenue','Michigan','CUIT','27263697744','Consumidor Final',6244.0);
INSERT INTO "invoices" VALUES (182,'2017','3','1','James Wiese','3380 Thrash Trail','Texas','CUIT','27379319304','IVA Responsable Inscripto',3035.0);
INSERT INTO "invoices" VALUES (183,'2017','3','1','Nancy Bingham','1133 Stuart Street','Pennsylvania','CUIT','27321991474','IVA Responsable Inscripto',4142.0);
INSERT INTO "invoices" VALUES (184,'2017','3','1','Aaron Squires','864 Willison Street','Minnesota','CUIT','27384975814','IVA Responsable Inscripto',2391.0);
INSERT INTO "invoices" VALUES (185,'2017','3','1','Debrah Christensen','2283 Gateway Avenue','California','CUIT','27381299344','IVA Responsable Inscripto',3607.0);
INSERT INTO "invoices" VALUES (186,'2017','3','1','Miranda Hall','3468 Freshour Circle','California','CUIT','27167907394','IVA Responsable Inscripto',1220.0);
INSERT INTO "invoices" VALUES (187,'2017','3','2','Wendy Gloss','4111 Aaron Smith Drive','Pennsylvania','DNI','19157414','Consumidor Final',1919.0);
INSERT INTO "invoices" VALUES (188,'2017','3','2','Zella Frazier','417 Conaway Street','Indiana','CUIT','27203482544','Consumidor Final',784.0);
INSERT INTO "invoices" VALUES (189,'2017','3','3','Marcus Oliver','247 Hott Street','Oklahoma','CUIT','27397184474','Consumidor Final',447.0);
INSERT INTO "invoices" VALUES (190,'2017','3','8','Diane Martinez','3603 Hawks Nest Lane','Missouri','CUIT','27186065854','IVA Responsable Inscripto',3460.0);
INSERT INTO "invoices" VALUES (191,'2017','3','9','James Corey','2027 University Drive','Illinois','CUIT','27129439284','IVA Responsable Inscripto',4807.0);
INSERT INTO "invoices" VALUES (192,'2017','3','12','Robert McCarty','4277 Melm Street','Rhode Island','CUIT','27288198484','IVA Responsable Inscripto',874.0);
INSERT INTO "invoices" VALUES (193,'2017','3','16','Emily Craig','1041 Pleasant Hill Road','California','CUIT','27288316994','IVA Responsable Inscripto',4447.0);
INSERT INTO "invoices" VALUES (194,'2017','3','16','Thomas McAnulty','1037 Pooz Street','Tennessee','CUIT','27237360874','IVA Responsable Inscripto',3592.0);
INSERT INTO "invoices" VALUES (195,'2017','3','16','Peggy Smith','4596 Rivendell Drive','Ohio','CUIT','27321811424','IVA Responsable Inscripto',1322.0);
INSERT INTO "invoices" VALUES (196,'2017','3','16','Sharon Nelson','703 University Drive','Illinois','CUIT','27248594094','IVA Responsable Inscripto',6277.0);
INSERT INTO "invoices" VALUES (197,'2017','3','22','George Davis','4683 Hillside Street','Arizona','CUIT','27359576654','IVA Responsable Inscripto',4780.0);
INSERT INTO "invoices" VALUES (198,'2017','3','27','Beverly Henshaw','336 Rosewood Court','Minnesota','CUIT','27242547194','IVA Responsable Inscripto',3371.0);
INSERT INTO "invoices" VALUES (199,'2017','3','30','Alfred Berry','1985 Jones Street','Texas','CUIT','27249654974','IVA Responsable Inscripto',842.0);
INSERT INTO "invoices" VALUES (200,'2017','4','3','Percy Diaz','2136 West Drive','Illinois','CUIT','27221483814','IVA Responsable Inscripto',4457.0);
INSERT INTO "invoices" VALUES (201,'2017','4','5','Mary Mock','3877 Renwick Drive','Pennsylvania','CUIT','27123470204','IVA Responsable Inscripto',1376.0);
INSERT INTO "invoices" VALUES (202,'2017','4','5','William Wagner','3578 Broadway Street','South Carolina','CUIT','27105084404','IVA Responsable Inscripto',3414.0);
INSERT INTO "invoices" VALUES (203,'2017','4','11','Lula Tolliver','2023 Bell Street','New York','CUIT','27334294324','IVA Responsable Inscripto',2544.0);
INSERT INTO "invoices" VALUES (204,'2017','4','17','Dawn Ranger','3108 Archwood Avenue','Wyoming','CUIT','27171173934','IVA Responsable Inscripto',2836.0);
INSERT INTO "invoices" VALUES (205,'2017','4','17','Gordon Gordon','861 Williams Mine Road','New Jersey','CUIT','27132835634','IVA Responsable Inscripto',6338.0);
INSERT INTO "invoices" VALUES (206,'2017','4','17','Timothy Pena','3686 Elmwood Avenue','Arizona','CUIT','27278071064','Consumidor Final',3217.0);
INSERT INTO "invoices" VALUES (207,'2017','4','19','Jose Alvarez','3616 Rollins Road','Nebraska','CUIT','27304138184','Consumidor Final',5828.0);
INSERT INTO "invoices" VALUES (208,'2017','4','20','Robert Graves','1261 Upland Avenue','Ohio','CUIT','27257290004','IVA Responsable Inscripto',5651.0);
INSERT INTO "invoices" VALUES (209,'2017','4','24','Kathryn Chambers','2508 Coburn Hollow Road','Illinois','CUIT','27147797304','IVA Responsable Inscripto',6086.0);
INSERT INTO "invoices" VALUES (210,'2017','4','25','Jorge Starling','2367 Poplar Chase Lane','Idaho','CUIT','27332829824','IVA Responsable Inscripto',2479.0);
INSERT INTO "invoices" VALUES (211,'2017','4','26','Jessie Rivera','4278 Green Acres Road','North Carolina','CUIT','27108390494','Consumidor Final',5425.0);
INSERT INTO "invoices" VALUES (212,'2017','4','26','Ronald Valentine','149 Chicago Avenue','California','CUIT','27267687814','IVA Responsable Inscripto',4040.0);
INSERT INTO "invoices" VALUES (213,'2017','4','26','Chad Frazier','1188 Oak Lane','Missouri','CUIT','27348976124','IVA Responsable Inscripto',2026.0);
INSERT INTO "invoices" VALUES (214,'2017','4','26','Glenn Martin','418 Mulberry Lane','Florida','CUIT','27231897614','IVA Responsable Inscripto',4867.0);
INSERT INTO "invoices" VALUES (215,'2017','4','28','Charles Falk','3717 Smith Road','Georgia','CUIT','27295734784','IVA Responsable Inscripto',2164.0);
INSERT INTO "invoices" VALUES (216,'2017','4','28','Regina Kelley','4027 Deans Lane','New York','CUIT','27285824234','IVA Responsable Inscripto',2767.0);
INSERT INTO "invoices" VALUES (217,'2017','5','5','Samantha Smith','1183 Junior Avenue','Georgia','CUIT','27333039304','IVA Responsable Inscripto',3534.0);
INSERT INTO "invoices" VALUES (218,'2017','5','12','Ellen Stafford','1853 Butternut Lane','Illinois','CUIT','27239916484','IVA Responsable Inscripto',2089.0);
INSERT INTO "invoices" VALUES (219,'2017','5','18','Charles Smoot','1399 Michigan Avenue','Pennsylvania','CUIT','27289322054','IVA Responsable Inscripto',3119.0);
INSERT INTO "invoices" VALUES (220,'2017','5','18','Dorothy Walker','3851 Flynn Street','Ohio','CUIT','27231076614','IVA Responsable Inscripto',589.0);
INSERT INTO "invoices" VALUES (221,'2017','5','18','Leticia Ferguson','3297 Woodbridge Lane','Michigan','CUIT','27117457074','IVA Responsable Inscripto',4192.0);
INSERT INTO "invoices" VALUES (222,'2017','5','18','Roman Ross','2881 Briarwood Drive','New Jersey','CUIT','27156281494','IVA Responsable Inscripto',4194.0);
INSERT INTO "invoices" VALUES (223,'2017','5','18','Don Ward','1855 Bassel Street','Louisiana','CUIT','27321394374','IVA Responsable Inscripto',4501.0);
INSERT INTO "invoices" VALUES (224,'2017','5','19','Matthew West','4686 Sunrise Road','Nevada','CUIT','27275881994','Consumidor Final',3385.0);
INSERT INTO "invoices" VALUES (225,'2017','5','19','Thomas Hartley','245 Philadelphia Avenue','Utah','CUIT','27354492844','Consumidor Final',1231.0);
INSERT INTO "invoices" VALUES (226,'2017','5','19','Maureen Hatfield','638 Little Acres Lane','Illinois','CUIT','27241061754','IVA Responsable Inscripto',1773.0);
INSERT INTO "invoices" VALUES (227,'2017','5','26','Valerie Vivian','3602 Riverside Drive','Georgia','CUIT','27126004284','Consumidor Final',5661.0);
INSERT INTO "invoices" VALUES (228,'2017','5','31','Edward Allen','1819 Lost Creek Road','Pennsylvania','CUIT','27340593024','IVA Responsable Inscripto',5444.0);
INSERT INTO "invoices" VALUES (229,'2017','5','31','Rita Foshee','2509 Kemper Lane','Utah','CUIT','27250559974','IVA Responsable Inscripto',3456.0);
INSERT INTO "invoices" VALUES (230,'2017','5','31','Robert Norton','610 Charmaine Lane','Texas','CUIT','27127755524','IVA Responsable Inscripto',5733.0);
INSERT INTO "invoices" VALUES (231,'2017','6','1','Jennifer Corl','3832 Beech Street','California','CUIT','27220063784','Consumidor Final',794.0);
INSERT INTO "invoices" VALUES (233,'2017','6','2','Luis Myers','4566 Kildeer Drive','Ohio','CUIT','27143923294','IVA Responsable Inscripto',6963.0);
INSERT INTO "invoices" VALUES (234,'2017','6','5','Matthew Harp','1921 Tail Ends Road','Wisconsin','CUIT','27229796474','Consumidor Final',2423.0);
INSERT INTO "invoices" VALUES (235,'2017','6','8','Huey Riggins','3406 Rockwell Lane','North Carolina','CUIT','27157075934','IVA Responsable Inscripto',1578.0);
INSERT INTO "invoices" VALUES (236,'2017','6','8','Gloria Allred','4944 Daffodil Lane','Virginia','CUIT','27144972484','IVA Responsable Inscripto',3999.0);
INSERT INTO "invoices" VALUES (239,'2017','6','13','Ruth Andrews','4709 Geraldine Lane','New York','CUIT','27392061364','Consumidor Final',4194.0);
INSERT INTO "invoices" VALUES (240,'2017','6','14','Diane Havens','249 Palmer Road','Ohio','CUIT','27348628124','IVA Responsable Inscripto',1776.0);
INSERT INTO "invoices" VALUES (241,'2017','6','15','Faye Reed','4872 Star Trek Drive','Florida','DNI','26247221','Consumidor Final',6780.0);
INSERT INTO "invoices" VALUES (242,'2017','6','15','Freda Carver','4709 Bassel Street','Louisiana','CUIT','27100680564','IVA Responsable Inscripto',3908.0);
INSERT INTO "invoices" VALUES (243,'2017','6','21','Dana Baillargeon','4060 Center Street','Oregon','CUIT','27275988574','IVA Responsable Inscripto',3983.0);
INSERT INTO "invoices" VALUES (244,'2017','6','23','Claudia Hebert','4690 Goldleaf Lane','New Jersey','CUIT','27112378604','IVA Responsable Inscripto',4247.0);
INSERT INTO "invoices" VALUES (245,'2017','6','23','Sean Lamas','789 Mulberry Lane','Florida','CUIT','27194948954','IVA Responsable Inscripto',6930.0);
INSERT INTO "invoices" VALUES (246,'2017','6','23','Amy Scott','1009 Bloomfield Way','Maine','CUIT','27115745544','Consumidor Final',3480.0);
INSERT INTO "invoices" VALUES (247,'2017','6','26','Charles Hodge','1406 Snyder Avenue','North Carolina','CUIT','27306935394','Consumidor Final',3687.0);
INSERT INTO "invoices" VALUES (249,'2017','6','27','Rita Ervin','717 High Meadow Lane','Pennsylvania','CUIT','27154252704','IVA Responsable Inscripto',2175.0);
INSERT INTO "invoices" VALUES (250,'2017','6','29','Nellie Hutchens','4436 Woodhill Avenue','Maryland','CUIT','27394355854','IVA Responsable Inscripto',2251.0);
INSERT INTO "invoices" VALUES (251,'2017','6','30','Randall Griffin','2726 Geneva Street','New York','CUIT','27335960784','IVA Responsable Inscripto',5251.0);
INSERT INTO "invoices" VALUES (252,'2017','6','30','Fred Mays','2828 Wolf Pen Road','California','CUIT','27205391714','IVA Responsable Inscripto',5617.0);
INSERT INTO "invoices" VALUES (253,'2017','6','30','Tommie Jackson','1607 Pinewood Avenue','Michigan','CUIT','27185256204','IVA Responsable Inscripto',6471.0);
INSERT INTO "invoices" VALUES (254,'2017','6','30','Russell Miller','2877 Khale Street','South Carolina','CUIT','27375570584','IVA Responsable Inscripto',3196.0);
INSERT INTO "invoices" VALUES (255,'2017','7','3','Earl Auman','2423 Golden Street','Florida','CUIT','27167623024','IVA Responsable Inscripto',3148.0);
INSERT INTO "invoices" VALUES (256,'2017','7','3','Mary Leblanc','1239 Cameron Road','New York','CUIT','27260787484','IVA Responsable Inscripto',4408.0);
INSERT INTO "invoices" VALUES (257,'2017','7','3','Tomas Truong','2932 Viking Drive','Ohio','CUIT','27289909274','IVA Responsable Inscripto',5048.0);
INSERT INTO "invoices" VALUES (258,'2017','7','11','Luis McDonald','1747 Warner Street','Florida','CUIT','27144486504','IVA Responsable Inscripto',2058.0);
INSERT INTO "invoices" VALUES (259,'2017','7','11','Gregory Dudley','3874 Westfall Avenue','New Mexico','CUIT','27219774054','IVA Responsable Inscripto',2418.0);
INSERT INTO "invoices" VALUES (260,'2017','7','11','Donald Maclennan','2360 Tree Frog Lane','Missouri','CUIT','27277281064','IVA Responsable Inscripto',634.0);
INSERT INTO "invoices" VALUES (262,'2017','7','12','Joyce Moore','233 County Line Road','Florida','CUIT','27298039154','Consumidor Final',1266.0);
INSERT INTO "invoices" VALUES (263,'2017','7','13','Elena Sanderlin','4524 Waldeck Street','Texas','CUIT','27126392284','IVA Responsable Inscripto',5211.0);
INSERT INTO "invoices" VALUES (264,'2017','7','14','Isabella Williams','3379 Fidler Drive','Texas','CUIT','27280696274','IVA Responsable Inscripto',5772.0);
INSERT INTO "invoices" VALUES (275,'2017','8','4','Joann Sweeney','763 Rebecca Street','Illinois','CUIT','27214164784','Consumidor Final',1274.0);
INSERT INTO "invoices" VALUES (280,'2017','8','10','Jeffery Garcia','1123 Yorkshire Circle','North Carolina','CUIT','27179046354','IVA Responsable Inscripto',6494.0);
INSERT INTO "invoices" VALUES (286,'2017','8','21','Curt Mitchell','2043 Short Street','Texas','CUIT','27161785784','IVA Responsable Inscripto',1462.0);
INSERT INTO "invoices" VALUES (28,'2016','5','20','Walter Caroll','258 Oakridge Lane','Texas','CUIT','27355848624','IVA Responsable Inscripto',919.0);
INSERT INTO "invoices" VALUES (69,'2016','8','5','Sherry Townsend','3080 Wayback Lane','New York','CUIT','27123433894','IVA Responsable Inscripto',5657.0);
INSERT INTO "invoices" VALUES (95,'2016','9','26','Marie Walker','1541 Edgewood Road','Arkansas','CUIT','27160341804','IVA Responsable Inscripto',5406.0);
INSERT INTO "invoices" VALUES (109,'2016','10','11','Stephanie Nagy','1764 Nutter Street','Missouri','CUIT','27163818204','Consumidor Final',3000.0);
INSERT INTO "invoices" VALUES (150,'2016','12','10','Alan Walther','3467 Pyramid Valley Road','Iowa','CUIT','27234117524','Consumidor Final',5050.0);
INSERT INTO "invoices" VALUES (237,'2017','6','9','David Scott','350 Watson Street','New Jersey','CUIT','27137929634','IVA Responsable Inscripto',4905.0);
INSERT INTO "invoices" VALUES (238,'2017','6','9','Irma Schmidt','4136 Rockwell Lane','North Carolina','CUIT','27121005974','IVA Responsable Inscripto',4456.0);
INSERT INTO "invoices" VALUES (248,'2017','6','27','Edward Duncan','4354 Wood Duck Drive','Michigan','CUIT','27307362524','IVA Responsable Inscripto',6422.0);
INSERT INTO "invoices" VALUES (261,'2017','7','11','Numbers Lightner','562 Mudlick Road','Washington','CUIT','27273875694','IVA Responsable Inscripto',3770.0);
INSERT INTO "invoices" VALUES (266,'2017','7','20','Eleanor Hernandez','4416 Driftwood Road','California','CUIT','27122715694','IVA Responsable Inscripto',2623.0);
INSERT INTO "invoices" VALUES (2,'2016','4','4','Jessica Mitchell','1145 Woodstock Drive','California','CUIT','27366703324','IVA Responsable Inscripto',2931.0);
INSERT INTO "invoices" VALUES (16,'2016','4','29','Jimmie Murray','2305 Chatham Way','Maryland','CUIT','27351763384','IVA Responsable Inscripto',6589.0);
INSERT INTO "invoices" VALUES (89,'2016','9','12','Leonard Jackson','2990 Masonic Hill Road','Arkansas','CUIT','27101668104','Consumidor Final',3417.0);
INSERT INTO "invoices" VALUES (102,'2016','9','28','Amy Bates','2895 Adams Avenue','Maryland','CUIT','27124864664','Consumidor Final',5413.0);
INSERT INTO "invoices" VALUES (103,'2016','9','30','Kristin Walker','1924 Marion Street','Vermont','CUIT','27356676604','Consumidor Final',5058.0);
INSERT INTO "invoices" VALUES (134,'2016','11','17','Debra Mingo','3592 Wayside Lane','California','CUIT','27249381034','IVA Responsable Inscripto',5463.0);
INSERT INTO "invoices" VALUES (232,'2017','6','1','Anthony McGraw','2787 Formula Lane','Texas','CUIT','27249877654','IVA Responsable Inscripto',4610.0);
INSERT INTO "invoices" VALUES (41,'2016','6','16','Gerda Bowser','1248 Elk Street','California','DNI','22655691','Consumidor Final',3973.0);
INSERT INTO "invoices" VALUES (126,'2016','11','8','Sally Patterson','4641 Old House Drive','Ohio','CUIT','27228167654','IVA Responsable Inscripto',1360.0);
INSERT INTO "expenses" VALUES (1,2016,7,10475.0);
INSERT INTO "expenses" VALUES (2,2016,8,11404.58);
INSERT INTO "expenses" VALUES (3,2016,9,11964.43);
INSERT INTO "expenses" VALUES (4,2016,10,14478.37);
INSERT INTO "expenses" VALUES (5,2016,11,11614.8);
INSERT INTO "expenses" VALUES (6,2016,12,14887.41);
INSERT INTO "expenses" VALUES (7,2017,1,17286.58);
INSERT INTO "expenses" VALUES (8,2017,2,14244.36);
INSERT INTO "expenses" VALUES (9,2017,3,13351.68);
INSERT INTO "expenses" VALUES (10,2017,4,17876.13);
INSERT INTO "expenses" VALUES (11,2017,5,15259.44);
INSERT INTO "expenses" VALUES (12,2017,6,17066.84);
INSERT INTO "expenses" VALUES (13,2017,7,16657.21);
INSERT INTO "expenses" VALUES (14,2017,8,18438.71);
INSERT INTO "expenses" VALUES (15,2017,9,16597.74);
INSERT INTO "expenses" VALUES (16,2017,10,14954.43);
INSERT INTO "expenses" VALUES (17,2017,11,16989.89);
INSERT INTO "expenses" VALUES (18,2017,12,18045.89);
INSERT INTO "expenses" VALUES (19,2018,1,27538.09);
INSERT INTO "expenses" VALUES (20,2018,2,17045.45);
INSERT INTO "expenses" VALUES (21,2018,3,16917.18);
INSERT INTO "expenses" VALUES (22,2018,4,26283.37);
INSERT INTO "expenses" VALUES (23,2018,5,16398.53);
INSERT INTO "expenses" VALUES (24,2018,6,20330.51);
INSERT INTO "expenses" VALUES (25,2018,7,20136.96);
INSERT INTO "expenses" VALUES (26,2018,8,23416.11);
INSERT INTO "expenses" VALUES (27,2018,9,19507.82);
INSERT INTO "expenses" VALUES (28,2018,10,22454.37);
INSERT INTO "expenses" VALUES (29,2018,11,22067.22);
INSERT INTO "expenses" VALUES (30,2018,12,23785.43);
INSERT INTO "expenses" VALUES (31,2019,1,30536.9);
INSERT INTO "expenses" VALUES (32,2019,2,29950.35);
INSERT INTO "expenses" VALUES (33,2019,3,26870.65);
INSERT INTO "expenses" VALUES (34,2019,4,22482.04);
INSERT INTO "expenses" VALUES (35,2019,5,27796.2);
INSERT INTO "expenses" VALUES (36,2019,6,60381.29);
INSERT INTO "expenses" VALUES (37,2019,7,32069.74);
INSERT INTO "expenses" VALUES (38,2019,8,22457.34);
INSERT INTO "expenses" VALUES (39,2019,9,21086.45);
INSERT INTO "expenses" VALUES (40,2019,10,27623.47);
INSERT INTO "expenses" VALUES (41,2019,11,24586.11);
INSERT INTO "expenses" VALUES (42,2019,12,26140.0);
INSERT INTO "earnings" VALUES (1,2016,7,1,'Aaron Anderson',5410.0,'C');
INSERT INTO "earnings" VALUES (2,2016,7,1,'Aaron Coleman',4575.0,'C');
INSERT INTO "earnings" VALUES (3,2016,7,6,'Aaron Squires',3889.0,'P');
INSERT INTO "earnings" VALUES (4,2016,7,12,'Abigail Mullen',661.0,'P');
INSERT INTO "earnings" VALUES (5,2016,7,12,'Adam Wages',3851.0,'P');
INSERT INTO "earnings" VALUES (6,2016,7,13,'Adele Koepke',1769.0,'P');
INSERT INTO "earnings" VALUES (7,2016,7,14,'Aida Crosby',1510.0,'P');
INSERT INTO "earnings" VALUES (8,2016,7,15,'Alan Owens',6393.0,'P');
INSERT INTO "earnings" VALUES (9,2016,7,15,'Alan Walther',966.0,'P');
INSERT INTO "earnings" VALUES (10,2016,7,20,'Albert McNeill',3697.0,'P');
INSERT INTO "earnings" VALUES (11,2016,7,21,'Alexander Jarrett',598.0,'P');
INSERT INTO "earnings" VALUES (12,2016,7,22,'Alexander Troia',4696.0,'P');
INSERT INTO "earnings" VALUES (13,2016,7,22,'Alfred Berry',3741.0,'P');
INSERT INTO "earnings" VALUES (14,2016,7,27,'Alfred Madden',2296.0,'C');
INSERT INTO "earnings" VALUES (15,2016,7,28,'Alice Huff',2724.0,'P');
INSERT INTO "earnings" VALUES (16,2016,7,29,'Aline Campfield',6740.0,'P');
INSERT INTO "earnings" VALUES (17,2016,7,31,'Alison Taft',5540.0,'C');
INSERT INTO "earnings" VALUES (18,2016,8,3,'Allison Jennings',6307.0,'P');
INSERT INTO "earnings" VALUES (19,2016,8,4,'Alma Allred',4661.0,'P');
INSERT INTO "earnings" VALUES (20,2016,8,5,'Alma Shelton',1671.0,'P');
INSERT INTO "earnings" VALUES (21,2016,8,5,'Amanda Benford',3414.0,'P');
INSERT INTO "earnings" VALUES (22,2016,8,5,'Amber Galbreath',3127.0,'C');
INSERT INTO "earnings" VALUES (23,2016,8,8,'Amber James',3879.0,'P');
INSERT INTO "earnings" VALUES (24,2016,8,10,'Amy Bates',2837.0,'C');
INSERT INTO "earnings" VALUES (25,2016,8,12,'Amy Scott',4649.0,'C');
INSERT INTO "earnings" VALUES (26,2016,8,16,'Amy Wilson',3331.0,'P');
INSERT INTO "earnings" VALUES (27,2016,8,17,'Amy Woodall',6670.0,'C');
INSERT INTO "earnings" VALUES (28,2016,8,19,'Andrea Maldonado',1181.0,'C');
INSERT INTO "earnings" VALUES (29,2016,8,19,'Angela Betts',1295.0,'P');
INSERT INTO "earnings" VALUES (30,2016,8,22,'Angelo Myers',1125.0,'P');
INSERT INTO "earnings" VALUES (31,2016,8,22,'Ann Jones',5957.0,'P');
INSERT INTO "earnings" VALUES (32,2016,8,22,'Anna Ryan',5045.0,'C');
INSERT INTO "earnings" VALUES (33,2016,8,29,'Anne Douglas',864.0,'C');
INSERT INTO "earnings" VALUES (34,2016,9,1,'Annette Barnes',4517.0,'C');
INSERT INTO "earnings" VALUES (35,2016,9,1,'Annie Cotton',462.0,'C');
INSERT INTO "earnings" VALUES (36,2016,9,1,'Annie Ferrante',2308.0,'P');
INSERT INTO "earnings" VALUES (37,2016,9,1,'Annie Torpey',6666.0,'C');
INSERT INTO "earnings" VALUES (38,2016,9,2,'Anthony McGraw',2533.0,'C');
INSERT INTO "earnings" VALUES (39,2016,9,6,'Anthony Reed',5375.0,'P');
INSERT INTO "earnings" VALUES (40,2016,9,7,'April Coe',5420.0,'P');
INSERT INTO "earnings" VALUES (41,2016,9,7,'Arnold Atkinson',6169.0,'P');
INSERT INTO "earnings" VALUES (42,2016,9,8,'Arthur Fontenot',5730.0,'C');
INSERT INTO "earnings" VALUES (43,2016,9,8,'Audrey Hill',3153.0,'P');
INSERT INTO "earnings" VALUES (44,2016,9,10,'Barbara Vila',6316.0,'P');
INSERT INTO "earnings" VALUES (45,2016,9,12,'Belle Hunter',6523.0,'P');
INSERT INTO "earnings" VALUES (46,2016,9,12,'Benjamin Dale',4895.0,'P');
INSERT INTO "earnings" VALUES (47,2016,9,12,'Benjamin Griggs',1660.0,'C');
INSERT INTO "earnings" VALUES (48,2016,9,14,'Benjamin Roper',5048.0,'P');
INSERT INTO "earnings" VALUES (49,2016,9,14,'Bernice Williams',3531.0,'C');
INSERT INTO "earnings" VALUES (50,2016,9,16,'Berta Brock',5634.0,'C');
INSERT INTO "earnings" VALUES (51,2016,9,16,'Berta McGinley',6669.0,'C');
INSERT INTO "earnings" VALUES (52,2016,9,16,'Betty Waltrip',5760.0,'P');
INSERT INTO "earnings" VALUES (53,2016,9,20,'Beulah Baumgarten',6264.0,'C');
INSERT INTO "earnings" VALUES (54,2016,9,20,'Beverly Henshaw',638.0,'P');
INSERT INTO "earnings" VALUES (55,2016,9,21,'Beverly Simpson',4779.0,'C');
INSERT INTO "earnings" VALUES (56,2016,9,22,'Billy Reed',5146.0,'P');
INSERT INTO "earnings" VALUES (57,2016,9,27,'Billy Straley',5406.0,'C');
INSERT INTO "earnings" VALUES (58,2016,9,28,'Billye Izquierdo',2773.0,'C');
INSERT INTO "earnings" VALUES (59,2016,9,30,'Blair Davis',4380.0,'C');
INSERT INTO "earnings" VALUES (60,2016,10,1,'Blanche Leitner',6949.0,'C');
INSERT INTO "earnings" VALUES (61,2016,10,1,'Bo Lynch',4374.0,'C');
INSERT INTO "earnings" VALUES (62,2016,10,3,'Bobby Rogers',6243.0,'C');
INSERT INTO "earnings" VALUES (63,2016,10,3,'Brandon Perryman',4375.0,'C');
INSERT INTO "earnings" VALUES (64,2016,10,4,'Brandy Kovacs',2316.0,'C');
INSERT INTO "earnings" VALUES (65,2016,10,5,'Brandy Tyson',3720.0,'C');
INSERT INTO "earnings" VALUES (66,2016,10,6,'Brenda Norris',1924.0,'C');
INSERT INTO "earnings" VALUES (67,2016,10,6,'Brent Hart',1299.0,'C');
INSERT INTO "earnings" VALUES (68,2016,10,6,'Brett Collins',3606.0,'P');
INSERT INTO "earnings" VALUES (69,2016,10,10,'Brett Tucker',3686.0,'P');
INSERT INTO "earnings" VALUES (70,2016,10,11,'Brian Rich',2954.0,'P');
INSERT INTO "earnings" VALUES (71,2016,10,11,'Brittany Brown',2145.0,'P');
INSERT INTO "earnings" VALUES (72,2016,10,12,'Byron Cannella',1591.0,'C');
INSERT INTO "earnings" VALUES (73,2016,10,13,'Byron Paxson',408.0,'C');
INSERT INTO "earnings" VALUES (74,2016,10,14,'Calvin Perez',5774.0,'P');
INSERT INTO "earnings" VALUES (75,2016,10,14,'Candace Martin',531.0,'C');
INSERT INTO "earnings" VALUES (76,2016,10,14,'Candice Collins',1084.0,'C');
INSERT INTO "earnings" VALUES (77,2016,10,14,'Carlos Cantrell',5598.0,'C');
INSERT INTO "earnings" VALUES (78,2016,10,18,'Carmen Roberson',6633.0,'P');
INSERT INTO "earnings" VALUES (79,2016,10,18,'Carol Wynn',630.0,'C');
INSERT INTO "earnings" VALUES (80,2016,10,18,'Carolina Davis',2163.0,'C');
INSERT INTO "earnings" VALUES (81,2016,10,18,'Caroline Brown',4379.0,'P');
INSERT INTO "earnings" VALUES (82,2016,10,18,'Carolyn Shane',2236.0,'P');
INSERT INTO "earnings" VALUES (83,2016,10,19,'Carolyn Thomas',2449.0,'P');
INSERT INTO "earnings" VALUES (84,2016,10,19,'Catherine Johnson',1443.0,'C');
INSERT INTO "earnings" VALUES (85,2016,10,19,'Celeste Acres',5716.0,'P');
INSERT INTO "earnings" VALUES (86,2016,10,20,'Celeste Rogers',2543.0,'P');
INSERT INTO "earnings" VALUES (87,2016,10,20,'Chad Frazier',2426.0,'C');
INSERT INTO "earnings" VALUES (88,2016,10,20,'Charles Acosta',2059.0,'C');
INSERT INTO "earnings" VALUES (89,2016,10,20,'Charles Falk',4441.0,'C');
INSERT INTO "earnings" VALUES (90,2016,10,21,'Charles Hammack',6882.0,'C');
INSERT INTO "earnings" VALUES (91,2016,10,24,'Charles Hodge',1312.0,'P');
INSERT INTO "earnings" VALUES (92,2016,10,25,'Charles Richardson',2763.0,'P');
INSERT INTO "earnings" VALUES (93,2016,10,26,'Charles Smoot',1357.0,'P');
INSERT INTO "earnings" VALUES (94,2016,10,27,'Charles Strain',4130.0,'P');
INSERT INTO "earnings" VALUES (95,2016,10,27,'Cheryl Otis',1847.0,'P');
INSERT INTO "earnings" VALUES (96,2016,10,28,'Cheryl Russ',3331.0,'P');
INSERT INTO "earnings" VALUES (97,2016,10,31,'Chris Bell',1012.0,'C');
INSERT INTO "earnings" VALUES (98,2016,11,2,'Christina Murrah',779.0,'P');
INSERT INTO "earnings" VALUES (99,2016,11,3,'Christine Marable',5201.0,'C');
INSERT INTO "earnings" VALUES (100,2016,11,3,'Christine Obrien',2927.0,'C');
INSERT INTO "earnings" VALUES (101,2016,11,3,'Christine Stewart',1554.0,'C');
INSERT INTO "earnings" VALUES (102,2016,11,3,'Christopher Brewster',3783.0,'P');
INSERT INTO "earnings" VALUES (103,2016,11,7,'Christopher Dumont',1575.0,'C');
INSERT INTO "earnings" VALUES (104,2016,11,10,'Christopher Foster',6628.0,'P');
INSERT INTO "earnings" VALUES (105,2016,11,11,'Christopher Kuhns',1868.0,'P');
INSERT INTO "earnings" VALUES (106,2016,11,11,'Christopher Reed',4702.0,'P');
INSERT INTO "earnings" VALUES (107,2016,11,11,'Christopher Utz',1278.0,'P');
INSERT INTO "earnings" VALUES (108,2016,11,15,'Christopher Vann',913.0,'C');
INSERT INTO "earnings" VALUES (109,2016,11,16,'Cindy Coffee',5178.0,'C');
INSERT INTO "earnings" VALUES (110,2016,11,16,'Clara Halvorson',1068.0,'C');
INSERT INTO "earnings" VALUES (111,2016,11,16,'Clare Donahue',6444.0,'P');
INSERT INTO "earnings" VALUES (112,2016,11,16,'Clarence Garcia',4984.0,'P');
INSERT INTO "earnings" VALUES (113,2016,11,17,'Claretta Baker',4911.0,'C');
INSERT INTO "earnings" VALUES (114,2016,11,17,'Claude Miller',671.0,'P');
INSERT INTO "earnings" VALUES (115,2016,11,17,'Claudia Hebert',2930.0,'P');
INSERT INTO "earnings" VALUES (116,2016,11,17,'Colleen Thomas',3618.0,'C');
INSERT INTO "earnings" VALUES (117,2016,11,17,'Connie Maio',1654.0,'P');
INSERT INTO "earnings" VALUES (118,2016,11,18,'Connie Sumner',2526.0,'P');
INSERT INTO "earnings" VALUES (119,2016,11,18,'Corinne Calderon',1467.0,'C');
INSERT INTO "earnings" VALUES (120,2016,11,18,'Curt Mitchell',794.0,'P');
INSERT INTO "earnings" VALUES (121,2016,11,21,'Curtis Morales',4363.0,'P');
INSERT INTO "earnings" VALUES (122,2016,11,22,'Curtis Ricci',2661.0,'C');
INSERT INTO "earnings" VALUES (123,2016,11,22,'Cynthia Albro',2695.0,'P');
INSERT INTO "earnings" VALUES (124,2016,11,23,'Cynthia Merino',910.0,'C');
INSERT INTO "earnings" VALUES (125,2016,11,23,'Cynthia Powell',5886.0,'C');
INSERT INTO "earnings" VALUES (126,2016,11,23,'Dale Johnsen',1596.0,'P');
INSERT INTO "earnings" VALUES (127,2016,11,25,'Dana Baillargeon',6466.0,'C');
INSERT INTO "earnings" VALUES (128,2016,11,29,'Dana Howell',3358.0,'P');
INSERT INTO "earnings" VALUES (129,2016,11,29,'Danny Broussard',2725.0,'C');
INSERT INTO "earnings" VALUES (130,2016,11,30,'Danny Frick',3216.0,'C');
INSERT INTO "earnings" VALUES (131,2016,11,30,'Dante Ward',2023.0,'C');
INSERT INTO "earnings" VALUES (132,2016,12,1,'Darla Jacobson',1602.0,'C');
INSERT INTO "earnings" VALUES (133,2016,12,1,'Darryl Le',3764.0,'P');
INSERT INTO "earnings" VALUES (134,2016,12,1,'David Ahearn',4830.0,'P');
INSERT INTO "earnings" VALUES (135,2016,12,5,'David Bonenfant',3968.0,'P');
INSERT INTO "earnings" VALUES (136,2016,12,5,'David Brown',2867.0,'C');
INSERT INTO "earnings" VALUES (137,2016,12,6,'David Burnell',2603.0,'P');
INSERT INTO "earnings" VALUES (138,2016,12,6,'David Martin',2607.0,'P');
INSERT INTO "earnings" VALUES (139,2016,12,7,'David Scott',2487.0,'P');
INSERT INTO "earnings" VALUES (140,2016,12,7,'Dawn Ranger',4134.0,'P');
INSERT INTO "earnings" VALUES (141,2016,12,12,'Deanna Myricks',1616.0,'P');
INSERT INTO "earnings" VALUES (142,2016,12,12,'Deborah Pooley',440.0,'P');
INSERT INTO "earnings" VALUES (143,2016,12,12,'Debra Mingo',5054.0,'P');
INSERT INTO "earnings" VALUES (144,2016,12,15,'Debrah Christensen',1247.0,'P');
INSERT INTO "earnings" VALUES (145,2016,12,15,'Della Barber',5349.0,'C');
INSERT INTO "earnings" VALUES (146,2016,12,15,'Denise Wyman',4160.0,'C');
INSERT INTO "earnings" VALUES (147,2016,12,15,'Dennis Burks',3552.0,'P');
INSERT INTO "earnings" VALUES (148,2016,12,16,'Dennis Caldwell',4837.0,'P');
INSERT INTO "earnings" VALUES (149,2016,12,19,'Derrick Macmillan',1494.0,'P');
INSERT INTO "earnings" VALUES (150,2016,12,19,'Diana Timothy',1776.0,'P');
INSERT INTO "earnings" VALUES (151,2016,12,19,'Diane Havens',6480.0,'P');
INSERT INTO "earnings" VALUES (152,2016,12,20,'Diane Martinez',1185.0,'C');
INSERT INTO "earnings" VALUES (153,2016,12,21,'Dianna Balls',3122.0,'P');
INSERT INTO "earnings" VALUES (154,2016,12,22,'Dinah Johnston',4552.0,'P');
INSERT INTO "earnings" VALUES (155,2016,12,23,'Dominique Nixon',5554.0,'P');
INSERT INTO "earnings" VALUES (156,2016,12,27,'Don Ward',3935.0,'P');
INSERT INTO "earnings" VALUES (157,2016,12,27,'Donald Courville',5447.0,'P');
INSERT INTO "earnings" VALUES (158,2016,12,28,'Donald Maclennan',5468.0,'P');
INSERT INTO "earnings" VALUES (159,2016,12,28,'Donna McCollough',743.0,'P');
INSERT INTO "earnings" VALUES (160,2016,12,29,'Donna Winkleman',2585.0,'P');
INSERT INTO "earnings" VALUES (161,2016,12,30,'Dorcas Bosworth',3253.0,'P');
INSERT INTO "earnings" VALUES (162,2016,12,31,'Doris Andrews',2625.0,'P');
INSERT INTO "earnings" VALUES (163,2017,1,1,'Dorothy Best',3821.0,'P');
INSERT INTO "earnings" VALUES (164,2017,1,5,'Dorothy Walker',554.0,'P');
INSERT INTO "earnings" VALUES (165,2017,1,6,'Douglas Davis',1633.0,'C');
INSERT INTO "earnings" VALUES (166,2017,1,10,'Douglas Hagen',4420.0,'P');
INSERT INTO "earnings" VALUES (167,2017,1,10,'Douglas Joyce',5503.0,'P');
INSERT INTO "earnings" VALUES (168,2017,1,10,'Dwight Reynolds',3744.0,'P');
INSERT INTO "earnings" VALUES (169,2017,1,10,'Earl Auman',437.0,'P');
INSERT INTO "earnings" VALUES (170,2017,1,10,'Earl Grossman',2602.0,'C');
INSERT INTO "earnings" VALUES (171,2017,1,13,'Earnest Kalb',3240.0,'P');
INSERT INTO "earnings" VALUES (172,2017,1,13,'Edgar Garcia',4409.0,'P');
INSERT INTO "earnings" VALUES (173,2017,1,13,'Edith Carpenter',3359.0,'P');
INSERT INTO "earnings" VALUES (174,2017,1,16,'Edna Baldwin',5492.0,'P');
INSERT INTO "earnings" VALUES (175,2017,1,16,'Edward Allen',1965.0,'P');
INSERT INTO "earnings" VALUES (176,2017,1,16,'Edward Duncan',1120.0,'C');
INSERT INTO "earnings" VALUES (177,2017,1,16,'Edward Rick',5158.0,'C');
INSERT INTO "earnings" VALUES (178,2017,1,17,'Edwin Davis',4351.0,'P');
INSERT INTO "earnings" VALUES (179,2017,1,18,'Elaine Bennett',797.0,'P');
INSERT INTO "earnings" VALUES (180,2017,1,20,'Elaine Cummings',4143.0,'P');
INSERT INTO "earnings" VALUES (181,2017,1,20,'Eleanor Hernandez',3577.0,'P');
INSERT INTO "earnings" VALUES (182,2017,1,20,'Elena Sanderlin',466.0,'C');
INSERT INTO "earnings" VALUES (183,2017,1,24,'Elizabeth Jones',2284.0,'C');
INSERT INTO "earnings" VALUES (184,2017,1,24,'Elizabeth Milam',5301.0,'C');
INSERT INTO "earnings" VALUES (185,2017,1,25,'Elizabeth Powell',3872.0,'C');
INSERT INTO "earnings" VALUES (186,2017,1,27,'Elizabeth Schneider',5920.0,'C');
INSERT INTO "earnings" VALUES (187,2017,1,28,'Ellen Hudson',3165.0,'C');
INSERT INTO "earnings" VALUES (188,2017,2,1,'Ellen Stafford',2775.0,'P');
INSERT INTO "earnings" VALUES (189,2017,2,1,'Ellis Thomas',4309.0,'P');
INSERT INTO "earnings" VALUES (190,2017,2,2,'Emanuel Perez',3351.0,'P');
INSERT INTO "earnings" VALUES (191,2017,2,2,'Emerson Tharp',1337.0,'C');
INSERT INTO "earnings" VALUES (192,2017,2,3,'Emily Craig',1274.0,'C');
INSERT INTO "earnings" VALUES (193,2017,2,3,'Emily Federico',2699.0,'C');
INSERT INTO "earnings" VALUES (194,2017,2,1,'Erik White',4997.0,'C');
INSERT INTO "earnings" VALUES (195,2017,2,7,'Erika Her',4541.0,'C');
INSERT INTO "earnings" VALUES (196,2017,2,8,'Erna Clark',3407.0,'C');
INSERT INTO "earnings" VALUES (197,2017,2,8,'Ernesto Johnson',6187.0,'P');
INSERT INTO "earnings" VALUES (198,2017,2,8,'Ernesto Riley',6427.0,'P');
INSERT INTO "earnings" VALUES (199,2017,2,8,'Estella Cronk',6704.0,'P');
INSERT INTO "earnings" VALUES (200,2017,2,8,'Esther McCollum',5834.0,'P');
INSERT INTO "earnings" VALUES (201,2017,2,9,'Evelyn Gray',5547.0,'P');
INSERT INTO "earnings" VALUES (202,2017,2,10,'Evelyn Hermes',2436.0,'P');
INSERT INTO "earnings" VALUES (203,2017,2,13,'Evelyn Lockard',664.0,'P');
INSERT INTO "earnings" VALUES (204,2017,2,13,'Evelyn Steele',5062.0,'C');
INSERT INTO "earnings" VALUES (205,2017,2,14,'Evelyn Vega',935.0,'P');
INSERT INTO "earnings" VALUES (206,2017,2,15,'Evelyn Westbrook',462.0,'P');
INSERT INTO "earnings" VALUES (207,2017,2,15,'Fay Jones',5995.0,'P');
INSERT INTO "earnings" VALUES (208,2017,2,15,'Faye Reed',5388.0,'C');
INSERT INTO "earnings" VALUES (209,2017,2,16,'Ferdinand Partridge',5258.0,'P');
INSERT INTO "earnings" VALUES (210,2017,2,17,'Flora Goulette',1409.0,'C');
INSERT INTO "earnings" VALUES (211,2017,2,17,'Frances Owens',1096.0,'P');
INSERT INTO "earnings" VALUES (212,2017,2,21,'Frances Puente',6788.0,'C');
INSERT INTO "earnings" VALUES (213,2017,2,21,'Francie Rau',5821.0,'C');
INSERT INTO "earnings" VALUES (214,2017,2,21,'Francina McCullough',4546.0,'P');
INSERT INTO "earnings" VALUES (215,2017,2,22,'Francis Greenwood',2211.0,'C');
INSERT INTO "earnings" VALUES (216,2017,2,22,'Francisco Zenon',3789.0,'C');
INSERT INTO "earnings" VALUES (217,2017,2,22,'Frank Albright',5813.0,'P');
INSERT INTO "earnings" VALUES (218,2017,2,23,'Frank Cogburn',5589.0,'P');
INSERT INTO "earnings" VALUES (219,2017,2,23,'Frank Smith',1050.0,'C');
INSERT INTO "earnings" VALUES (220,2017,2,23,'Fred Mays',493.0,'P');
INSERT INTO "earnings" VALUES (221,2017,2,24,'Freda Carver',2748.0,'P');
INSERT INTO "earnings" VALUES (222,2017,2,24,'Gabrielle France',1296.0,'C');
INSERT INTO "earnings" VALUES (223,2017,3,1,'Gary Harris',2716.0,'P');
INSERT INTO "earnings" VALUES (224,2017,3,1,'Gary Houk',5654.0,'P');
INSERT INTO "earnings" VALUES (225,2017,3,2,'Gary Wainwright',3237.0,'P');
INSERT INTO "earnings" VALUES (226,2017,3,6,'Gaston Knight',3791.0,'P');
INSERT INTO "earnings" VALUES (227,2017,3,7,'Gay Chung',6009.0,'P');
INSERT INTO "earnings" VALUES (228,2017,3,8,'Gene Feliciano',3090.0,'C');
INSERT INTO "earnings" VALUES (229,2017,3,9,'Gene White',5491.0,'C');
INSERT INTO "earnings" VALUES (230,2017,3,10,'George Davis',1782.0,'P');
INSERT INTO "earnings" VALUES (231,2017,3,11,'George Miller',1223.0,'P');
INSERT INTO "earnings" VALUES (232,2017,3,13,'George Vargas',6943.0,'C');
INSERT INTO "earnings" VALUES (233,2017,3,13,'Geraldine Ward',965.0,'C');
INSERT INTO "earnings" VALUES (234,2017,3,14,'Gerda Bowser',6749.0,'P');
INSERT INTO "earnings" VALUES (235,2017,3,15,'Glenn Maples',5351.0,'P');
INSERT INTO "earnings" VALUES (236,2017,3,16,'Glenn Martin',4015.0,'P');
INSERT INTO "earnings" VALUES (237,2017,3,16,'Glennie Clark',646.0,'C');
INSERT INTO "earnings" VALUES (238,2017,3,17,'Gloria Allred',1501.0,'C');
INSERT INTO "earnings" VALUES (239,2017,3,17,'Gloria Morales',3997.0,'C');
INSERT INTO "earnings" VALUES (240,2017,3,22,'Gloria Wallace',2866.0,'P');
INSERT INTO "earnings" VALUES (241,2017,3,23,'Gordon Gordon',1627.0,'P');
INSERT INTO "earnings" VALUES (242,2017,3,29,'Gordon Morrison',4247.0,'P');
INSERT INTO "earnings" VALUES (243,2017,3,29,'Grant Reese',4009.0,'C');
INSERT INTO "earnings" VALUES (244,2017,3,30,'Gregory Dudley',6139.0,'P');
INSERT INTO "earnings" VALUES (245,2017,3,30,'Gregory Levine',5954.0,'P');
INSERT INTO "earnings" VALUES (246,2017,3,30,'Gudrun McLaughlin',4319.0,'C');
INSERT INTO "earnings" VALUES (247,2017,3,30,'Guy Callahan',1388.0,'P');
INSERT INTO "earnings" VALUES (248,2017,3,31,'Gwendolyn Leslie',5093.0,'P');
INSERT INTO "earnings" VALUES (249,2017,4,3,'Harold Bennett',649.0,'C');
INSERT INTO "earnings" VALUES (250,2017,4,3,'Harold Farmer',781.0,'P');
INSERT INTO "earnings" VALUES (251,2017,4,4,'Harold Hickman',1106.0,'P');
INSERT INTO "earnings" VALUES (252,2017,4,4,'Harvey Smith',2674.0,'P');
INSERT INTO "earnings" VALUES (253,2017,4,10,'Hazel Griffin',2468.0,'P');
INSERT INTO "earnings" VALUES (254,2017,4,11,'Hazel Titus',1414.0,'P');
INSERT INTO "earnings" VALUES (255,2017,4,12,'Heather White',2987.0,'P');
INSERT INTO "earnings" VALUES (256,2017,4,12,'Heidi Palacios',3024.0,'C');
INSERT INTO "earnings" VALUES (257,2017,4,12,'Helen Anderson',6451.0,'P');
INSERT INTO "earnings" VALUES (258,2017,4,18,'Helen Clowers',6994.0,'C');
INSERT INTO "earnings" VALUES (259,2017,4,19,'Henry Kelly',3489.0,'P');
INSERT INTO "earnings" VALUES (260,2017,4,20,'Henry Sullivan',5654.0,'C');
INSERT INTO "earnings" VALUES (261,2017,4,21,'Heriberto Espinoza',5430.0,'P');
INSERT INTO "earnings" VALUES (262,2017,4,21,'Howard Correia',1842.0,'C');
INSERT INTO "earnings" VALUES (263,2017,4,21,'Huey Riggins',2638.0,'P');
INSERT INTO "earnings" VALUES (264,2017,4,24,'Ian Miller',4695.0,'P');
INSERT INTO "earnings" VALUES (265,2017,4,26,'Ida Burdett',3924.0,'P');
INSERT INTO "earnings" VALUES (266,2017,4,26,'Ignacio Lewis',3964.0,'P');
INSERT INTO "earnings" VALUES (267,2017,4,27,'Ione Harris',2337.0,'C');
INSERT INTO "earnings" VALUES (268,2017,4,28,'Irene McCraney',4192.0,'P');
INSERT INTO "earnings" VALUES (269,2017,4,28,'Irma Davis',2693.0,'P');
INSERT INTO "earnings" VALUES (270,2017,5,4,'Irma Schmidt',5334.0,'P');
INSERT INTO "earnings" VALUES (271,2017,5,4,'Isabella Williams',3557.0,'P');
INSERT INTO "earnings" VALUES (272,2017,5,8,'Isreal Simpson',4394.0,'P');
INSERT INTO "earnings" VALUES (273,2017,5,8,'Jack Garcia',6127.0,'P');
INSERT INTO "earnings" VALUES (274,2017,5,9,'Jackie Kiel',1604.0,'P');
INSERT INTO "earnings" VALUES (275,2017,5,9,'Jackie Sullivan',2328.0,'C');
INSERT INTO "earnings" VALUES (276,2017,5,9,'James Cervantes',2433.0,'P');
INSERT INTO "earnings" VALUES (277,2017,5,10,'James Corey',2323.0,'C');
INSERT INTO "earnings" VALUES (278,2017,5,11,'James Hill',4390.0,'C');
INSERT INTO "earnings" VALUES (279,2017,5,12,'James Howell',3740.0,'C');
INSERT INTO "earnings" VALUES (280,2017,5,15,'James Mundy',1488.0,'P');
INSERT INTO "earnings" VALUES (281,2017,5,16,'James Odom',2104.0,'P');
INSERT INTO "earnings" VALUES (282,2017,5,17,'James Walsh',3976.0,'C');
INSERT INTO "earnings" VALUES (283,2017,5,17,'James Wiese',811.0,'C');
INSERT INTO "earnings" VALUES (284,2017,5,18,'James Young',2833.0,'C');
INSERT INTO "earnings" VALUES (285,2017,5,18,'Jamie Fortner',3342.0,'C');
INSERT INTO "earnings" VALUES (286,2017,5,18,'Jamie Nickerson',5179.0,'P');
INSERT INTO "earnings" VALUES (287,2017,5,18,'Jamie Pitts',4614.0,'P');
INSERT INTO "earnings" VALUES (288,2017,5,19,'Jamie Warren',4709.0,'P');
INSERT INTO "earnings" VALUES (289,2017,5,24,'Jana Laird',5109.0,'C');
INSERT INTO "earnings" VALUES (290,2017,5,24,'Jane Cole',6692.0,'C');
INSERT INTO "earnings" VALUES (291,2017,5,24,'Jane Costello',1806.0,'P');
INSERT INTO "earnings" VALUES (292,2017,5,30,'Janet Benites',3813.0,'C');
INSERT INTO "earnings" VALUES (293,2017,5,30,'Janet Gish',3343.0,'C');
INSERT INTO "earnings" VALUES (294,2017,5,30,'Janet Pauls',3350.0,'P');
INSERT INTO "earnings" VALUES (295,2017,5,31,'Janet Rodriguez',5377.0,'C');
INSERT INTO "earnings" VALUES (296,2017,5,31,'Janet Smith',5817.0,'C');
INSERT INTO "earnings" VALUES (297,2017,6,1,'Janice Faucher',5811.0,'P');
INSERT INTO "earnings" VALUES (298,2017,6,5,'Janice Ramos',3571.0,'C');
INSERT INTO "earnings" VALUES (299,2017,6,5,'Jason Seaton',5028.0,'P');
INSERT INTO "earnings" VALUES (300,2017,6,7,'Jean James',5936.0,'P');
INSERT INTO "earnings" VALUES (301,2017,6,7,'Jean Zayas',5323.0,'C');
INSERT INTO "earnings" VALUES (302,2017,6,7,'Jeff Smith',5283.0,'C');
INSERT INTO "earnings" VALUES (303,2017,6,8,'Jeffery Garcia',4216.0,'C');
INSERT INTO "earnings" VALUES (304,2017,6,9,'Jeffrey Thompson',3898.0,'C');
INSERT INTO "earnings" VALUES (305,2017,6,9,'Jennifer Corl',5467.0,'C');
INSERT INTO "earnings" VALUES (306,2017,6,13,'Jennifer Johnson',1284.0,'C');
INSERT INTO "earnings" VALUES (307,2017,6,13,'Jennifer Spence',923.0,'P');
INSERT INTO "earnings" VALUES (308,2017,6,13,'Jeremiah Schatz',3034.0,'C');
INSERT INTO "earnings" VALUES (309,2017,6,13,'Jesse Wilson',1318.0,'P');
INSERT INTO "earnings" VALUES (310,2017,6,14,'Jessica Mitchell',2382.0,'C');
INSERT INTO "earnings" VALUES (311,2017,6,14,'Jessica Whitmire',1973.0,'P');
INSERT INTO "earnings" VALUES (312,2017,6,15,'Jessica Zander',5989.0,'C');
INSERT INTO "earnings" VALUES (313,2017,6,15,'Jessie Hayden',6373.0,'P');
INSERT INTO "earnings" VALUES (314,2017,6,16,'Jessie Johnson',4554.0,'P');
INSERT INTO "earnings" VALUES (315,2017,6,19,'Jessie Rivera',3456.0,'C');
INSERT INTO "earnings" VALUES (316,2017,6,21,'Jesus Messina',6874.0,'C');
INSERT INTO "earnings" VALUES (317,2017,6,22,'Jesus Meyer',2056.0,'P');
INSERT INTO "earnings" VALUES (318,2017,6,22,'Jewell Davidson',6405.0,'P');
INSERT INTO "earnings" VALUES (319,2017,6,23,'Jimmie Burford',1872.0,'C');
INSERT INTO "earnings" VALUES (320,2017,6,23,'Jimmie Gibbons',4719.0,'P');
INSERT INTO "earnings" VALUES (321,2017,6,24,'Jimmie Murray',4785.0,'P');
INSERT INTO "earnings" VALUES (322,2017,6,27,'Jo Reid',5056.0,'C');
INSERT INTO "earnings" VALUES (323,2017,6,27,'Joann Gaynor',2168.0,'P');
INSERT INTO "earnings" VALUES (324,2017,6,27,'Joann Sweeney',2146.0,'P');
INSERT INTO "earnings" VALUES (325,2017,6,27,'Joe Harris',3440.0,'C');
INSERT INTO "earnings" VALUES (326,2017,6,28,'Joe Jackson',6129.0,'P');
INSERT INTO "earnings" VALUES (327,2017,6,28,'Joella Deen',1555.0,'C');
INSERT INTO "earnings" VALUES (328,2017,6,28,'John Barra',3790.0,'C');
INSERT INTO "earnings" VALUES (329,2017,6,28,'John Beckham',5407.0,'P');
INSERT INTO "earnings" VALUES (330,2017,6,28,'John Benton',649.0,'C');
INSERT INTO "earnings" VALUES (331,2017,6,29,'John Blair',451.0,'P');
INSERT INTO "earnings" VALUES (332,2017,6,29,'John Gardin',5689.0,'C');
INSERT INTO "earnings" VALUES (333,2017,7,3,'John Jeanbaptiste',3856.0,'C');
INSERT INTO "earnings" VALUES (334,2017,7,6,'John Leslie',608.0,'C');
INSERT INTO "earnings" VALUES (335,2017,7,6,'John Nelson',3125.0,'C');
INSERT INTO "earnings" VALUES (336,2017,7,6,'John Rogers',577.0,'P');
INSERT INTO "earnings" VALUES (337,2017,7,6,'John Rousey',734.0,'P');
INSERT INTO "earnings" VALUES (338,2017,7,7,'John Utsey',534.0,'P');
INSERT INTO "earnings" VALUES (339,2017,7,7,'John Wittig',1179.0,'P');
INSERT INTO "earnings" VALUES (340,2017,7,7,'John Young',2322.0,'C');
INSERT INTO "earnings" VALUES (341,2017,7,10,'Jolene Woodside',3799.0,'P');
INSERT INTO "earnings" VALUES (342,2017,7,10,'Jorge Starling',1969.0,'C');
INSERT INTO "earnings" VALUES (343,2017,7,10,'Jose Alvarez',2356.0,'C');
INSERT INTO "earnings" VALUES (344,2017,7,11,'Jose Biggerstaff',3979.0,'P');
INSERT INTO "earnings" VALUES (345,2017,7,12,'Jose Chavarria',1384.0,'P');
INSERT INTO "earnings" VALUES (346,2017,7,12,'Jose McGowan',1961.0,'C');
INSERT INTO "earnings" VALUES (347,2017,7,13,'Jose Sinclair',1034.0,'P');
INSERT INTO "earnings" VALUES (348,2017,7,13,'Jose Slagle',925.0,'P');
INSERT INTO "earnings" VALUES (349,2017,7,13,'Joseph Blevins',4799.0,'P');
INSERT INTO "earnings" VALUES (350,2017,7,18,'Joseph Campos',4338.0,'P');
INSERT INTO "earnings" VALUES (351,2017,7,18,'Joseph Shannon',3103.0,'P');
INSERT INTO "earnings" VALUES (352,2017,7,19,'Joseph Turner',5122.0,'P');
INSERT INTO "earnings" VALUES (353,2017,7,19,'Joseph Vincent',6775.0,'P');
INSERT INTO "earnings" VALUES (354,2017,7,19,'Joshua Jones',6267.0,'P');
INSERT INTO "earnings" VALUES (355,2017,7,19,'Joy Clark',6379.0,'C');
INSERT INTO "earnings" VALUES (356,2017,7,21,'Joyce Miller',718.0,'P');
INSERT INTO "earnings" VALUES (357,2017,7,21,'Joyce Moore',4152.0,'P');
INSERT INTO "earnings" VALUES (358,2017,7,24,'Juana Hawks',1241.0,'C');
INSERT INTO "earnings" VALUES (359,2017,7,24,'Juanita Carr',4951.0,'P');
INSERT INTO "earnings" VALUES (360,2017,7,26,'Juanita Ricketts',1625.0,'P');
INSERT INTO "earnings" VALUES (361,2017,7,26,'Judith Carter',1973.0,'C');
INSERT INTO "earnings" VALUES (362,2017,7,26,'Judy Johnson',1089.0,'P');
INSERT INTO "earnings" VALUES (363,2017,7,27,'Julian Jackson',3549.0,'P');
INSERT INTO "earnings" VALUES (364,2017,7,31,'Julie John',1053.0,'P');
INSERT INTO "earnings" VALUES (365,2017,7,31,'Sherry Gallardo',913.0,'P');
INSERT INTO "earnings" VALUES (366,2017,7,31,'Sherry Townsend',3450.0,'P');
INSERT INTO "earnings" VALUES (367,2017,7,31,'Shirley Bunch',4472.0,'P');
INSERT INTO "earnings" VALUES (368,2017,8,1,'Shirley Sipe',6050.0,'P');
INSERT INTO "earnings" VALUES (369,2017,8,1,'Sondra Gilbreath',5264.0,'P');
INSERT INTO "earnings" VALUES (370,2017,8,2,'Spencer Mills',2992.0,'P');
INSERT INTO "earnings" VALUES (371,2017,8,2,'Stacey Pruett',2735.0,'C');
INSERT INTO "earnings" VALUES (372,2017,8,2,'Stanley Cook',1774.0,'P');
INSERT INTO "earnings" VALUES (373,2017,8,3,'Star Noah',4056.0,'C');
INSERT INTO "earnings" VALUES (374,2017,8,3,'Stephan Karlson',6801.0,'C');
INSERT INTO "earnings" VALUES (375,2017,8,4,'Stephanie Nagy',6444.0,'P');
INSERT INTO "earnings" VALUES (376,2017,8,4,'Stephen Whitman',2098.0,'P');
INSERT INTO "earnings" VALUES (377,2017,8,8,'Steve Williams',5352.0,'C');
INSERT INTO "earnings" VALUES (378,2017,8,8,'Steven Brott',5006.0,'P');
INSERT INTO "earnings" VALUES (379,2017,8,9,'Steven Robinson',2090.0,'C');
INSERT INTO "earnings" VALUES (380,2017,8,10,'Steven Suiter',6087.0,'C');
INSERT INTO "earnings" VALUES (381,2017,8,15,'Sue Rodriquez',613.0,'P');
INSERT INTO "earnings" VALUES (382,2017,8,17,'Susan Dickson',6060.0,'P');
INSERT INTO "earnings" VALUES (383,2017,8,17,'Susan Lambert',4809.0,'C');
INSERT INTO "earnings" VALUES (384,2017,8,18,'Suzanne Huerta',1884.0,'C');
INSERT INTO "earnings" VALUES (385,2017,8,18,'Tammy Freeman',4216.0,'P');
INSERT INTO "earnings" VALUES (386,2017,8,22,'Tammy Miller',2495.0,'P');
INSERT INTO "earnings" VALUES (387,2017,8,23,'Tasha Corbett',5169.0,'C');
INSERT INTO "earnings" VALUES (388,2017,8,23,'Tasha Meyer',5499.0,'P');
INSERT INTO "earnings" VALUES (389,2017,8,23,'Tera Espino',1501.0,'C');
INSERT INTO "earnings" VALUES (390,2017,8,24,'Teresa Nunez',3883.0,'C');
INSERT INTO "earnings" VALUES (391,2017,8,24,'Teresia Hofer',1586.0,'C');
INSERT INTO "earnings" VALUES (392,2017,8,25,'Terrance Branum',3735.0,'P');
INSERT INTO "earnings" VALUES (393,2017,8,28,'Terri Moore',4718.0,'P');
INSERT INTO "earnings" VALUES (394,2017,8,28,'Terri Rodgers',6005.0,'P');
INSERT INTO "earnings" VALUES (395,2017,8,29,'Terrie Smith',736.0,'C');
INSERT INTO "earnings" VALUES (396,2017,8,29,'Terry Burch',3025.0,'P');
INSERT INTO "earnings" VALUES (397,2017,8,29,'Terry Raab',926.0,'P');
INSERT INTO "earnings" VALUES (398,2017,8,29,'Theresa Shore',495.0,'P');
INSERT INTO "earnings" VALUES (399,2017,8,30,'Thomas Hall',2700.0,'C');
INSERT INTO "earnings" VALUES (400,2017,8,30,'Thomas Hartley',5382.0,'C');
INSERT INTO "earnings" VALUES (401,2017,8,30,'Thomas McAnulty',4780.0,'P');
INSERT INTO "earnings" VALUES (402,2017,8,30,'Thomas Pillsbury',4443.0,'P');
INSERT INTO "earnings" VALUES (403,2017,8,30,'Thomas Pollard',6656.0,'P');
INSERT INTO "earnings" VALUES (404,2017,9,1,'Thomas Sims',6889.0,'C');
INSERT INTO "earnings" VALUES (405,2017,9,1,'Thomas Stidham',998.0,'C');
INSERT INTO "earnings" VALUES (406,2017,9,1,'Tiffany Smiley',6183.0,'C');
INSERT INTO "earnings" VALUES (407,2017,9,4,'Tim Spillman',6664.0,'C');
INSERT INTO "earnings" VALUES (408,2017,9,4,'Timothy Pena',561.0,'P');
INSERT INTO "earnings" VALUES (409,2017,9,5,'Timothy Porter',5503.0,'C');
INSERT INTO "earnings" VALUES (410,2017,9,5,'Tomas Truong',562.0,'C');
INSERT INTO "earnings" VALUES (411,2017,9,6,'Tommie Jackson',4913.0,'C');
INSERT INTO "earnings" VALUES (412,2017,9,6,'Tommie Lee',2900.0,'C');
INSERT INTO "earnings" VALUES (413,2017,9,6,'Tony Bray',6163.0,'C');
INSERT INTO "earnings" VALUES (414,2017,9,8,'Valerie Vivian',3025.0,'P');
INSERT INTO "earnings" VALUES (415,2017,9,12,'Vanesa Durham',1949.0,'C');
INSERT INTO "earnings" VALUES (416,2017,9,15,'Venus Hall',5998.0,'P');
INSERT INTO "earnings" VALUES (417,2017,9,18,'Verna Kaufman',4507.0,'C');
INSERT INTO "earnings" VALUES (418,2017,9,18,'Vernon Eliason',6709.0,'C');
INSERT INTO "earnings" VALUES (419,2017,9,19,'Vicki Merrick',6877.0,'P');
INSERT INTO "earnings" VALUES (420,2017,9,20,'Victor Bailey',3941.0,'P');
INSERT INTO "earnings" VALUES (421,2017,9,20,'Victor Vang',1448.0,'P');
INSERT INTO "earnings" VALUES (422,2017,9,21,'Victoria Allen',4159.0,'C');
INSERT INTO "earnings" VALUES (423,2017,9,21,'Viola Bruning',4135.0,'P');
INSERT INTO "earnings" VALUES (424,2017,9,21,'Virginia Jolly',5326.0,'C');
INSERT INTO "earnings" VALUES (425,2017,9,22,'Walter Caroll',2797.0,'C');
INSERT INTO "earnings" VALUES (426,2017,9,22,'Walter Martinez',5351.0,'P');
INSERT INTO "earnings" VALUES (427,2017,9,25,'Walter Mitchell',1379.0,'P');
INSERT INTO "earnings" VALUES (428,2017,9,27,'Wendy Gloss',4023.0,'P');
INSERT INTO "earnings" VALUES (429,2017,9,27,'William Bongiorno',1921.0,'P');
INSERT INTO "earnings" VALUES (430,2017,9,27,'William Coley',2162.0,'P');
INSERT INTO "earnings" VALUES (431,2017,10,1,'William Gonzales',3810.0,'P');
INSERT INTO "earnings" VALUES (432,2017,10,2,'William Held',4228.0,'P');
INSERT INTO "earnings" VALUES (433,2017,10,3,'William Johnson',1795.0,'C');
INSERT INTO "earnings" VALUES (434,2017,10,3,'William Letourneau',2798.0,'P');
INSERT INTO "earnings" VALUES (435,2017,10,5,'William Page',2511.0,'P');
INSERT INTO "earnings" VALUES (436,2017,10,6,'William Ping',4920.0,'C');
INSERT INTO "earnings" VALUES (437,2017,10,9,'William Smith',2834.0,'P');
INSERT INTO "earnings" VALUES (438,2017,10,9,'William Thompson',743.0,'C');
INSERT INTO "earnings" VALUES (439,2017,10,10,'William Torres',539.0,'P');
INSERT INTO "earnings" VALUES (440,2017,10,12,'William Wagner',1162.0,'C');
INSERT INTO "earnings" VALUES (441,2017,10,13,'William Witherspoon',4705.0,'P');
INSERT INTO "earnings" VALUES (442,2017,10,13,'Willie Wheless',5797.0,'P');
INSERT INTO "earnings" VALUES (443,2017,10,17,'Willie Williams',6317.0,'C');
INSERT INTO "earnings" VALUES (444,2017,10,18,'Willis Lee',2916.0,'P');
INSERT INTO "earnings" VALUES (445,2017,10,18,'Yon Fitzpatrick',428.0,'C');
INSERT INTO "earnings" VALUES (446,2017,10,19,'Yvone Colon',5275.0,'C');
INSERT INTO "earnings" VALUES (447,2017,10,19,'Zella Frazier',740.0,'P');
INSERT INTO "earnings" VALUES (448,2017,10,19,'Mark Kennedy',1613.0,'C');
INSERT INTO "earnings" VALUES (449,2017,10,19,'Mark Smith',3736.0,'P');
INSERT INTO "earnings" VALUES (450,2017,10,20,'Mark Wages',3270.0,'P');
INSERT INTO "earnings" VALUES (451,2017,10,23,'Mark White',2426.0,'C');
INSERT INTO "earnings" VALUES (452,2017,10,25,'Marlene Chapman',5845.0,'C');
INSERT INTO "earnings" VALUES (453,2017,10,26,'Marsha Russ',6082.0,'C');
INSERT INTO "earnings" VALUES (454,2017,10,26,'Marsha Watkins',2305.0,'P');
INSERT INTO "earnings" VALUES (455,2017,10,29,'Marshall Bates',2260.0,'C');
INSERT INTO "earnings" VALUES (456,2017,10,30,'Martha Paquin',1276.0,'P');
INSERT INTO "earnings" VALUES (457,2017,10,30,'Martha Thompson',6288.0,'C');
INSERT INTO "earnings" VALUES (458,2017,10,31,'Mary Bailey',3405.0,'P');
INSERT INTO "earnings" VALUES (459,2017,11,1,'Mary Blanche',6200.0,'P');
INSERT INTO "earnings" VALUES (460,2017,11,1,'Mary Bowers',5328.0,'P');
INSERT INTO "earnings" VALUES (461,2017,11,3,'Mary Castro',4556.0,'P');
INSERT INTO "earnings" VALUES (462,2017,11,3,'Mary Downey',5905.0,'C');
INSERT INTO "earnings" VALUES (463,2017,11,3,'Mary Fortney',4813.0,'P');
INSERT INTO "earnings" VALUES (464,2017,11,6,'Mary Leblanc',5536.0,'C');
INSERT INTO "earnings" VALUES (465,2017,11,7,'Mary Martin',5220.0,'P');
INSERT INTO "earnings" VALUES (466,2017,11,9,'Mary Mock',764.0,'C');
INSERT INTO "earnings" VALUES (467,2017,11,9,'Mary Petry',2410.0,'P');
INSERT INTO "earnings" VALUES (468,2017,11,10,'Mary Watkin',1265.0,'C');
INSERT INTO "earnings" VALUES (469,2017,11,10,'Matthew Harp',4173.0,'C');
INSERT INTO "earnings" VALUES (470,2017,11,10,'Matthew Ross',1896.0,'C');
INSERT INTO "earnings" VALUES (471,2017,11,13,'Matthew West',2105.0,'P');
INSERT INTO "earnings" VALUES (472,2017,11,13,'Matthew White',1029.0,'P');
INSERT INTO "earnings" VALUES (473,2017,11,15,'Maureen Hatfield',473.0,'C');
INSERT INTO "earnings" VALUES (474,2017,11,16,'Mayme Whitesides',5263.0,'P');
INSERT INTO "earnings" VALUES (475,2017,11,21,'Mayra Webster',3308.0,'P');
INSERT INTO "earnings" VALUES (476,2017,11,22,'Melanie Marshall',3839.0,'C');
INSERT INTO "earnings" VALUES (477,2017,11,22,'Melia Jensen',587.0,'P');
INSERT INTO "earnings" VALUES (478,2017,11,23,'Melissa Doerr',4763.0,'C');
INSERT INTO "earnings" VALUES (479,2017,11,23,'Melissa Jaynes',4283.0,'P');
INSERT INTO "earnings" VALUES (480,2017,11,27,'Michael Dotson',4853.0,'P');
INSERT INTO "earnings" VALUES (481,2017,11,27,'Michael Durst',5407.0,'P');
INSERT INTO "earnings" VALUES (482,2017,11,27,'Michael Frazier',4160.0,'C');
INSERT INTO "earnings" VALUES (483,2017,11,28,'Michael James',6378.0,'P');
INSERT INTO "earnings" VALUES (484,2017,11,28,'Michael Rue',5468.0,'P');
INSERT INTO "earnings" VALUES (485,2017,11,29,'Michael Shealey',6793.0,'P');
INSERT INTO "earnings" VALUES (486,2017,11,29,'Michael Sherlock',5467.0,'P');
INSERT INTO "earnings" VALUES (487,2017,11,29,'Micheal Ramirez',4334.0,'P');
INSERT INTO "earnings" VALUES (488,2017,12,1,'Michele Straus',5004.0,'P');
INSERT INTO "earnings" VALUES (489,2017,12,1,'Michelle Kennedy',6230.0,'C');
INSERT INTO "earnings" VALUES (490,2017,12,4,'Migdalia Ratcliffe',2380.0,'P');
INSERT INTO "earnings" VALUES (491,2017,12,4,'Minnie Behn',444.0,'P');
INSERT INTO "earnings" VALUES (492,2017,12,5,'Miranda Hall',5713.0,'P');
INSERT INTO "earnings" VALUES (493,2017,12,5,'Miranda Reily',4022.0,'P');
INSERT INTO "earnings" VALUES (494,2017,12,5,'Miriam Stanley',6728.0,'P');
INSERT INTO "earnings" VALUES (495,2017,12,6,'Misty Reeves',5316.0,'C');
INSERT INTO "earnings" VALUES (496,2017,12,6,'Monica Rogers',2104.0,'C');
INSERT INTO "earnings" VALUES (497,2017,12,7,'Monica Sanders',4425.0,'P');
INSERT INTO "earnings" VALUES (498,2017,12,11,'Nancy Bingham',1403.0,'P');
INSERT INTO "earnings" VALUES (499,2017,12,11,'Nancy Garner',1114.0,'P');
INSERT INTO "earnings" VALUES (500,2017,12,13,'Nancy McAlexander',4028.0,'P');
INSERT INTO "earnings" VALUES (501,2017,12,13,'Natasha Fehr',3587.0,'P');
INSERT INTO "earnings" VALUES (502,2017,12,14,'Nathan Purington',1039.0,'P');
INSERT INTO "earnings" VALUES (503,2017,12,18,'Nellie Hutchens',3991.0,'P');
INSERT INTO "earnings" VALUES (504,2017,12,21,'Nicholas Hill',2106.0,'C');
INSERT INTO "earnings" VALUES (505,2017,12,21,'Nora Miller',2724.0,'P');
INSERT INTO "earnings" VALUES (506,2017,12,22,'Nora Tate',1421.0,'P');
INSERT INTO "earnings" VALUES (507,2017,12,22,'Norma Mullins',4807.0,'C');
INSERT INTO "earnings" VALUES (508,2017,12,22,'Norman Lattimore',6977.0,'P');
INSERT INTO "earnings" VALUES (509,2017,12,26,'Norman Silva',3075.0,'P');
INSERT INTO "earnings" VALUES (510,2017,12,27,'Numbers Lightner',1179.0,'P');
INSERT INTO "earnings" VALUES (511,2017,12,27,'Olivia Lee',6270.0,'P');
INSERT INTO "earnings" VALUES (512,2017,12,29,'Opal Huntsberry',2156.0,'P');
INSERT INTO "earnings" VALUES (513,2017,12,29,'Otis Cargill',4690.0,'P');
INSERT INTO "earnings" VALUES (514,2018,1,2,'Otto Queen',2622.0,'P');
INSERT INTO "earnings" VALUES (515,2018,1,3,'Pamela Gamble',995.0,'P');
INSERT INTO "earnings" VALUES (516,2018,1,3,'Pansy Canady',601.0,'P');
INSERT INTO "earnings" VALUES (517,2018,1,3,'Patricia Paradiso',2086.0,'P');
INSERT INTO "earnings" VALUES (518,2018,1,3,'Patricia Slocum',2756.0,'C');
INSERT INTO "earnings" VALUES (519,2018,1,3,'Patricia Taylor',5773.0,'C');
INSERT INTO "earnings" VALUES (520,2018,1,5,'Patricia Tiernan',3401.0,'P');
INSERT INTO "earnings" VALUES (521,2018,1,5,'Patrick Barnwell',6445.0,'C');
INSERT INTO "earnings" VALUES (522,2018,1,5,'Patrick Garcia',4831.0,'C');
INSERT INTO "earnings" VALUES (523,2018,1,8,'Patrick Reed',2097.0,'C');
INSERT INTO "earnings" VALUES (524,2018,1,9,'Patrick Sipes',2543.0,'P');
INSERT INTO "earnings" VALUES (525,2018,1,9,'Patrick Smith',4946.0,'P');
INSERT INTO "earnings" VALUES (526,2018,1,11,'Patrick Williams',4130.0,'C');
INSERT INTO "earnings" VALUES (527,2018,1,11,'Paul Arreola',6332.0,'P');
INSERT INTO "earnings" VALUES (528,2018,1,15,'Paul Bell',5604.0,'P');
INSERT INTO "earnings" VALUES (529,2018,1,16,'Paul Dickson',2883.0,'P');
INSERT INTO "earnings" VALUES (530,2018,1,16,'Paul Kerr',5125.0,'C');
INSERT INTO "earnings" VALUES (531,2018,1,16,'Paul Salinas',3668.0,'C');
INSERT INTO "earnings" VALUES (532,2018,1,16,'Paula Madison',5394.0,'C');
INSERT INTO "earnings" VALUES (533,2018,1,17,'Peggy Meeks',6458.0,'C');
INSERT INTO "earnings" VALUES (534,2018,1,18,'Peggy Smith',6084.0,'C');
INSERT INTO "earnings" VALUES (535,2018,1,18,'Peggy Williams',2858.0,'C');
INSERT INTO "earnings" VALUES (536,2018,1,18,'Percy Diaz',2906.0,'C');
INSERT INTO "earnings" VALUES (537,2018,1,22,'Phillip Johnston',1676.0,'C');
INSERT INTO "earnings" VALUES (538,2018,1,24,'Rafael Garcia',5649.0,'C');
INSERT INTO "earnings" VALUES (539,2018,1,24,'Ralph Friedman',4869.0,'P');
INSERT INTO "earnings" VALUES (540,2018,1,24,'Ramona Cheney',5079.0,'C');
INSERT INTO "earnings" VALUES (541,2018,1,25,'Randall Christopher',5833.0,'C');
INSERT INTO "earnings" VALUES (542,2018,1,26,'Randall Griffin',2858.0,'C');
INSERT INTO "earnings" VALUES (543,2018,1,26,'Randall Lemieux',790.0,'P');
INSERT INTO "earnings" VALUES (544,2018,1,26,'Randi Brown',2990.0,'C');
INSERT INTO "earnings" VALUES (545,2018,1,30,'Randy Laliberte',887.0,'C');
INSERT INTO "earnings" VALUES (546,2018,1,30,'Raphael Adair',4735.0,'C');
INSERT INTO "earnings" VALUES (547,2018,1,31,'Raul Colon',1777.0,'C');
INSERT INTO "earnings" VALUES (548,2018,1,31,'Ray Copeland',4762.0,'C');
INSERT INTO "earnings" VALUES (549,2018,1,31,'Raymond Carrico',1849.0,'P');
INSERT INTO "earnings" VALUES (550,2018,2,1,'Raymond Collins',593.0,'P');
INSERT INTO "earnings" VALUES (551,2018,2,2,'Raymond Corriveau',5559.0,'C');
INSERT INTO "earnings" VALUES (552,2018,2,5,'Rebecca Baltazar',1191.0,'P');
INSERT INTO "earnings" VALUES (553,2018,2,5,'Rebecca Williams',644.0,'P');
INSERT INTO "earnings" VALUES (554,2018,2,6,'Regina Kelley',4306.0,'P');
INSERT INTO "earnings" VALUES (555,2018,2,8,'Renee Johnson',6995.0,'C');
INSERT INTO "earnings" VALUES (556,2018,2,14,'Reva Vaughan',6889.0,'C');
INSERT INTO "earnings" VALUES (557,2018,2,14,'Rhonda Deady',5107.0,'P');
INSERT INTO "earnings" VALUES (558,2018,2,14,'Richard Cooper',5248.0,'P');
INSERT INTO "earnings" VALUES (559,2018,2,14,'Richard Farnsworth',1823.0,'P');
INSERT INTO "earnings" VALUES (560,2018,2,15,'Richard Heller',5341.0,'P');
INSERT INTO "earnings" VALUES (561,2018,2,15,'Richard Marrone',5819.0,'P');
INSERT INTO "earnings" VALUES (562,2018,2,15,'Richard Montemayor',4942.0,'P');
INSERT INTO "earnings" VALUES (563,2018,2,16,'Richard Patel',5170.0,'C');
INSERT INTO "earnings" VALUES (564,2018,2,16,'Richard Shaw',2849.0,'C');
INSERT INTO "earnings" VALUES (565,2018,2,19,'Rita Ervin',5386.0,'P');
INSERT INTO "earnings" VALUES (566,2018,2,19,'Rita Foshee',6084.0,'P');
INSERT INTO "earnings" VALUES (567,2018,2,20,'Rita Howard',4715.0,'P');
INSERT INTO "earnings" VALUES (568,2018,2,20,'Robert Boe',6056.0,'C');
INSERT INTO "earnings" VALUES (569,2018,2,20,'Robert Carter',6583.0,'C');
INSERT INTO "earnings" VALUES (570,2018,2,20,'Robert Colby',6507.0,'P');
INSERT INTO "earnings" VALUES (571,2018,2,21,'Robert Fortner',6145.0,'P');
INSERT INTO "earnings" VALUES (572,2018,2,21,'Robert Francis',6766.0,'P');
INSERT INTO "earnings" VALUES (573,2018,2,22,'Robert Grandy',6710.0,'C');
INSERT INTO "earnings" VALUES (574,2018,2,23,'Robert Graves',2253.0,'P');
INSERT INTO "earnings" VALUES (575,2018,2,26,'Robert Huntley',4295.0,'P');
INSERT INTO "earnings" VALUES (576,2018,2,26,'Robert Janes',3225.0,'C');
INSERT INTO "earnings" VALUES (577,2018,2,27,'Robert Lis',714.0,'P');
INSERT INTO "earnings" VALUES (578,2018,2,28,'Robert McCarty',592.0,'P');
INSERT INTO "earnings" VALUES (579,2018,2,28,'Robert McNeely',5388.0,'P');
INSERT INTO "earnings" VALUES (580,2018,3,1,'Robert Norton',4062.0,'C');
INSERT INTO "earnings" VALUES (581,2018,3,1,'Robert Russell',4932.0,'C');
INSERT INTO "earnings" VALUES (582,2018,3,1,'Robert Tarver',5659.0,'C');
INSERT INTO "earnings" VALUES (583,2018,3,2,'Roberta Knuth',945.0,'P');
INSERT INTO "earnings" VALUES (584,2018,3,6,'Robin Millsaps',2651.0,'P');
INSERT INTO "earnings" VALUES (585,2018,3,6,'Rogelio Rodriguez',6676.0,'P');
INSERT INTO "earnings" VALUES (586,2018,3,6,'Roger McMurray',6680.0,'P');
INSERT INTO "earnings" VALUES (587,2018,3,7,'Roman Ross',1356.0,'C');
INSERT INTO "earnings" VALUES (588,2018,3,7,'Ronald Biggerstaff',1718.0,'C');
INSERT INTO "earnings" VALUES (589,2018,3,8,'Ronald Valentine',3903.0,'P');
INSERT INTO "earnings" VALUES (590,2018,3,8,'Rosa Rosenbaum',1981.0,'C');
INSERT INTO "earnings" VALUES (591,2018,3,8,'Rose Stephens',6317.0,'C');
INSERT INTO "earnings" VALUES (592,2018,3,8,'Roy Guerrero',3581.0,'C');
INSERT INTO "earnings" VALUES (593,2018,3,9,'Russell Miller',868.0,'C');
INSERT INTO "earnings" VALUES (594,2018,3,12,'Russell Rogers',484.0,'P');
INSERT INTO "earnings" VALUES (595,2018,3,12,'Russell Smith',2660.0,'C');
INSERT INTO "earnings" VALUES (596,2018,3,13,'Ruth Andrews',6840.0,'P');
INSERT INTO "earnings" VALUES (597,2018,3,13,'Ruth Hill',690.0,'P');
INSERT INTO "earnings" VALUES (598,2018,3,14,'Ruth Platt',2708.0,'P');
INSERT INTO "earnings" VALUES (599,2018,3,14,'Ryan Hart',6396.0,'P');
INSERT INTO "earnings" VALUES (600,2018,3,15,'Sadie Williams',5600.0,'P');
INSERT INTO "earnings" VALUES (601,2018,3,15,'Sally Dock',759.0,'C');
INSERT INTO "earnings" VALUES (602,2018,3,19,'Sally Patterson',4992.0,'C');
INSERT INTO "earnings" VALUES (603,2018,3,20,'Samantha Sanders',3592.0,'P');
INSERT INTO "earnings" VALUES (604,2018,3,20,'Samantha Smith',1481.0,'C');
INSERT INTO "earnings" VALUES (605,2018,3,20,'Sammie Lincoln',4441.0,'P');
INSERT INTO "earnings" VALUES (606,2018,3,21,'Savanna Schuler',4583.0,'P');
INSERT INTO "earnings" VALUES (607,2018,3,21,'Scarlet Okelly',2307.0,'P');
INSERT INTO "earnings" VALUES (608,2018,3,23,'Scott Baur',3739.0,'P');
INSERT INTO "earnings" VALUES (609,2018,3,23,'Scott Cohen',3014.0,'P');
INSERT INTO "earnings" VALUES (610,2018,3,28,'Scott Macias',907.0,'C');
INSERT INTO "earnings" VALUES (611,2018,4,4,'Scott McNair',1775.0,'C');
INSERT INTO "earnings" VALUES (612,2018,4,5,'Sean Ferrell',4684.0,'P');
INSERT INTO "earnings" VALUES (613,2018,4,6,'Sean Lamas',2184.0,'C');
INSERT INTO "earnings" VALUES (614,2018,4,8,'Sharon Nelson',5025.0,'P');
INSERT INTO "earnings" VALUES (615,2018,4,9,'Sheila Jackson',3579.0,'C');
INSERT INTO "earnings" VALUES (616,2018,4,11,'Sherrie Francis',6836.0,'C');
INSERT INTO "earnings" VALUES (617,2018,4,11,'Sherry Gallardo',2448.0,'P');
INSERT INTO "earnings" VALUES (618,2018,4,11,'Sherry Townsend',4013.0,'C');
INSERT INTO "earnings" VALUES (619,2018,4,11,'Sherry Townsend',1784.0,'C');
INSERT INTO "earnings" VALUES (620,2018,4,12,'Shirley Bunch',544.0,'P');
INSERT INTO "earnings" VALUES (621,2018,4,12,'Shirley Sipe',3276.0,'P');
INSERT INTO "earnings" VALUES (622,2018,4,12,'Sondra Gilbreath',1600.0,'C');
INSERT INTO "earnings" VALUES (623,2018,4,13,'Spencer Mills',2012.0,'P');
INSERT INTO "earnings" VALUES (624,2018,4,16,'Stacey Pruett',6693.0,'P');
INSERT INTO "earnings" VALUES (625,2018,4,16,'Stanley Cook',1738.0,'C');
INSERT INTO "earnings" VALUES (626,2018,4,16,'Star Noah',6897.0,'C');
INSERT INTO "earnings" VALUES (627,2018,4,16,'Stephan Karlson',4127.0,'C');
INSERT INTO "earnings" VALUES (628,2018,4,16,'Stephanie Nagy',705.0,'P');
INSERT INTO "earnings" VALUES (629,2018,4,17,'Stephen Whitman',580.0,'P');
INSERT INTO "earnings" VALUES (630,2018,4,17,'Steve Williams',451.0,'C');
INSERT INTO "earnings" VALUES (631,2018,4,18,'Steven Brott',2744.0,'P');
INSERT INTO "earnings" VALUES (632,2018,4,18,'Steven Robinson',6517.0,'P');
INSERT INTO "earnings" VALUES (633,2018,4,18,'Steven Suiter',5809.0,'P');
INSERT INTO "earnings" VALUES (634,2018,4,19,'Sue Rodriquez',1204.0,'P');
INSERT INTO "earnings" VALUES (635,2018,4,20,'Susan Dickson',3887.0,'C');
INSERT INTO "earnings" VALUES (636,2018,4,23,'Susan Lambert',6163.0,'P');
INSERT INTO "earnings" VALUES (637,2018,4,23,'Tammy Freeman',6105.0,'C');
INSERT INTO "earnings" VALUES (638,2018,4,24,'Tammy Miller',6136.0,'C');
INSERT INTO "earnings" VALUES (639,2018,4,24,'Tasha Corbett',1803.0,'C');
INSERT INTO "earnings" VALUES (640,2018,4,24,'Tasha Meyer',5595.0,'C');
INSERT INTO "earnings" VALUES (641,2018,4,25,'Tera Espino',1660.0,'P');
INSERT INTO "earnings" VALUES (642,2018,4,27,'Teresa Nunez',3693.0,'P');
INSERT INTO "earnings" VALUES (643,2018,5,1,'Teresia Hofer',6247.0,'P');
INSERT INTO "earnings" VALUES (644,2018,5,1,'Terrance Branum',2150.0,'P');
INSERT INTO "earnings" VALUES (645,2018,5,2,'Terri Moore',3244.0,'P');
INSERT INTO "earnings" VALUES (646,2018,5,2,'Terri Rodgers',2160.0,'P');
INSERT INTO "earnings" VALUES (647,2018,5,3,'Terrie Smith',2249.0,'P');
INSERT INTO "earnings" VALUES (648,2018,5,3,'Terry Burch',2141.0,'P');
INSERT INTO "earnings" VALUES (649,2018,5,3,'Terry Raab',3287.0,'P');
INSERT INTO "earnings" VALUES (650,2018,5,3,'Theresa Shore',2147.0,'P');
INSERT INTO "earnings" VALUES (651,2018,5,7,'Thomas Hall',4416.0,'P');
INSERT INTO "earnings" VALUES (652,2018,5,7,'Thomas Hartley',4185.0,'C');
INSERT INTO "earnings" VALUES (653,2018,5,8,'Thomas McAnulty',6549.0,'P');
INSERT INTO "earnings" VALUES (654,2018,5,9,'Thomas Pillsbury',3652.0,'P');
INSERT INTO "earnings" VALUES (655,2018,5,14,'Thomas Pollard',4269.0,'C');
INSERT INTO "earnings" VALUES (656,2018,5,14,'Thomas Sims',843.0,'C');
INSERT INTO "earnings" VALUES (657,2018,5,16,'Thomas Stidham',6193.0,'C');
INSERT INTO "earnings" VALUES (658,2018,5,17,'Tiffany Smiley',1694.0,'P');
INSERT INTO "earnings" VALUES (659,2018,5,17,'Tim Spillman',1933.0,'C');
INSERT INTO "earnings" VALUES (660,2018,5,17,'Timothy Pena',4641.0,'C');
INSERT INTO "earnings" VALUES (661,2018,5,18,'Timothy Porter',2530.0,'C');
INSERT INTO "earnings" VALUES (662,2018,5,21,'Tomas Truong',5591.0,'P');
INSERT INTO "earnings" VALUES (663,2018,5,21,'Tommie Jackson',1432.0,'P');
INSERT INTO "earnings" VALUES (664,2018,5,21,'Tommie Lee',3854.0,'P');
INSERT INTO "earnings" VALUES (665,2018,5,22,'Tony Bray',2177.0,'P');
INSERT INTO "earnings" VALUES (666,2018,5,22,'Valerie Vivian',2182.0,'P');
INSERT INTO "earnings" VALUES (667,2018,5,22,'Vanesa Durham',3643.0,'P');
INSERT INTO "earnings" VALUES (668,2018,5,23,'Venus Hall',2259.0,'P');
INSERT INTO "earnings" VALUES (669,2018,5,24,'Verna Kaufman',2302.0,'P');
INSERT INTO "earnings" VALUES (670,2018,5,24,'Vernon Eliason',799.0,'C');
INSERT INTO "earnings" VALUES (671,2018,5,24,'Vicki Merrick',6405.0,'C');
INSERT INTO "earnings" VALUES (672,2018,5,28,'Victor Bailey',2923.0,'P');
INSERT INTO "earnings" VALUES (673,2018,5,29,'Victor Vang',1638.0,'P');
INSERT INTO "earnings" VALUES (674,2018,5,29,'Victoria Allen',1245.0,'P');
INSERT INTO "earnings" VALUES (675,2018,5,29,'Viola Bruning',2028.0,'C');
INSERT INTO "earnings" VALUES (676,2018,5,31,'Virginia Jolly',6658.0,'C');
INSERT INTO "earnings" VALUES (677,2018,5,31,'Walter Caroll',724.0,'P');
INSERT INTO "earnings" VALUES (678,2018,6,4,'Walter Martinez',5191.0,'P');
INSERT INTO "earnings" VALUES (679,2018,6,4,'Walter Mitchell',2222.0,'P');
INSERT INTO "earnings" VALUES (680,2018,6,4,'Wendy Gloss',6108.0,'P');
INSERT INTO "earnings" VALUES (681,2018,6,4,'William Bongiorno',5984.0,'P');
INSERT INTO "earnings" VALUES (682,2018,6,5,'William Coley',3067.0,'C');
INSERT INTO "earnings" VALUES (683,2018,6,5,'William Gonzales',3782.0,'P');
INSERT INTO "earnings" VALUES (684,2018,6,5,'William Held',2229.0,'P');
INSERT INTO "earnings" VALUES (685,2018,6,6,'William Johnson',4759.0,'P');
INSERT INTO "earnings" VALUES (686,2018,6,6,'William Letourneau',1520.0,'P');
INSERT INTO "earnings" VALUES (687,2018,6,6,'William Page',5980.0,'P');
INSERT INTO "earnings" VALUES (688,2018,6,7,'William Ping',1921.0,'P');
INSERT INTO "earnings" VALUES (689,2018,6,8,'William Smith',4955.0,'P');
INSERT INTO "earnings" VALUES (690,2018,6,11,'William Thompson',3858.0,'C');
INSERT INTO "earnings" VALUES (691,2018,6,11,'William Torres',645.0,'P');
INSERT INTO "earnings" VALUES (692,2018,6,11,'William Wagner',960.0,'P');
INSERT INTO "earnings" VALUES (693,2018,6,18,'William Witherspoon',2487.0,'C');
INSERT INTO "earnings" VALUES (694,2018,6,19,'Willie Wheless',3090.0,'C');
INSERT INTO "earnings" VALUES (695,2018,6,21,'Willie Williams',5868.0,'P');
INSERT INTO "earnings" VALUES (696,2018,6,21,'Willis Lee',1627.0,'P');
INSERT INTO "earnings" VALUES (697,2018,6,21,'Sherry Townsend',4040.0,'P');
INSERT INTO "earnings" VALUES (698,2018,6,23,'Shirley Bunch',5439.0,'C');
INSERT INTO "earnings" VALUES (699,2018,6,23,'Shirley Sipe',1200.0,'P');
INSERT INTO "earnings" VALUES (700,2018,6,25,'Sondra Gilbreath',2930.0,'C');
INSERT INTO "earnings" VALUES (701,2018,6,28,'Spencer Mills',650.0,'P');
INSERT INTO "earnings" VALUES (702,2018,6,28,'Stacey Pruett',720.0,'P');
INSERT INTO "earnings" VALUES (703,2018,6,28,'Stanley Cook',550.0,'P');
INSERT INTO "earnings" VALUES (704,2018,6,28,'Star Noah',600.0,'P');
INSERT INTO "earnings" VALUES (705,2018,7,2,'Stephan Karlson',580.0,'C');
INSERT INTO "earnings" VALUES (706,2018,7,3,'Stephanie Nagy',850.0,'C');
INSERT INTO "earnings" VALUES (707,2018,7,4,'Stephen Whitman',3632.0,'C');
INSERT INTO "earnings" VALUES (708,2018,7,4,'Steve Williams',600.0,'P');
INSERT INTO "earnings" VALUES (709,2018,7,4,'Steven Brott',600.0,'P');
INSERT INTO "earnings" VALUES (710,2018,7,10,'Steven Robinson',600.0,'P');
INSERT INTO "earnings" VALUES (711,2018,7,11,'Steven Suiter',580.0,'C');
INSERT INTO "earnings" VALUES (712,2018,7,12,'Sue Rodriquez',600.0,'P');
INSERT INTO "earnings" VALUES (713,2018,7,12,'Susan Dickson',600.0,'P');
INSERT INTO "earnings" VALUES (714,2018,7,13,'Susan Lambert',600.0,'P');
INSERT INTO "earnings" VALUES (715,2018,7,17,'Spencer Mills',2670.0,'P');
INSERT INTO "earnings" VALUES (716,2018,7,19,'Stacey Pruett',1270.0,'P');
INSERT INTO "earnings" VALUES (717,2018,7,19,'Stanley Cook',600.0,'P');
INSERT INTO "earnings" VALUES (718,2018,7,20,'Star Noah',600.0,'C');
INSERT INTO "earnings" VALUES (719,2018,7,23,'Stephan Karlson',600.0,'P');
INSERT INTO "earnings" VALUES (720,2018,7,23,'Stephanie Nagy',850.0,'C');
INSERT INTO "earnings" VALUES (721,2018,7,23,'Stephen Whitman',670.0,'P');
INSERT INTO "earnings" VALUES (722,2018,7,23,'Steve Williams',600.0,'P');
INSERT INTO "earnings" VALUES (723,2018,7,23,'Steven Brott',48512.0,'C');
INSERT INTO "earnings" VALUES (724,2018,7,24,'Steven Robinson',883.0,'C');
INSERT INTO "earnings" VALUES (725,2018,7,25,'Steven Suiter',900.0,'C');
INSERT INTO "earnings" VALUES (726,2018,7,26,'Sue Rodriquez',600.0,'P');
INSERT INTO "earnings" VALUES (727,2018,7,26,'Aaron Anderson',600.0,'P');
INSERT INTO "earnings" VALUES (728,2018,7,27,'Aaron Coleman',850.0,'C');
INSERT INTO "earnings" VALUES (729,2018,7,27,'Aaron Squires',2560.0,'P');
INSERT INTO "earnings" VALUES (730,2018,7,30,'Abigail Mullen',600.0,'P');
INSERT INTO "earnings" VALUES (731,2018,7,30,'Adam Wages',720.0,'P');
INSERT INTO "earnings" VALUES (732,2018,7,31,'Adele Koepke',680.0,'P');
INSERT INTO "earnings" VALUES (733,2018,8,1,'Aida Crosby',1550.0,'P');
INSERT INTO "earnings" VALUES (734,2018,8,2,'Alan Owens',1610.0,'P');
INSERT INTO "earnings" VALUES (735,2018,8,2,'Alan Walther',1200.0,'P');
INSERT INTO "earnings" VALUES (736,2018,8,2,'Albert McNeill',2830.0,'C');
INSERT INTO "earnings" VALUES (737,2018,8,6,'Alexander Jarrett',3480.0,'P');
INSERT INTO "earnings" VALUES (738,2018,8,7,'Alexander Troia',1750.0,'C');
INSERT INTO "earnings" VALUES (739,2018,8,8,'Alfred Berry',600.0,'P');
INSERT INTO "earnings" VALUES (740,2018,8,8,'Alfred Madden',1308.0,'C');
INSERT INTO "earnings" VALUES (741,2018,8,9,'Alice Huff',600.0,'P');
INSERT INTO "earnings" VALUES (742,2018,8,10,'Aline Campfield',600.0,'P');
INSERT INTO "earnings" VALUES (743,2018,8,10,'Alison Taft',600.0,'P');
INSERT INTO "earnings" VALUES (744,2018,8,13,'Allison Jennings',1905.0,'P');
INSERT INTO "earnings" VALUES (745,2018,8,14,'Alma Allred',3630.0,'P');
INSERT INTO "earnings" VALUES (746,2018,8,16,'Alma Shelton',1520.0,'C');
INSERT INTO "earnings" VALUES (747,2018,8,17,'Amanda Benford',2337.0,'C');
INSERT INTO "earnings" VALUES (748,2018,8,17,'Amber Galbreath',275.0,'C');
INSERT INTO "earnings" VALUES (749,2018,8,19,'Amber James',5000.0,'C');
INSERT INTO "earnings" VALUES (750,2018,8,21,'Amy Bates',1430.0,'C');
INSERT INTO "earnings" VALUES (751,2018,8,21,'Amy Scott',1425.0,'P');
INSERT INTO "earnings" VALUES (752,2018,8,21,'Amy Wilson',550.0,'P');
INSERT INTO "earnings" VALUES (753,2018,8,23,'Amy Woodall',3458.0,'P');
INSERT INTO "earnings" VALUES (754,2018,8,24,'Andrea Maldonado',4557.0,'C');
INSERT INTO "earnings" VALUES (755,2018,8,28,'Angela Betts',900.0,'C');
INSERT INTO "earnings" VALUES (756,2018,8,29,'Angelo Myers',2048.0,'C');
INSERT INTO "earnings" VALUES (757,2018,8,29,'Ann Jones',1556.0,'C');
INSERT INTO "earnings" VALUES (758,2018,8,29,'Anna Ryan',1738.0,'C');
INSERT INTO "earnings" VALUES (759,2018,8,30,'Anne Douglas',650.0,'C');
INSERT INTO "earnings" VALUES (760,2018,8,31,'Annette Barnes',650.0,'C');
INSERT INTO "earnings" VALUES (761,2018,8,31,'Annie Cotton',330.0,'C');
INSERT INTO "earnings" VALUES (762,2018,9,5,'Annie Ferrante',2200.0,'P');
INSERT INTO "earnings" VALUES (763,2018,9,6,'Annie Torpey',700.0,'C');
INSERT INTO "earnings" VALUES (764,2018,9,10,'Anthony McGraw',700.0,'P');
INSERT INTO "earnings" VALUES (765,2018,9,11,'Anthony Reed',5960.0,'P');
INSERT INTO "earnings" VALUES (766,2018,9,11,'April Coe',300.0,'P');
INSERT INTO "earnings" VALUES (767,2018,9,11,'Arnold Atkinson',330.0,'C');
INSERT INTO "earnings" VALUES (768,2018,9,12,'Arthur Fontenot',795.0,'C');
INSERT INTO "earnings" VALUES (769,2018,9,13,'Audrey Hill',1300.0,'P');
INSERT INTO "earnings" VALUES (770,2018,9,14,'Barbara Vila',1600.0,'P');
INSERT INTO "earnings" VALUES (771,2018,9,17,'Belle Hunter',4810.0,'P');
INSERT INTO "earnings" VALUES (772,2018,9,17,'Benjamin Dale',880.0,'P');
INSERT INTO "earnings" VALUES (773,2018,9,18,'Benjamin Griggs',1550.0,'P');
INSERT INTO "earnings" VALUES (774,2018,9,20,'Benjamin Roper',1300.0,'P');
INSERT INTO "earnings" VALUES (775,2018,9,20,'Bernice Williams',2050.0,'P');
INSERT INTO "earnings" VALUES (776,2018,9,21,'Berta Brock',5119.0,'P');
INSERT INTO "earnings" VALUES (777,2018,9,21,'Berta McGinley',1250.0,'P');
INSERT INTO "earnings" VALUES (778,2018,9,21,'Betty Waltrip',3696.0,'C');
INSERT INTO "earnings" VALUES (779,2018,9,25,'Beulah Baumgarten',4500.0,'P');
INSERT INTO "earnings" VALUES (780,2018,9,26,'Beverly Henshaw',1665.0,'C');
INSERT INTO "earnings" VALUES (781,2018,9,26,'Beverly Simpson',990.0,'C');
INSERT INTO "earnings" VALUES (782,2018,9,28,'Billy Reed',800.0,'P');
INSERT INTO "earnings" VALUES (783,2018,10,5,'Billy Straley',650.0,'P');
INSERT INTO "earnings" VALUES (784,2018,10,8,'Billye Izquierdo',975.0,'P');
INSERT INTO "earnings" VALUES (785,2018,10,10,'Blair Davis',2125.0,'C');
INSERT INTO "earnings" VALUES (786,2018,10,11,'Blanche Leitner',5570.0,'P');
INSERT INTO "earnings" VALUES (787,2018,10,16,'Bo Lynch',1800.0,'P');
INSERT INTO "earnings" VALUES (788,2018,10,17,'Bobby Rogers',1290.0,'P');
INSERT INTO "earnings" VALUES (789,2018,10,19,'Brandon Perryman',650.0,'P');
INSERT INTO "earnings" VALUES (790,2018,10,19,'Brandy Kovacs',3920.0,'P');
INSERT INTO "earnings" VALUES (791,2018,10,22,'Brandy Tyson',660.0,'C');
INSERT INTO "earnings" VALUES (792,2018,10,24,'Brenda Norris',265.35,'C');
INSERT INTO "earnings" VALUES (793,2018,10,25,'Brent Hart',1800.0,'P');
INSERT INTO "earnings" VALUES (794,2018,10,29,'Brett Collins',650.0,'P');
INSERT INTO "earnings" VALUES (795,2018,10,29,'Brett Tucker',650.0,'P');
INSERT INTO "earnings" VALUES (796,2018,10,30,'Brian Rich',3200.0,'P');
INSERT INTO "earnings" VALUES (797,2018,10,30,'Brittany Brown',805.0,'C');
INSERT INTO "earnings" VALUES (798,2018,10,30,'Byron Cannella',1300.0,'P');
INSERT INTO "earnings" VALUES (799,2018,10,31,'Byron Paxson',2655.0,'C');
INSERT INTO "earnings" VALUES (800,2018,10,31,'Calvin Perez',1456.0,'C');
INSERT INTO "earnings" VALUES (801,2018,10,31,'Candace Martin',2070.0,'P');
INSERT INTO "earnings" VALUES (802,2018,11,3,'Candice Collins',3000.0,'C');
INSERT INTO "earnings" VALUES (803,2018,11,5,'Carlos Cantrell',650.0,'P');
INSERT INTO "earnings" VALUES (804,2018,11,7,'Carmen Roberson',950.0,'P');
INSERT INTO "earnings" VALUES (805,2018,11,7,'Carol Wynn',2637.0,'P');
INSERT INTO "earnings" VALUES (806,2018,11,9,'Carolina Davis',10090.0,'C');
INSERT INTO "earnings" VALUES (807,2018,11,12,'Caroline Brown',600.0,'P');
INSERT INTO "earnings" VALUES (808,2018,11,14,'Carolyn Shane',1530.0,'C');
INSERT INTO "earnings" VALUES (809,2018,11,15,'Carolyn Thomas',1200.0,'P');
INSERT INTO "earnings" VALUES (810,2018,11,16,'Catherine Johnson',650.0,'P');
INSERT INTO "earnings" VALUES (811,2018,11,16,'Celeste Acres',1800.0,'P');
INSERT INTO "earnings" VALUES (812,2018,11,20,'Celeste Rogers',1450.0,'P');
INSERT INTO "earnings" VALUES (813,2018,11,21,'Chad Frazier',650.0,'P');
INSERT INTO "earnings" VALUES (814,2018,11,21,'Charles Acosta',15088.0,'P');
INSERT INTO "earnings" VALUES (815,2018,11,22,'Charles Falk',650.0,'P');
INSERT INTO "earnings" VALUES (816,2018,11,26,'Charles Hammack',610.0,'C');
INSERT INTO "earnings" VALUES (817,2018,11,26,'Charles Hodge',650.0,'P');
INSERT INTO "earnings" VALUES (818,2018,11,29,'Charles Richardson',2400.0,'P');
INSERT INTO "earnings" VALUES (819,2018,11,30,'Charles Smoot',650.0,'P');
INSERT INTO "earnings" VALUES (820,2018,12,3,'Charles Strain',1200.0,'P');
INSERT INTO "earnings" VALUES (821,2018,12,3,'Cheryl Otis',2040.0,'P');
INSERT INTO "earnings" VALUES (822,2018,12,5,'Cheryl Russ',610.0,'C');
INSERT INTO "earnings" VALUES (823,2018,12,5,'Chris Bell',930.0,'C');
INSERT INTO "earnings" VALUES (824,2018,12,6,'Christina Murrah',6100.0,'P');
INSERT INTO "earnings" VALUES (825,2018,12,6,'Christine Marable',4275.0,'P');
INSERT INTO "earnings" VALUES (826,2018,12,7,'Christine Obrien',2790.0,'C');
INSERT INTO "earnings" VALUES (827,2018,12,7,'Christine Stewart',1300.0,'P');
INSERT INTO "earnings" VALUES (828,2018,12,10,'Christopher Brewster',1300.0,'P');
INSERT INTO "earnings" VALUES (829,2018,12,10,'Christopher Dumont',650.0,'P');
INSERT INTO "earnings" VALUES (830,2018,12,10,'Christopher Foster',19837.0,'C');
INSERT INTO "earnings" VALUES (831,2018,12,11,'Christopher Kuhns',650.0,'P');
INSERT INTO "earnings" VALUES (832,2018,12,11,'Christopher Reed',650.0,'P');
INSERT INTO "earnings" VALUES (833,2018,12,12,'Christopher Utz',1300.0,'P');
INSERT INTO "earnings" VALUES (834,2018,12,13,'Christopher Vann',650.0,'P');
INSERT INTO "earnings" VALUES (835,2018,12,17,'Cindy Coffee',680.0,'P');
INSERT INTO "earnings" VALUES (836,2018,12,17,'Clara Halvorson',4110.0,'P');
INSERT INTO "earnings" VALUES (837,2018,12,17,'Clare Donahue',950.0,'P');
INSERT INTO "earnings" VALUES (838,2018,12,18,'Clarence Garcia',1550.0,'P');
INSERT INTO "earnings" VALUES (839,2018,12,18,'Claretta Baker',600.0,'P');
INSERT INTO "earnings" VALUES (840,2018,12,19,'Claude Miller',1300.0,'P');
INSERT INTO "earnings" VALUES (841,2018,12,20,'Claudia Hebert',610.0,'C');
INSERT INTO "earnings" VALUES (842,2018,12,20,'Colleen Thomas',800.0,'P');
INSERT INTO "earnings" VALUES (843,2018,12,20,'Connie Maio',650.0,'P');
INSERT INTO "earnings" VALUES (844,2018,12,21,'Connie Sumner',650.0,'C');
INSERT INTO "earnings" VALUES (845,2018,12,21,'Corinne Calderon',650.0,'P');
INSERT INTO "earnings" VALUES (846,2018,12,26,'Curt Mitchell',780.0,'P');
INSERT INTO "earnings" VALUES (847,2018,12,27,'Curtis Morales',1300.0,'P');
INSERT INTO "earnings" VALUES (848,2019,1,2,'Curtis Ricci',610.0,'C');
INSERT INTO "earnings" VALUES (849,2019,1,2,'Cynthia Albro',2100.0,'P');
INSERT INTO "earnings" VALUES (850,2019,1,2,'Cynthia Merino',650.0,'P');
INSERT INTO "earnings" VALUES (851,2019,1,7,'Cynthia Powell',1300.0,'P');
INSERT INTO "earnings" VALUES (852,2019,1,8,'Dale Johnsen',13187.0,'C');
INSERT INTO "earnings" VALUES (853,2019,1,10,'Dana Baillargeon',950.0,'P');
INSERT INTO "earnings" VALUES (854,2019,1,10,'Dana Howell',700.0,'P');
INSERT INTO "earnings" VALUES (855,2019,1,11,'Danny Broussard',4965.0,'C');
INSERT INTO "earnings" VALUES (856,2019,1,11,'Danny Frick',700.0,'C');
INSERT INTO "earnings" VALUES (857,2019,1,14,'Dante Ward',700.0,'P');
INSERT INTO "earnings" VALUES (858,2019,1,14,'Darla Jacobson',650.0,'P');
INSERT INTO "earnings" VALUES (859,2019,1,14,'Darryl Le',2450.0,'P');
INSERT INTO "earnings" VALUES (860,2019,1,16,'David Ahearn',1300.0,'P');
INSERT INTO "earnings" VALUES (861,2019,1,16,'David Bonenfant',650.0,'P');
INSERT INTO "earnings" VALUES (862,2019,1,16,'David Brown',700.0,'P');
INSERT INTO "earnings" VALUES (863,2019,1,17,'David Burnell',1400.0,'P');
INSERT INTO "earnings" VALUES (864,2019,1,18,'David Martin',800.0,'P');
INSERT INTO "earnings" VALUES (865,2019,1,18,'David Scott',950.0,'C');
INSERT INTO "earnings" VALUES (866,2019,1,18,'Dawn Ranger',1950.0,'P');
INSERT INTO "earnings" VALUES (867,2019,1,18,'Deanna Myricks',6220.0,'C');
INSERT INTO "earnings" VALUES (868,2019,1,21,'Deborah Pooley',1000.0,'C');
INSERT INTO "earnings" VALUES (869,2019,1,21,'Debra Mingo',2450.0,'P');
INSERT INTO "earnings" VALUES (870,2019,1,22,'Debrah Christensen',1750.0,'P');
INSERT INTO "earnings" VALUES (871,2019,1,22,'Della Barber',5125.0,'C');
INSERT INTO "earnings" VALUES (872,2019,1,24,'Denise Wyman',800.0,'P');
INSERT INTO "earnings" VALUES (873,2019,1,25,'Dennis Burks',1400.0,'P');
INSERT INTO "earnings" VALUES (874,2019,1,25,'Dennis Caldwell',650.0,'P');
INSERT INTO "earnings" VALUES (875,2019,1,27,'Derrick Macmillan',20587.0,'P');
INSERT INTO "earnings" VALUES (876,2019,1,29,'Diana Timothy',700.0,'P');
INSERT INTO "earnings" VALUES (877,2019,1,29,'Diane Havens',4180.0,'P');
INSERT INTO "earnings" VALUES (878,2019,1,30,'Diane Martinez',5940.0,'C');
INSERT INTO "earnings" VALUES (879,2019,1,31,'Dianna Balls',610.0,'C');
INSERT INTO "earnings" VALUES (880,2019,2,1,'Dinah Johnston',800.0,'P');
INSERT INTO "earnings" VALUES (881,2019,2,4,'Dominique Nixon',2600.0,'P');
INSERT INTO "earnings" VALUES (882,2019,2,4,'Don Ward',4660.0,'C');
INSERT INTO "earnings" VALUES (883,2019,2,5,'Donald Courville',700.0,'P');
INSERT INTO "earnings" VALUES (884,2019,2,6,'Donald Maclennan',1700.0,'P');
INSERT INTO "earnings" VALUES (885,2019,2,6,'Donna McCollough',1350.0,'P');
INSERT INTO "earnings" VALUES (886,2019,2,8,'Donna Winkleman',1720.0,'C');
INSERT INTO "earnings" VALUES (887,2019,2,8,'Dorcas Bosworth',1400.0,'P');
INSERT INTO "earnings" VALUES (888,2019,2,8,'Doris Andrews',1400.0,'P');
INSERT INTO "earnings" VALUES (889,2019,2,12,'Dorothy Best',1400.0,'P');
INSERT INTO "earnings" VALUES (890,2019,2,12,'Dorothy Walker',1400.0,'P');
INSERT INTO "earnings" VALUES (891,2019,2,12,'Douglas Davis',1820.0,'P');
INSERT INTO "earnings" VALUES (892,2019,2,12,'Douglas Hagen',700.0,'P');
INSERT INTO "earnings" VALUES (893,2019,2,12,'Douglas Joyce',287.0,'C');
INSERT INTO "earnings" VALUES (894,2019,2,12,'Dwight Reynolds',1400.0,'P');
INSERT INTO "earnings" VALUES (895,2019,2,12,'Earl Auman',1400.0,'P');
INSERT INTO "earnings" VALUES (896,2019,2,13,'Earl Grossman',500.0,'C');
INSERT INTO "earnings" VALUES (897,2019,2,13,'Earnest Kalb',650.0,'P');
INSERT INTO "earnings" VALUES (898,2019,2,14,'Edgar Garcia',700.0,'P');
INSERT INTO "earnings" VALUES (899,2019,2,15,'Edith Carpenter',700.0,'P');
INSERT INTO "earnings" VALUES (900,2019,2,15,'Edna Baldwin',1400.0,'P');
INSERT INTO "earnings" VALUES (901,2019,2,18,'Edward Allen',1000.0,'P');
INSERT INTO "earnings" VALUES (902,2019,2,18,'Edward Duncan',3250.0,'P');
INSERT INTO "earnings" VALUES (903,2019,2,18,'Edward Rick',4410.0,'C');
INSERT INTO "earnings" VALUES (904,2019,2,18,'Edwin Davis',1000.0,'C');
INSERT INTO "earnings" VALUES (905,2019,2,19,'Elaine Bennett',1950.0,'P');
INSERT INTO "earnings" VALUES (906,2019,2,21,'Elaine Cummings',1400.0,'P');
INSERT INTO "earnings" VALUES (907,2019,2,21,'Eleanor Hernandez',650.0,'P');
INSERT INTO "earnings" VALUES (908,2019,2,22,'Elena Sanderlin',300.0,'P');
INSERT INTO "earnings" VALUES (909,2019,2,22,'Elizabeth Jones',2210.0,'P');
INSERT INTO "earnings" VALUES (910,2019,2,26,'Elizabeth Milam',700.0,'P');
INSERT INTO "earnings" VALUES (911,2019,2,26,'Elizabeth Powell',700.0,'P');
INSERT INTO "earnings" VALUES (912,2019,2,27,'Elizabeth Schneider',1950.0,'P');
INSERT INTO "earnings" VALUES (913,2019,2,28,'Ellen Hudson',650.0,'P');
INSERT INTO "earnings" VALUES (914,2019,2,28,'Ellen Stafford',1950.0,'P');
INSERT INTO "earnings" VALUES (915,2019,3,6,'Ellis Thomas',700.0,'P');
INSERT INTO "earnings" VALUES (916,2019,3,6,'Emanuel Perez',2100.0,'P');
INSERT INTO "earnings" VALUES (917,2019,3,6,'Emerson Tharp',2470.0,'C');
INSERT INTO "earnings" VALUES (918,2019,3,6,'Emily Craig',2800.0,'P');
INSERT INTO "earnings" VALUES (919,2019,3,6,'Emily Federico',700.0,'P');
INSERT INTO "earnings" VALUES (920,2019,3,7,'Erik White',900.0,'P');
INSERT INTO "earnings" VALUES (921,2019,3,8,'Erika Her',19029.6,'C');
INSERT INTO "earnings" VALUES (922,2019,3,10,'Erna Clark',4660.0,'P');
INSERT INTO "earnings" VALUES (923,2019,3,11,'Ernesto Johnson',1000.0,'C');
INSERT INTO "earnings" VALUES (924,2019,3,11,'Ernesto Riley',1700.0,'P');
INSERT INTO "earnings" VALUES (925,2019,3,13,'Estella Cronk',700.0,'P');
INSERT INTO "earnings" VALUES (926,2019,3,14,'Esther McCollum',2600.0,'P');
INSERT INTO "earnings" VALUES (927,2019,3,14,'Evelyn Gray',1400.0,'C');
INSERT INTO "earnings" VALUES (928,2019,3,15,'Evelyn Hermes',11680.0,'P');
INSERT INTO "earnings" VALUES (929,2019,3,18,'Evelyn Lockard',700.0,'P');
INSERT INTO "earnings" VALUES (930,2019,3,18,'Evelyn Steele',700.0,'C');
INSERT INTO "earnings" VALUES (931,2019,3,18,'Evelyn Vega',19320.0,'C');
INSERT INTO "earnings" VALUES (932,2019,3,19,'Evelyn Westbrook',800.0,'C');
INSERT INTO "earnings" VALUES (933,2019,3,19,'Fay Jones',2650.0,'C');
INSERT INTO "earnings" VALUES (934,2019,3,20,'Faye Reed',500.0,'C');
INSERT INTO "earnings" VALUES (935,2019,3,20,'Ferdinand Partridge',2100.0,'P');
INSERT INTO "earnings" VALUES (936,2019,3,20,'Flora Goulette',700.0,'P');
INSERT INTO "earnings" VALUES (937,2019,3,22,'Frances Owens',14465.0,'C');
INSERT INTO "earnings" VALUES (938,2019,3,22,'Frances Puente',800.0,'P');
INSERT INTO "earnings" VALUES (939,2019,3,26,'Francie Rau',1700.0,'C');
INSERT INTO "earnings" VALUES (940,2019,3,26,'Francina McCullough',352.35,'C');
INSERT INTO "earnings" VALUES (941,2019,3,27,'Francis Greenwood',2370.0,'P');
INSERT INTO "earnings" VALUES (942,2019,3,28,'Francisco Zenon',1860.0,'C');
INSERT INTO "earnings" VALUES (943,2019,3,28,'Frank Albright',3056.0,'C');
INSERT INTO "earnings" VALUES (944,2019,4,3,'Frank Cogburn',1400.0,'P');
INSERT INTO "earnings" VALUES (945,2019,4,3,'Frank Smith',700.0,'P');
INSERT INTO "earnings" VALUES (946,2019,4,3,'Fred Mays',700.0,'C');
INSERT INTO "earnings" VALUES (947,2019,4,3,'Freda Carver',800.0,'P');
INSERT INTO "earnings" VALUES (948,2019,4,4,'Gabrielle France',8188.0,'P');
INSERT INTO "earnings" VALUES (949,2019,4,4,'Gary Harris',2100.0,'P');
INSERT INTO "earnings" VALUES (950,2019,4,5,'Gary Houk',800.0,'P');
INSERT INTO "earnings" VALUES (951,2019,4,8,'Gary Wainwright',800.0,'P');
INSERT INTO "earnings" VALUES (952,2019,4,9,'Gaston Knight',2050.0,'P');
INSERT INTO "earnings" VALUES (953,2019,4,10,'Gay Chung',1400.0,'P');
INSERT INTO "earnings" VALUES (954,2019,4,10,'Gene Feliciano',2800.0,'C');
INSERT INTO "earnings" VALUES (955,2019,4,11,'Gene White',1000.0,'C');
INSERT INTO "earnings" VALUES (956,2019,4,11,'George Davis',700.0,'P');
INSERT INTO "earnings" VALUES (957,2019,4,11,'George Miller',800.0,'P');
INSERT INTO "earnings" VALUES (958,2019,4,12,'George Vargas',1600.0,'C');
INSERT INTO "earnings" VALUES (959,2019,4,12,'Geraldine Ward',700.0,'P');
INSERT INTO "earnings" VALUES (960,2019,4,15,'Gerda Bowser',2470.0,'C');
INSERT INTO "earnings" VALUES (961,2019,4,15,'Glenn Maples',2925.0,'C');
INSERT INTO "earnings" VALUES (962,2019,4,15,'Glenn Martin',1080.0,'C');
INSERT INTO "earnings" VALUES (963,2019,4,15,'Glennie Clark',850.0,'P');
INSERT INTO "earnings" VALUES (964,2019,4,16,'Gloria Allred',1100.0,'P');
INSERT INTO "earnings" VALUES (965,2019,4,16,'Gloria Morales',2100.0,'P');
INSERT INTO "earnings" VALUES (966,2019,4,16,'Gloria Wallace',700.0,'P');
INSERT INTO "earnings" VALUES (967,2019,4,22,'Gordon Gordon',800.0,'C');
INSERT INTO "earnings" VALUES (968,2019,4,23,'Gordon Morrison',27636.0,'C');
INSERT INTO "earnings" VALUES (969,2019,4,23,'Grant Reese',800.0,'P');
INSERT INTO "earnings" VALUES (970,2019,4,23,'Gregory Dudley',1400.0,'C');
INSERT INTO "earnings" VALUES (971,2019,4,23,'Gregory Levine',1950.0,'P');
INSERT INTO "earnings" VALUES (972,2019,4,24,'Gudrun McLaughlin',1860.0,'C');
INSERT INTO "earnings" VALUES (973,2019,4,24,'Guy Callahan',800.0,'P');
INSERT INTO "earnings" VALUES (974,2019,4,25,'Gwendolyn Leslie',2056.8,'C');
INSERT INTO "earnings" VALUES (975,2019,4,25,'Harold Bennett',1500.0,'P');
INSERT INTO "earnings" VALUES (976,2019,4,26,'Harold Farmer',800.0,'P');
INSERT INTO "earnings" VALUES (977,2019,4,26,'Harold Hickman',800.0,'P');
INSERT INTO "earnings" VALUES (978,2019,4,26,'Harvey Smith',800.0,'P');
INSERT INTO "earnings" VALUES (979,2019,4,27,'Hazel Griffin',372.8,'C');
INSERT INTO "earnings" VALUES (980,2019,4,29,'Hazel Titus',800.0,'P');
INSERT INTO "earnings" VALUES (981,2019,4,30,'Heather White',2475.0,'P');
INSERT INTO "earnings" VALUES (982,2019,5,2,'Heidi Palacios',930.0,'P');
INSERT INTO "earnings" VALUES (983,2019,5,3,'Helen Anderson',3842.0,'C');
INSERT INTO "earnings" VALUES (984,2019,5,4,'Helen Clowers',3000.0,'C');
INSERT INTO "earnings" VALUES (985,2019,5,6,'Henry Kelly',2098.8,'C');
INSERT INTO "earnings" VALUES (986,2019,5,7,'Henry Sullivan',235.0,'C');
INSERT INTO "earnings" VALUES (987,2019,5,8,'Heriberto Espinoza',190.0,'C');
INSERT INTO "earnings" VALUES (988,2019,5,9,'Howard Correia',1400.0,'P');
INSERT INTO "earnings" VALUES (989,2019,5,9,'Huey Riggins',2400.0,'C');
INSERT INTO "earnings" VALUES (990,2019,5,9,'Ian Miller',1900.0,'C');
INSERT INTO "earnings" VALUES (991,2019,5,10,'Ida Burdett',800.0,'P');
INSERT INTO "earnings" VALUES (992,2019,5,10,'Ignacio Lewis',253.2,'C');
INSERT INTO "earnings" VALUES (993,2019,5,10,'Ione Harris',800.0,'P');
INSERT INTO "earnings" VALUES (994,2019,5,10,'Irene McCraney',1400.0,'P');
INSERT INTO "earnings" VALUES (995,2019,5,10,'Irma Davis',6212.0,'P');
INSERT INTO "earnings" VALUES (996,2019,5,10,'Irma Schmidt',3270.0,'P');
INSERT INTO "earnings" VALUES (997,2019,5,13,'Isabella Williams',2800.0,'P');
INSERT INTO "earnings" VALUES (998,2019,5,13,'Isreal Simpson',6031.2,'C');
INSERT INTO "earnings" VALUES (999,2019,5,20,'Jack Garcia',800.0,'P');
INSERT INTO "earnings" VALUES (1000,2019,5,21,'Jackie Kiel',800.0,'P');
INSERT INTO "earnings" VALUES (1001,2019,5,21,'Jackie Sullivan',800.0,'P');
INSERT INTO "earnings" VALUES (1002,2019,5,21,'James Cervantes',475.2,'C');
INSERT INTO "earnings" VALUES (1003,2019,5,23,'James Corey',700.0,'C');
INSERT INTO "earnings" VALUES (1004,2019,5,24,'James Hill',6600.0,'P');
INSERT INTO "earnings" VALUES (1005,2019,5,28,'James Howell',1400.0,'P');
INSERT INTO "earnings" VALUES (1006,2019,5,29,'James Mundy',1200.0,'P');
INSERT INTO "earnings" VALUES (1007,2019,5,29,'James Odom',5390.0,'P');
INSERT INTO "earnings" VALUES (1008,2019,5,30,'James Walsh',1460.0,'P');
INSERT INTO "earnings" VALUES (1009,2019,5,30,'James Wiese',2600.0,'P');
INSERT INTO "earnings" VALUES (1010,2019,5,31,'James Young',2800.0,'P');
INSERT INTO "earnings" VALUES (1011,2019,6,3,'Jamie Fortner',700.0,'P');
INSERT INTO "earnings" VALUES (1012,2019,6,3,'Jamie Nickerson',1100.0,'P');
INSERT INTO "earnings" VALUES (1013,2019,6,5,'Jamie Pitts',1040.4,'C');
INSERT INTO "earnings" VALUES (1014,2019,6,5,'Jamie Warren',800.0,'C');
INSERT INTO "earnings" VALUES (1015,2019,6,6,'Jana Laird',800.0,'P');
INSERT INTO "earnings" VALUES (1016,2019,6,6,'Jane Cole',2100.0,'P');
INSERT INTO "earnings" VALUES (1017,2019,6,7,'Jane Costello',700.0,'C');
INSERT INTO "earnings" VALUES (1018,2019,6,7,'Janet Benites',2200.0,'P');
INSERT INTO "earnings" VALUES (1019,2019,6,7,'Janet Gish',6205.0,'P');
INSERT INTO "earnings" VALUES (1020,2019,6,7,'Janet Pauls',2084.4,'C');
INSERT INTO "earnings" VALUES (1021,2019,6,10,'Janet Rodriguez',3640.0,'P');
INSERT INTO "earnings" VALUES (1022,2019,6,10,'Janet Smith',1200.0,'P');
INSERT INTO "earnings" VALUES (1023,2019,6,11,'Janice Faucher',900.0,'C');
INSERT INTO "earnings" VALUES (1024,2019,6,13,'Janice Ramos',900.0,'P');
INSERT INTO "earnings" VALUES (1025,2019,6,14,'Jason Seaton',800.0,'C');
INSERT INTO "earnings" VALUES (1026,2019,6,17,'Jean James',2830.0,'P');
INSERT INTO "earnings" VALUES (1027,2019,6,18,'Jean Zayas',1450.0,'C');
INSERT INTO "earnings" VALUES (1028,2019,6,19,'Jeff Smith',3245.0,'C');
INSERT INTO "earnings" VALUES (1029,2019,6,24,'Jeffery Garcia',700.0,'P');
INSERT INTO "earnings" VALUES (1030,2019,6,24,'Jeffrey Thompson',740.0,'C');
INSERT INTO "earnings" VALUES (1031,2019,6,24,'Jennifer Corl',266.0,'C');
INSERT INTO "earnings" VALUES (1032,2019,6,25,'Jennifer Johnson',2350.0,'P');
INSERT INTO "earnings" VALUES (1033,2019,6,26,'Jennifer Spence',800.0,'P');
INSERT INTO "earnings" VALUES (1034,2019,6,26,'Jeremiah Schatz',3080.0,'P');
INSERT INTO "earnings" VALUES (1035,2019,6,26,'Jesse Wilson',2320.0,'P');
INSERT INTO "earnings" VALUES (1036,2019,6,29,'Jessica Mitchell',800.0,'P');
INSERT INTO "earnings" VALUES (1037,2019,6,30,'Jessica Whitmire',11615.0,'P');
INSERT INTO "earnings" VALUES (1038,2019,7,2,'Jessica Zander',800.0,'P');
INSERT INTO "earnings" VALUES (1039,2019,7,3,'Jessie Hayden',3750.0,'C');
INSERT INTO "earnings" VALUES (1040,2019,7,3,'Jessie Johnson',1100.0,'C');
INSERT INTO "earnings" VALUES (1041,2019,7,4,'Jessie Rivera',1200.0,'P');
INSERT INTO "earnings" VALUES (1042,2019,7,5,'Jesus Messina',3517.0,'C');
INSERT INTO "earnings" VALUES (1043,2019,7,5,'Jesus Meyer',900.0,'P');
INSERT INTO "earnings" VALUES (1044,2019,7,11,'Jewell Davidson',900.0,'C');
INSERT INTO "earnings" VALUES (1045,2019,7,11,'Jimmie Burford',900.0,'P');
INSERT INTO "earnings" VALUES (1046,2019,7,11,'Jimmie Gibbons',1600.0,'P');
INSERT INTO "earnings" VALUES (1047,2019,7,11,'Jimmie Murray',800.0,'P');
INSERT INTO "earnings" VALUES (1048,2019,7,12,'Jo Reid',900.0,'C');
INSERT INTO "earnings" VALUES (1049,2019,7,15,'Joann Gaynor',1400.0,'P');
INSERT INTO "earnings" VALUES (1050,2019,7,15,'Joann Sweeney',851.3,'C');
INSERT INTO "earnings" VALUES (1051,2019,7,19,'Joe Harris',900.0,'P');
INSERT INTO "earnings" VALUES (1052,2019,7,19,'Joe Jackson',3150.0,'C');
INSERT INTO "earnings" VALUES (1053,2019,7,19,'Joella Deen',9256.0,'C');
INSERT INTO "earnings" VALUES (1054,2019,7,19,'John Barra',900.0,'P');
INSERT INTO "earnings" VALUES (1055,2019,7,23,'John Beckham',1200.0,'C');
INSERT INTO "earnings" VALUES (1056,2019,7,23,'John Benton',2770.0,'P');
INSERT INTO "earnings" VALUES (1057,2019,7,23,'John Blair',6500.0,'C');
INSERT INTO "earnings" VALUES (1058,2019,7,23,'John Gardin',1600.0,'P');
INSERT INTO "earnings" VALUES (1059,2019,7,23,'John Jeanbaptiste',51043.0,'C');
INSERT INTO "earnings" VALUES (1060,2019,7,24,'John Leslie',15912.0,'C');
INSERT INTO "earnings" VALUES (1061,2019,7,24,'John Nelson',1580.0,'C');
INSERT INTO "earnings" VALUES (1062,2019,7,25,'John Rogers',800.0,'P');
INSERT INTO "earnings" VALUES (1063,2019,7,25,'John Rousey',900.0,'P');
INSERT INTO "earnings" VALUES (1064,2019,7,30,'John Utsey',1200.0,'P');
INSERT INTO "earnings" VALUES (1065,2019,7,31,'John Wittig',900.0,'P');
INSERT INTO "earnings" VALUES (1066,2019,8,2,'John Young',1200.0,'C');
INSERT INTO "earnings" VALUES (1067,2019,8,5,'Jolene Woodside',1652.0,'C');
INSERT INTO "earnings" VALUES (1068,2019,8,5,'Jorge Starling',2916.0,'P');
INSERT INTO "earnings" VALUES (1069,2019,8,6,'Jose Alvarez',4900.0,'P');
INSERT INTO "earnings" VALUES (1070,2019,8,7,'Jose Biggerstaff',800.0,'P');
INSERT INTO "earnings" VALUES (1071,2019,8,8,'Jose Chavarria',14060.0,'C');
INSERT INTO "earnings" VALUES (1072,2019,8,9,'Jose McGowan',12462.0,'P');
INSERT INTO "earnings" VALUES (1073,2019,8,12,'Jose Sinclair',2700.0,'P');
INSERT INTO "earnings" VALUES (1074,2019,8,12,'Jose Slagle',2270.0,'C');
INSERT INTO "earnings" VALUES (1075,2019,8,13,'Joseph Blevins',4142.0,'C');
INSERT INTO "earnings" VALUES (1076,2019,8,13,'Joseph Campos',13430.0,'P');
INSERT INTO "earnings" VALUES (1077,2019,8,14,'Joseph Shannon',900.0,'P');
INSERT INTO "earnings" VALUES (1078,2019,8,15,'Joseph Turner',3200.0,'P');
INSERT INTO "earnings" VALUES (1079,2019,8,19,'Joseph Vincent',5260.0,'P');
INSERT INTO "earnings" VALUES (1080,2019,8,20,'Joshua Jones',900.0,'P');
INSERT INTO "earnings" VALUES (1081,2019,8,21,'Joy Clark',1100.0,'C');
INSERT INTO "earnings" VALUES (1082,2019,8,21,'Joyce Miller',900.0,'P');
INSERT INTO "earnings" VALUES (1083,2019,8,22,'Joyce Moore',2060.0,'P');
INSERT INTO "earnings" VALUES (1084,2019,8,22,'Juana Hawks',800.0,'P');
INSERT INTO "earnings" VALUES (1085,2019,8,23,'Juanita Carr',900.0,'C');
INSERT INTO "earnings" VALUES (1086,2019,8,26,'Juanita Ricketts',900.0,'C');
INSERT INTO "earnings" VALUES (1087,2019,8,26,'Judith Carter',2100.0,'P');
INSERT INTO "earnings" VALUES (1088,2019,8,27,'Judy Johnson',1200.0,'P');
INSERT INTO "earnings" VALUES (1089,2019,8,28,'Julian Jackson',1100.0,'P');
INSERT INTO "earnings" VALUES (1090,2019,8,28,'Julie John',5810.0,'C');
INSERT INTO "earnings" VALUES (1091,2019,9,2,'Justin Celaya',1600.0,'P');
INSERT INTO "earnings" VALUES (1092,2019,9,5,'Justin Lane',9948.0,'C');
INSERT INTO "earnings" VALUES (1093,2019,9,5,'Karen Arevalo',800.0,'P');
INSERT INTO "earnings" VALUES (1094,2019,9,5,'Karen Lively',900.0,'P');
INSERT INTO "earnings" VALUES (1095,2019,9,5,'Karen Sanders',1100.0,'P');
INSERT INTO "earnings" VALUES (1096,2019,9,6,'Karen Smith',800.0,'P');
INSERT INTO "earnings" VALUES (1097,2019,9,11,'Karin Lenz',1700.0,'P');
INSERT INTO "earnings" VALUES (1098,2019,9,12,'Karla Garcia',900.0,'P');
INSERT INTO "earnings" VALUES (1099,2019,9,16,'Katherine Sexton',900.0,'P');
INSERT INTO "earnings" VALUES (1100,2019,9,16,'Kathryn Chambers',1150.0,'P');
INSERT INTO "earnings" VALUES (1101,2019,9,16,'Kathy Worrall',900.0,'P');
INSERT INTO "earnings" VALUES (1102,2019,9,17,'Katy Jacobs',2150.0,'P');
INSERT INTO "earnings" VALUES (1103,2019,9,17,'Keith Wason',900.0,'C');
INSERT INTO "earnings" VALUES (1104,2019,9,17,'Kelly Rodriguez',1800.0,'P');
INSERT INTO "earnings" VALUES (1105,2019,9,18,'Kenneth Blalock',9450.0,'P');
INSERT INTO "earnings" VALUES (1106,2019,9,18,'Kenneth Keenan',355.4,'C');
INSERT INTO "earnings" VALUES (1107,2019,9,18,'Kenneth Stanberry',1600.0,'P');
INSERT INTO "earnings" VALUES (1108,2019,9,18,'Kim Westbrook',900.0,'P');
INSERT INTO "earnings" VALUES (1109,2019,9,19,'Kimberley Deluca',1436.0,'C');
INSERT INTO "earnings" VALUES (1110,2019,9,20,'Kimberly Busch',1250.0,'P');
INSERT INTO "earnings" VALUES (1111,2019,9,20,'Kimberly Huckaby',7144.0,'P');
INSERT INTO "earnings" VALUES (1112,2019,9,20,'Kirstin Childs',1400.0,'C');
INSERT INTO "earnings" VALUES (1113,2019,9,24,'Krista Schuetz',1800.0,'P');
INSERT INTO "earnings" VALUES (1114,2019,9,24,'Kristen Connolly',900.0,'P');
INSERT INTO "earnings" VALUES (1115,2019,9,25,'Kristie Childers',1650.0,'P');
INSERT INTO "earnings" VALUES (1116,2019,9,25,'Kristin Montes',1850.0,'P');
INSERT INTO "earnings" VALUES (1117,2019,9,27,'Kristin Walker',1200.0,'C');
INSERT INTO "earnings" VALUES (1118,2019,9,27,'Lance Guillermo',2100.0,'P');
INSERT INTO "earnings" VALUES (1119,2019,9,30,'Larry Bicknell',900.0,'C');
INSERT INTO "earnings" VALUES (1120,2019,9,30,'Larry Whitener',900.0,'P');
INSERT INTO "earnings" VALUES (1121,2019,10,1,'Laura Garcia',1800.0,'C');
INSERT INTO "earnings" VALUES (1122,2019,10,1,'Lauren Goldstein',2660.0,'P');
INSERT INTO "earnings" VALUES (1123,2019,10,1,'Lauren Kirkpatrick',9600.0,'P');
INSERT INTO "earnings" VALUES (1124,2019,10,2,'Lavern Johnson',900.0,'P');
INSERT INTO "earnings" VALUES (1125,2019,10,3,'Leona Lopez',13686.0,'C');
INSERT INTO "earnings" VALUES (1126,2019,10,3,'Leonard Jackson',3280.0,'C');
INSERT INTO "earnings" VALUES (1127,2019,10,3,'Leonel Miller',900.0,'P');
INSERT INTO "earnings" VALUES (1128,2019,10,4,'Leslie Brand',900.0,'P');
INSERT INTO "earnings" VALUES (1129,2019,10,7,'Leslie Fortune',1350.0,'C');
INSERT INTO "earnings" VALUES (1130,2019,10,8,'Leticia Ferguson',3160.0,'P');
INSERT INTO "earnings" VALUES (1131,2019,10,8,'Liliana Vargas',1340.0,'C');
INSERT INTO "earnings" VALUES (1132,2019,10,8,'Linda Conroy',5040.0,'P');
INSERT INTO "earnings" VALUES (1133,2019,10,9,'Linda Gonzalez',1800.0,'P');
INSERT INTO "earnings" VALUES (1134,2019,10,10,'Linda Hallett',1800.0,'P');
INSERT INTO "earnings" VALUES (1135,2019,10,10,'Linda Hillenbrand',985.0,'C');
INSERT INTO "earnings" VALUES (1136,2019,10,10,'Linda Holland',900.0,'P');
INSERT INTO "earnings" VALUES (1137,2019,10,15,'Linda Martin',1330.0,'P');
INSERT INTO "earnings" VALUES (1138,2019,10,15,'Linda Phillips',900.0,'P');
INSERT INTO "earnings" VALUES (1139,2019,10,16,'Linda Reinhard',3643.0,'C');
INSERT INTO "earnings" VALUES (1140,2019,10,17,'Linda Sanders',1250.0,'C');
INSERT INTO "earnings" VALUES (1141,2019,10,18,'Linda Schlegel',800.0,'P');
INSERT INTO "earnings" VALUES (1142,2019,10,18,'Lindsay Smith',900.0,'P');
INSERT INTO "earnings" VALUES (1143,2019,10,18,'Lisa Hinojosa',1600.0,'P');
INSERT INTO "earnings" VALUES (1144,2019,10,18,'Lisa Thomas',203.15,'C');
INSERT INTO "earnings" VALUES (1145,2019,10,22,'Lora Carter',20675.0,'C');
INSERT INTO "earnings" VALUES (1146,2019,10,23,'Loren Mahone',4940.0,'C');
INSERT INTO "earnings" VALUES (1147,2019,10,28,'Lori Granados',900.0,'P');
INSERT INTO "earnings" VALUES (1148,2019,10,29,'Lorraine Dow',4586.0,'P');
INSERT INTO "earnings" VALUES (1149,2019,10,29,'Lou Hunt',1663.0,'C');
INSERT INTO "earnings" VALUES (1150,2019,11,3,'Louise Luna',4000.0,'C');
INSERT INTO "earnings" VALUES (1151,2019,11,4,'Lucia Munoz',2030.0,'C');
INSERT INTO "earnings" VALUES (1152,2019,11,5,'Luis McDonald',2250.0,'P');
INSERT INTO "earnings" VALUES (1153,2019,11,6,'Luis Myers',1810.0,'P');
INSERT INTO "earnings" VALUES (1154,2019,11,7,'Luke Osborne',2700.0,'P');
INSERT INTO "earnings" VALUES (1155,2019,11,8,'Lula Tolliver',1650.0,'P');
INSERT INTO "earnings" VALUES (1156,2019,11,11,'Mabel Bryant',900.0,'C');
INSERT INTO "earnings" VALUES (1157,2019,11,12,'Malinda Arthur',5948.0,'P');
INSERT INTO "earnings" VALUES (1158,2019,11,12,'Manuel Martin',1300.0,'P');
INSERT INTO "earnings" VALUES (1159,2019,11,13,'Mara Wofford',1100.0,'P');
INSERT INTO "earnings" VALUES (1160,2019,11,13,'Marcia Brown',900.0,'P');
INSERT INTO "earnings" VALUES (1161,2019,11,14,'Marcia Fox',900.0,'P');
INSERT INTO "earnings" VALUES (1162,2019,11,14,'Marcus Oliver',12333.0,'C');
INSERT INTO "earnings" VALUES (1163,2019,11,14,'Marcy McKnight',4890.0,'P');
INSERT INTO "earnings" VALUES (1164,2019,11,19,'Margaret Harris',6952.0,'C');
INSERT INTO "earnings" VALUES (1165,2019,11,19,'Margaret Nunnery',3600.0,'P');
INSERT INTO "earnings" VALUES (1166,2019,11,20,'Margaret Torres',1400.0,'C');
INSERT INTO "earnings" VALUES (1167,2019,11,21,'Margie Miller',1800.0,'P');
INSERT INTO "earnings" VALUES (1168,2019,11,21,'Marguerite Clark',2800.0,'P');
INSERT INTO "earnings" VALUES (1169,2019,11,25,'Maria Bender',1800.0,'P');
INSERT INTO "earnings" VALUES (1170,2019,11,25,'Marie Rustin',1800.0,'P');
INSERT INTO "earnings" VALUES (1171,2019,11,25,'Marie Walker',6200.0,'P');
INSERT INTO "earnings" VALUES (1172,2019,11,26,'Marion Meriwether',900.0,'P');
INSERT INTO "earnings" VALUES (1173,2019,11,27,'Mark Corson',900.0,'P');
INSERT INTO "earnings" VALUES (1174,2019,11,28,'Mark Kennedy',900.0,'P');
INSERT INTO "earnings" VALUES (1175,2019,11,28,'Mark Smith',35544.0,'C');
INSERT INTO "earnings" VALUES (1176,2019,11,29,'Mark Wages',1000.0,'P');
INSERT INTO "earnings" VALUES (1177,2019,11,29,'Mark White',900.0,'P');
INSERT INTO "earnings" VALUES (1178,2019,11,29,'Marlene Chapman',900.0,'P');
INSERT INTO "earnings" VALUES (1179,2019,11,29,'Marsha Russ',1200.0,'C');
INSERT INTO "earnings" VALUES (1180,2019,12,2,'Marsha Watkins',7555.0,'P');
INSERT INTO "earnings" VALUES (1181,2019,12,3,'Marshall Bates',2400.0,'C');
INSERT INTO "earnings" VALUES (1182,2019,12,4,'Martha Paquin',38123.0,'C');
INSERT INTO "earnings" VALUES (1183,2019,12,4,'Martha Thompson',2000.0,'C');
INSERT INTO "earnings" VALUES (1184,2019,12,5,'Mary Bailey',1800.0,'P');
INSERT INTO "earnings" VALUES (1185,2019,12,5,'Mary Blanche',3655.0,'P');
INSERT INTO "earnings" VALUES (1186,2019,12,5,'Mary Bowers',1800.0,'P');
INSERT INTO "earnings" VALUES (1187,2019,12,5,'Mary Castro',1800.0,'P');
INSERT INTO "earnings" VALUES (1188,2019,12,9,'Mary Downey',5856.0,'C');
INSERT INTO "earnings" VALUES (1189,2019,12,9,'Mary Fortney',3600.0,'C');
INSERT INTO "earnings" VALUES (1190,2019,12,10,'Mary Leblanc',2000.0,'P');
INSERT INTO "earnings" VALUES (1191,2019,12,11,'Mary Martin',18546.0,'C');
INSERT INTO "earnings" VALUES (1192,2019,12,12,'Mary Mock',846.3,'C');
INSERT INTO "earnings" VALUES (1193,2019,12,13,'Mary Petry',900.0,'P');
INSERT INTO "earnings" VALUES (1194,2019,12,16,'Mary Watkin',1000.0,'P');
INSERT INTO "earnings" VALUES (1195,2019,12,16,'Matthew Harp',1000.0,'P');
INSERT INTO "earnings" VALUES (1196,2019,12,16,'Matthew Ross',9659.5,'C');
INSERT INTO "earnings" VALUES (1197,2019,12,17,'Matthew West',400.0,'P');
INSERT INTO "earnings" VALUES (1198,2019,12,18,'Matthew White',4695.0,'C');
INSERT INTO "earnings" VALUES (1199,2019,12,18,'Maureen Hatfield',2400.0,'P');
INSERT INTO "earnings" VALUES (1200,2019,12,19,'Mayme Whitesides',3000.0,'P');
INSERT INTO "earnings" VALUES (1201,2019,12,19,'Mayra Webster',12105.0,'C');
INSERT INTO "earnings" VALUES (1202,2019,12,19,'Melanie Marshall',2000.0,'P');
INSERT INTO "earnings" VALUES (1203,2019,12,19,'Melia Jensen',1900.0,'P');
INSERT INTO "earnings" VALUES (1204,2019,12,20,'Melissa Doerr',2955.0,'C');
INSERT INTO "earnings" VALUES (1205,2019,12,20,'Melissa Jaynes',2500.0,'P');
INSERT INTO "earnings" VALUES (1206,2019,12,20,'Michael Dotson',3000.0,'P');
INSERT INTO "earnings" VALUES (1207,2019,12,27,'Michael Durst',2000.0,'P');
INSERT INTO "earnings" VALUES (1208,2019,12,27,'Michael Frazier',2400.0,'P');
INSERT INTO "earnings" VALUES (1209,2019,12,27,'Michael James',1000.0,'P');
INSERT INTO "earnings" VALUES (1210,2019,12,31,'Michael Rue',1000.0,'C');
CREATE VIEW invoiced_with_tax_id AS
SELECT *, (client_id_type || " " || client_id_number) AS tax_id FROM invoices;
CREATE VIEW savings_monthly_average_per_year AS
SELECT year, ROUND(AVG(total), 2) AS average
FROM savings_per_month_and_year
GROUP BY year;
CREATE VIEW invoiced_monthly_average_per_year AS
SELECT 
	year, 
	ROUND(AVG(total), 2) AS average
FROM 
	invoiced_per_month_and_year
GROUP BY
	year;
CREATE VIEW savings_per_year AS
SELECT 
	year, 
	SUM(total) AS total
FROM 
	savings_per_month_and_year
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW expenses_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	expenses_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW invoiced_per_quarter_and_year AS
WITH invoiced_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM invoiced_per_month_and_year
	WHERE (month > 6 AND year = 2016) OR (year != 2016)
	-- WHERE ignores 2016 Q1 and Q2 to match data available in other tables
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM invoiced_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW invoiced_total_all_time AS
SELECT SUM(usd_amount) as total FROM invoiced_in_ars_and_usd;
CREATE VIEW expenses_total_all_time AS
SELECT SUM(usd_amount) as total FROM expenses_in_ars_and_usd;
CREATE VIEW earnings_total_all_time AS
SELECT SUM(usd_amount) as total FROM earnings_in_ars_and_usd;
CREATE VIEW savings_total_all_time AS
SELECT SUM(total) AS total FROM savings_per_month_and_year;
CREATE VIEW savings_per_quarter_and_year AS
WITH savings_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM savings_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM savings_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW expenses_per_quarter_and_year AS
WITH expenses_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM expenses_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM expenses_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW earnings_per_quarter_and_year AS
WITH earnings_per_month_and_year_with_record AS (
	SELECT *,
	CASE
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record -- record enables sorting
	FROM earnings_per_month_and_year
)

SELECT
	SUBSTR(year, 3, 2) || '-Q' || quarter as quarter, sum(round(total, 2)) AS total
FROM (
		SELECT 
			year,
			month,
			CASE 
				WHEN cast(month as integer) BETWEEN 1 AND 3 THEN 1
				WHEN cast(month as integer) BETWEEN 4 and 6 THEN 2
				WHEN cast(month as integer) BETWEEN 7 and 9 THEN 3
				ELSE 4
			END as quarter,
			total
		FROM earnings_per_month_and_year_with_record
		ORDER BY record DESC) t
GROUP BY year, quarter;
CREATE VIEW invoices_quantity_per_year AS 
SELECT
	count(id) AS invoices, 
	year
FROM 
	invoices
GROUP BY
	year
ORDER BY
	year DESC;
CREATE VIEW savings_last_six_months AS 

WITH savings_per_month_and_year_total_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM savings_per_month_and_year
)

SELECT 
	year, month, ROUND(total, 2) as total
FROM (
	SELECT *
	FROM savings_per_month_and_year_total_with_record
	ORDER BY record DESC
	LIMIT 6) t
ORDER BY t.record ASC;
CREATE VIEW savings_per_month_and_year AS
SELECT 
	ex.id,
	ea.year AS year,
	ea.month AS month,
	ea.total AS earnings_in_usd,
	ex.usd_amount AS expenses_in_usd,
	ROUND(ea.total - ex.usd_amount, 2) AS total
FROM earnings_per_month_and_year ea
JOIN expenses_in_ars_and_usd ex
ON ea.year = ex.year AND ea.month = ex.month;
CREATE VIEW invoiced_last_six_months AS 
WITH invoiced_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM invoiced_per_month_and_year
)

SELECT 
	year, month, ROUND(total, 2) as total
FROM (
	SELECT *
	FROM invoiced_per_month_and_year_with_record 
	ORDER BY record DESC
	LIMIT 6) t
ORDER BY t.record ASC;
CREATE VIEW expenses_last_six_months AS

WITH expenses_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM expenses_per_month_and_year
)

SELECT 
	year, month, round(total, 2) AS total
FROM (
		SELECT * 
		FROM expenses_per_month_and_year_with_record
		ORDER BY record DESC
		LIMIT 6 ) t
ORDER BY t.record ASC;
CREATE VIEW earnings_last_six_months AS

WITH earnings_per_month_and_year_with_record AS (
	SELECT *,
	CASE 
		WHEN LENGTH(year || month) = 5
		THEN year || 0 || month
		ELSE year || month
	END AS record
	-- record is added to allow ordering
	FROM earnings_per_month_and_year
)

SELECT 
	year, month, round(total, 2) AS total
FROM (
		SELECT * 
		FROM earnings_per_month_and_year_with_record
		ORDER BY record DESC
		LIMIT 6 ) t
ORDER BY t.record ASC;
CREATE VIEW invoiced_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	invoiced_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW invoiced_in_current_fiscal_period AS
SELECT 
	sum(ars_amount) AS 'invoices_amounts_in_current_fiscal_period'
FROM
	invoiced_in_ars_and_usd
WHERE
	CASE
	-- if today is *before* 1 july of this year,
	-- then current fiscal period is second half of previous year and first half of this year
	WHEN 
		date('now') < date('now','start of year','+6 months')
	THEN
		(year = (SELECT strftime('%Y', date('now', '-1 year'))) AND month > '06') OR
		(year = (SELECT strftime('%Y', date('now'))) AND month < '06')
	-- if today is *after* 1 july of this year,
	-- then current fiscal period is this year
	ELSE
		year = (SELECT strftime('%Y', date('now')))
	END;
CREATE VIEW invoiced_per_month_and_year AS
SELECT
	year AS year,
	month AS month,
	SUM(usd_amount) AS total
FROM
	invoiced_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW invoiced_in_ars_and_usd AS
SELECT
	id,
	i.year,
	i.month,
	day,
	ars_amount AS ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
ORDER BY 
	id;
CREATE VIEW invoiced_per_province AS
WITH total AS 
(SELECT
	client_province,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
)
SELECT
	i.client_province AS province,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.usd_amount, 4) * 100 AS share
FROM
	total t,
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
GROUP BY
	i.client_province
ORDER BY
	usd_amount DESC;
CREATE VIEW invoiced_per_month_average AS
SELECT
	month,
	ROUND(AVG(total),2) AS avg_in_usd
FROM
	invoiced_per_month_and_year
GROUP BY
	month;
CREATE VIEW invoiced_per_client AS
SELECT
	client_name,
	ROUND(SUM(i.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	invoices i
JOIN
	xrates_monthly_averages x
ON
	i.year = x.year AND 
	i.month = x.month
GROUP BY
	i.client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW expenses_monthly_average_per_year AS
SELECT 
	year, 
	ROUND(AVG(usd_amount), 2) AS average
FROM 
	expenses_in_ars_and_usd
GROUP BY
	year;
CREATE VIEW expenses_per_month_and_year AS
SELECT
	year,
	month,
	SUM(usd_amount) AS total
FROM
	expenses_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW expenses_in_ars_and_usd AS
SELECT
	id,
	e.year,
	e.month,
	ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	expenses e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month;
CREATE VIEW earnings_per_client_type AS
WITH total AS 
(SELECT
	person_or_company,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS total_usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
)
SELECT
	CASE 
		WHEN e.person_or_company = 'C' THEN 'Company'
		ELSE 'Person'
	END AS client_type,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue) / t.total_usd_amount, 4) * 100 AS share
FROM
	total t,
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
GROUP BY
	e.person_or_company;
CREATE VIEW earnings_monthly_average_per_year AS
SELECT
	year,
	ROUND(AVG(total),2) AS average
FROM
	earnings_per_month_and_year
GROUP BY
	year;
CREATE VIEW earnings_per_month_average AS
SELECT
	month,
	ROUND(AVG(total),2) AS average
FROM
	earnings_per_month_and_year
GROUP BY
	month;
CREATE VIEW earnings_per_year AS
SELECT 
	year, 
	SUM(usd_amount) AS total
FROM 
	earnings_in_ars_and_usd
GROUP BY 
	year
ORDER BY
	year;
CREATE VIEW earnings_per_month_and_year AS
SELECT
	year,
	month,
	SUM(usd_amount) AS total
FROM
	earnings_in_ars_and_usd
GROUP BY
	year, month;
CREATE VIEW earnings_in_ars_and_usd AS
SELECT
	id,
	e.year,
	e.month,
	e.day,
	client_name,
	CASE 
		WHEN e.person_or_company = 'C' THEN 'Company' 
		ELSE 'Person'
	END AS client_type,
	ars_amount,
	ROUND((ars_amount / x.mon_avg_sell_rate_official_then_blue),2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
ORDER BY 
	id;
CREATE VIEW earnings_per_client AS
SELECT
	client_name,
	ROUND(SUM(e.ars_amount / x.mon_avg_sell_rate_official_then_blue), 2) AS usd_amount
FROM
	earnings e
JOIN
	xrates_monthly_averages x
ON
	e.year = x.year AND 
	e.month = x.month
GROUP BY
	client_name
ORDER BY
	usd_amount DESC;
CREATE VIEW xrates_monthly_averages AS
SELECT 
	month,
	year,
	ROUND(AVG(official_sell_rate), 2) AS mon_avg_sell_rate_official_only,
	CASE
		WHEN blue_in_effect = 'false' THEN ROUND(AVG(official_sell_rate), 2)
		ELSE ROUND(AVG(blue_sell_rate), 2)
	END AS mon_avg_sell_rate_official_then_blue
FROM
	usd_ars_xrate x
GROUP BY
	month, year
ORDER BY
	year, month;
COMMIT;
