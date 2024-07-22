-- Create the 'jobrover' database
CREATE DATABASE IF NOT EXISTS u557256698_jobrover;
USE u557256698_jobrover;

-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: jobrover
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','johndoe@gmail.com','$2y$10$QrTehAsNQ02caJVXF3FJ6.rcNzeJSt7wbgwBnM6HyXs4s2TlEC8/K','General Trias ','Cavite','2024-07-18 12:11:44'),(2,'Jane Doe','janedoe@gmail.com','$2y$10$QrTehAsNQ02caJVXF3FJ6.rcNzeJSt7wbgwBnM6HyXs4s2TlEC8/K','Sta. Rosa','Laguna','2024-07-18 12:12:49'),(3,'Steve Smith','stevesmith@gmail.com','$2y$10$QrTehAsNQ02caJVXF3FJ6.rcNzeJSt7wbgwBnM6HyXs4s2TlEC8/K','Makati','Metro Manila','2024-07-18 12:16:19'),(5,'Arvin Buid','arvinbuid@gmail.com','$2y$10$QrTehAsNQ02caJVXF3FJ6.rcNzeJSt7wbgwBnM6HyXs4s2TlEC8/K','General Trias','Cavite','2024-07-21 11:04:44'),(6,'Mario','mario@gmail.com','$2y$10$cdgvtpRncWNu8KJw/ADhN.FFh0L7NlI1ZoieWmeE.5VAeMqTAEEXy','Boston','MA','2024-07-21 13:42:58'),(7,'Luigi','luigi@gmail.com','$2y$10$Bha5/LzEy9kY4W0BvzACdevQP4E7fN5YAU7qikwcK2EYchKF16ptW','NYC','NY','2024-07-21 13:53:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 19:25:51

-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: jobrover
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `salary` varchar(45) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `requirements` longtext,
  `benefits` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_listings_users_idx` (`user_id`),
  CONSTRAINT `fk_listings_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (3,3,'Web Developer','Join our team as a Web Developer and create amazing web applications.','40000','web development, programming','WebTech Solutions','789 Web Ave','Angeles','Pampanga','456-876-5432','info@webtechsolutions.com','Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript','Competitive salary, professional development opportunities, friendly work environment','2024-07-18 12:43:25'),(18,2,'Software Developer','We are looking for a skilled software developer to join our team. The ideal candidate will have experience in developing applications, troubleshooting issues, and collaborating with cross-functional teams.','600000','PHP, Javascript, MySQL, HTML5, CSS3','Health insurance, paid time off','Tech Solutions Inc.','Makati','Metro Manila','+63 2 1234 5678','hr@techsolutions.ph','Bachelor’s degree in Computer Science or related field, At least 2 years of experience in software development',NULL,'2024-07-22 03:06:56'),(19,2,'Marketing Manager','We are seeking a dynamic marketing manager to lead our marketing efforts and develop strategies to increase brand awareness and drive sales.','750000','Marketing, SEO, Content Creation','Marketing Pros Inc.','5678 Market Avenue','Taguig','Metro Manila','+63 2 8765 4321','careers@marketingpros.ph','Bachelor’s degree in Marketing or related field, Proven experience as a Marketing Manager or similar role','Performance bonuses, Health insurance','2024-07-22 03:09:14'),(20,6,'Graphic Designer','Join our creative team as a graphic designer. You will be responsible for creating visual content for our marketing campaigns and social media platforms.','500000','Graphic Design, Adobe Creative Suite, Illustration','Creative Minds Studio','91011 Art Lane','Pasig','Metro Manila','+63 2 2345 6789','jobs@creativeminds.ph','Bachelor’s degree in Graphic Design or related field, Proficiency in Adobe Creative Suite (Photoshop, Illustrator, InDesign), Strong portfolio showcasing design skills','Health insurance, Creative work environment','2024-07-22 03:14:01'),(21,6,'Human Resources Manager','We are seeking an HR manager to oversee all aspects of human resources practices and processes. You will support business needs and ensure the proper implementation of company strategy and objectives.','800000','Human Resources, Recruitment, Employee Relations','HR Solutions Inc.','1819 HR Lane','Pasay','Metro Manila','+63 2 6789 0123','hr@hrsolutions.ph','Bachelor’s degree in Human Resources or related field, Proven experience as an HR manager','Health insurance, Employee discounts, Flexible working hours','2024-07-22 03:16:34'),(22,7,'Accountant','We are seeking a results-driven sales executive to actively seek out and engage customer prospects. You will provide complete and appropriate solutions for every customer to boost top-line revenue growth, customer acquisition levels, and profitability.','550000','Sales, Customer Acquisition, Negotiation','Finance Experts Inc.','2021 Finance Road','Makati','Metro Manila','+63 2 7890 1234','careers@financeexperts.ph','Bachelor’s degree in Business Administration or related field, Proven experience as a sales executive','Health insurance, Performance bonuses','2024-07-22 03:18:55'),(23,7,'Customer Service Representative','We are seeking a customer service representative to manage customer queries and complaints. You will also be asked to process orders, modifications, and escalate complaints across a number of communication channels.','350000','Customer Service, Communication Skills, Problem Solving','Customer First Corp.','1415 Service Road','Quezon City','Metro Manila','+63 2 4567 8901','careers@customerfirst.ph','High school diploma or equivalent, Experience in customer service is a plus','Health insurance, Performance bonuses, Paid time off, Career advancement opportunities','2024-07-22 03:20:39'),(24,5,'Data Analyst','e are looking for a data analyst to interpret data and turn it into information that can offer ways to improve a business, thus affecting business decisions.','700000','Data Analysis, SQL, Python','Data Insights Inc.','1213 Data Street','Mandaluyong','Metro Manila','+63 2 3456 7890','hr@datainsights.ph','Bachelor’s degree in Statistics, Mathematics, or related field, Experience with data analysis and statistical software, Strong analytical and problem-solving skills','Health insurance, Professional development','2024-07-22 03:27:43');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 19:25:51

