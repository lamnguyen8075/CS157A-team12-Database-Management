
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_proxy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `my_proxy`;

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `companyID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `companies` */

insert  into `companies`(`companyID`,`name`) values 
(1001, 'Apple'),
(1002, 'Amazon'),
(1003, 'Google'),
(1004, 'Medalia'),
(1005, 'Costco'),
(1006, 'Tesla'),
(1007, 'Microsoft Corporation'),
(1008, 'Nvidia Corporation'),
(1009, 'ALPHABET Inc.'),
(1010, ' Walmart Inc.');


/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `depName` varchar(200) NOT NULL,
  `responsibility` varchar(50),
  PRIMARY KEY (`depName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `departments`(`depName`,`responsibility`) values 
('Marketing Department', 'market research, understanding market segments,Product Decisions,Promotion Decisions, Price Decisions, Product Distribution'),
('Support Department', 'Turn product innovations into vital client solutions'),
('Finance Department', 'assess short term and long term capital requirements'),
('Sales Department', 'responsible for selling the relevant products to the consumers'),
('Human Resource Department', 'recruiting skilled, and experienced employees, conducting orientation programs and trainings for new staff, motivating them to achieve organization objectives'),
('Engineering Department', ' create and iterate on the products and tools'),
('Business Strategy Department', 'anticipate opportunities and execute programs critical to short- and long-term growth.'),
('Legal Department', 'Legal and policy teams are a vital part of success, shaping the future of internet policy and law.'),
('Design Department', 'specialists and designers work across platforms to create powerful visuals that highlight each of our product’s unique personalities'),
('Facility Department', 'Create the collaborative work environments that help us succeed.');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeID` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`employeeID`,`firstName`, `lastName`,`addressLine1`,`addressLine2`,`city`,`state`,`postalCode`,`email`, `position`) values 
(100103,'Schmitt','Carine ','54, rue Royale',NULL,'San Jose','CA','95112','schmittCarine@gmail.com', 'Accountant'),
(100112,'King','Jean','8489 Strong St.',NULL,'Las Vegas','NV','83030','kingjean@gmail.com', 'CEO'),
(100114,'Ferguson','Peter','636 St Kilda Road','Level 3','San Jose','CA','3004','fer_peter@gmail.com', 'CFO'),
(100119,'Labrune','Janine ','67, rue des Cinquante Otages',NULL,'Oakland',NULL,'44000','lab_Jan@gmail.com', 'Software Engineer'),
(100121,'Bergulfsen','Jonas ','Erling Skakkes gate 78',NULL,'Sacramento',NULL,'4110','berJon@gmail.com', 'Proxy Admin'),
(100124,'Nelson','Susan','5677 Strong St.',NULL,'Sacramento','CA','97562','nelson@gmail.com', 'Security'),
(100125,'Piestrzeniewicz','Jozz', '5677 Strong St.',NULL,'Sacramento','CA','97562','Piestrzeniewicz@gmail.com', 'Data Engineer'),
(100128,'Keitel','Roland','Lyonerstr. 34',NULL,'Frankfurt',NULL,'60528','keith@gmail.com', 'Product Manager'),
(100129,'Murphy','Julie','5557 North Pendale Street',NULL,'San Francisco','CA','94217','murphy@gmail.com', 'Senior Manager'),
(100131,'Lee','Kwai','897 Long Airport Avenue',NULL,'NYC','NY','10022','leeKwai@gmail.com', 'HR');

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `accountID` int(11) NOT NULL,
  `userName` int(15) NOT NULL,
  `password` int(11) NOT NULL,
  `timeStamp` date NOT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accounts` */

insert  into `accounts`(`accountID`,`userName`,`password`,`timeStamp`) values 
(120,100103,'','2022-10-06'),
(130,100106,'','2003-10-06'),
(140,100109,'','2003-10-06'),
(150,100112,'','2003-10-06'),
(160,100115,'','2003-10-06'),
(170,100118,'','2003-10-06'),
(180,100121,'','2003-10-06'),
(190,100124,'','2003-10-06'),
(200,100127,'','2003-10-06');


