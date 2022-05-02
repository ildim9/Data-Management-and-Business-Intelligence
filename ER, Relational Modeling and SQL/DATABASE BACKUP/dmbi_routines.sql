-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dmbi
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Temporary view structure for view `avg_2019`
--

DROP TABLE IF EXISTS `avg_2019`;
/*!50001 DROP VIEW IF EXISTS `avg_2019`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_2019` AS SELECT 
 1 AS `L_CODE`,
 1 AS `AV_2019`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_number_of_population`
--

DROP TABLE IF EXISTS `total_number_of_population`;
/*!50001 DROP VIEW IF EXISTS `total_number_of_population`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_number_of_population` AS SELECT 
 1 AS `TOTAL_POPULATION`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `number_of_2020_assessments`
--

DROP TABLE IF EXISTS `number_of_2020_assessments`;
/*!50001 DROP VIEW IF EXISTS `number_of_2020_assessments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `number_of_2020_assessments` AS SELECT 
 1 AS `COUNT_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `houses_ass`
--

DROP TABLE IF EXISTS `houses_ass`;
/*!50001 DROP VIEW IF EXISTS `houses_ass`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `houses_ass` AS SELECT 
 1 AS `AUDITOR_ID`,
 1 AS `DATE_OF_ASSESSMENT`,
 1 AS `TOTAL_HOUSE_ASSESSMENTS_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_2020`
--

DROP TABLE IF EXISTS `avg_2020`;
/*!50001 DROP VIEW IF EXISTS `avg_2020`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_2020` AS SELECT 
 1 AS `L_CODE`,
 1 AS `AV_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `offices_ass`
--

DROP TABLE IF EXISTS `offices_ass`;
/*!50001 DROP VIEW IF EXISTS `offices_ass`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `offices_ass` AS SELECT 
 1 AS `AUDITOR_ID`,
 1 AS `DATE_OF_ASSESSMENT`,
 1 AS `TOTAL_OFFICE_ASSESSMENTS_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `avg_2019`
--

/*!50001 DROP VIEW IF EXISTS `avg_2019`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_2019` AS select `location`.`L_CODE` AS `L_CODE`,(avg(`assessment`.`PRICE`) / `realestate`.`RE_SIZE`) AS `AV_2019` from ((`location` join `realestate` on((`location`.`L_CODE` = `realestate`.`L_CODE`))) join `assessment` on((`realestate`.`RE_ID` = `assessment`.`RE_ID`))) where (year(`assessment`.`DATE`) = 2019) group by `location`.`L_CODE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_number_of_population`
--

/*!50001 DROP VIEW IF EXISTS `total_number_of_population`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_number_of_population` AS select sum(`location`.`POPULATION`) AS `TOTAL_POPULATION` from `location` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `number_of_2020_assessments`
--

/*!50001 DROP VIEW IF EXISTS `number_of_2020_assessments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_2020_assessments` AS select count(`assessment`.`A_CODE`) AS `COUNT_2020` from `assessment` where (year(`assessment`.`DATE`) = 2020) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `houses_ass`
--

/*!50001 DROP VIEW IF EXISTS `houses_ass`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `houses_ass` AS select `auditor`.`AU_ID` AS `AUDITOR_ID`,`assessment`.`DATE` AS `DATE_OF_ASSESSMENT`,count(`houses`.`RE_ID`) AS `TOTAL_HOUSE_ASSESSMENTS_2020` from ((`houses` join `assessment`) join `auditor`) where ((`houses`.`RE_ID` = `assessment`.`RE_ID`) and (year(`assessment`.`DATE`) = 2020) and (`assessment`.`AU_ID` = `auditor`.`AU_ID`)) group by `auditor`.`AU_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_2020`
--

/*!50001 DROP VIEW IF EXISTS `avg_2020`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_2020` AS select `location`.`L_CODE` AS `L_CODE`,(avg(`assessment`.`PRICE`) / `realestate`.`RE_SIZE`) AS `AV_2020` from ((`location` join `realestate` on((`location`.`L_CODE` = `realestate`.`L_CODE`))) join `assessment` on((`realestate`.`RE_ID` = `assessment`.`RE_ID`))) where (year(`assessment`.`DATE`) = 2020) group by `location`.`L_CODE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `offices_ass`
--

/*!50001 DROP VIEW IF EXISTS `offices_ass`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `offices_ass` AS select `auditor`.`AU_ID` AS `AUDITOR_ID`,`assessment`.`DATE` AS `DATE_OF_ASSESSMENT`,count(`offices`.`RE_ID`) AS `TOTAL_OFFICE_ASSESSMENTS_2020` from ((`offices` join `assessment`) join `auditor`) where ((`offices`.`RE_ID` = `assessment`.`RE_ID`) and (year(`assessment`.`DATE`) = 2020) and (`assessment`.`AU_ID` = `auditor`.`AU_ID`)) group by `auditor`.`AU_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 14:09:55
