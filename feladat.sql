-- MySQL dump 10.13  Distrib 5.7.26, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: feladat
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES ('product',29);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `issold` tinyint(4) NOT NULL DEFAULT '0',
  `isaccapted` tinyint(4) NOT NULL DEFAULT '0',
  `imagepath` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sold_date` timestamp NULL DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `owner` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_product_buyer_userid_idx` (`buyer`),
  KEY `fk_product_owner_uderid_idx` (`owner`),
  CONSTRAINT `FK_product_buyer_userid` FOREIGN KEY (`buyer`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_product_owner_userid` FOREIGN KEY (`owner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,1,'c:\\imagepath.jpg','2020-07-25 12:10:52',NULL,NULL,1),(2,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:10:59',NULL,NULL,1),(3,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:10:59',NULL,NULL,1),(4,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:10:59',NULL,NULL,1),(5,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:10:59',NULL,NULL,1),(6,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:10:59',NULL,NULL,1),(7,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:00',NULL,NULL,1),(8,'kiscica','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:00',NULL,NULL,1),(9,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:01',NULL,NULL,1),(10,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:01',NULL,NULL,1),(11,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:02',NULL,NULL,1),(12,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:02',NULL,NULL,1),(13,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 12:11:02',NULL,NULL,1),(14,'kutya','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne.',1000,0,0,'c:\\imagepath.jpg','2020-07-25 13:06:35',NULL,NULL,1),(15,'kutya2','Nagyon aranyos macska csak sajnos ő már a 8080 macska lenne2222.',10000,0,0,'c:\\imagepath2.jpg','2020-07-25 13:07:13',NULL,NULL,1),(17,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,1),(18,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(19,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(20,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(21,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(22,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(23,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(24,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(25,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(26,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(27,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2),(28,'Hibernate','Első kapcsolótáblás hozzáadás',10000,0,0,'C:\\imagePAth','2020-07-25 22:00:00',NULL,NULL,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `role` varchar(5) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'misi','2a082ef0cc669156f943432a71ced7526d2cb412','Pekár Mihály','admin','mpekar5@gmail.com'),(2,'anita','2a082ef0cc669156f943432a71ced7526d2cb412','Brachna Anita','user','anita55@gmail.com'),(3,'valaki','eb7b02a4957ad69ae41848c047205c827e8d1aa7','Mekk Elek','user','kamuemail@kamu.hu'),(5,'valami2','Feladat2020#','Pekár Mihály','admin','mpekar55@gmail.com'),(6,'panita','2a082ef0cc669156f943432a71ced7526d2cb412','Brachna Anita','user','anita55@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersproduct`
--

DROP TABLE IF EXISTS `usersproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersproduct` (
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  KEY `FK_usersproduct_user_id_idx` (`userid`),
  KEY `FK_usersproduct_product_id_idx` (`productid`),
  CONSTRAINT `FK_usersproduct_product_id` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_usersproduct_user_id` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersproduct`
--

LOCK TABLES `usersproduct` WRITE;
/*!40000 ALTER TABLE `usersproduct` DISABLE KEYS */;
INSERT INTO `usersproduct` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(2,11),(2,12),(2,13),(1,14),(2,15);
/*!40000 ALTER TABLE `usersproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'feladat'
--
/*!50003 DROP FUNCTION IF EXISTS `addProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `addProduct`(fname varchar(20), fdesc varchar(255),fprice int,fimagepath varchar(255)) RETURNS int(11)
    DETERMINISTIC
BEGIN
declare newid int;
insert into product(name,description,price,imagepath)value(fname,fdesc,fprice,fimagepath);
select ifnull(max(id),0) into newid from product;
RETURN newid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddUser`(in pusername varchar(20),in ppassword varchar(255),in prealname varchar(50), in prole varchar(5),in pemail varchar(255) )
BEGIN
	insert into user(username,password,realname,role,email)value(pusername,ppassword,prealname,prole,pemail);	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `adduserproduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduserproduct`(pname varchar(20), pdesc varchar(255),pprice int,pimagepath varchar(255), puserid int)
BEGIN
Declare newproductid int;
set newproductid := addProduct(pname,pdesc,pprice,pimagepath);
insert into usersproduct(userid,productid)value(puserid,newproductid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `authorizeproduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `authorizeproduct`(in productid int)
BEGIN
update product set isaccapted = 1 where id = productid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buyproduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyproduct`(in productid int, in buyerid int)
BEGIN
update product set issold = 1 , buyer = buyerid, sold_date = current_timestamp() where id = productid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getallproducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallproducts`()
BEGIN
select * from product;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getnotauthorizedproducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getnotauthorizedproducts`()
BEGIN
select * from product where isaccapted = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getproductsbyuserid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getproductsbyuserid`(in userid int)
BEGIN
 select p.* from usersproduct u inner join product p on (p.id = u.productid) where u.userid = userid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers`()
BEGIN
 select  id, username, realname,email from user where role = "user" ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modifyproduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modifyproduct`(pname varchar(20), pdesc varchar(255),pprice int,pimagepath varchar(255), pid int)
BEGIN
update prodcut set name = pname,description = pdesc,price = pprice, imagepath = pimagepath where id = pid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modifyuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modifyuser`(in pusername varchar(20),in ppassword varchar(255),in prealname varchar(50), in prole varchar(5),in pemail varchar(255), in uid int)
BEGIN
	update user set username = pusername, password = ppassword, realname = prealname, role = prole, email = pemail where id = uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 22:07:31