/*Table structure for table `adminAccounts` */

DROP TABLE IF EXISTS `adminAccounts`;

CREATE TABLE `adminAccounts` (
  `accountID` int(11) NOT NULL,
  `adminID` varchar(20) NOT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminAccounts` */
insert  into `adminAccounts`(`accountID`,`adminID`) values 
(120,'admin1'),
(130,'admin2'),
(140,'admin3'),
(150,'admin4'),
(160,'admin5'),
(170,'admin6'),
(180,'admin7'),
(190,'admin8'),
(200,'admin9'),
(210,'admin10');


/*Table structure for table `userAccounts` */

DROP TABLE IF EXISTS `userAccounts`;

CREATE TABLE `userAccounts` (
  `accountID` int(11) NOT NULL,
  `userID` varchar(20) NOT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminAccounts` */
insert  into `userAccounts`(`accountID`,`userID`) values 
(120,'user1'),
(130,'user2'),
(140,'user3'),
(150,'user4'),
(160,'user5'),
(170,'user6'),
(180,'user7'),
(190,'user8'),
(200,'user9'),
(210,'user10');


/*Table structure for table `companyPolicies` */

DROP TABLE IF EXISTS `companyPolicies`;

CREATE TABLE `companyPolicies` (
  `policyID` varchar(200) NOT NULL,
  `desc` varchar(50),
  PRIMARY KEY (`policyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `companyPolicies`(`policyID`,`desc`) values 
('p102','Digital Security Policy'),
('p105','Physical Security Policy'),
('p108','Access Control Policy'),
('p1011','Transmission of Sensitive Data Policy'),
('p1014','Security Awareness and Training Policy'),
('p1017','Encryption Policy'),
('p1020','Mobile Device Security Policy'),
('p1023','System Monitoring Policy'),
('p1026','Hardware Inventory Policy'),
('p1029','Telecommuting Policy'),
('p1032','Resource and Data Recovery Policy');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
CREATE TABLE `server` (
`sID` varchar(200) NOT NULL,
`wID` varchar(50), /*webCategory ID */;
`webCategory` varchar(50),
PRIMARY KEY (`wID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `server`(`sID`,`wID`,`webCategory`) values
('s01','w01','Entertainment'),
('s01','w02','Education'),
('s01','w03','Economic'),
('s01','w04','Non-profit'),
('s01','w05','Business'),
('s01','w06','Science'),
('s01','w07','Politics'),
('s01','w08','Social Media'),
('s01','w09','Life'),
('s01','w10','Computer Science'),

CREATE TABLE `request` (
`requestID` varchar(200) NOT NULL,
`reason` varchar(50), /*webCategory ID */;
`status` varchar(50),
`URL` varchar(50),
PRIMARY KEY (`requestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `request`(`requestID`,`reason`,`status`,`URL`) values
('r1','For business purpose','PENDING','www.google.com'),
('r2','For research purpose','APPROVED','www.SJSU.com'),
('r3','For business purpose','REJECT','www.youtube.com'),
('r4','For research purpose','APPROVED','www.linkedin.com'),
('r5','For business purpose','PENDING','www.google.com'),
('r6','For research purpose','REJECT','www.craiglist.com'),
('r7','For business purpose','APPROVED','www.google.com'),
('r8','For research purpose','REJECT','www.facebook.com'),
('r9','For business purpose','PENDING','www.google.com'),
('r10','For research purpose','REJECT','www.tesla.com'),


CREATE TABLE `response` (
`responseID` varchar(200) NOT NULL,
`policyID` varchar(50), /*webCategory ID */;
`message` varchar(50),
PRIMARY KEY (`responseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `request`(`responseID`,`policyID`,`message`) values
('rp1','pid01','REJECT'),


CREATE TABLE `restrictedWebsites` (
`wid` varchar(200) NOT NULL,
`categoryid` varchar(50), /*webCategory ID */;
`url` varchar(50),
PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departments` */

insert  into `request`(`wid`,`categoryid`,`url`) values
