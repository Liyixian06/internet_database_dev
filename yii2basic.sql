-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: yii2basic
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `permissions` smallint NOT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-comment_user_id` (`user_id`),
  CONSTRAINT `fk-comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (6,1,'<h1>Title1</h1><h2>Title2</h2><h3>Title3</h3><p>this is line 1<span></span></p><p><strong>this is bold</strong><br></p><p><em>this is italic</em></p><p><del>this is delete line</del></p><pre>this is code\r\n</pre><blockquote>this is reference</blockquote><p><a href=\"https://www.bing.com\" target=\"_blank\">this is url</a></p><p><span style=\"color: #95b3d7;\"><span style=\"color: #548dd4;\">this is different color</span></span></p><hr><p>this is a picture:</p><p><img src=\"/uploads/1/b507167a03-example.jpg\" style=\"margin: auto; display: block;\" alt=\"example\"></p>',0,1702837708,1702837708),(8,2,'<p>this is a comment.</p>',0,1702838662,1702838662),(11,4,'<p>this is a private comment.</p>',1,1705738848,1705738848);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1702826995),('m140209_132017_init',1702827045),('m140403_174025_create_account_table',1702827045),('m140504_113157_update_tables',1702827045),('m140504_130429_create_token_table',1702827045),('m140830_171933_fix_ip_field',1702827045),('m140830_172703_change_account_table_name',1702827045),('m141222_110026_update_ip_field',1702827045),('m231214_154731_create_country_table',1702827056),('m231217_132353_create_comment_table',1702827056),('m240119_120447_create_review_table',1705755822);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,NULL,NULL,'2110577@mail.nankai.edu.cn','7fb192662b7ed6a9207844e0b5b13b78',NULL,NULL,NULL),(2,NULL,NULL,'example@example.com','23463b99b62a72f26ed677cc556c44e8',NULL,NULL,NULL),(4,NULL,NULL,'11111@111.com','ef63fdb9a74a4a1503e50fe376cf2359',NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'核污水排海首日辐射值就超标，可能才刚开始','陡然升高的辐射值，提醒国际原子能等专业机构需要对此有更严密的监管。\r\n\r\n　　当地时间8月24日13时，日本福岛第一核电站启动核污染水排海。当天，东京电力公司在记者会上宣布，当日核污染水排放量预计为200到210吨，每天的排放情况将在次日公布。\r\n\r\n　　据央视记者实地探访，在距离福岛第一核电站附近约6.5千米处用辐射仪测试，显示结果为0.10μSv/h（微西弗）。处于东京时，辐射仪测试结果为0.01μSv/h，记者沿途测试，辐射仪最高指数达到2.0μSv/h，表明福岛周边最高辐射值为东京200倍。\r\n\r\n　　8月24日，中国外交部发言人就日本政府启动福岛核污染水排海发表谈话称，中方对此表示坚决反对和强烈谴责，已向日方提出严正交涉，要求日方停止这一错误行为。\r\n\r\n　　辐射量超标约20倍\r\n\r\n　　当谈论核污染水排放以及核辐射问题时，有必要说一下国际上认同的几个原则，即辐射防护三原则：实践的正当性，防护水平的最优化和个人剂量限值。\r\n\r\n　　实践的正当性，要求任何伴有辐射的实践所带来的利益，应当大于其可能产生的危害；防护水平的最优化，是指在综合考虑社会和经济等因素之后，将辐射危害保持在合理可行、尽量低的水平上；规定个人剂量限值的目的，是为了保证社会的每个成员都不会受到不合理的辐射照射。\r\n\r\n　　尽管日本排放核污染水之前，声称获得国际原子能机构的安全标准认定，排放核污染水产生的核辐射值在安全值之下。但核污染水向海洋排放史无前例，人们最担心的是核物质（核素）的辐射量超过正常范围，从而导致对人和其他生物的损伤，以及对生态环境的危害。\r\n\r\n　　核能领域的辐射属于电离辐射，人们在生活中一直处于天然电离辐射源的照射，包括宇宙射线、地球放射性核素产生的辐射等。而人类所受到的辐射剂量，主要来自天然本底辐射（约76.58%）和医疗（约20%），核电站产生的辐射剂量非常小（约0.25%）。\r\n\r\n　　国际放射防护委员会和世卫组织提出的个人接受的安全辐射剂量限值为1mSv（毫西弗）／年（1mSv=1000μSv），即每小时0.1微西弗（0.1μSv/h）；受职业照射的个人剂量限值为20mSv／年，如医院放射科医务人员和核电站工作人员。这是指来自非本底辐射的游离辐射。\r\n\r\n　　现在的数据表明，东京的游离辐射剂量是合格的，但是离福岛较近的地方最高值为东京的200倍，证明了人们的担心不无理由。另外，沿途实测的最高值达2.0μSv/h，也是国际放射防护委员会推荐的安全值0.1μSv/h的20倍，这大大超出了安全值的范围。\r\n\r\n　　需查清辐射值升高原因\r\n\r\n　　当前亟须明确的是，这种随排放核污染水的辐射剂量大量超标是一时的，还是长期的。如果是长期的，必然会对人、生态和环境造成伤害。另外，还需要找到这种核辐射值陡然升高的原因。\r\n\r\n　　按照东京电力公司的计划，首次排污每天将排放约460吨，持续17天，合计排放约7800吨核污染水，2023年度预计排放约3.12万吨，核污染水排海时间长达30年。核污染水将通过洋流影响整个太平洋乃至全球海域，全球生态势必长期处于一种不确定的状态。\r\n\r\n　　此前，国际原子能机构认为，东京电力公司证明了其测量的高度准确性和技术能力；东京电力公司的样品采集程序遵循了获取代表性样品要求的适当方法标准；东京电力公司针对不同的放射性核素所选择的分析方法是适当且切合用途的。\r\n\r\n　　但在核污染水排海第一天，就出现辐射量是正常安全剂量20倍的情况。这也提醒，国际原子能等专业机构需要对此有更严密的监管。否则，周边国家和全球就有可能处于自然环境辐射超标的危险之中。\r\n\r\n　　福岛核污染水排海计划的正当性、合法性、安全性，一直受到国际社会质疑。中方等利益攸关方多次指出，如果核污染水是安全的，就没有必要排海，如果不安全，就更不应该排海。\r\n\r\n　　海洋是全人类赖以生存的蓝色家园，各国都负有保护和保全海洋环境的国际法义务。有必要再次呼吁，日方立即停止排海，以负责任的态度同周边国家诚实沟通，接受国际社会严格监督，切实采取科学、安全、透明的方式处置核污染水。\r\n\r\n　　□张田勘（科普专栏作者）','2023-08-25 12:39:16'),(2,'【社论】日本不能罔顾全人类的利益','日本政府不顾国际社会严重关切和坚决反对，决定于8月24日启动福岛核污染水排海，引发全球高度关注。中国外交部发言人表示，此举极端自私，极不负责任。中方强烈敦促日方纠正错误决定，撤销核污染水排海计划，以真诚态度同周边邻国善意沟通，以负责任方式处置核污染水，接受严格国际监督。\r\n也许就在两天后，福岛核污水就将滚滚入海，随洋流污染整个世界。这将给地球环境带来怎样的影响，对人类未来又意味着什么？\r\n\r\n12年来，已经有多国记者深入福岛调查，发现核电站所在地区早已沦为“死城”——居民大都跑了，仅有部分老人留守。当地核污染依然非常严重，空气中的辐射量高达3.27微希沃特／每小时，是核灾难前的数百倍。空气尚且如此，谁又能保障核废水无毒无害？\r\n\r\n两年多来，福岛核污染水排海计划的正当性、合法性、安全性一直受到国际社会质疑。日方迄未解决国际社会关于核污染水净化装置长期可靠性、核污染水数据真实准确性、排海监测安排的有效性等重大关切。日本强推核污染水排海不正当、不合理、不必要。\r\n\r\n日本政府拍着胸脯的保证，本身就是一个悖论，是自相矛盾的——如果核污水是安全的，就没有必要排海；反之，如果不安全，那就更不应该排海。这是再简单不过的逻辑关系。国际社会，自然也不会听之任之。\r\n\r\n前不久，韩国共同民主党发言人朴省俊公开表示，核污染水排海令韩国民众不安。上个月，菲律宾民众举行抗议活动；印尼国会议员也疾呼：如果核污染水没有妥善处置，非常有价值的珊瑚礁和海洋生物群就有可能会遭到破坏，那肯定也会威胁到我们所有人的生命。\r\n\r\n罔顾全人类命运的行径，必然引发抵制。目前，香港特区政府已经决定自8月24日开始，禁止源自包括东京、福岛在内的10个都、县的水产品进口。这或许仅仅是个开始。海洋是全人类的共同财产，海洋生态安全直接关系到人类未来命运，谁破坏它，谁就是与全人类为敌。\r\n\r\n需要指出，个别国家和机构基于各种利益和诉求，暧昧地站在日本一边，为其排污行为背书；还有的抱有侥幸心理，或认为距离足够远，事不关己。但人类只有一个地球，海洋是全人类的共同财产，在不确定性面前，世界无路可退。\r\n\r\n我们期待，国际社会正义力量积极发声，采取必要的制裁和抵制行动，触动日本社会包括其国内利益集团，然后转化为国内政治压力，倒逼倒行逆施者改弦更张。人类的命运，不该掌握在一小撮不负责任的政客和精致利己者手中。人类必须为自己和子孙后代争取碧海蓝天和清洁无害的水源。\r\n\r\n人类是命运共同体，在核污染面前更是没有人能独善其身。全世界所有热爱环境、珍爱生命的人，都应该联合起来，行动起来。','2024-01-19 12:40:51'),(3,'新华时评：日本核污染水强排入海贻害无穷','新华社东京8月24日电 题：日本核污染水强排入海贻害无穷\r\n\r\n新华社记者\r\n\r\n8月24日，日本东北太平洋沿岸，东京电力公司开启了福岛第一核电站核污染水的正式排海。此后的数十年间，福岛核电站产生的污染水将持续排入大海。日本强排核污染水入海，已经造成和将要带来的后果怎么强调都不为过。\r\n\r\n此举将对海洋环境带来的长期影响后果难测。\r\n\r\n福岛第一核电站迄今储存的核污染水多达134万吨，东电制定的2023年度排放“指标”为3.12万吨，但毫无疑问以后会大幅增加排放量。同时，因用水冷却熔毁堆芯以及雨水和地下水等流过，每天继续产生大量高浓度核污染水。日媒援引专家的话评估，今后漫长期间，核污染水将源源不断产生并排入大海。且不说用来“处理”核污染水的系统寿命如何、可靠与否，仅积年累月排放的氚等核素总量就非常惊人，其对环境和生物的长期影响无从准确评估，不确定性就是最大的风险之一。\r\n\r\n此举对国际法治构成严重挑战。\r\n\r\n日本向来标榜“国际法治”，尤其热衷于将“海洋法治”挂在嘴边，但其强行排海之举明显不符合《联合国海洋法公约》《伦敦倾废公约》等相关规定。2020年，联合国人权高专办一份特别报告指出，福岛核污染水入海将影响生计和健康，涉及人权问题，但日方置若罔闻。日方无视“国际法治”尊严，违背国际道义责任和国际法义务，是在赤裸裸地挑战“国际法治”。\r\n\r\n此举将对靠海吃海人群生计影响深远。\r\n\r\n对于受到核污染水排海直接或间接影响的福岛渔民等国内民众，日本政府准备了数百亿日元的基金用于补偿，但受影响的远不止日本民众，对太平洋沿岸邻国、太平洋岛国等各国民众都会带来损失。半个多世纪前，美国在太平洋的马绍尔群岛进行几十次核试验，造成的严重后果至今犹在，众多岛国民众背井离乡。日本核污染水排海，对以海洋为生的人们势必带来打击。\r\n\r\n此举打着“科学”名义损害了国际机构权威。\r\n\r\n福岛核污染水处理，既是科学问题，也是态度问题。但日本处心积虑拉国际原子能机构为其核污染水排海行为站台，压制和过滤反对排海的科学界和环保界声音，利用国际原子能机构的评估报告打压异议，态度蛮横，既污名了“科学”精神，又损害了本该秉公直言的国际机构声誉。\r\n\r\n此举还充分暴露美西方及其媒体的“双重标准”。\r\n\r\n美西方国家和大多数媒体对日本强排核污染水不仅不批评质疑，还默认纵容乃至站台背书。这固然与那些国家距离日本地理位置远、切身利害少有关，但更重要的恐怕还是源于根深蒂固的“双重标准”。正如日本有识之士提出的灵魂拷问：换作是非西方盟友排放核污染水，日本会怎么反应？美西方会怎么反应？答案不言自明，“标准”肯定换了。因为日本是盟友、是西方阵营，美西方对日本排海采取了睁一只眼闭一只眼的态度，实际上充当了日本核污染水排海的“帮凶”。\r\n\r\n然而，无论日本政府如何煞费苦心洗白核污染水排海，历史终将对此恶劣行径记下重重一笔。\r\n\r\n(责编：杨光宇、牛镛)','2023-08-24 06:25:37'),(4,'日本核污水排海是为一己之私损天下','■ 社论\r\n\r\n　　把全球核安全工具化政治化，是与缺乏法理性和科学验证性的日本核污水排放，同样危险的操作。\r\n\r\n　　日本政府8月22日宣布，日本福岛第一核电站核污染水于24日起开始排海。据最新消息，日本东京电力公司正在为核污水排海做最后准备，除非气象条件不允许，日本将从24日起正式启动核污水排海。\r\n\r\n　　自日本政府2021年4月决定将核污水过滤并稀释后排入大海，就遭到了中俄韩等周边国家的强烈反对。8月23日，中国外交部发言人汪文斌表示，中方强烈敦促日方撤销错误决定，停止强推核污染水排海计划，以真诚态度同周边邻国善意沟通，以负责任方式加以处置，避免对全球海洋环境造成不可预测的破坏和危害。\r\n\r\n　　此外，太平洋岛国论坛也表示严重关切，日本福岛民众和渔业团体也表示坚决反对核污水排海计划。\r\n\r\n　　然而，对于国际社会和日本国内民众的质疑，日方始终回避矫饰、混淆概念，甚至将核污水与核废水混为一谈，声称处理过的核污水可以安全饮用，极力为排海计划洗白，直至强行启动核污水排海这一史无前例的危险作业。\r\n\r\n　　之所以说危险，是因为日本核污水排海计划缺乏科学验证标准。例如，福岛核污染水中含有60多种放射性核素，很多核素目前尚无有效处理技术，日方如何保证核污染水排海对海洋环境和人类健康安全无害？\r\n\r\n　　再如，作为一项操作时间长达30年的排放计划，日方如何保证核污染水净化装置（ALPS）的长期有效性和可靠性？根据日方自己公布的数据，经ALPS处理的核污染水仍有约70%未达到排放标准，需再次净化处理。\r\n\r\n　　还要看到，日本核污水排海计划也缺乏正当合法性。《联合国海洋法公约》规定，各国应采取一切必要措施，确保其管辖或控制下的活动不致使其他国家及其环境遭受污染的损害，并应确保所造成的污染不致扩大到行使主权权利的区域之外。日本排海计划显然违反了公约要求。\r\n\r\n　　日方一直将7月份国际原子能机构的相关评估报告当作核污水排海的许可证和法理性依据。然而，事实是该报告并未得到专家一致认可，国际原子能机构总干事格罗西在该报告前言中也强调，核污水排海是日方的“国家决定”，“这份报告既不是对这一政策的推荐，也不是背书”。\r\n\r\n　　6月19日，联合国刚刚通过了《国家管辖范围以外区域海洋生物多样性养护和可持续利用协定》。这项协定首次将环境保护范围扩大到了国家管辖范围以外的三分之二海洋，为《联合国海洋法公约》提供了一个更新的框架。该协定的通过，被视作多边主义和联合国的一次重大胜利。\r\n\r\n　　然而，协定通过仅仅两个月，日本就要一意孤行强行启动核污水排海。清华大学的宏观模拟结果表明，核污水在排放后240天就会到达我国沿岸海域，1200天后将到达北美沿岸并覆盖几乎整个北太平洋。\r\n\r\n　　我们不禁要问，为何国际社会对日方这一对全球海洋环境、公众健康构成巨大挑战的行动，没有形成更强大的合力，敦促日方以更负责的态度处理核污水？\r\n\r\n　　这其中，有全球治理失衡的原因，也有个别国家为推行地缘战略，把全球核安全问题当作筹码，放任日方核污水排海的因素。\r\n\r\n　　早在2021年，美国国务院发布的一份声明就表示，日本的核污水排海计划遵循了“全球公认的核安全标准”。但显然，日本核污水排海距离全球核安全十原则相去甚远。据彭博社报道，在8月18日刚结束的美日韩戴维营会议上，日美在双边会晤时也讨论了核污水排海问题，而日方对美方给予的支持“表示了感谢”。\r\n\r\n　　必须指出，把全球核安全工具化政治化，是与缺乏法理性和科学验证性的日本核污水排放，同样危险的操作。\r\n\r\n　　毫无疑问，日本核污水排海，是为一己之私而损天下的行为。为维护全球海洋环境和民众健康，为维护我国正当权益，坚持对日本相关食品的限制措施是应有之义。\r\n\r\n　　除此之外，还应做好围绕核损害、海洋生态环境损害索偿的各项法理准备。国际社会也应进一步凝聚共识，认识到日本核污水排海的全球性潜在风险，让日方真正履行国际道义责任和国际法义务。\r\n\r\n　　这既是维护各国自身利益的需要，也是改进全球治理的要求。','2023-08-23 16:00:00'),(5,'我们该如何看待日本排放福岛核废水？','在生活中，人们往往谈核色变，因为“核辐射有害”几乎是老少皆知的常识。乃至于在很多国家和地区，只要执政者提出“废核”，甚至全然罔顾电力供应紧张的现状，大众也更愿意倾向于相信“用爱发电”的那一套说辞。\r\n\r\n但是，任何物质对人是否有害，都要基于一定的条件，饭吃多了也会撑死，跟遭到辐射发生病变而死，没有本质区别，而这个常识大部分人却并不具备。\r\n\r\n近日，日本政府决定将福岛核电站的废水排入大海，引起了全世界的关切，中文网络圈更是掀起了热议，其根本出发点还是对于核污染有可能影响到自身健康的担忧。\r\n\r\n一、核电站怎么发电？\r\n目前，世界上有四百多座发电用反应堆，人类使用的电能有16%都来自核电。\r\n\r\n与人们“谈核色变”的刻板印象不同，几十年的工业实践证明了核电是经济的并且安全的，也几乎没有温室气体释放的低碳绿色能源，更符合现代人类倡导的“低碳”概念。\r\n\r\n近期中国股市暴涨的所谓“碳中和”板块，就有不少是核电相关企业的股票。\r\n\r\n人类使用的电能，无外乎有三种生成方式，要么是电磁转化，要么是光电转化，要么是化学转化。电磁转化就是电路中的一部分导体在磁场中做切割磁感线运动产生电流，这是发电机的工作原理；光电转化是太阳能发电板，化学转化最常见的是氢氧燃料电池。\r\n\r\n要推动发电机运转，最常见的是通过热力产生水蒸汽推动蒸汽轮机运转带动发电机发电。而核电站，并不是通过原子核发电，而是以核能产生热量，再推动蒸汽轮机运转而发电的。\r\n\r\n英国物理学家查德威克于1932年发现了中子，它不带电荷，但穿透性极强。中子撞击一些重核原子（即原子核包含较多质子，原子量较高的原子）之后，会导致重核原子裂变为两个较轻的原子，同时再释放中子。释放出的中子又撞击其他的重核原子，它们再分裂，如此无穷循环，形成连锁反应，被称为“链式反应”。\r\n\r\n最常见的链式反应是铀（U）元素的链式反应。\r\n\r\n铀有三种同位素，原子量分别为238、235、234。其中铀235可以自发裂变，被广泛用于核能发电和核武器制造。235U原子核在收到中子轰击后，吸收一个中子，变成极不稳定236U，然后236U原子核裂变成二个快速运动的较小原子核92Kr和141Ba，并释放三个中子。\r\n\r\n在重核原子裂变的过程中，不仅释放中子，还会发出大量的热。1公斤235U裂变释放的能量相当于2700吨标准煤燃烧释放出的能量。\r\n\r\n这些热能是原子核中基本粒子的相互作用所储存的势能，在裂变的过程中由于能量守恒，势能就转化成了热能。\r\n\r\n如果这种链式反应不受控，就会迅速爆发出巨大的能量，被应用于军事，就是原子弹。但如果以较温和的速率进行反应，就可以持续释放热量，人们就可以利用这些热量发电，核能就这样被和平利用了。\r\n\r\n为了实现对核裂变反应的控制，人们使用了中子慢化剂来延缓中子的释放，控制核裂变反应，常用的中子慢化剂包括水、重水、石墨等。\r\n\r\n老百姓更应该讲目光放在身边，多多关注身边的污染，保护环境从自身做起，这样对自己的健康还更有益一些。\r\n\r\nPS：想了解福岛第一核电站事故的详细调查报告，可以在循迹晓讲公众号后台回复关键词“福岛”，就能免费获得国际原子能机构总干事-天野之弥《福岛第一核电站事故的调查报告》PDF文件。','2024-01-20 02:33:41'),(6,'谴责！谴责！日本2023年核废水排入海，国际只能谴责无法阻止吗？','这个消息已经不是一天两天了，早在2021年日本就对外公布这一计划，对此国际上的声音一直都是：谴责！谴责！强烈谴责！\r\n\r\n　　可是谴责了这么多年，日本也没受到影响，仍旧要在2023年春夏排放核废水。\r\n\r\n　　那么问题就来了，难道日本排放核废水这件事，国际上只能嘴上谴责，无法阻止他们吗？\r\n\r\n　　日本核废水\r\n\r\n　　2011年3月11日，日本发生9级大地震，大地震引发海啸，导致福岛核电站发生最高等级的核泄漏事故。\r\n\r\n事故发生之后，为了降低堆芯的温度，日本向反应堆注入了大量的水，再加上福岛核电站地势低，地下水和雨水不断深入，使得核废水变得越来越多，到现在仍旧每天会产生140吨的核废水。\r\n\r\n为了储存这些核废水，日本东京电力公司准备了约1000个储水罐装核废水，总容量达到了137万吨，但这根本不够，现在马上就要装满了。\r\n\r\n　　按理说，核废水既然装满了，那就接着造大罐子，接着装核废水嘛，毕竟福岛核电站周围已经没啥人敢住了，有的是地方放大罐子。\r\n\r\n　　但是核废水装的再多，也要解决才行，因为这些大罐子也要维护，并且随着时间也会老化和破损，目前已经有多个核废水储水罐泄漏，而且已经发生过很多次，这方面日本也承认了，但却是一副：“漏就漏了，你能拿我怎样的”方式对待的。\r\n\r\n这其实是一个很严重的问题，因为这些储水罐储存的可都是核废水，里面还有大量的放射性物质，每升水中含有46至57贝克勒尔的铯137，1290至1930贝克勒尔的释放β射线的放射性物质。\r\n\r\n　　这些放射性物质如果进入到地下水，或者污染近海海域，对人对海洋生物来说都是一种灾难。所以日本福岛核电站储水罐中的核废水一直储存也不是一个事，必须要解决。\r\n\r\n　　既然要解决核废水，那日本是怎么解决的呢？\r\n\r\n变成水蒸气排入大气，就是把核废水通过高温加热的方式，让水分蒸发，排放到空气中，但是日本表示这个方案会污染空气。\r\n\r\n　　沿着地下管道排入地下深处：将核废水排入到地下2500米深处，虽然核辐射很厉害，但是地底下已经没啥生物了，核废水的辐射再强也影响不到地表生物了，但是日本说不行，因为核废水可能会污染地下水。\r\n\r\n　　电解水总行了吧，通过电解的方式把水变成氢气和氧气排放到大气层中。但是日本还是说不行，电解水需要大量的电，想要把这么多核废水电解完，那要多少钱啊，耗能也太大了吧！\r\n\r\n　　那将核废水固态化埋入到地底下总行了吧，这下日本更不答应了，说当地老百姓不同意啊，他们的子孙未来还要回到福岛生活呀。\r\n\r\n　　这个也不行，那个也不行，日本给出的方案就是：我要排放入海！\r\n\r\n　　好家伙，日本这不是跟你商量，而是直接通知。那么多方案，为啥日本偏偏选择了臭名昭著的排放入海的方案呢？\r\n\r\n　　没别的，因为它最便宜，成本最低，预估整个项目只需要花费1.02亿-2.03亿元，而最昂贵的将其固态化埋入地下，成本则是排放入海的几十倍甚至上百倍。\r\n\r\n为了对这一行为洗白，日本方面表示：我不是直接将核废水排放到海洋里的呀，我是经过净化后的“净化水”排放到海洋里的。\r\n\r\n　　排放核废水入海\r\n\r\n　　东京电力公司曾经表示，会使用一套净化装置，将核废水中的绝大多数放射性物质都清除掉，但是放射性物质“氚”没有办法清除，所以净化后的核废水中只含有“氚”一种放射性物质，并且在排放到海洋之前，将“氚”浓度稀释到日本国家标准的1/40。依靠太平洋海量的水，以及洋流作用稀释掉处理后的核废水中的放射性物质。\r\n　但是吧，你要是真信了日本的这套说辞，只能说太傻太天真了！\r\n\r\n　　日本说净化后的核废水只剩下“氚”，你就真的信了？要知道日本和东京电力公司在福岛核事故上撒过多少次谎，隐瞒过多少数据，它们为了尽快甩掉烂摊子可以说是无所不用其极，在缺乏国际机构等第三方实质参与情况下给出的报告，真的没有一点儿可信度。\r\n更何况，如果经过处理后的水真的无害，那为什么日本不将这些水排放到自己的国家，而是要排放到海洋里？\r\n\r\n　　说了那么多，总结下来就是核废水就是核废水，即便是经过处理后的核废水还是核废水，更不要说里面还含有放射性物质“氚”，贸然向海洋中排放核废水，无异于是对他国发动核战争。\r\n\r\n　　所以日本说要在2023年将处理过的核废水排放到大海中后，世界上很多国家都强烈反对，一致谴责。\r\n\r\n　　可是谴责了那么多年，为啥没有阻止日本向大海排放核废水呢？难道日本向海洋排放核废水真的不会受到什么惩罚吗？\r\n\r\n　　日本排放核废水有什么后果？\r\n\r\n　　日本公然向海洋中排放核废水，已经违反了国际法《联合国海洋法公约》《及早通报核事故公约》《核安全公约》《乏燃料管理安全和放射性废物管理安全联合公约》《伦敦倾废公约》，国际法将核废水归类为禁止排放入海的物质，也就是不管核废水中的放射性物质浓度高度，一律不许排放入海。\r\n\r\n　所以，尽管日本声称过滤后的核废水无害，但也不满足这一条约，是坚决不能排放到海洋的物质。\r\n\r\n　　既然违反了国际法，那日本需要承担什么后果？\r\n\r\n　　首先是可以追究日本的责任，对其造成的污染索要赔偿，历史上曾经出现过类似的案例，爱尔兰起诉英国Mox核燃料厂会对爱尔兰海造成破坏，最终胜诉。针对日本排放核废水进入海洋的做法，目前已经有多个国家考虑对日本提出诉讼。但是想要通过仲裁解决问题，可能性不大，因为如果国际法真的能约束日本，日本就不会公然宣布要排放核废水入海。\r\n\r\n　　其次，对日本的相关个人和企业进行制裁。如果多国联手制裁，对于日本来说也是一笔不小的代价。\r\n\r\n　　其实，日本排放核废水这件事不光是国际反对，日本国内也有大批民众反对。日本人也不傻，也知道排放核废水进入海洋的代价有多高，更何况日本还有许多渔民，靠捕鱼为生，一旦日本决定排放核废水进入海洋，对日本渔业可以说是毁灭性打击，谁还敢吃鱼，渔民又该靠什么为生？\r\n\r\n\r\n　　既然那么多国家反对，国内民众也反对，还违反国际法，那日本为啥还执意要排放核废水入海？\r\n\r\n　　日本那么嚣张，要将核废水排放到海洋里，主要还是有美国撑腰，一向喜欢挑事的美国这次之所以沉默，除了国际关系之外，还是因为美国手脚也不干净，从1946年到1958年，美国在马绍尔群岛进行了多达66次的核武器试爆，许多核武器试爆甚至是放在海洋当中的。向海洋中排放了大量的核废料，无数居民因癌症和白血病去世，还有更多的居民被迫离开自己的故乡。\r\n\r\n　　也就是说，往海洋中投放核废料这件事，日本还是小弟，美国才是真正的大佬，已经偷偷摸摸干了几十年了，在此期间日本也没少掺和，两人属于一条贼船上的，谁也不比谁干净，所以这次日本往海洋中排放核废水，美国都没敢吭声，有了美国的默认，日本才敢这么肆无忌惮！\r\n\r\n　　但是，每个国家必须要对自己做出的事付出代价，如果日本真的敢向海洋排放核废水，国际肯定会付出行动，让日本付出高昂的代价。\r\n　　','2024-01-20 02:37:55'),(7,'福岛核污水排海，绝非日本一国之内政｜新京报社论','7月4日，正在日本访问的国际原子能机构（以下简称IAEA）总干事格罗西与日本首相岸田文雄举行会谈，并正式递交了该机构对福岛第一核电站核污染水排海项目的全面评估报告。IAEA当天在官网发布消息，认为日本核污染水排海计划符合国际安全标准。\r\n在当天稍早时候举行的中国外交部例行记者会上，外交部发言人毛宁表示，关于这份报告，希望这是一份经得起科学和历史检验的报告，而不是为核污染水背书的报告。\r\nIAEA的一纸报告，是否就给日本开了核污染水排海的合法通行证？自此日本就有了核污染水排海的足够理由吗？\r\n答案无疑是否定的。\r\nIAEA的报告不是一份开放且可信度高的权威国际文书。这是因为日方从一开始就限制了IAEA工作组的授权，不接受评估除排海方案之外的其他处置方案，IAEA只被允许评估排海这个方案。所以，在这种情况下，机构的报告证明不了日方排海的正当性和合法性，也免除不了日方应当承担的道义责任和国际法义务。\r\n也就是说，日方是强行给IAEA出了“命题作文”，甚至可以说是先自己单方下了定论，再让IAEA去找科学证据给自己“背书”。\r\n更为重要的是，在核污染水排海这一攸关日本自身和周边国家乃至全人类生存环境的重大决策问题上，仅有IAEA的“背书”是远远不够的。就算日方狡辩IAEA的报告书是公正且权威的，其核污染水排海行动仍旧缺乏足够的国际法依据，更缺乏履行国际法义务的足够诚意。\r\n\r\n首先，核污染水排海方案没有平息日本国内的广泛质疑。\r\n日本全国渔业协同组织联合会连续四年向日本政府提交反对意见。福岛当地渔民更是愤怒地表示，海洋不是人类的垃圾桶。日本政府和东京电力公司曾在2015年向福岛县渔民做出书面承诺，在没有得到相关人士的理解之前，不会对核污水做出任何处理。如今，日本政府的实际行动却违背了这一承诺。\r\n其次，核污染水排海方案也没有同利益相关国家协商，甚至可以说是完全无视周边国家的强烈反对。\r\n韩国举行大规模集会，各国民众在日本驻菲律宾、纽约、悉尼等地使领馆前举行抗议活动，要求日本停止核污染水排海计划。令人遗憾的是，日本政府根本无视包括中国在内的周边国家的关切和反对，一意孤行强行推进排海计划，还处心积虑地营造“排海有理、排海无罪”的假象。\r\n再者，核污染水排海计划，没有建立国际社会普遍参与的长期有效监督机制。\r\n日本福岛核电站产生的核污水与通常的核电站排水有着本质区别。一般核电站的排水并未与核燃料有直接接触，而福岛核污水则是与核燃料直接接触。日本政府使用的ALPS系统并不能去除所有的放射性核素，核污水中仍残留氚、铯137、铯135、锶90、碘131和碘129等多种放射性核素。\r\n\r\n据此，可以断言福岛核污染水问题，绝非日本一国之内政问题，其负外部性是要邻国、太平洋乃至全人类几代人来共同承担，其处理方案必须纳入国际社会长期有效的监督视野。但日方从头到尾都没有在这方面有过考虑和行动，妄想仅抱住IAEA一个国际机构的大腿，就能化解国际社会的监督压力，实在是不负责任。\r\n\r\n最后，也是最重要的，核污染水排海计划没有穷尽甚至没有研究论证其他解决方案。核污染水的处理，并非只有排海一种方式，排海仅仅是运营方成本最低、最方便，但国际环境成本最高、潜在后果最危险的一个选项。\r\n\r\n本该运用安全科学的方法存储核污染水，然后循序渐进地分离去除核物质，减少化学含量、除去盐分和金属等，在确保其危害降低到最小程度后方可考虑排放。但日本政府急于推行排海计划，显然是投机取巧，把诸多可知和不可知危险推给邻国、转嫁全人类、遗留下一代。\r\n多年来，日本在不少右翼势力主导下一直在谋求成为国际政治大国，这一努力本身无可厚非，但成为国际政治大国，首先必须是承担国际责任的大国，更必须是国际政治合法性和道义权威的大国。\r\n遗憾的是，如今在核污染水处理问题上，日方已严重背离了“安全”这一第一原则、最高原则。现在又要透支其本来就不多的国际道义形象，再度背负沉重的历史耻辱。\r\n编辑 / 徐秋颖\r\n校对 / 杨许丽\r\n\r\n','2023-07-04 05:03:34'),(8,'无视反对声浪，日本为何强推核污染水排海？','■ 专栏\r\n\r\n　　\r\n\r\n　　强推核污染水排海，只会让日本在人类历史上留下新的污点。\r\n\r\n　　连日来，日本强行启动福岛核污染水排海，招致国际社会多方质疑和反对。\r\n\r\n　　据新华社报道，当地时间8月25日，中国常驻联合国副代表耿爽表示，日本核污染水排海“这一举动无视公共利益，公然向包括太平洋岛国在内的全世界转嫁核污染风险，极其自私自利，极其不负责任”。同日，朝鲜常驻联合国代表金星也批评称，“日本决定排放含有大量放射性物质的污染水，让人类安全和海洋环境处于极大危险之中”。\r\n\r\n　　面对国际社会的批评声浪，日本仍一意孤行地进行核污染水排海，这不仅是出于自私自利，更是出于日本政客们的政治私欲。此举也在日本国内遭遇民众质疑，最新民调显示，岸田文雄内阁支持率从7月的28%进一步下滑至26%，再创新低。\r\n\r\n　　那么，在此情况下，日本政府为何还要强推核污染水排海呢？这首先是因为“安倍影响”。\r\n\r\n　　日本核污染水源自2011年3月福岛第一核电站核泄漏。2012年底，日本政权轮替，第二次出任首相的安倍晋三曾指示，“核污染水问题将不再交由东京电力公司解决，而是由国家主导采取对策”。2020年3月，安倍政府提出用30年时间将核污染水排入大海的构想。\r\n\r\n　　2020年9月，安倍内阁时期的官房长官菅义伟就任首相后，于2021年4月正式宣布将核污染水排放入海。2022年10月，安倍内阁时期外相岸田文雄出任首相，并于2023年8月22日宣布，从8月24日起正式向海洋排放核污染水。\r\n\r\n　　追溯日本核污染水排海决策全过程，可以清晰看到，早在安倍政府时期就已确定了基本方针，而此后的菅义伟政府、岸田文雄政府，均不过是具体执行者。\r\n\r\n　　理论上，新一届政府完全可以重新审议上届政府的内政外交决策，但不论菅义伟，还是岸田文雄，却都在核污染水排海问题上坚定贯彻执行安倍政府的决策。\r\n\r\n　　其原因就在于，两人执政期间均不得不依赖安倍晋三和安倍派的支持。特别是现任首相岸田文雄，若在核污染水排海问题上做出有违安倍的决策，不仅将难获安倍派的支持，还有可能被贴上“政治背叛者”的标签，得不偿失。\r\n\r\n　　与此同时，强推核污染水排海，也有对中韩等周边邻国打赢舆论战的考量。\r\n\r\n　　核污染水排海极易引发国际舆论反弹，因此，日本政府在推进相关进程，也拿到了国际原子能机构（IAEA）的报告作为“通行证”，以此增加“合理性”“正当性”，进而争取国际社会更多支持。\r\n\r\n　　毕竟，若因中韩等周边邻国的强烈反对就放弃排海，就相当于日本变相承认了核污染水“不安全”“不达标”，进而输掉这场舆论战。而今后，核污染水排海问题也将逐渐等同于历史问题，成为“打压”日本的一张牌。\r\n\r\n　　实际上，日本政府及一些政客近期多次宣称部分国家将核污染水问题“政治化”“非科学化”，是在对日打“外交牌”，这本质上就是通过模糊焦点的方式，来转移国际舆论的注意力。\r\n\r\n　　此外，强推核污染水排海，也跟一些日本政客刻意营造“英雄主义”有关。\r\n\r\n　　最近一段时期，日本政府和部分媒体开始炒作“全球只有中国反对核污染水排海”。这当然是无视客观现实的荒谬言论，但同时也是在刻意营造一种基于对抗情绪的“英雄主义”叙事。\r\n\r\n　　伴随中国综合实力的崛起和日本深陷“失去的二十年”，部分日本政客看待中国的角度逐渐扭曲，开始热衷于向民众渲染灌输“中国威胁”。在此背景下，一些日本政客则刻意将自己包装成“敢于对中国说不”的“国家利益守护者”形象，以此来谋求个人利益最大化。\r\n\r\n　　但是，政客们无视人类社会公共利益，企图借由核污染水排海来营造虚无的“英雄主义”来打造个人品牌和形象，却最终只会葬送民众的健康福祉和国家的未来命运。\r\n\r\n　　海洋是全人类的共同财产，不是日本肆意倾倒的垃圾场。在核污染水排放问题上，日本应认清自身责任，秉持科学态度，履行国际义务，积极回应本国国民、周边国家以及国际社会的严重关切，否则只会让日本在人类历史上留下新的抹不去的污点。\r\n\r\n　　□陈洋（辽宁大学日本研究中心客座研究员）','2023-08-27 16:00:00'),(9,'社论丨日本核废水处理过程应置于国际监督之下','4月15日，日本首相菅义伟前往美国进行访问，他是拜登就任美国总统以来第一位到访白宫的外国政府首脑。日前，日本政府正式决定向海洋排放东京电力公司所属福岛第一核电站储存的处理严重核泄漏产生的核废水。这一决定得到了美国政府的支持，甚至美国国务卿还在社交媒体上感谢日本处理问题的“公开透明的努力”。\r\n\r\n对于日本政府而言，这是一次罕见的突奔，具有深厚的国际格局变迁背景。在10年前福岛核电站发生事故后，日本一直储存用于为反应堆直接降温的核污水。而福岛核电站废炉可能还要运行约四十年，这意味着储存核废水的规模越来越大，成本越来越高，直接排向大海是成本最低的方式，但日本需要一个“排污通行证”。\r\n\r\n日本此次决定遭到韩国、中国、俄罗斯、菲律宾等邻国的集体反对，而反对最激烈的则是日本国民。因为东电公司在核事故后多次被曝出隐瞒事故情况的问题，因此，许多日本民众不相信东电将水处理到可以“人喝”的地步，何况除了东电自己的说法之外，目前尚无第三方可信的证据证明核污水已经处理达标。东电曾宣布通过ALPS（多核素去除设备）处理后污染水只有氚超标，是“氚水”，但随后有媒体发现处理水中还存在其他放射性物质也超标的问题。而且令人不解的是，处理后的污染水既然已经达到了人可以喝的程度，为什么非要排放到海洋，而不是循环利用。\r\n\r\n国际原子能机构表示“欢迎日本宣布关于如何处置处理后污水的决定”。然而，日本核废水处理目前尚没有任何国际或第三方机构监督，美国却称“感谢”日本处理问题的“公开透明的努力”。美国放任日本这一决定或许是因为日本邻国中有几个国家是自己的对手，激化日本与邻国的矛盾也在一定程度上符合美国利益。不过，将核污染处理方式作为政治工具利用的做法，或许也将会大幅削弱美国在处理国际事务上的“道德光环”。\r\n\r\n可以确定的是，日本不与周边国家协商而擅自决定的做法是极不负责任的，不仅遗患本国民众，还将直接和间接影响海洋环境与周边国家的国民健康。因此，日本若强行排放核废水将严损其国际形象。中国应该与其他国家一起坚决澄清，正常运行的核电站废水与处理核事故的核污水是两种完全不同的物质。日本当前“以全世界的很多核设施都曾排放过基于国际标准的核废水”为理由影响国际舆论，对此做法，利益相关国家应进行有理有据的批驳。\r\n\r\n各国有权要求在国际机构框架下成立包括中国等多国专家在内的联合技术工作组，确保核废水处置问题严格接受国际评估、核查和监督。要将日本的核废水处理过程置于国际监督之下，而不是任由其单独决定。要实现核废水排放在程序及科学上的安全性，就是要把整个过程置于国际监督之下，而没有任何监督的过程不能称之为“透明”。\r\n\r\n有专家称，日本的做法也涉嫌违反国际法和国际规则。各国应该在国际层面上抨击和阻止日本的做法，成立专门的应对小组，这不只是政治，更是涉及邻近国家人民安全与利益的重大问题，必须对本国利益加以维护。目前，在处理核废水的选择上，日本政府甚至尚未获得本国大多数国民支持。因此，日本必须向国际社会提供具有透明性的决策依据以及具有说服力的科学数据，同时要主动邀请国际组织与周边国家参与决策、处理过程。','2021-04-16 23:25:26'),(10,'核污水岂能“一排了之”','官商勾结确定排污方案\r\n\r\n2011年日本“3·11”大地震导致福岛第一核电站反应堆的堆芯熔毁，产生大量放射性物质。为了给反应堆降温并遏制核泄漏，福岛核电站的运营公司--东京电力公司（简称“东电公司”）采取了向反应堆注入海水的办法。由于这些水含有大量放射性物质，东电公司只得将其放至储水罐中储存。据东电测算，2021年福岛第一核电站产生的核污水约为每天150吨，并将于2023年春季达到储水罐容量上限137万吨。\r\n\r\n据日本经济研究中心估算，处理反应堆报废、去污等需要花费50-70万亿日元（约合2.6-3.6万亿元人民币），其中污染水的处理费用将占相当比重。2021年4月，日本政府宣布，将采取排放入海的方式解决与日俱增的核污水问题。今年5月18日，日本原子能规制委员会公布了一份关于福岛第一核电站核污水排海计划申请相关的“审查书草案”，并将在公示1个月、征求公众意见后决定是否正式批准排海计划，这实际上就是对核污水排海计划“亮绿灯”。\r\n\r\n福岛核事故后，日本政府为避免东电公司破产，设立“日本原子能损害赔偿和反应堆报废等支援机构”，该机构属于官方机构，并拥有50.1%的东电股份表决权。东电公司实际上归属日本政府的直接管辖及支配。不难看出，核污水排海方案是东电公司与日本政府勾兑的结果，因为这是最快捷、最省钱、最省事的办法。据估算，日本只需花费约34亿日元（约合1.8亿元人民币）即可了事。但如此草率行事给自然环境和人类生命安全带来的威胁却被日方刻意忽略了。\r\n\r\n核污水≠核处理水\r\n\r\n核事故后第二年的检测数据显示，福岛附近海域的铯元素浓度有10万贝克勒尔每立方米，比切尔诺贝利核泄漏后在黑海中检测的数值还要高100倍。直到十年后的2021年，日本渔民在福岛县外海捕获的一条平鲉体内仍检测出每千克500贝克勒尔的放射性元素，是日本规定标准的5倍。核事故11年来，福岛县每六万名儿童中就会出现一至两名甲状腺癌患者，而常规情况下，每百万人中才会出现一到两例甲状腺癌患者。\r\n\r\n日本政府和东电公司反复宣称，核污水排放前需经过多核素去除装置（ALPS）处理，是“安全”的。但日方强调的只是“氚”这一放射物质达标了，实际上即便经过处理，水中依然含有能够引起生态界遗传变异的锶90、碳14等其他放射性物质，这一现实被选择性忽视。自从发布ALPS相关报告之后，日本政府再未举行任何面向一般民众的公开说明会或意见听证会。为给核污水正名，日本政府还曾联系市民团体，要求停止使用“核污水”的说法，改为使用“核处理水”，以达到“洗白”目的。日本政府还就排海方案大力进行“公关”。复兴厅2021年度预算中，将有关福岛核事故的公关经费提升到了20亿日元，是2020年的4倍。这些钱被用来雇佣专业团队，通过各种宣传在日本国内外弱化和消除负面舆情。\r\n\r\n东电公司在处理核电站事故问题上也是劣迹斑斑。2007年，东电公司承认从1977年起在对下属核电站的13座反应堆总计199次定期检查中，存在篡改数据和隐瞒安全隐患的行为，其中就包括造成福岛核事故中的紧急堆芯冷却系统失灵问题。2011年核事故发生后一周，专家就已作出福岛第一核电站1号到3号机组已经发生堆心熔融的判断，但公司拒不对外公布，选择用明显弱化危机强度的“堆芯损伤”来表述。这样的劣迹很难让人相信东电公司会将“安全”的核污水排入大海。\r\n\r\n国内外反对浪潮\r\n\r\n日本政府迄今未对核污水排海方案的正当性、核污水数据的可靠性、净化装置的有效性以及对环境影响的不确定性作出充分可信的说明，在此情况下推进排污入海计划，遭到日本国内外各界的广泛批评和质疑。\r\n\r\n福岛县七成民众对排海方案表示反对。原福岛大学校长今野顺夫表示，他反对在没有取得日本国内和国际社会理解的情况下推进排海计划。该方案可能影响子孙后代，必须慎重对待。与福岛县相邻的宫城县渔业合作社和县议会称，将核污水排入海洋恐将影响当地水产品安全并对相关产业造成重大经济损失。日本国内已有18万民众签名，要求日本政府采用排海以外的其他处置方案。\r\n\r\n俄罗斯自然科学院院士库兹涅佐夫表示，核污水中的放射物只能被部分过滤，水中依旧含有极其危险的放射性核素，将污染海洋生物并通过鱼类洄游扩散到整个海洋，将严重损害全球海洋环境安全、国际公共卫生体系和周边国家人民的根本利益。根据德国海洋科学研究机构建立的模型，如果按照日本对外宣布的速度排放核污水，不到57天半个太平洋就会被污染。\r\n\r\n发出正义之声\r\n\r\n日本核污水排海行为既严重威胁海洋环境，损害包括邻国在内的其他国家的海洋利益，又违反《联合国海洋法公约》《核事故或辐射紧急情况援助公约》《核安全公约》等多项国际公约及国际法原则，包括中国在内多个国家均对此表示关切或反对。\r\n\r\n俄罗斯外交部公开声明指出，日本政府在做出该决定时并没有和邻国进行协商，也未提供任何有关资料，对日本向海洋排污一事表示严正关切。韩国外交部召见日本驻韩大使，对日本私自排放核污水的行径提出了严正抗议，大批民众聚集在日本驻韩国大使馆门前示威抗议。国际原子能机构（IAEA）已经启动对日本向海洋排放核污水计划的评估。\r\n\r\n中国外交部发言人多次指出，日本排放核污水的做法是极不负责任的，要求日方同包括周边邻国在内的利益攸关方和有关国际机构充分协商，寻找核污水的妥善处置办法，在此之前，不得擅自启动核污水排海。\r\n\r\n海洋是人类的共同财富和共生家园，与人类的可持续发展和前途命运息息相关。福岛核事故污水排海，是关乎全人类生存环境与身体健康的大问题，而非日本内政。日本明知排海可能对全球海洋环境造成严重危害，却在未穷尽安全处置手段的情况下企图“一排了之”。这种不透明、不负责的做法是无法让人接受的，更无法取信于本地区国家和国际社会。\r\n\r\n\r\n\r\n\r\n\r\n','2022-05-31 16:00:00'),(11,'日媒社论：核污水排海缺乏诚意不负责任','日本政府决定24日启动东京电力（东电）福岛第一核电站的处理水排海计划。尽管曾经承诺“未取得相关人士的理解，就不会采取任何行动”，但是其实际行为难言体现出足够诚意。\r\n对于无法清除的放射性物质“氚”，政府计划用海水将其浓度稀释至国家标准的四十分之一以下，通过海底管道排至距离岸边约1千米的水域。\r\n但是，对渔业声誉受损的担忧仍然存在。反对排海的全国渔业协同组合联合会会长坂本雅信同首相岸田文雄会面后表示，尽管从科学角度加深了对排海计划安全性的理解，但这并不等于民众放心。\r\n政治就应该倾听国民心声，谨慎地形成共识。但是，此次政府决定排海的过程却暴露出了不诚实。\r\n2013年，时任日本首相安倍晋三在申奥现场发表演讲时强调，核污染水“处于控制之中”。随着储罐泄漏事件相继被曝，安倍的话语成为不实之词。\r\n2015年，安倍内阁和东电承诺将以“相关人士的理解”作为处理核污染水的前提，但是到了2021年，菅义伟内阁不顾民众反对强行通过排海计划。\r\n国际原子能机构（IAEA）发布综合评估报告后，负责向当地渔民进行解释说明的只是经济产业大臣西村康稔等内阁官员，而首相岸田文雄20日访问福岛县时，也只是向东电相关人士做出指示，甚至未同当地渔民会面。\r\n排海会导致渔业声誉受损，但是一直储存核污水又会阻碍地区复兴，拖后居民回迁。当地持续面临两难境地。\r\n尽管如此，我们几乎感受不到政府设身处地为福岛当地人着想。倒不如说，在决定排海一事上，政府一直在逼迫渔业相关人士做出选择。\r\n如今，98%的储罐已被灌满，而处理水还在以每天90吨的速度增加，这样下去的确会影响废堆拆除工作。政府和东电肩负着安全实施计划的重任。\r\n但是东电此前却屡屡发生污染水泄漏等纰漏。\r\n2018年前，储罐中80%都是连“氚”以外的放射性物质都未完全清除的核污染水，但是东电瞒报这一事实，招致民众的不信任。\r\n预计政府的排海计划最少要持续30年。在此期间，渔业的声誉难以恢复，政府为防止水产品价格崩溃将出资购买，相关损失由东电赔偿。\r\n但是，对于排海的安全性，政府根本没有做到耐心说明，也没有尽力争取民众理解。\r\n排海只不过是反应堆报废这项浩大工程的一小步。\r\n机组内发生熔毁的燃料碎片约有880吨，但是连具体的取出时间都未确定。“2051年前后”完成报废工作的计划表已形同废纸。政府必须直面严峻现实。\r\n岸田首相明确表示，即使整个工程延续几十年，政府在核污染水处理完毕前都会承担起责任。政府绝不能再次食言。\r\n处理水排海将如何促进灾区重建？作为发生世界上最严重核事故的国家领导人，岸田有责任为国内外指明道路。（编译/李子越）\r\n','2023-08-23 07:09:34');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account`
--

LOCK TABLES `social_account` WRITE;
/*!40000 ALTER TABLE `social_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `user_id` int NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int NOT NULL,
  `type` smallint NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `role` int NOT NULL DEFAULT '1',
  `flags` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin0','2110577@mail.nankai.edu.cn','$2y$12$UpD6FZOhJ1Wl2C3txB.j0OxZZ4Hx1L.zSrvxLa6s0Sy7UjQ6g8KNC','gyDXCm_OO55UkCeQDb_j-jbR9bWDk6bW',1702827358,NULL,NULL,'::1',1702827358,1702827358,0,0),(2,'user0','example@example.com','$2y$12$CAXbfgN/g0a1u8JQWcL59.2pA7FPnjbGHyayilbmbTOrHHf2/OOXC','wNl2Qugs__fo8nQLCenCpy8WR4TVczMP',1702838615,NULL,NULL,'::1',1702838615,1702838615,1,0),(4,'user1','11111@111.com','$2y$12$TYeNYxevN3XVe9y5hqelgOmPZ4kYVUhIYeRpeEIv49uzVaaFC6NIG','e2aBgTYg-w38beWse_tPj47-YX0RvhMC',1705738419,NULL,NULL,'::1',1705738419,1705738419,1,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20  5:20:45
