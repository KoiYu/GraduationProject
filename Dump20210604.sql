-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: test_case
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `t_bug`
--

DROP TABLE IF EXISTS `t_bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_bug` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project` int unsigned NOT NULL,
  `case_link` text,
  `description` text NOT NULL,
  `message` text,
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表 P0，默认值\\\\n1代表 P1\\\\n2代表 P2\\\\n3代表 P3',
  `status` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表新提交，默认值\\\\n1代表已修复\\\\n2代表已发布\\\\n3代表重新打开',
  `founder` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='缺陷报告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bug`
--

LOCK TABLES `t_bug` WRITE;
/*!40000 ALTER TABLE `t_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_case`
--

DROP TABLE IF EXISTS `t_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_case` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `condition` text,
  `step` text,
  `expect` text,
  `dependence` text,
  `type` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表功能用例，默认值\\n1代表性能用例\\n2代表兼容性用例\\n3代表UI用例',
  `level` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表P0，默认值\\n1代表P1\\n2代表P2\\n3代表P3',
  `bug_link` text,
  `result` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表未执行，默认值\\n1代表通过\\n2代表不通过\\n3代表受阻',
  `status` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表草稿，默认值\\n1代表通过\\n2代表未通过\\n3代表废弃',
  `founder` varchar(255) NOT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `project` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试用例表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_case`
--

LOCK TABLES `t_case` WRITE;
/*!40000 ALTER TABLE `t_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_project`
--

DROP TABLE IF EXISTS `t_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_project` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `owner` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='测试项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_project`
--

LOCK TABLES `t_project` WRITE;
/*!40000 ALTER TABLE `t_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `character` int unsigned NOT NULL DEFAULT '0' COMMENT '0代表管理员\\\\n1代表测试人员，默认值\\\\n2代表开发人员',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `user_UNIQUE` (`user`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `telephone_UNIQUE` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04 20:26:46
