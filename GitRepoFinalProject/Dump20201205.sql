-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Final_Project_ITMD
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AdditionalInfo`
--

DROP TABLE IF EXISTS `AdditionalInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdditionalInfo` (
  `AdditionalInfoID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `INT_LOG` int DEFAULT NULL,
  `INT_IDEO` int DEFAULT NULL,
  `INT_MISC` int DEFAULT NULL,
  `INT_ANY` int DEFAULT NULL,
  `related` text,
  PRIMARY KEY (`AdditionalInfoID`),
  KEY `fk_AdditionalInfo_1_idx` (`eventid`),
  CONSTRAINT `fk_AdditionalInfo_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdditionalInfo`
--

LOCK TABLES `AdditionalInfo` WRITE;
/*!40000 ALTER TABLE `AdditionalInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdditionalInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttackType`
--

DROP TABLE IF EXISTS `AttackType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AttackType` (
  `TypeID` varchar(45) NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `success` int DEFAULT NULL,
  `suicide` int DEFAULT NULL,
  `attacktype1` int DEFAULT NULL,
  `attacktype1_txt` text,
  `attacktype2` text,
  `attacktype2_txt` text,
  `attacktype3` text,
  `attacktype3_txt` text,
  PRIMARY KEY (`TypeID`),
  KEY `fk_Type_1` (`eventid`),
  CONSTRAINT `fk_Type_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttackType`
--

LOCK TABLES `AttackType` WRITE;
/*!40000 ALTER TABLE `AttackType` DISABLE KEYS */;
/*!40000 ALTER TABLE `AttackType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book1`
--

DROP TABLE IF EXISTS `Book1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book1` (
  `eventid` bigint NOT NULL AUTO_INCREMENT,
  `iyear` int DEFAULT NULL,
  `imonth` int DEFAULT NULL,
  `iday` int DEFAULT NULL,
  `approxdate` text,
  `extended` int DEFAULT NULL,
  `resolution` text,
  `country` int DEFAULT NULL,
  `country_txt` text,
  `region` int DEFAULT NULL,
  `region_txt` text,
  `provstate` text,
  `city` text,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `specificity` int DEFAULT NULL,
  `vicinity` int DEFAULT NULL,
  `location` text,
  `summary` text,
  `crit1` int DEFAULT NULL,
  `crit2` int DEFAULT NULL,
  `crit3` int DEFAULT NULL,
  `doubtterr` int DEFAULT NULL,
  `alternative` text,
  `alternative_txt` text,
  `multiple` int DEFAULT NULL,
  `success` int DEFAULT NULL,
  `suicide` int DEFAULT NULL,
  `attacktype1` int DEFAULT NULL,
  `attacktype1_txt` text,
  `attacktype2` text,
  `attacktype2_txt` text,
  `attacktype3` text,
  `attacktype3_txt` text,
  `targtype1` int DEFAULT NULL,
  `targtype1_txt` text,
  `targsubtype1` int DEFAULT NULL,
  `targsubtype1_txt` text,
  `corp1` text,
  `target1` text,
  `natlty1` int DEFAULT NULL,
  `natlty1_txt` text,
  `targtype2` text,
  `targtype2_txt` text,
  `targsubtype2` text,
  `targsubtype2_txt` text,
  `corp2` text,
  `target2` text,
  `natlty2` text,
  `natlty2_txt` text,
  `targtype3` text,
  `targtype3_txt` text,
  `targsubtype3` text,
  `targsubtype3_txt` text,
  `corp3` text,
  `target3` text,
  `natlty3` text,
  `natlty3_txt` text,
  `gname` text,
  `gsubname` text,
  `gname2` text,
  `gsubname2` text,
  `gname3` text,
  `gsubname3` text,
  `motive` text,
  `guncertain1` int DEFAULT NULL,
  `guncertain2` text,
  `guncertain3` text,
  `individual` int DEFAULT NULL,
  `nperps` int DEFAULT NULL,
  `nperpcap` int DEFAULT NULL,
  `claimed` int DEFAULT NULL,
  `claimmode` text,
  `claimmode_txt` text,
  `claim2` text,
  `claimmode2` text,
  `claimmode2_txt` text,
  `claim3` text,
  `claimmode3` text,
  `claimmode3_txt` text,
  `compclaim` text,
  `weaptype1` int DEFAULT NULL,
  `weaptype1_txt` text,
  `weapsubtype1` int DEFAULT NULL,
  `weapsubtype1_txt` text,
  `weaptype2` text,
  `weaptype2_txt` text,
  `weapsubtype2` text,
  `weapsubtype2_txt` text,
  `weaptype3` text,
  `weaptype3_txt` text,
  `weapsubtype3` text,
  `weapsubtype3_txt` text,
  `weaptype4` text,
  `weaptype4_txt` text,
  `weapsubtype4` text,
  `weapsubtype4_txt` text,
  `weapdetail` text,
  `nkill` int DEFAULT NULL,
  `nkillus` int DEFAULT NULL,
  `nkillter` int DEFAULT NULL,
  `nwound` int DEFAULT NULL,
  `nwoundus` int DEFAULT NULL,
  `nwoundte` int DEFAULT NULL,
  `property` int DEFAULT NULL,
  `propextent` text,
  `propextent_txt` text,
  `propvalue` text,
  `propcomment` text,
  `ishostkid` int DEFAULT NULL,
  `nhostkid` text,
  `nhostkidus` text,
  `nhours` text,
  `ndays` text,
  `divert` text,
  `kidhijcountry` text,
  `ransom` text,
  `ransomamt` text,
  `ransomamtus` text,
  `ransompaid` text,
  `ransompaidus` text,
  `ransomnote` text,
  `hostkidoutcome` text,
  `hostkidoutcome_txt` text,
  `nreleased` text,
  `addnotes` text,
  `scite1` text,
  `scite2` text,
  `scite3` text,
  `dbsource` text,
  `INT_LOG` int DEFAULT NULL,
  `INT_IDEO` int DEFAULT NULL,
  `INT_MISC` int DEFAULT NULL,
  `INT_ANY` int DEFAULT NULL,
  `related` text,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book1`
--

LOCK TABLES `Book1` WRITE;
/*!40000 ALTER TABLE `Book1` DISABLE KEYS */;
INSERT INTO `Book1` VALUES (201801010001,2018,1,1,'',0,'',95,'Iraq',10,'Middle East & North Africa','Nineveh','Tal Afar',36.376825,42.448876,1,0,'','01/01/2018: An explosive device detonated in Tal Afar, Nineveh, Iraq. Three civilians were killed in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to the Islamic State of Iraq and the Levant (ISIL).',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',67,'Unnamed Civilian/Unspecified','Not Applicable','Civilians',95,'Iraq','','','','','','','','','','','','','','','','','Islamic State of Iraq and the Levant (ISIL)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',3,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Iraq: Security Roundup 1900 GMT 1 January 2018,\" Summary, December 28, 2017.','','','START Primary Collection',0,1,0,1,''),(201801010003,2018,1,1,'',0,'',95,'Iraq',10,'Middle East & North Africa','Kirkuk','Kirkuk',35.452112,44.375464,1,0,'The incident occurred in the Tisin neighborhood.','01/01/2018: Assailants fired three mortars at an Iraqi Turkmen Front headquarters in Tisin neighborhood, Kirkuk, Iraq. There were no reported casualties in the attack. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',84,'Political Party Member/Rally','Iraqi Turkmen Front','Headquarters',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',11,'Projectile (rockets, mortars, RPGs, etc.)','','','','','','','','','','','','','Three mortars were used in the attack.',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Iraq: Roundup of Violent Activities Targeting Civilians 26 December 2017-1 January 2018,\" Summary, December 26, 2017.','','','START Primary Collection',-9,-9,0,-9,''),(201801010004,2018,1,1,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Chaman',30.92211,66.451533,1,0,'The incident occurred along the Mall Road.','01/01/2018: An explosive device detonated at an under-construction building at a marketplace along Mall Road in Chaman, Balochistan, Pakistan. At least two people were injured in the blast. This was one of two bombings in Chaman on the same day. No group claimed responsibility for the attacks.',1,1,1,0,'','',1,1,0,3,'Bombing/Explosion','','','','',1,'Business',12,'Construction','Unknown','Under-Construction Building',153,'Pakistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,2,0,0,-9,'','','','',0,'','','','','','','','','','','','','','','','','\"Eight people, including three security officials, injured in twin Chaman blasts,\" Pakistan Today, January 1, 2018.','\"Balochistan blasts: 8 people including 3 security personnel injured in twin explosions in Pakistan,\" Financial Express, January 1, 2018.','\"Twin blasts hit Balochistan; 8 injured,\" Yahoo! India, January 1, 2018.','START Primary Collection',-9,-9,0,-9,'201801010004, 201801010005'),(201801010005,2018,1,1,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Chaman',30.92211,66.451533,1,0,'The incident occurred in the Qila Abdullah district.','01/01/2018: An explosive device detonated at a Pakistani Police checkpost in Chaman, Balochistan, Pakistan. At least six people, including three officers, were injured in the blast. This was one of two bombings in Chaman on the same day. No group claimed responsibility for the attacks.',1,1,1,0,'','',1,1,0,3,'Bombing/Explosion','','','','',3,'Police',22,'Police Building (headquarters, station, school)','Pakistani Police','Checkpost',153,'Pakistan','14','Private Citizens & Property','67','Unnamed Civilian/Unspecified','Not Applicable','Civilians','153','Pakistan','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,6,0,0,-9,'','','','',0,'','','','','','','','','','','','','','','','','\"Eight people, including three security officials, injured in twin Chaman blasts,\" Pakistan Today, January 1, 2018.','\"Balochistan blasts: 8 people including 3 security personnel injured in twin explosions in Pakistan,\" Financial Express, January 1, 2018.','\"Twin blasts hit Balochistan; 8 injured,\" Yahoo! India, January 1, 2018.','START Primary Collection',-9,-9,0,-9,'201801010004, 201801010005'),(201801010032,2018,1,1,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Adamawa','Madagali',10.88942,13.62832,1,0,'','01/01/2018: An explosive device detonated in Madagali, Adamawa, Nigeria. At least three people were killed in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to Boko Haram.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',67,'Unnamed Civilian/Unspecified','Not Applicable','Civilians',147,'Nigeria','','','','','','','','','','','','','','','','','Boko Haram','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','A roadside bomb was used in the attack.',3,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the majority reliable estimates are reported here.','\"Three killed in Adamawa bomb attack,\" Nigeria Punch, January 2, 2018.','\"New Year\'s Day blast kills at least 3 in Nigeria,\" Xinhua General News Service, January 2, 2018.','\"Boko Haram bomb kills 3 in Adamawa,\" Latest Nigerian News.com, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801010034,2018,1,1,'',0,'',4,'Afghanistan',6,'South Asia','Farah','Pusht Rod district',32.48035,62.028915,3,0,'','01/01/2018: Assailants opened fire on a police convoy in Pusht Rod district, Farah Afghanistan. Mohammad Ibrhim, the local police chief, was killed and two other officers were injured in the assault. The Taliban claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,1,'Assassination','','','','',3,'Police',23,'Police Patrol (including vehicles and convoys)','Afghan Local Police (ALP)','Convoy of Chief',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,1,'10','Unknown','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,2,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Taliban ambush kills local police chief in Afghanistan,\" Associated Press International, January 2, 2018.','\"District police chief killed in western Afghanistan,\" Xinhua News Agency, January 2, 2018.','\"District police chief killed in gunmen attack,\" Frontier Post, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801010035,2018,1,1,'',0,'',95,'Iraq',10,'Middle East & North Africa','Al Anbar','Radhwaniyah',33.18168,44.23542,1,0,'The incident occurred in the Abu Ghraib district.','01/01/2018: An explosive device detonated underneath the vehicle of an Iraqi Volunteer Forces member in Radhwaniyah, Al Anbar, Iraq. The volunteer fighter was injured in the blast. No group claimed responsibility for the incident.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',39,'Paramilitary','Iraqi Volunteer Forces','Vehicle of Member',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,1,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Bomb blast leaves two army personnel wounded in Baghdad,\" Iraqi News, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010037,2018,1,1,'',0,'',60,'Egypt',10,'Middle East & North Africa','Giza','Giza',30.022924,31.185193,1,0,'The incident occurred on al-Omraniya Street.','01/01/2018: Assailants opened fire on Coptic Christian civilians outside a liquor store in Giza, Egypt. Two people were killed in the attack. No group claimed responsibility for the incident; however, sources indicated that one of the assailants yelled \"Die Christians!\" during the attack.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',14,'Private Citizens & Property',69,'Religion Identified','Not Applicable','Coptic Christian Civlians: Ashraf, Adel',60,'Egypt','','','','','','','','','','','','','','','','','Unknown','','','','','','The specific motive is unknown; however, sources suspected that the victims, who were members of the Coptic Christian community, may have been targeted as part of a larger trend of sectarian violence between Egypt\'s majority Muslim and minority Christian communities.',0,'','',0,2,0,0,'','','','','','','','','',5,'Firearms',4,'Rifle/Shotgun (non-automatic)','','','','','','','','','','','','','A rifle was used in the attack.',2,0,0,0,0,0,-9,'','','','',0,'','','','','','','','','','','','','','','','','\"Gunman kills two Christians at alcohol store south of Cairo,\" Jerusalem Post, January 1, 2018.','\"Report: Two killed in shooting attack at liquor store in Egypt,\" Deutsche Presse-Agentur, January 1, 2018.','\"Prosecution to investigate New Year\'s Eve killing of 2 Coptic men outside liquor store,\" Daily News Egypt, January 2, 2018.','START Primary Collection',-9,-9,0,-9,''),(201801010038,2018,1,1,'',0,'',153,'Pakistan',6,'South Asia','Punjab','Multan',30.174426,71.478867,1,0,'The incident occurred in the Mumtazabad neighborhood.','01/01/2018: Assailants opened fire on Salim Attari in Mumtazabad neighborhood, Multan, Punjab, Pakistan. Attari, the Dawat-e-Islami spokesperson, was injured in the assault. No group claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',14,'Private Citizens & Property',82,'Labor Union Related','Dawat-e-Islami','Spokesperson: Salim Attari',153,'Pakistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,2,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',0,0,0,1,0,0,1,'3','Minor (likely < $1 million)','-99','Cash, bags, and a cellphone were stolen in this attack.',0,'','','','','','','','','','','','','','','','','\"Dawat-e-Islami spokesperson shot injured,\" The Nation (AsiaNet), January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010039,2018,1,1,'',0,'',160,'Philippines',5,'Southeast Asia','Maguindanao','Shariff Aguak',6.862806,124.443649,1,0,'The incident occurred in the Limpongo neighborhood of the city.','01/01/2018: An explosive device detonated targeting a military vehicle in Limpongo, Shariff Aguak, Maguindanao, Philippines. Two soldiers were injured in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to the Bangsamoro Islamic Freedom Movement (BIFM).',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',29,'Military Unit/Patrol/Convoy','Philippine Army (PA)','Patrol',160,'Philippines','','','','','','','','','','','','','','','','','Bangsamoro Islamic Freedom Movement (BIFM)','Bungos Faction','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','A roadside bomb was used in the attack.',0,0,0,2,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was damaged in this attack.',0,'','','','','','','','','','','','','','','','The victims included Private First Class Nelmar Acaso and Private First Class John Mark Roquero.','\"3 dead, scores injured in Mindanao blasts,\" Manila Times (Philippines), January 2, 2018.','\"Cop, 2 others killed in bomb blasts in Mindanao,\" Philippines Daily Inquirer, January 1, 2018.','\"Cop killed, 7 injured in Maguindanao IED blasts,\" Philippine Star, January 1, 2018.','START Primary Collection',0,0,0,0,''),(201801010043,2018,1,1,'',0,'',93,'Indonesia',5,'Southeast Asia','South Sulawesi','Makassar',-5.141309,119.430277,1,0,'','01/01/2018: An assailant threw Molotov cocktails at the Bontola police headquarters in Makassar, South Sulawesi, Indonesia. Two police officers were injured in the attack. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',3,'Police',22,'Police Building (headquarters, station, school)','Bontoala Police','Headquarters',93,'Indonesia','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,1,0,0,'','','','','','','','','',8,'Incendiary',19,'Molotov Cocktail/Petrol Bomb','','','','','','','','','','','','','Molotov cocktails were used in the attack.',0,0,0,2,0,0,1,'3','Minor (likely < $1 million)','-99','The windows of the police station and windows of parked cars were damaged.',0,'','','','','','','','','','','','','','','','','\"Police Continue Probe into Molotov Cocktail Attack in Makassar,\" Tempo.co, January 2, 2018.','\"Two policemen wounded in attack on Sulawesi police station,\" Straits Times, January 1, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801010044,2018,1,1,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Ayilamo',7.667161,9.246245,2,0,'The incident occurred in the Logo district.','01/01/2018: Assailants armed with machetes and firearms attacked residents in Ayilamo, Logo, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Ayilamo Village','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',4,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',-9,'','','','','','','','','','','','','','','','The victims included Torhemba Korgba. Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801010045,2018,1,1,'January 1, 2018',0,'',4,'Afghanistan',6,'South Asia','Kabul','Kabul',34.516895,69.147014,1,0,'','01/01/2018: An explosive device attached to a Ministry of Interior (MoI) vehicle was discovered and defused in Kabul, Afghanistan. No group claimed responsibility for the incident.',1,1,1,0,'','',0,0,0,3,'Bombing/Explosion','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Afghan Ministry of Interior','Vehicle of Employee',4,'Afghanistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',29,'Sticky Bomb','','','','','','','','','','','','','A magnetic explosive device was used in the attack.',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Afghanistan- Bombing plot to harm MoI workers foiled,\" Global English (Middle East and North Africa Financial Network), January 1, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010046,2018,1,1,'',0,'',183,'South Africa',11,'Sub-Saharan Africa','KwaZulu-Natal','Richards Bay',-28.761519,32.038063,1,0,'','01/01/2018: An assailant stabbed and killed Njabulo Dlamini, an African National Congress (ANC) ward councilor, in Richards Bay, KwaZulu-Natal, South Africa. No group claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,1,'Assassination','','','','',2,'Government (General)',15,'Politician or Political Party Movement/Meeting/Rally','African National Congress (ANC)','Councilor: Njabulo \"Jija\" Dlamini',183,'South Africa','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,1,0,0,'','','','','','','','','',9,'Melee',23,'Knife or Other Sharp Object','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Another ANC councillor killed in KwaZulu-Natal,\" News24, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010048,2018,1,1,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Kaduna','Arak',9.274892,8.362181,1,0,'The incident occurred in the Sanga district.','01/01/2018: Assailants opened fire on Malam Gambo Makama at his residence in Arak, Sanga, Kaduna, Nigeria. At least two people, including Makama, the Chief of Numana, and his pregnant wife, were killed and his son was injured in the assault. No group claimed responsibility; however, sources suspected that the attack was carried out by Fulani extremists.',1,1,1,0,'','',0,1,0,1,'Assassination','7','Facility/Infrastructure Attack','','',14,'Private Citizens & Property',77,'Laborer (General)/Occupation Identified','Not Applicable','Traditional Ruler: Malam Gambo Makama',147,'Nigeria','','','','','','','','','','','','','','','','','Fulani extremists','','','','','','',1,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','8','Incendiary','18','Arson/Fire','','','','','','','','','',2,0,0,1,0,0,1,'3','Minor (likely < $1 million)','-99','A house was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Nigeria\'s new year attack kills 2 in northern state,\" Xinhua General News Service, January 1, 2018.','\"Gunmen Kill Chief of Numana, Wife In Kaduna State,\" Daily Independent (Nigeria), January 1, 2018.','\"Suspected herdsmen kill Kaduna traditional ruler, pregnant wife,\" Kokomansion.com, January 1, 2018.','START Primary Collection',-9,-9,0,-9,''),(201801010052,2018,1,3,'January 3, 2018',1,'01/05/2018',60,'Egypt',10,'Middle East & North Africa','North Sinai','Arish',31.126646,33.800864,1,0,'','01/03/2018: Assailants abducted Hasan Jamal Iskandar, a civilian, in Arish, North Sinai, Egypt. Iskandar was killed and his body was discovered on January 5, 2018. No group claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,6,'Hostage Taking (Kidnapping)','','','','',14,'Private Citizens & Property',68,'Named Civilian','Not Applicable','Civilian: Hasan Jamal Iskandar',60,'Egypt','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',9,'Melee',23,'Knife or Other Sharp Object','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',1,'1','0','','-99','','','0','','','','','','4','Hostage(s) killed (not during rescue attempt)','0','','\"Roundup on Security Situation in Sinai 4-7 January 2018,\" Summary, January 4, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010055,2018,1,1,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Turan',7.685944,9.24812,2,0,'The incident occurred in the Logo district.','01/01/2018: Assailants armed with machetes and firearms attacked residents in Turan, Logo, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Turan Village','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',4,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',-9,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801010056,2018,1,1,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Gambe-Tiev',7.605494,9.280029,2,0,'The incident occurred in the Logo district.','01/01/2018: Assailants armed with machetes and firearms attacked residents in Gambe-Tiev, Logo, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Gambe-Tiev Village','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',4,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',-9,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801010058,2018,1,1,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Nasarawa','Gidan Wurji',8.109627,9.140622,2,0,'The incident occurred in the Awe district.','01/01/2018: Assailants armed with machetes attacked a civilian in Gidan Wurji, Awe, Nasarawa, Nigeria. The civilian was killed in the attack. No group claimed responsibility for the incident; however, sources attributed the attack to Fulani extremists.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',14,'Private Citizens & Property',72,'Farmer','Not Applicable','Farmer',147,'Nigeria','','','','','','','','','','','','','','','','','Fulani extremists','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',9,'Melee',23,'Knife or Other Sharp Object','','','','','','','','','','','','','Machetes were used in the attack.',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Fleeing herdsmen allegedly kill Nasarawa farmers,\" Nigeria Punch, January 4, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010059,2018,1,1,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Nasarawa','Awe',8.165131,9.114702,1,1,'The incident occurred along the Awe-Tunga road.','01/01/2018: Assailants shot and killed a civilian along Awe-Tunga road in Awe, Nasarawa, Nigeria. No group claimed responsibility for the incident; however, sources attributed the attack to Fulani extremists.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',14,'Private Citizens & Property',67,'Unnamed Civilian/Unspecified','Not Applicable','Civilian',147,'Nigeria','','','','','','','','','','','','','','','','','Fulani extremists','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Fleeing herdsmen allegedly kill Nasarawa farmers,\" Nigeria Punch, January 4, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010061,2018,1,1,'',0,'',4,'Afghanistan',6,'South Asia','Nangarhar','Achin district',34.068337,70.66247,3,0,'','01/01/2018: Assailants opened fire on a North Atlantic Treaty Organization (NATO) patrol in Achin district, Nangarhar, Afghanistan. One United States soldier, Mihail Golin, was killed and four other soldiers were injured in the attack. No group claimed responsibility for the incident.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,2,'Armed Assault','','','','',4,'Military',37,'NATO','North Atlantic Treaty Organization (NATO): Operation Resolute Support','Patrol',422,'International','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,1,0,4,4,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Special Forces soldier killed in Afghanistan was hit by gunfire on patrol, Pentagon says,\" The Washington Post, January 3, 2018.','\"US soldier killed fighting in Afghanistan is identified as a 34-year-old New Jersey man,\" Mail Online UK, January 3, 2018.','\"U.S. soldier with Alaska ties killed in Afghanistan,\" Your AlaskaLink.com, January 3, 2018.','START Primary Collection',-9,-9,1,1,''),(201801010062,2018,1,1,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Parom',26.626959,63.353137,1,0,'The incident occurred in the Panjgur district.','01/01/2018: Assailants fired a rocket at a Frontier Corps (FC) checkpoint in Parom, Balochistan, Pakistan. There were no reported casualties in the blast. No group claimed responsibility for the attack.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',36,'Military Checkpoint','Frontier Corps (FC)','Checkpoint',153,'Pakistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',11,'Projectile (rockets, mortars, RPGs, etc.)','','','','','','','','','','','','','A rocket was used in the attack.',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Highlights: Pakistan Balochistan Press 02 January 2018,\" Summary, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801010063,2018,1,1,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Tertaj',26.402653,65.346332,2,0,'The incident occurred in the Awaran district.','01/01/2018: Assailants shot and injured a Levies Forces officer in Tertaj, Awaran district, Balochistan, Pakistan. No group claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',3,'Police',25,'Police Security Forces/Officers','Levies Forces','Officer: Muhammad',153,'Pakistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',0,0,0,1,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Highlights: Pakistan Balochistan Press 02 January 2018,\" Summary, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801020001,2018,1,2,'',0,'',186,'Sri Lanka',6,'South Asia','North Western','Makandura',7.321416,79.977205,1,0,'','01/02/2018: Assailants threw a hand grenade at the residence of North Western Assistant Excise Commissioner Leslie Jayantha Ranaweera in Makandura, North Western, Sri Lanka. There were no reported casualties in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,0,0,1,'Assassination','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Excise Commission','Residence of North Western Assistant Excise Commissioner: Leslie Jayantha Ranaweera',186,'Sri Lanka','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',7,'Grenade','','','','','','','','','','','','','',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','A luxury bus, a jeep, and a double cab were damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Grenade attack targeting Assistant Excise Commissioner\'s residence,\" Ada Derana, January 2, 2018.','\"Hand grenade thrown at Assistant Excise Commissioner\'s house,\" Sri Lanka Island, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020002,2018,1,2,'',0,'',4,'Afghanistan',6,'South Asia','Kabul','Kabul',34.516895,69.147014,1,0,'The incident occurred in the 5th police district.','01/02/2018: An explosive device attached to a police vehicle detonated in the the 5th police district of Kabul, Afghanistan. Three officers were injured in the blast. The Taliban claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',3,'Police',23,'Police Patrol (including vehicles and convoys)','Afghan Police','Vehicle',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,1,'7','Posted to website, blog, etc.','','','','','','','',6,'Explosives',29,'Sticky Bomb','','','','','','','','','','','','','A magnetic explosive device attached to a vehicle was used in the attack.',0,0,0,3,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"3 policemen slightly wounded in Kabul mine explosion,\" Khaama Press, January 2, 2018.','\"BBCM Afghanistan Watchlist for 2 January,\" BBC Monitoring, January 2, 2018.','\"Media Highlights on Afghanistan 2 January 2018,\" Summary, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801020003,2018,1,2,'',0,'',95,'Iraq',10,'Middle East & North Africa','Saladin','Tarmiyah',33.66969,44.381316,1,0,'The incident occurred in the Al-Faris district.','01/02/2018: An explosive device detonated targeting an Iraqi Army patrol in Tarmiyah, Saladin, Iraq. Two soldiers were injured in the blast. No group claimed responsibility for the incident.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',29,'Military Unit/Patrol/Convoy','Iraqi Army','Patrol',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,2,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Bomb blast leaves two army personnel wounded in Baghdad,\" Iraqi News, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801020004,2018,1,2,'',0,'',95,'Iraq',10,'Middle East & North Africa','Al Anbar','Albu Diab',33.448435,43.267571,1,0,'The incident occurred in the Ramadi district.','01/02/2018: An explosive device attached to the vehicle of a police officer detonated in Albu Diab, Al Anbar, Iraq. The officer was injured in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',3,'Police',25,'Police Security Forces/Officers','Iraqi Police Service (IPS)','Vehicle of Officer',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',29,'Sticky Bomb','','','','','','','','','','','','','A sticky explosive device attached underneath a vehicle was used in the attack.',0,0,0,1,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Police conscript wounded in bomb blast, north of Ramadi,\" Iraqi News, January 2, 2018.','\"Iraq: Roundup of Violent Activities Targeting Civilians 2-8 January 2018,\" Summary, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020007,2018,1,2,'',0,'',95,'Iraq',10,'Middle East & North Africa','Kirkuk','Kirkuk',35.452112,44.375464,1,0,'The incident occurred in the Askari neighborhood.','01/02/2018: Assailants opened fire on Alaa al-Din al-Salihi at a market in Askari neighborhood, Kirkuk, Iraq. Al-Salihi, an Iraqi Turkmen Front district head, was killed in the attack. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,1,'Assassination','','','','',14,'Private Citizens & Property',84,'Political Party Member/Rally','Iraqi Turkmen Front','Deputy Head: Alaa al-Din al-Salihi',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Gunmen kill official of Turkoman party in Iraq\'s Kirkuk,\" Xinhua General News Service, January 2, 2018.','\"Iraqi Turkmen official shot dead in Iraq,\" Anadolu Ajansi, January 2, 2018.','\"Iraq: Roundup of Violent Activities Targeting Civilians 2-8 January 2018,\" Summary, January 2, 2018.','START Primary Collection',-9,-9,0,-9,''),(201801020008,2018,1,2,'',0,'',95,'Iraq',10,'Middle East & North Africa','Kirkuk','Unknown',35.385662,44.374961,4,0,'The incident occurred between Arafah and Al-Amal ash-Shabi.','01/02/2018: Assailants fired mortars that landed at a mechanic shop between Arafah and Al-Amal ash-Shabi in Kirkuk, Iraq. There were no reported casualties. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',1,'Business',7,'Retail/Grocery/Bakery','Unknown','Mechanic Shop',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',11,'Projectile (rockets, mortars, RPGs, etc.)','','','','','','','','','','','','','Three mortars were used in the attack.',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Iraq: Security Roundup 1900 GMT 03 January 2018,\" Summary, January 3, 2018.','\"Iraq: Roundup of Violent Activities Targeting Civilians 2-8 January 2018,\" Summary, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020009,2018,1,2,'January 2, 2018',0,'',214,'Ukraine',9,'Eastern Europe','Luhansk','Novotoshkivske',48.72487,38.63301,1,0,'','01/02/2018: An explosive device detonated in Novotoshkivske, Luhansk, Ukraine. One soldier was killed in the blast. No group claimed responsibility for the incident.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',34,'Military Personnel (soldiers, troops, officers, forces)','Armed Forces of Ukraine','Soldier',214,'Ukraine','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',8,'Landmine','','','','','','','','','','','','','A tripwire landmine was used in the attack.',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Ukrainian soldier killed in Luhansk region,\" Interfax-Ukraine, January 2, 2018.','\"Military Killed In Explosion Of Explosive Object In Luhansk Region,\" Ukrainian News Agency, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020010,2018,1,2,'',0,'',4,'Afghanistan',6,'South Asia','Logar','Dahno',34.243292,69.129178,2,0,'The incident occurred in the Mohammad Agha district.','01/02/2018: Assailants opened fire on an Afghan National Army (ANA) patrol in Dahno, Logar, Afghanistan. At least four people, including three soldiers and one civilian, were killed and one civilian was injured in the attack. The Taliban claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',4,'Military',29,'Military Unit/Patrol/Convoy','Afghan National Army (ANA)','Patrol',4,'Afghanistan','14','Private Citizens & Property','67','Unnamed Civilian/Unspecified','Not Applicable','Civilians','4','Afghanistan','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,1,'7','Posted to website, blog, etc.','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',4,0,0,1,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the majority reliable estimates are reported here.','\"ANA troops among 8 dead in attacks,\" Frontier Post, January 3, 2018.','\"ANA soldier among 4 killed in Logar attack,\" Pajhwok Afghan News English, January 2, 2018.','\"Media Highlights on Afghanistan 2 January 2018,\" Summary, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801020011,2018,1,2,'January 2, 2018',0,'',95,'Iraq',10,'Middle East & North Africa','Nineveh','Tall Safouk',36.060709,41.260053,1,0,'The incident occurred along the Iraq-Syrian border.','01/02/2018: Assailants, including suicide bombers equipped with explosives-laden vehicles, attacked an Iraqi Volunteer Forces border crossing in Tall Safouk, Nineveh, Iraq. Security forces repelled the assault, killing 18 assailants. No group claimed responsibility for the incident; however, sources attributed the attack to the Islamic State of Iraq and the Levant (ISIL).',1,1,0,1,'1','Insurgency/Guerilla Action',0,0,1,3,'Bombing/Explosion','','','','',4,'Military',27,'Military Barracks/Base/Headquarters/Checkpost','Iraqi Volunteer Forces','Tall Sufuk Border Crossing',95,'Iraq','','','','','','','','','','','','','','','','','Islamic State of Iraq and the Levant (ISIL)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',15,'Vehicle','6','Explosives','13','Suicide (carried bodily by human being)','','','','','','','','','Two explosives-laden vehicles and 18 bodily-carried explosives were used in the attack.',18,0,18,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Paramilitary troops repel IS attack, kill 18 militants on borders with Syria,\" Iraqi News, January 2, 2018.','\"Iraq: Security Roundup 1900 GMT 03 January 2018,\" Summary, January 3, 2018.','','START Primary Collection',0,1,0,1,''),(201801020012,2018,1,2,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Tomatar',7.924964,8.723569,2,0,'The incident occurred in the Guma district.','01/02/2018: Assailants armed with machetes and firearms attacked residents in Tomatar, Guma, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Tom-atar Vilalge','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',3,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',-9,'','','','','','','','','','','','','','','','The victims included a member of the Livestock Guards, Saslamemga Bua, and civilians, Mary Kume and Akaater Azera Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801020013,2018,1,2,'',0,'',104,'Kenya',11,'Sub-Saharan Africa','Mandera','Unknown',2.995712,40.921359,4,0,'The incident occurred along Elwak-Kotulo Road.','01/02/2018: Assailants opened fire on a police patrol along Elwak-Kotulo Road in Mandera county, Kenya. At least five police officers were killed in the assault. This was one of two coordinated attacks in the area on this date. Al-Shabaab claimed responsibility for the incidents.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',3,'Police',23,'Police Patrol (including vehicles and convoys)','Kenya Police Reserve (KPR)','Joint Patrol',104,'Kenya','3','Police','23','Police Patrol (including vehicles and convoys)','Kenya Police Service (KPS)','Joint Patrol','104','Kenya','','','','','','','','','Al-Shabaab','','','','','','The specific motive is unknown; however, sources noted that the attack occurred two days after five Al-Shabaab members were killed by the Kenya Defense Forces (KDF).',0,'','',0,-99,0,1,'10','Unknown','','','','','','','',6,'Explosives',11,'Projectile (rockets, mortars, RPGs, etc.)','5','Firearms','5','Unknown Gun Type','','','','','','','','','Rocket-propelled grenades (RPGs) and firearms were used in the attack.',5,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','This incident is part of a set of coordinated attacks in which both military and non-military entities were targeted. Casualty numbers conflict across sources. Following GTD protocol, the majority reliable estimates are reported here.','\"Al-Shabaab kills 5 police officers in northern Kenya,\" Anadolu Agency (AA), January 3, 2018.','\"Alshabaab kills more than six Kenyan soldiers in Mandera,\" Hiiraan Online, January 3, 2018.','\"Somalia: 5 Kenyan security officers killed in Al-Shabab raid,\" Radio Garowe, January 3, 2018.','START Primary Collection',1,1,0,1,'201801020013, 201801020014'),(201801020015,2018,1,2,'',0,'',182,'Somalia',11,'Sub-Saharan Africa','Banaadir','Mogadishu',2.059818,45.326114,1,0,'The incident occurred in the Suuq Boocle area of the Darkheynley neighborhood.','01/02/2018: Assailants opened fire on Ali Nur Shurte at his residence in Suuq Boocle area, Mogadishu, Somalia. Shurte, the father of the military court chair Colonel Hassan Ali Nur Shute, was killed in the attack. Al-Shabaab claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',4,'Military',34,'Military Personnel (soldiers, troops, officers, forces)','Somali Armed Forces (SAF)','Father of Chairman of the Somali Military Court: Colonel Hassan Ali Nur Shute',182,'Somalia','','','','','','','','','','','','','','','','','Al-Shabaab','','','','','','The specific motive is unknown; however, sources stated that the attack coincided with the beginning of the trial of five Al-Shabaab members who were accused of involvement in the October 14, 2017 truck bombing in Mogadishu. Sources also noted that the victim was the father of the Somali military court chairperson.',0,'','',0,2,0,1,'8','Personal claim','','','','','','','',5,'Firearms',3,'Handgun','','','','','','','','','','','','','Two pistols were used in the attack.',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Highlights: Somalia Daily Media Highlights 3 - 4 January 2018,\" Summary, January 3, 2018.','\"Highlights: Somalia Daily Media Highlights 2 January 2018,\" Summary, January 3, 2018.','\"BBCM: Terrorism Digest 2-3 January 2018,\" BBC Monitoring, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801020016,2018,1,2,'',0,'',182,'Somalia',11,'Sub-Saharan Africa','Banaadir','Mogadishu',2.059818,45.326114,1,0,'The incident occurred in Wadajir neighborhood.','01/02/2018: Assailants shot and killed a soldier, identified as Colonel Muhammad Hasan, in Wadajir neighborhood, Mogadishu, Somalia. Al-Shabaab claimed responsibility for the incident.',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,2,'Armed Assault','','','','',4,'Military',34,'Military Personnel (soldiers, troops, officers, forces)','Somali Armed Forces (SAF)','Soldier: Colonel Muhammad Hasan',182,'Somalia','','','','','','','','','','','','','','','','','Al-Shabaab','','','','','','',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Program summary: Mogadishu Kulmiye FM in Somali 0300 GMT 2 January 2018,\" Radio Shabelle, January 2, 2018.','\"Highlights: Somalia Daily Media Highlights 3 - 4 January 2018,\" Summary, January 3, 2018.','\"Highlights: Somalia Daily Media Highlights 2 January 2018,\" Summary, January 3, 2018.','START Primary Collection',0,0,0,0,''),(201801020018,2018,1,2,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Quetta',30.20082,66.994352,1,0,'The incident occurred in the Baleli neighborhood.','01/02/2018: Three assailants opened fire on a Frontier Corps (FC) checkpost in Baleli neighborhood, Quetta, Balochistan, Pakistan. During the assault, one of the assailants detonated an explosives-laden jacket. At least two assailants were killed and five people, including soldiers and civilians, were injured in the blast and ensuing clash. The Taliban Special Group (TSG) faction of Tehrik-i-Taliban Pakistan (TTP) claimed responsibility for the attack.',1,1,1,0,'','',0,1,1,3,'Bombing/Explosion','2','Armed Assault','','',4,'Military',27,'Military Barracks/Base/Headquarters/Checkpost','Frontier Corps (FC)','Checkpost',153,'Pakistan','14','Private Citizens & Property','67','Unnamed Civilian/Unspecified','Not Applicable','Civilians','153','Pakistan','','','','','','','','','Tehrik-i-Taliban Pakistan (TTP)','Taliban Special Group (TSG)','','','','','',0,'','',0,3,0,1,'7','Posted to website, blog, etc.','','','','','','','',6,'Explosives',13,'Suicide (carried bodily by human being)','5','Firearms','2','Automatic or Semi-Automatic Rifle','','','','','','','','','An explosives-laden jacket containing between eight and ten kilograms of explosive material and automatic firearms were used in the attack.',2,0,2,5,0,0,1,'4','Unknown','-99','A checkpost, vehicles, and the windows of nearby buildings were damaged in this attack.',0,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the lowest reliable estimates are reported here.','\"12 FC men injured in suicide attack on check-post,\" Dawn (Pakistan), January 3, 2018.','\"At least 5, including two FC personnel, injured in Quetta check post blast,\" Frontier Post, January 2, 2018.','\"Five, including two FC personnel, injured in Quetta checkpost attack,\" Pakistan Today, January 2, 2018.','START Primary Collection',0,0,0,0,''),(201801020019,2018,1,2,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Borno','Dalori',11.761901,13.266306,1,1,'The incident occurred in the Jere district.','01/02/2018: A suicide bomber detonated behind an internally displaced persons (IDPs) camp in Dalori, Jere, Borno, Nigeria. The assailant was killed and there were no other reported casualties. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,1,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',65,'Refugee (including Camps/IDP/Asylum Seekers)','Dalori Internally Displaced Ppersons (IDPs) Camp','Internally Displaced Persons (IDPs) Camp',147,'Nigeria','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,1,0,0,'','','','','','','','','',6,'Explosives',13,'Suicide (carried bodily by human being)','','','','','','','','','','','','','',1,0,1,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"10 worshipers killed in Borno attack,\" The Nation Nigeria, January 3, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801020021,2018,1,2,'',0,'',153,'Pakistan',6,'South Asia','Balochistan','Sangsila',29.083859,68.862762,1,0,'The incident occurred in the Dera Bugti district.','01/02/2018: Assailants opened fire on a Levies Forces checkpost in Sangsila, Balochistan, Pakistan. At least one officer was injured in the assault. No group claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',3,'Police',22,'Police Building (headquarters, station, school)','Levies Forces','Checkpost',153,'Pakistan','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',0,0,0,1,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','The victims included officer Kikal Bugti.','\"Levies check post attacked in Dera Bugti,\" The News International, January 3, 2018.','\"Levies pejrsonnel injure din terrorists firing,\" Pakistan Press International, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020022,2018,1,2,'',0,'',173,'Saudi Arabia',10,'Middle East & North Africa','Jazan','Al-Harith',16.758339,43.131318,2,0,'','01/02/2018: Assailants fired projectiles into Al-Harith, Jazan, Saudi Arabia. A Pakistani civilian was killed and three houses were damaged in the attack. No group claimed responsibility for the incident; however, sources attributed the attack to Houthi extremists (Ansar Allah).',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',67,'Unnamed Civilian/Unspecified','Not Applicable','Civilian',153,'Pakistan','14','Private Citizens & Property','76','House/Apartment/Residence','Not Applicable','Houses','173','Saudi Arabia','14','Private Citizens & Property','73','Vehicles/Transportation','Not Applicable','Vehicle','173','Saudi Arabia','Houthi extremists (Ansar Allah)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',11,'Projectile (rockets, mortars, RPGs, etc.)','','','','','','','','','','','','','',1,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','Three houses and a vehicle were damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Pakistani dies in Houthi attack in Jazan,\" Saudi Gazette, January 2, 2018.','','','START Primary Collection',1,1,1,1,''),(201801020023,2018,1,2,'',0,'',92,'India',6,'South Asia','Jammu and Kashmir','Pulwama district',33.873941,74.878666,3,0,'','01/02/2018: Assailants opened fire on a police station in Pulwama, Jammu and Kashmir, India. There were no reported casualties in the attack. No group claimed responsibility for the incident.',1,1,1,0,'','',0,0,0,2,'Armed Assault','','','','',3,'Police',22,'Police Building (headquarters, station, school)','Jammu and Kashmir Police','Pulwama Police Station',92,'India','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Terrorists attack Pulwama police station, security personnel retaliate,\" India TV, January 2, 2018.','\"Terrorists fire at police station in Jammu and Kashmir\'s Pulwama,\" ZeeNews.com, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801020025,2018,1,2,'',0,'',182,'Somalia',11,'Sub-Saharan Africa','Lower Shebelle','Kuntuwarey',1.610966,44.332234,1,0,'','01/02/2018: Assailants publicly executed five individuals by firing squad in Kuntuwarey, Lower Shebelle, Somalia. Al-Shabaab claimed responsibility for the incident and accused of the victims of spying for the Kenyan, Ethiopian, and Somali governments.',1,1,1,0,'','',0,1,0,6,'Hostage Taking (Kidnapping)','','','','',14,'Private Citizens & Property',113,'Alleged Informant','Not Applicable','Alleged Spies',182,'Somalia','','','','','','','','','','','','','','','','','Al-Shabaab','','','','','','Al-Shabaab claimed responsibility for the incident and accused of the victims of spying for the Kenyan, Ethiopian, and Somali governments.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',5,0,0,0,0,0,0,'','','','',1,'5','0','-99','','','','0','','','','','','4','Hostage(s) killed (not during rescue attempt)','0','The victims included Abdikadir Omar Hassan, Abdikadir Shukri Hassan, Mohamed Abshir Ali, Ali Ahmed Sheikh Ali, and Ali Yussuf Ahmed.','\"Al-Shabab extremists execute 5 alleged spies in Somalia,\" FOXNews.com, January 3, 2018.','\"Somalia\'s al-Shabab executes five men accused of spying,\" Dhacdo.com, January 3, 2018.','\"Highlights: Somalia Daily Media Highlights 3 - 4 January 2018,\" Summary, January 3, 2018.','START Primary Collection',0,0,0,0,''),(201801020028,2018,1,2,'January 2, 2018',0,'',4,'Afghanistan',6,'South Asia','Samangan','Chahar Awlia',35.89356,67.365526,1,0,'The incident occurred in the Dara-i-Sufi Bala district.','01/02/2018: Assailants stopped and set fire to a vehicle transporting coal in Chahar Awlia, Samangan, Afghanistan. No casualties were reported in attack. No group claimed responsibility for the incident; however, sources attributed the attack to the Taliban.',1,1,1,0,'','',0,1,0,7,'Facility/Infrastructure Attack','','','','',1,'Business',10,'Mining','Shabashak Coal Mine','Coal Transportation Vehicles',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',8,'Incendiary',18,'Arson/Fire','','','','','','','','','','','','','',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','A cargo truck was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Insurgents torch 2 coal trucks in Samangan,\" Pajhwok Afghan News English, January 9, 2018.','','','START Primary Collection',0,0,0,0,''),(201801020029,2018,1,2,'',0,'',198,'Sweden',8,'Western Europe','Skane','Helsingborg',56.04447,12.701251,1,0,'','01/02/2018: An explosive device detonated at the residence of Ariana Haradinaj in Helsingborg, Skane, Sweden. Haradinaj, the daughter of a former Kosovo Liberation Army (KLA) commander, was injured in the blast. No group claimed responsibility for the incident.',0,1,1,1,'2','Other Crime Type',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',77,'Laborer (General)/Occupation Identified','Not Applicable','Daughter of Former Kosovo Liberation Army (KLA) Commander: Ariana Haradinaj',1003,'Kosovo','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,1,0,0,1,'4','Unknown','-99','An apartment was damaged in this attack.',0,'','','','','','','','','','','','','','','','There is doubt that this incident meets terrorism-related criteria. Sources suspected that the attack may have been connected to a series of drug-related bombings in Helsingborg.','\"Apartments evacuated after explosion in Helsingborg,\" The Local Sweden, January 2, 2018.','\"Haradinaj\'s cousin\'s daughter injured in explosion,\" InSerbia News, January 4, 2018.','\"Blast in Swedish town injures daughter of KLA associations\' leader,\" RTK Live, January 3, 2018.','START Primary Collection',-9,-9,1,1,''),(201801020030,2018,1,2,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Umenger',7.98527,8.760816,2,0,'The incident occurred in the Guma district.','01/02/2018: Assailants armed with machetes and firearms attacked residents in Umenger, Guma, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Umenger Village','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',3,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','A patrol vehicle was damaged in this attack.',-9,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801020031,2018,1,2,'',0,'',160,'Philippines',5,'Southeast Asia','Compostela Valley','Maparat',7.655657,126.051282,1,0,'The incident occurred in the Colapogon neighborhood.','01/02/2018: An explosive device detonated targeting a Citizens Armed Forces Geographical Unit (CAFGU) detachment in Colapogon, Maparat, Compostela Valley, Philippines. At least one soldier was injured in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to the New People\'s Army (NPA).',1,1,0,1,'1','Insurgency/Guerilla Action',0,1,0,3,'Bombing/Explosion','','','','',4,'Military',39,'Paramilitary','Citizens Armed Forces Geographical Unit (CAFGU)','Detachment',160,'Philippines','','','','','','','','','','','','','','','','','New People\'s Army (NPA)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',17,'Other Explosive Type','','','','','','','','','','','','','A homemade explosive device was used in the attack.',0,0,0,1,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','The victims included CAA Jerick Ceel.','\"NPA attacks troops in ComVal, Davao,\" Manila Times (Philippines), January 5, 2018.','\"Army hits NPA\'s violation of holiday ceasefire,\" Philippines Daily Inquirer, January 4, 2018.','\"Philippines: The Daily Tribune News - Fresh clashes end holiday truce; 2 NPA rebels killed,\" The Daily Tribune Online, January 4, 2018.','START Primary Collection',0,0,0,0,''),(201801020033,2018,1,2,'',0,'',95,'Iraq',10,'Middle East & North Africa','Saladin','Taji',33.540671,44.251268,1,0,'','01/02/2018: An explosive device detonated near a market in Taji, Saladin, Iraq. Three people were injured in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',74,'Marketplace/Plaza/Square','Unknown','Market',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,3,0,0,-9,'','','','',0,'','','','','','','','','','','','','','','','','\"Turkmen Party Official Among 42 Killed in Iraq,\" Antiwar.com, January 3, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801020035,2018,1,2,'',0,'',160,'Philippines',5,'Southeast Asia','Davao Oriental','Marayag',7.154925,126.162929,1,0,'The incident occurred in the Lupon district.','01/02/2018: Assailants attacked a military detachment in Marayag, Lupon, Davao Oriental, Philippines. There were no reported casualties in the attack. No group claimed responsibility for the incident; however, sources attributed the attack to the New People\'s Army (NPA).',1,1,0,1,'1','Insurgency/Guerilla Action',0,0,0,2,'Armed Assault','','','','',4,'Military',27,'Military Barracks/Base/Headquarters/Checkpost','Citizens Armed Forces Geographical Unit (CAFGU)','Base',160,'Philippines','','','','','','','','','','','','','','','','','New People\'s Army (NPA)','','','','','','',0,'','',0,6,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"NPA attacks troops in ComVal, Davao,\" Manila Times (Philippines), January 5, 2018.','\"2 NPAs killed in Leyte clash,\" Malaya Business Insight, January 4, 2018.','','START Primary Collection',0,0,0,0,''),(201801020038,2018,1,2,'',1,'',147,'Nigeria',11,'Sub-Saharan Africa','Benue','Akor',7.945983,8.719617,2,0,'The incident occurred in the Guma district.','01/02/2018: Assailants armed with machetes and firearms attacked residents in Akor, Guma, Benue, Nigeria. This was one of six related incidents in Benue over a 24-hour period. At least 21 people were killed, 30 others were injured, and an unknown number of others were reported missing across the attacks. Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',1,1,1,0,'','',1,1,0,2,'Armed Assault','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Livestock Guards','Members',147,'Nigeria','14','Private Citizens & Property','75','Village/City/Town/Suburb','Akor Village','Village','147','Nigeria','','','','','','','','','Fulani extremists','','','','','','Fulani extremists claimed responsibility for the incident and stated that the attack was carried out in self-defense.',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',2,'Automatic or Semi-Automatic Rifle','9','Melee','23','Knife or Other Sharp Object','','','','','','','','','Automatic firearms and cutlasses were used in the attack.',3,0,0,5,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',-9,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the most recent reliable estimates are reported here. Casualty numbers represent a division of the total number of those killed and wounded across incidents (201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038).','\"Benue New Year Day Attack - \'They Mowed Us Down With Guns, Machetes\',\" Daily Trust (Abuja), January 7, 2018.','\"Herdsmen kill over 20 in Benue, injure over 30,\" News Express Nigeria, January 2, 2018.','\"Herdsmen Attack: Over 50 Feared Dead, Scores Missing In Benue,\" Daily Independent (Nigeria), January 2, 2018.','START Primary Collection',-9,-9,0,-9,'201801010044, 201801010055, 201801010056, 201801020012, 201801020030, 201801020038'),(201801020039,2018,1,2,'',0,'',92,'India',6,'South Asia','Bihar','Aurangabad district',24.540799,84.440497,3,0,'The incident occurred in the Chakarbandha forest.','01/02/2018: Assailants opened fire on a joint Commando Battalion for Resolute Action (COBRA) and police patrol in Aurangabad district, Bihar, India. At least one COBRA officer was killed in the attack. No group claimed responsibility for the incident; however, sources attributed the attack to Maoists.',1,1,0,1,'4','Lack of Intentionality',0,1,0,2,'Armed Assault','','','','',4,'Military',39,'Paramilitary','Commando Battalion for Resolute Action (COBRA)','Patrol',92,'India','','','','','','','','','','','','','','','','','Maoists','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','There is doubt that this incident meets terrorism-related criteria. Sources stated that the attack occurred as security forces were conducting a search operation. The victims included Ashish Patra.','\"CRPF jawan injured in gunbattle with Maoists dies,\" Hindustan Times, January 3, 2018.','\"Bihar: CRPF jawan martyred in Aurangabad,\" The Times of India, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801030001,2018,1,3,'January 3, 2018',0,'',95,'Iraq',10,'Middle East & North Africa','Kirkuk','Laylan',35.314945,44.510154,1,0,'The incident occurred in the Kirkuk district.','01/03/2018: Assailants threw a grenade at the residence of Qadir Qasim \'Abbas in Laylan, Kirkuk, Iraq. \'Abbas, a local council member, was not harmed in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,0,0,1,'Assassination','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Government of Laylan','House of Laylan Local Council Member: Qadir Qasim \'Abbas',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',7,'Grenade','','','','','','','','','','','','','',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','Unspecified property was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Iraq: Roundup of Violent Activities Targeting Civilians 2-8 January 2018,\" Summary, January 2, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801030002,2018,1,3,'January 3, 2018',0,'',95,'Iraq',10,'Middle East & North Africa','Diyala','Madain',33.100528,44.584493,1,0,'The incident occurred in the Balad Ruz district.','01/03/2018: An explosive device detonated near a market in Madain, Diyala, Iraq. Two civilians were injured in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',74,'Marketplace/Plaza/Square','Unknown','Market',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,2,0,0,-9,'','','','',0,'','','','','','','','','','','','','','','','','\"Six civilians killed, injured in two bomb blasts, south Baghdad,\" Iraqi News, January 3, 2018.','\"Iraq: Roundup of Violent Activities Targeting Civilians 2-8 January 2018,\" Summary, January 2, 2018.','','START Primary Collection',-9,-9,0,-9,''),(201801030003,2018,1,3,'',0,'',95,'Iraq',10,'Middle East & North Africa','Al Anbar','Qaim district',34.316858,41.16026,3,0,'','01/03/2018: An explosive device detonated targeting a police patrol in Qaim district, Al Anbar, Iraq. Three police officers were injured in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to the Islamic State of Iraq and the Levant (ISIL).',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',3,'Police',23,'Police Patrol (including vehicles and convoys)','Iraqi Police Service (IPS)','Patrol',95,'Iraq','','','','','','','','','','','','','','','','','Islamic State of Iraq and the Levant (ISIL)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',0,0,0,3,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Three policemen injured as bomb blast targets police patrol in Anbar,\" Iraqi News, January 3, 2018.','','','START Primary Collection',0,1,0,1,''),(201801030004,2018,1,3,'January 3, 2018',0,'',95,'Iraq',10,'Middle East & North Africa','Baghdad','Baghdad',33.303567,44.371771,1,0,'The incident occurred in the Arab Ebjur neighborhood.','01/03/2018: An explosive device detonated in Arab Ebjur neighborhood, Baghdad, Iraq. One civilian was killed and three civilians were injured in the blast. No group claimed responsibility for the incident.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',67,'Unnamed Civilian/Unspecified','Not Applicable','Civilians',95,'Iraq','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','','','','','','','','','','','','','',1,0,0,3,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Six civilians killed, injured in two bomb blasts, south Baghdad,\" Iraqi News, January 3, 2018.','','','START Primary Collection',-9,-9,0,-9,''),(201801030008,2018,1,3,'',0,'',147,'Nigeria',11,'Sub-Saharan Africa','Borno','Gamboru',12.359468,14.210929,1,0,'The incident occurred in the Ngala district.','01/03/2018: A teenage suicide bomber detonated at a mosque in Gamboru, Ngala, Borno, Nigeria. In addition to the assailant, 14 people were killed and at least six others were injured in the blast. This was one of two related incidents that took place in Gamboru on this date. No group claimed responsibility for the incidents; however, sources suspected that Boko Haram was behind the attacks.',1,1,1,0,'','',1,1,1,3,'Bombing/Explosion','','','','',15,'Religious Figures/Institutions',86,'Place of Worship','Unknown','Mosque',147,'Nigeria','','','','','','','','','','','','','','','','','Boko Haram','','','','','','',1,'','',0,1,0,0,'','','','','','','','','',6,'Explosives',13,'Suicide (carried bodily by human being)','','','','','','','','','','','','','',15,0,1,6,0,0,1,'3','Minor (likely < $1 million)','-99','A mosque was damaged in this attack.',0,'','','','','','','','','','','','','','','','Casualty numbers conflict across sources. Following GTD protocol, the majority reliable estimates are reported here.','\"Suicide attack on Nigeria mosque causes multiple deaths,\" Al Jazeera, January 3, 2018.','\"Suicide Blast Kills 14 In Nigeria Mosque,\" AFP (World Service), January 3, 2018.','\"Suicide blast kills 14  in Nigeria mosque,\" The Nation Pakistan, January 4, 2018.','START Primary Collection',0,0,0,0,'201801030008, 201801030009'),(201801030011,2018,1,3,'',0,'',95,'Iraq',10,'Middle East & North Africa','Nineveh','Mosul',36.209547,43.211052,1,1,'The incident occurred between Hammam al-Alil and Mosul.','01/03/2018: Assailants shot and killed three lawyers between Hammam al-Alil and Mosul, Nineveh, Iraq. No group claimed responsibility for the incident; however, sources attributed the attack to the Islamic State of Iraq and the Levant (ISIL).',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',1,'Business',112,'Legal Services','Unknown','Lawyers',95,'Iraq','','','','','','','','','','','','','','','','','Islamic State of Iraq and the Levant (ISIL)','','','','','','The specific motive is unknown; however, sources noted that the targeted lawyers were responsible for filing terrorism-related lawsuits.',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',3,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Iraq: Security Roundup 1900 GMT 04 January 2018,\" Summary, January 4, 2018.','\"34 Iraqis Killed in the Continuous War Between Government Forces and Sunnis, January 4, 2018,\" Al Jazeerah, January 4, 2018.','','START Primary Collection',0,1,0,1,''),(201801030014,2018,1,3,'',0,'',167,'Russia',9,'Eastern Europe','Chechnya','Avtury',43.162711,46.002541,1,0,'The incident occurred in the Shali district.','01/03/2018: An assailant shot and killed Abubakar Ustarkhanov, the local police chief, in Avtury, Chechnya, Russia. No group claimed responsibility for the incident; however, officials identified the assailant as Khamzat Baimuradov. Baimuradov, who was suspected of aiding militants, was killed while attempting to evade arrest during a police operation.',1,1,1,0,'','',0,1,0,1,'Assassination','','','','',3,'Police',25,'Police Security Forces/Officers','Russian Police','Head of Division: Abubakar Ustarkhanov',167,'Russia','','','','','','','','','','','','','','','','','Unknown','','','','','','',0,'','',0,1,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was seized in this attack.',0,'','','','','','','','','','','','','','','','','\"Chechen Police Kill Man Suspected Of Killing Officer,\" Radio Free Europe, January 4, 2018.','\"Revision: Russian Terrorism and Counterterrorism Highlights 5 January 2018,\" Summary, January 3, 2018.','\"Suspect of killing Chechen policeman shot dead,\" Caucasian Knot, January 4, 2018.','START Primary Collection',-9,-9,0,-9,''),(201801030017,2018,1,3,'',0,'',4,'Afghanistan',6,'South Asia','Helmand','Sangilan',32.095865,63.697496,1,0,'The incident occurred in the Washer district.','01/03/2018: A roadside landmine detonated targeting a civilian vehicle in Sangilan, Helmand, Afghanistan. Two civilians were killed and four others were injured in the blast. No group claimed responsibility for the incident; however, sources attributed the attack to the Taliban.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','','','','',14,'Private Citizens & Property',73,'Vehicles/Transportation','Not Applicable','Vehicle',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',6,'Explosives',8,'Landmine','','','','','','','','','','','','','A roadside landmine was used in the attack.',2,0,0,4,0,0,1,'3','Minor (likely < $1 million)','-99','A vehicle was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"6 civilians killed, wounded in Helmand IED explosion,\" Khaama Press, January 4, 2018.','\"Xinhua world news summary at 1600 GMT, Jan.3,\" Xinhua General News Service, January 3, 2018.','\"2 civilians killed, 4 injured in Helmand blast,\" Pajhwok Afghan News English, January 3, 2018.','START Primary Collection',0,0,0,0,''),(201801030018,2018,1,3,'',0,'',92,'India',6,'South Asia','Jammu and Kashmir','Sopore',34.28889,74.463713,1,0,'The incident occurred in the Harwan Unisoo neighborhood.','01/03/2018: Assailants shot and killed Arif Ahmad Sofi, a Bharatiya Janata Party (BJP) worker, in Sopore, Jammu and Kashmir, India. No group claimed responsibility for the incident; however, sources attributed the attack to Lashkar-e-Taiba (LeT).',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',22,'Violent Political Party',109,'Party Official/Candidate/Other Personnel','Bharatiya Janata Party (BJP)','Party Worker: Arif Ahmad Sofi',92,'India','','','','','','','','','','','','','','','','','Lashkar-e-Taiba (LeT)','','','','','','The specific motive is unknown; however, sources suspected that Arif Ahmad Sofi was targeted in order to dissuade his father, Muhammad Maqbool Sofi, from participating in the Kashmir Freedom Movement.',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Police blame LeTfor Sopore youth\'skilling,\" Chandigarh Tribune, January 4, 2018.','\"Jammu and Kashmir: BJP says youth killed was party worker, family refutes claim,\" Indian Express, January 4, 2018.','\"Gunmen shoot dead youth in Sopore,\" Greater Kashmir, January 3, 2018.','START Primary Collection',1,1,0,1,''),(201801030020,2018,1,3,'',0,'',113,'Libya',10,'Middle East & North Africa','Benghazi','Al-Abyar',32.190054,20.596338,1,0,'','01/03/2018: Assailants attempted to abduct Salah Iqliwan Al-Qatrani from his house in Al-Abyar, Benghazi, Libya. Al-Qatrani, the head of the education authority in Al-Abyar, was shot and killed when he resisted and attempted to escape. No group claimed responsibility for the incident; however, sources attributed the attack to the Room of the Neighbourhoods Youths and suspected that Al-Qatrani was targeted because of his candidacy for a parliamentary seat.',1,1,1,0,'','',0,1,0,1,'Assassination','','','','',2,'Government (General)',18,'Government Personnel (excluding police, military)','Government of Libya','Head of Education Authority: Salah Iqliwan al-Qatrani',113,'Libya','','','','','','','','','','','','','','','','','Room of the Neighbourhoods Youths','','','','','','The specific motive is unknown; however, sources stated that Salah Iqliwan al-Qatrani had previously been threatened not to run in upcoming parliamentary elections.',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Official dies after being shot by Benghazi volunteer force,\" Al-Wasat Online, January 4, 2018.','\"Hosted Product: Libya Press Review Security Arab Sources January 5, 2018,\" Libya Foreign and Domestic Affairs Digest, January 5, 2018.','','START Primary Collection',0,0,0,0,''),(201801030021,2018,1,3,'',0,'',4,'Afghanistan',6,'South Asia','Herat','Deh Goon',34.342947,63.365019,1,1,'The incident occurred in the Obe district.','01/03/2018: Assailants attacked Afghan Local Police (ALP) personnel in Deh Goon, Herat, Afghanistan. One police officer was killed and two were injured in the ensuing clash. The Taliban claimed responsibility for the attack.',1,1,1,0,'','',0,1,0,2,'Armed Assault','','','','',3,'Police',25,'Police Security Forces/Officers','Afghan Local Police (ALP)','Officers',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,1,'8','Personal claim','','','','','','','',5,'Firearms',5,'Unknown Gun Type','','','','','','','','','','','','','',1,0,0,2,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"ANA troops among 8 dead in attacks,\" Frontier Post, January 3, 2018.','','','START Primary Collection',0,0,0,0,''),(201801030022,2018,1,1,'',0,'',4,'Afghanistan',6,'South Asia','Herat','Rabatha',34.28527,63.010158,1,0,'The incident occurred in the Obe district.','01/01/2018: Assailants abducted two drivers and set fire to two marble supply vehicles in Rabatha, Herat, Afghanistan. The hostages were released shortly after the abduction. No group claimed responsibility; however, sources attributed the attack to the Taliban.',1,1,1,0,'','',0,1,0,6,'Hostage Taking (Kidnapping)','7','Facility/Infrastructure Attack','','',1,'Business',10,'Mining','Unknown','Marble Supply Vehicles',4,'Afghanistan','','','','','','','','','','','','','','','','','Taliban','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',5,'Unknown Gun Type','8','Incendiary','18','Arson/Fire','','','','','','','','','',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','Two supply vehicles were damaged in this attack.',1,'2','0','-99','','','','0','','','','','','2','Hostage(s) released by perpetrators','2','','\"Marble mine owners protest torching of vehicles,\" MENA English (Middle East and North Africa Financial Network), January 18, 2018.','\"ANA troops among 8 dead in attacks,\" Frontier Post, January 3, 2018.','','START Primary Collection',0,0,0,0,''),(201801030023,2018,1,3,'December 31, 2017-January 6, 2018',0,'',92,'India',6,'South Asia','Chhattisgarh','Sukma district',18.595017,81.638918,3,0,'The incident occurred between between Badegadam and Munga.','01/00/2018: Sometime between December 31, 2017 and January 6, 2018, assailants detonated an explosive device and opened fire on a police patrol between Badegadam and Munga in Sukma district, Chhattisgarh, India. There were no reported casualties in the attack. No group claimed responsibility for the incident; however, police officials arrested a Communist Party of India - Maoist (CPI-Maoist) commander in connection with the attack.',1,1,1,0,'','',0,1,0,3,'Bombing/Explosion','2','Armed Assault','','',3,'Police',23,'Police Patrol (including vehicles and convoys)','Indian Police Service (IPS)','Patrol',92,'India','','','','','','','','','','','','','','','','','Communist Party of India - Maoist (CPI-Maoist)','Jan Militia','','','','','',0,'','',0,-99,1,0,'','','','','','','','','',6,'Explosives',16,'Unknown Explosive Type','5','Firearms','5','Unknown Gun Type','','','','','','','','','',0,0,0,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"14 Naxals arrested in two districts of Chhattisgarh,\" Press Trust of India, January 9, 2018.','','','START Primary Collection',0,0,0,0,''),(201801030024,2018,1,3,'',0,'',107,'Kyrgyzstan',7,'Central Asia','Issyk-Kul','Kaji-Say',42.139387,77.179892,1,0,'','01/03/2018: Assailants threw Molotov cocktails at the Evangelical Christian Baptist Church in Kaji-Say, Issyk-Kul, Kyrgyzstan. There were no reported casualties, though the church was damaged in the attack. No group claimed responsibility for the incident; however, sources attributed the attack to Muslim extremists.',1,1,1,0,'','',0,1,0,7,'Facility/Infrastructure Attack','','','','',15,'Religious Figures/Institutions',86,'Place of Worship','Evangelical Christian Baptist Church','Church',107,'Kyrgyzstan','','','','','','','','','','','','','','','','','Muslim extremists','','','','','','The specific motive is unknown; however, sources suspected that the attack was part of a larger trend of sectarian violence between Kyrgyzstan\'s Muslim majority and Christian minority populations. Sources also suspected that the attack may have been carried out in response to the outreach events organized by the targeted church.',0,'','',0,-99,0,0,'','','','','','','','','',8,'Incendiary',19,'Molotov Cocktail/Petrol Bomb','','','','','','','','','','','','','Molotov cocktails were used in the attack.',0,0,0,0,0,0,1,'3','Minor (likely < $1 million)','-99','A church was damaged in this attack.',0,'','','','','','','','','','','','','','','','','\"Bible Miraculously Didn\'t Burn When an Evangelical Church Was Firebombed by Militants, Congregants Claim,\" MSNBC Newsweek, January 11, 2018.','\"Kyrgyz Police Probe Fire At Baptist Church Amid Hate Crime Fears,\" Radio Free Europe, January 4, 2018.','\"A sign from GOD? Christians claim divine intervention saved bible in church arson attack,\" Express Online, January 11, 2018.','START Primary Collection',-9,-9,0,-9,''),(201801030025,2018,1,3,'',0,'',228,'Yemen',10,'Middle East & North Africa','Al Hudaydah','Unknown',14.74933,43.000962,4,0,'','01/03/2018: Assailants opened fire on military positions in western Al Hudaydah governorate, Yemen. Security forces repelled the assault, killing at least 16 assailants. No group claimed responsibility for the incident; however, sources attributed the attack to Houthi extremists (Ansar Allah).',1,1,0,1,'1','Insurgency/Guerilla Action',0,0,0,2,'Armed Assault','','','','',4,'Military',34,'Military Personnel (soldiers, troops, officers, forces)','Military of Yemen','Positions',228,'Yemen','','','','','','','','','','','','','','','','','Houthi extremists (Ansar Allah)','','','','','','',0,'','',0,-99,0,0,'','','','','','','','','',5,'Firearms',4,'Rifle/Shotgun (non-automatic)','5','Firearms','5','Unknown Gun Type','','','','','','','','','Sniper rifles and other firearms were used in the attack.',16,0,16,0,0,0,0,'','','','',0,'','','','','','','','','','','','','','','','','\"Yemen\'s pro-gov\'t forces repel Houthi attack in western coast areas,\" Xinhua General News Service, January 3, 2018.','','','START Primary Collection',0,0,0,0,'');
/*!40000 ALTER TABLE `Book1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Claimed`
--

DROP TABLE IF EXISTS `Claimed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Claimed` (
  `ClaimedID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `claimed` int DEFAULT NULL,
  `claimmode` text,
  `claimmode_txt` text,
  `claim2` text,
  `claimmode2` text,
  `claimmode2_txt` text,
  `claim3` text,
  `claimmode3` text,
  `claimmode3_txt` text,
  `compclaim` text,
  PRIMARY KEY (`ClaimedID`),
  KEY `eventid_idx` (`eventid`),
  CONSTRAINT `fk_eventid_idx` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Claimed`
--

LOCK TABLES `Claimed` WRITE;
/*!40000 ALTER TABLE `Claimed` DISABLE KEYS */;
/*!40000 ALTER TABLE `Claimed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupName`
--

DROP TABLE IF EXISTS `GroupName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GroupName` (
  `GroupNameID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `gname` text,
  `gsubname` text,
  `gname2` text,
  `gsubname2` text,
  `gname3` text,
  `gsubname3` text,
  PRIMARY KEY (`GroupNameID`),
  KEY `eventid_idx` (`eventid`),
  CONSTRAINT `eventid` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupName`
--

LOCK TABLES `GroupName` WRITE;
/*!40000 ALTER TABLE `GroupName` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gun`
--

DROP TABLE IF EXISTS `Gun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gun` (
  `GunID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `guncertain1` int DEFAULT NULL,
  `guncertain2` text,
  `guncertain3` text,
  `individual` int DEFAULT NULL,
  `nperps` int DEFAULT NULL,
  `nperpcap` int DEFAULT NULL,
  PRIMARY KEY (`GunID`),
  KEY `eventid_idx` (`eventid`),
  CONSTRAINT `eventid_idx` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gun`
--

LOCK TABLES `Gun` WRITE;
/*!40000 ALTER TABLE `Gun` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HostageInfo`
--

DROP TABLE IF EXISTS `HostageInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HostageInfo` (
  `HostageInfoID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `nhours` text,
  `ndays` text,
  `divert` text,
  `kidhijcountry` text,
  PRIMARY KEY (`HostageInfoID`),
  KEY `fk_HostageInfo_1_idx` (`eventid`),
  CONSTRAINT `fk_HostageInfo_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HostageInfo`
--

LOCK TABLES `HostageInfo` WRITE;
/*!40000 ALTER TABLE `HostageInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `HostageInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hostages`
--

DROP TABLE IF EXISTS `Hostages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hostages` (
  `HostagesID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `ishostkid` int DEFAULT NULL,
  `nhostkid` text,
  `nhostkidus` text,
  PRIMARY KEY (`HostagesID`),
  KEY `fk_Hostages_1_idx` (`eventid`),
  CONSTRAINT `fk_Hostages_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hostages`
--

LOCK TABLES `Hostages` WRITE;
/*!40000 ALTER TABLE `Hostages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hostages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Killed`
--

DROP TABLE IF EXISTS `Killed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Killed` (
  `KIlledID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `nkill` int DEFAULT NULL,
  `nkillus` int DEFAULT NULL,
  `nkillter` int DEFAULT NULL,
  PRIMARY KEY (`KIlledID`),
  KEY `fk_Killed_1_idx` (`eventid`),
  CONSTRAINT `fk_Killed_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Killed`
--

LOCK TABLES `Killed` WRITE;
/*!40000 ALTER TABLE `Killed` DISABLE KEYS */;
/*!40000 ALTER TABLE `Killed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Location` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `country` int DEFAULT NULL,
  `country_txt` text,
  `region` int DEFAULT NULL,
  `region_txt` text,
  `provstate` text,
  `city` text,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `specificity` int DEFAULT NULL,
  `vicinity` int DEFAULT NULL,
  `location` text,
  PRIMARY KEY (`LocationID`),
  KEY `fk_Location_1_idx` (`eventid`),
  CONSTRAINT `fk_Location_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MediaCoverage`
--

DROP TABLE IF EXISTS `MediaCoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MediaCoverage` (
  `MediaCoverageID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  PRIMARY KEY (`MediaCoverageID`),
  KEY `fk_MediaCoverage_1_idx` (`eventid`),
  CONSTRAINT `fk_MediaCoverage_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MediaCoverage`
--

LOCK TABLES `MediaCoverage` WRITE;
/*!40000 ALTER TABLE `MediaCoverage` DISABLE KEYS */;
/*!40000 ALTER TABLE `MediaCoverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Motive`
--

DROP TABLE IF EXISTS `Motive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Motive` (
  `MotiveID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `motive` text,
  PRIMARY KEY (`MotiveID`),
  KEY `eventid_idx` (`eventid`),
  CONSTRAINT `fk_motive_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Motive`
--

LOCK TABLES `Motive` WRITE;
/*!40000 ALTER TABLE `Motive` DISABLE KEYS */;
/*!40000 ALTER TABLE `Motive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcome`
--

DROP TABLE IF EXISTS `Outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Outcome` (
  `OutcomeID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `hostkidoutcome` text,
  `hostkidoutcome_txt` text,
  `nreleased` text,
  `addnotes` text,
  PRIMARY KEY (`OutcomeID`),
  KEY `fk_Outcome_1_idx` (`eventid`),
  CONSTRAINT `fk_Outcome_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcome`
--

LOCK TABLES `Outcome` WRITE;
/*!40000 ALTER TABLE `Outcome` DISABLE KEYS */;
/*!40000 ALTER TABLE `Outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property`
--

DROP TABLE IF EXISTS `Property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property` (
  `PropertyID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `property` int DEFAULT NULL,
  `propextent` text,
  `propextent_txt` text,
  `propvalue` text,
  `propcomment` text,
  PRIMARY KEY (`PropertyID`),
  KEY `fk_Property_1_idx` (`eventid`),
  CONSTRAINT `fk_Property_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property`
--

LOCK TABLES `Property` WRITE;
/*!40000 ALTER TABLE `Property` DISABLE KEYS */;
/*!40000 ALTER TABLE `Property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ransom`
--

DROP TABLE IF EXISTS `Ransom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ransom` (
  `RansomID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `ransom` text,
  `ransomamt` text,
  `ransomamtus` text,
  `ransompaid` text,
  `ransompaidus` text,
  `ransomnote` text,
  PRIMARY KEY (`RansomID`),
  KEY `fk_Ransom_1_idx` (`eventid`),
  CONSTRAINT `fk_Ransom_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ransom`
--

LOCK TABLES `Ransom` WRITE;
/*!40000 ALTER TABLE `Ransom` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ransom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Summary`
--

DROP TABLE IF EXISTS `Summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Summary` (
  `SummaryID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `summary` text,
  `crit1` int DEFAULT NULL,
  `crit2` int DEFAULT NULL,
  `crit3` int DEFAULT NULL,
  `doubtterr` int DEFAULT NULL,
  `alternative` text,
  `alternative_txt` text,
  `multiple` int DEFAULT NULL,
  PRIMARY KEY (`SummaryID`),
  KEY `fk_Summary_1_idx` (`eventid`),
  CONSTRAINT `fk_Summary_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Summary`
--

LOCK TABLES `Summary` WRITE;
/*!40000 ALTER TABLE `Summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `Summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TargetType`
--

DROP TABLE IF EXISTS `TargetType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TargetType` (
  `TargetTypeID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `targtype1` int DEFAULT NULL,
  `targtype1_txt` text,
  `targsubtype1` int DEFAULT NULL,
  `targsubtype1_txt` text,
  `corp1` text,
  `target1` text,
  `natlty1` int DEFAULT NULL,
  `natlty1_txt` text,
  `targtype2` text,
  `targtype2_txt` text,
  `targsubtype2` text,
  `targsubtype2_txt` text,
  `corp2` text,
  `target2` text,
  `natlty2` text,
  `natlty2_txt` text,
  `targtype3` text,
  `targtype3_txt` text,
  `targsubtype3` text,
  `targsubtype3_txt` text,
  `corp3` text,
  `target3` text,
  `natlty3` text,
  `natlty3_txt` text,
  PRIMARY KEY (`TargetTypeID`),
  KEY `fk_TargetType_1_idx` (`eventid`),
  CONSTRAINT `fk_TargetType_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TargetType`
--

LOCK TABLES `TargetType` WRITE;
/*!40000 ALTER TABLE `TargetType` DISABLE KEYS */;
/*!40000 ALTER TABLE `TargetType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Time`
--

DROP TABLE IF EXISTS `Time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Time` (
  `TimeID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `iyear` int DEFAULT NULL,
  `imonth` int DEFAULT NULL,
  `iday` int DEFAULT NULL,
  `approxdate` text,
  PRIMARY KEY (`TimeID`),
  KEY `fk_eventid_idx` (`eventid`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Time`
--

LOCK TABLES `Time` WRITE;
/*!40000 ALTER TABLE `Time` DISABLE KEYS */;
INSERT INTO `Time` VALUES (1,NULL,2018,1,1,''),(2,NULL,2018,1,1,''),(3,NULL,2018,1,1,''),(4,NULL,2018,1,1,''),(5,NULL,2018,1,1,''),(6,NULL,2018,1,1,''),(7,NULL,2018,1,1,''),(8,NULL,2018,1,1,''),(9,NULL,2018,1,1,''),(10,NULL,2018,1,1,''),(11,NULL,2018,1,1,''),(12,NULL,2018,1,1,''),(13,NULL,2018,1,1,'January 1, 2018'),(14,NULL,2018,1,1,''),(15,NULL,2018,1,1,''),(16,NULL,2018,1,3,'January 3, 2018'),(17,NULL,2018,1,1,''),(18,NULL,2018,1,1,''),(19,NULL,2018,1,1,''),(20,NULL,2018,1,1,''),(21,NULL,2018,1,1,''),(22,NULL,2018,1,1,''),(23,NULL,2018,1,1,''),(24,NULL,2018,1,2,''),(25,NULL,2018,1,2,''),(26,NULL,2018,1,2,''),(27,NULL,2018,1,2,''),(28,NULL,2018,1,2,''),(29,NULL,2018,1,2,''),(30,NULL,2018,1,2,'January 2, 2018'),(31,NULL,2018,1,2,''),(32,NULL,2018,1,2,'January 2, 2018'),(33,NULL,2018,1,2,''),(34,NULL,2018,1,2,''),(35,NULL,2018,1,2,''),(36,NULL,2018,1,2,''),(37,NULL,2018,1,2,''),(38,NULL,2018,1,2,''),(39,NULL,2018,1,2,''),(40,NULL,2018,1,2,''),(41,NULL,2018,1,2,''),(42,NULL,2018,1,2,''),(43,NULL,2018,1,2,'January 2, 2018'),(44,NULL,2018,1,2,''),(45,NULL,2018,1,2,''),(46,NULL,2018,1,2,''),(47,NULL,2018,1,2,''),(48,NULL,2018,1,2,''),(49,NULL,2018,1,2,''),(50,NULL,2018,1,2,''),(51,NULL,2018,1,3,'January 3, 2018'),(52,NULL,2018,1,3,'January 3, 2018'),(53,NULL,2018,1,3,''),(54,NULL,2018,1,3,'January 3, 2018'),(55,NULL,2018,1,3,''),(56,NULL,2018,1,3,''),(57,NULL,2018,1,3,''),(58,NULL,2018,1,3,''),(59,NULL,2018,1,3,''),(60,NULL,2018,1,3,''),(61,NULL,2018,1,3,''),(62,NULL,2018,1,1,''),(63,NULL,2018,1,3,'December 31, 2017-January 6, 2018'),(64,NULL,2018,1,3,''),(65,NULL,2018,1,3,'');
/*!40000 ALTER TABLE `Time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WeaponType`
--

DROP TABLE IF EXISTS `WeaponType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WeaponType` (
  `WeaponTypeID` int NOT NULL AUTO_INCREMENT,
  `eventid` bigint DEFAULT NULL,
  `weaptype1` int DEFAULT NULL,
  `weaptype1_txt` text,
  `weapsubtype1` int DEFAULT NULL,
  `weapsubtype1_txt` text,
  `weaptype2` text,
  `weaptype2_txt` text,
  `weapsubtype2` text,
  `weapsubtype2_txt` text,
  `weaptype3` text,
  `weaptype3_txt` text,
  `weapsubtype3` text,
  `weapsubtype3_txt` text,
  `weaptype4` text,
  `weaptype4_txt` text,
  `weapsubtype4` text,
  `weapsubtype4_txt` text,
  `weapdetail` text,
  PRIMARY KEY (`WeaponTypeID`),
  KEY `eventid_idx` (`eventid`),
  CONSTRAINT `` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WeaponType`
--

LOCK TABLES `WeaponType` WRITE;
/*!40000 ALTER TABLE `WeaponType` DISABLE KEYS */;
/*!40000 ALTER TABLE `WeaponType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wounded`
--

DROP TABLE IF EXISTS `Wounded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wounded` (
  `WoundedID` int NOT NULL,
  `eventid` bigint DEFAULT NULL,
  `nwound` int DEFAULT NULL,
  `nwoundus` int DEFAULT NULL,
  `nwoundte` int DEFAULT NULL,
  PRIMARY KEY (`WoundedID`),
  KEY `fk_Wounded_1_idx` (`eventid`),
  CONSTRAINT `fk_Wounded_1` FOREIGN KEY (`eventid`) REFERENCES `Book1` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wounded`
--

LOCK TABLES `Wounded` WRITE;
/*!40000 ALTER TABLE `Wounded` DISABLE KEYS */;
/*!40000 ALTER TABLE `Wounded` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 20:50:21
