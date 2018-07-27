/*CREATE TABLE review_pictures (
  id int NOT NULL AUTO_INCREMENT,
  link varchar(100) NOT NULL,
  review_id int NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (review_id) REFERENCES reviews(id)
);

CREATE TABLE hours (
  id int NOT NULL AUTO_INCREMENT,
  monday varchar(50) NOT NULL,
  tuesday varchar(50) NOT NULL,
  wednesday varchar(50) NOT NULL,
  thursday varchar(50) NOT NULL,
  friday varchar(50) NOT NULL,
  saturday varchar(50) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE users (
  id INT AUTO_INCREMENT,
  profile_picture varchar(100) NOT NULL,
  location varchar(50) NOT NULL,  
  PRIMARY KEY(id)
);


use;


create table reviews (
  id: int auto_increment,
  rating: int not null,
  text: varchar(255) not null,
  date: datetime not null,
  useful: int  not null,
  funny: int  not null,
  cool: int  not null,
  user_id: int  not null,
  restaurant_id: int  not null,
  primary key(id),
  foreign key (user_id) references restaurants(id),
  foreign key (restaurant_id) references users(id)
);


DROP DATABASE IF EXISTS pley;

CREATE DATABASE pley;

USE pley;

CREATE TABLE hours (
  id int NOT NULL AUTO_INCREMENT,
  monday varchar(50) NOT NULL,
  tuesday varchar(50) NOT NULL,
  wednesday varchar(50) NOT NULL,
  thursday varchar(50) NOT NULL,
  friday varchar(50) NOT NULL,
  saturday varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE restaurants (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  website varchar(100) NOT NULL,
  phone varchar(20),
  tags varchar(50),
  price varchar(5),
  address_line1 varchar(60),
  address_line2 varchar(60),
  zip varchar(15),
  city varchar(50),
  state varchar(2),
  average_rating DECIMAL(2,1),
  hours_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (hours_id) REFERENCES hours(id) ON DELETE CASCADE
);

CREATE TABLE pictures (
  id int NOT NULL AUTO_INCREMENT,
  link varchar(200) NOT NULL,
  restaurant_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE
);

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  profile_picture varchar(100) NOT NULL,
  location varchar(50) NOT NULL,  
  PRIMARY KEY(id)
);

create table reviews (
  id int NOT NULL AUTO_INCREMENT,
  rating int NOT NULL,
  text varchar(255) NOT NULL,
  date datetime NOT NULL,
  useful int  NOT NULL,
  funny int  NOT NULL,
  cool int  NOT NULL,
  user_id int  NOT NULL,
  restaurant_id int  NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE
);

CREATE TABLE review_pictures (
  id int NOT NULL AUTO_INCREMENT,
  link varchar(100) NOT NULL,
  review_id int NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (review_id) REFERENCES reviews(id) ON DELETE CASCADE
);


-- Execute this file from the command line by typing:
-- mysql -u <USER> -p < schema.sql

*/



DROP DATABASE IF EXISTS pley;

CREATE DATABASE pley;

USE pley;

CREATE TABLE hours (
 id int NOT NULL AUTO_INCREMENT,
 monday varchar(50) NOT NULL,
 tuesday varchar(50) NOT NULL,
 wednesday varchar(50) NOT NULL,
 thursday varchar(50) NOT NULL,
 friday varchar(50) NOT NULL,
 saturday varchar(50) NOT NULL,
 PRIMARY KEY (id)
);

CREATE TABLE restaurants (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  website varchar(100) NOT NULL,
  phone varchar(20),
  tags varchar(50),
  price int,
  lat varchar(50),
  lng varchar(50),
  average_rating DECIMAL(2,1),
  PRIMARY KEY (id)
);

CREATE TABLE info (
  id int NOT NULL AUTO_INCREMENT,
  reservations boolean,
  delivery boolean,
  takeOut boolean,
  credit boolean,
  applePay boolean,
  googlePay boolean,
  bitcoin boolean,
  goodFor varchar(50),
  parking varchar(50),
  bike boolean,
  wheelchair boolean,
  kids boolean,
  groups boolean,
  attire varchar(50),
  ambience varchar(50),
  noise varchar(50),
  alcohol varchar(50),
  outdoor boolean,
  wifi boolean,
  tv boolean,
  dogs boolean,
  waiter boolean,
  caters boolean,
  bathrooms boolean,
  PRIMARY KEY (id)
);




INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Gogi Time', 'www.gogitime.com', '(659)830-8184', 'Greek', 3, '37.77528753', '-122.40275106', 3);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Boba Guys', 'www.bobaguys.com', '(870)161-3532', 'Mexican, Lebanese', 4, '37.77326787', '-122.40134136', 5);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Chipotle', 'www.chipotle.com', '(902)606-9367', 'Mediterranean', 2, '37.77980582', '-122.42877776', 2);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Fork & Spoon', 'www.fork&spoon.com', '(609)013-3398', 'Spanish, Cajun', 2, '37.77066708', '-122.4298585', 3);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Halal Guys', 'www.halalguys.com', '(900)491-6125', 'American, Spanish', 3, '37.78246197', '-122.4051196', 3);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('EighTea', 'www.eightea.com', '(774)698-8951', 'Korean', 1, '37.78410082', '-122.41954313', 4.5);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Burger King', 'www.burgerking.com', '(138)602-6938', 'American, German', 2, '37.78143963', '-122.40945489', 4);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('In-n-Out', 'www.in-n-out.com', '(657)561-3704', 'French, Korean', 1, '37.76243668', '-122.41220969', 4);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Popeyes', 'www.popeyes.com', '(362)341-6921', 'Moroccan, American', 3, '37.7833013', '-122.43291052', 5);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Tu Lan', 'www.tulan.com', '(172)331-9865', 'Moroccan, Japanese', 2, '37.78003848', '-122.41110927', 1);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('KFC', 'www.kfc.com', '(022)110-6310', 'Mexican, French', 1, '37.77401669', '-122.42825371', 3.5);
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Chick-fil-a', 'www.chick-fil-a.com', '(233)017-0058', 'Indian', 3, '37.78191198', '-122.41583441', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Blind Tiger', 'www.blindtiger.com', '(953)413-9685', 'American', 3, '37.7766382', '-122.42915923', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Wendy\'s', 'www.wendys.com', '(047)236-4954', 'Mexican, American', 1, '37.77384934', '-122.43198116', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('A&W', 'www.a&w.com', '(534)037-0169', 'German', 3, '37.76362788', '-122.42579599', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Rooster & Rice', 'www.rooster&rice.com', '(281)825-1997', 'Mediterranean, Indian', 2, '37.78069395', '-122.42168928', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Shakewell', 'www.shakewell.com', '(469)430-8707', 'Mediterranean', 1, '37.7631855', '-122.41391895', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Flipside', 'www.flipside.com', '(682)768-5941', 'Thai, Caribbean', 3, '37.76762179', '-122.41200481', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Urban Tavern', 'www.urbantavern.com', '(743)747-5634', 'Italian, Vietnamese', 4, '37.76797142', '-122.43187981', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('707 Sutter', 'www.707sutter.com', '(325)726-5012', 'Greek', 4, '37.78525154', '-122.42394276', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Momofuku', 'www.momofuku.com', '(867)673-5692', 'Mediterranean, Cajun', 2, '37.77105222', '-122.42365445', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Roaring Fork ', 'www.roaringfork.com', '(888)021-1140', 'Spanish, Italian', 2, '37.78448634', '-122.40708352', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Ippudo', 'www.ippudo.com', '(640)129-5825', 'Italian', 4, '37.76547495', '-122.41338447', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Melt', 'www.themelt.com', '(500)405-7478', 'Turkish', 1, '37.77142122', '-122.4111709', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('BunMee', 'www.bunmee.com', '(000)330-2532', 'Spanish, Lebanese', 2, '37.77622314', '-122.43011754', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Pei Wei ', 'www.peiwei.com', '(336)731-7515', 'Italian', 3, '37.78192942', '-122.42123746', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Cavalier', 'www.thecavalier.com', '(431)092-9332', 'Vietnamese', 1, '37.77706695', '-122.40169676', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Dirty Habit', 'www.dirtyhabit.com', '(802)633-1512', 'American, Chinese', 3, '37.77462124', '-122.4164059', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Lin Jia Asian Kitchen', 'www.linjiaasiankitchen.com', '(532)201-4944', 'American, Spanish', 3, '37.76250588', '-122.4172404', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Colonial Donuts', 'www.colonialdonuts.com', '(915)889-8525', 'French', 2, '37.76851536', '-122.42750841', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Oakland Kosher Foods', 'www.oaklandkosherfoods.com', '(060)646-8979', 'Caribbean, Mexican', 3, '37.7800706', '-122.41163597', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Rolling Dunes', 'www.rollingdunes.com', '(576)932-6600', 'Caribbean, Mexican', 3, '37.78832183', '-122.42516791', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Grand Lake Kitchen', 'www.grandlakekitchen.com', '(340)749-2122', 'Thai', 4, '37.76315975', '-122.41748043', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Soba Ichi', 'www.sobaichi.com', '(268)761-1443', 'Italian, Spanish', 3, '37.77643719', '-122.41999746', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Proposition Chicken', 'www.propositionchicken.com', '(175)074-3294', 'Italian, Moroccan', 3, '37.76395396', '-122.42684202', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Qi Dumpling Lounge', 'www.qidumplinglounge.com', '(038)318-6786', 'Thai, Caribbean', 1, '37.76599473', '-122.42994955', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Warren\'s Webpack Bananza', 'www.warrenswebpackbananza.com', '(847)702-7695', 'American, German', 2, '37.78402447', '-122.41553243', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Arizmendi Bakery', 'www.arizmendibakery.com', '(827)386-5276', 'Chinese', 1, '37.77381648', '-122.41003256', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Star on Grand', 'www.thestarongrand.com', '(717)458-7430', 'Japanese', 4, '37.78448285', '-122.4078392', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Holy Land Restuarant', 'www.holylandrestuarant.com', '(434)341-3939', 'Moroccan, Greek', 2, '37.78221042', '-122.42673022', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Cheese Steak Shop', 'www.cheesesteakshop.com', '(668)888-9658', 'Italian', 3, '37.78078978', '-122.43068371', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Anson\'s Handsome Hamburgers', 'www.ansonshandsomehamburgers.com', '(515)779-1770', 'Spanish', 3, '37.76367018', '-122.41824363', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Belcampo Restuarant & Butcher Shop', 'www.belcamporestuarant&butchershop.com', '(685)763-2640', 'Thai, Turkish', 4, '37.77309166', '-122.42003486', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Daily Grill', 'www.dailygrill.com', '(559)915-1857', 'American', 2, '37.76451469', '-122.40837664', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Morton\'s The Steakhouse', 'www.mortonsthesteakhouse.com', '(431)169-0931', 'Japanese', 3, '37.78046005', '-122.43567483', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Mark ', 'www.themark.com', '(407)564-6217', 'Thai, Italian', 3, '37.78670237', '-122.40961201', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('California Pizza Kitchen', 'www.californiapizzakitchen.com', '(836)041-2956', 'Moroccan, Greek', 3, '37.77405052', '-122.4187205', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Ikaros Greek Restuarant', 'www.ikarosgreekrestuarant.com', '(612)239-2645', 'Turkish', 4, '37.7766002', '-122.43217268', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Modigliani Cafe', 'www.modiglianicafe.com', '(832)855-4351', 'German, German', 1, '37.77875964', '-122.43007522', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('JJ Burger', 'www.jjburger.com', '(236)541-3455', 'American, French', 2, '37.78817593', '-122.41577304', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Sliver', 'www.sliver.com', '(292)859-6237', 'American, German', 3, '37.78439871', '-122.40650213', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Lakeshore Cafe', 'www.lakeshorecafe.com', '(995)711-2645', 'Italian, Turkish', 3, '37.78268872', '-122.40924108', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Belly', 'www.belly.com', '(821)709-5724', 'Lebanese', 3, '37.78323257', '-122.41218792', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Lovely\'s', 'www.lovelys.com', '(686)306-1934', 'Japanese, Mediterranean', 3, '37.76698597', '-122.41478384', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Mua', 'www.mua.com', '(637)847-1540', 'Moroccan', 2, '37.76866157', '-122.41060197', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Flavor of India', 'www.flavorofindia.com', '(127)783-0459', 'German', 1, '37.78349374', '-122.40723356', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Dosirak Shop', 'www.dosirakshop.com', '(906)925-9987', 'German, Mexican', 2, '37.78371391', '-122.42124522', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Super Duper Burgers', 'www.superduperburgers.com', '(444)897-7019', 'Mexican', 1, '37.78181937', '-122.41982769', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Hancook', 'www.hancook.com', '(160)939-3926', 'Mediterranean', 4, '37.77047076', '-122.42874772', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Chan\'s Kitchen', 'www.chanskitchen.com', '(444)667-1328', 'Moroccan', 3, '37.77728531', '-122.4245782', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Steven\'s Slow Today Deli ', 'www.stevensslowtodaydeli.com', '(474)181-1582', 'Korean', 4, '37.76890343', '-122.43439395', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Aisle 5', 'www.aisle5.com', '(610)455-2182', 'Cajun, Spanish', 2, '37.76508053', '-122.41588205', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('CANA Cuban Parlor & Cafe', 'www.canacubanparlor&cafe.com', '(813)843-8097', 'Lebanese, Greek', 4, '37.7740219', '-122.4087592', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Homeroom', 'www.homeroom.com', '(432)604-0748', 'Lebanese, Korean', 2, '37.77328715', '-122.43009294', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Justin\'s Koolaid Bar', 'www.justinskoolaidbar.com', '(738)401-4196', 'German, Mexican', 3, '37.77303784', '-122.41319112', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('CHICA Oakland', 'www.chicaoakland.com', '(940)689-8716', 'Mediterranean', 1, '37.78032484', '-122.41939463', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Penrose', 'www.penrose.com', '(940)987-5361', 'Caribbean, Turkish', 4, '37.77804624', '-122.4256475', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Mockingbird', 'www.mockingbird.com', '(969)597-2532', 'Korean', 2, '37.77961062', '-122.40601928', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Wally\'s Cafe', 'www.wallyscafe.com', '(581)761-3601', 'Greek, Indian', 3, '37.78050063', '-122.41902402', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Orchid Pavillion Cafe', 'www.orchidpavillioncafe.com', '(046)027-3474', 'Japanese, Lebanese', 4, '37.77830448', '-122.41199285', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Fogo de Chao', 'www.fogodechao.com', '(386)194-8317', 'Spanish, Mediterranean', 1, '37.78009662', '-122.41723864', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Grove', 'www.thegrove.com', '(007)759-1230', 'Turkish, French', 1, '37.77836509', '-122.42383064', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Michael\'s Romantic Bulgogi Beef', 'www.michaelsromanticbulgogibeef.com', '(215)688-9062', 'Spanish, German', 1, '37.7744803', '-122.40250808', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Belotti Ristorante', 'www.belottiristorante.com', '(630)350-0864', 'American, Cajun', 4, '37.76773142', '-122.41225864', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Tacolicious', 'www.tacolicious.com', '(205)588-2104', 'Turkish', 4, '37.78011295', '-122.43172299', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Hog\'s Apothecary', 'www.thehogsapothecary.com', '(700)432-3508', 'Korean', 3, '37.76970817', '-122.43135563', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Tim Ho Wan', 'www.timhowan.com', '(990)361-5946', 'Caribbean', 2, '37.76883431', '-122.43008858', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Postino\'s ', 'www.postinos.com', '(790)298-8966', 'Korean, Mediterranean', 4, '37.77448291', '-122.4124435', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Melting Pot', 'www.themeltingpot.com', '(931)483-7989', 'Cajun, Chinese', 3, '37.76882703', '-122.43545965', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Rubio\'s', 'www.rubios.com', '(856)077-9022', 'Indian, Cajun', 3, '37.78214731', '-122.40999056', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Bonchon ', 'www.bonchon.com', '(654)655-9241', 'Turkish, Cajun', 4, '37.76522606', '-122.42379565', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('MOD Pizza', 'www.modpizza.com', '(891)767-6670', 'Moroccan', 1, '37.78742746', '-122.41109654', 1); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Wingstop ', 'www.wingstop.com', '(389)956-6227', 'Vietnamese, Moroccan', 4, '37.76670351', '-122.41678688', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Tempest', 'www.tempest.com', '(377)883-0017', 'Moroccan, Mediterranean', 2, '37.77757612', '-122.42525044', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Playland', 'www.playland.com', '(112)631-1375', 'Indian', 2, '37.76920011', '-122.4027846', 3.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Raven ', 'www.raven.com', '(278)356-3147', 'Indian, Korean', 4, '37.78310129', '-122.41785136', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Temple', 'www.temple.com', '(442)910-1609', 'American', 1, '37.77456967', '-122.43332002', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Hawthorne', 'www.hawthorne.com', '(711)285-8818', 'Caribbean', 4, '37.77314853', '-122.42775616', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('The Yellow Submarine', 'www.theyellowsubmarine.com', '(080)151-7890', 'Japanese, Moroccan', 3, '37.76490774', '-122.42596884', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Subway', 'www.subway.com', '(586)904-1668', 'American', 1, '37.77922947', '-122.43362113', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Umami Burger', 'www.umamiburger.com', '(409)938-4854', 'Cajun', 2, '37.76821776', '-122.43137477', 3); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Asian Box', 'www.asianbox.com', '(241)991-9931', 'Spanish', 1, '37.78233833', '-122.40675489', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Hopscotch', 'www.hopscotch.com', '(452)497-7413', 'American', 4, '37.77102247', '-122.40818478', 4); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Shogun Japanese Sushi', 'www.shogunjapanesesushi.com', '(723)218-7710', 'Korean, French', 1, '37.77582406', '-122.43165365', 5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Shane is Li\'s bestfriend', 'www.shaneislisbestfriend.com', '(207)812-5405', 'Mexican', 1, '37.7789598', '-122.40708111', 2.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Champa Garden', 'www.champagarden.com', '(638)218-8854', 'American, Greek', 2, '37.7823392', '-122.41540567', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Southern Cafe', 'www.southerncafe.com', '(984)989-5610', 'Cajun, Indian', 4, '37.76944961', '-122.41417876', 4.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Jong Ga House', 'www.jonggahouse.com', '(003)786-1385', 'Mediterranean', 2, '37.76781503', '-122.43019135', 2); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Sidebar Oaktown', 'www.sidebaroaktown.com', '(308)533-8907', 'German, Italian', 4, '37.76719547', '-122.41895197', 1.5); 
INSERT INTO restaurants (name, website, phone, tags, price, lat, lng, average_rating) values ('Mua', 'www.mua.com', '(276)824-6232', 'Mediterranean', 4, '37.77601446', '-122.40572051', 1.5);

INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');
INSERT INTO hours (monday, tuesday, wednesday, thursday, friday, saturday) values ('9:00 AM - 9:00 PM', '10:00 AM - 10:00 PM', '9:00 AM - 9:00 AM', '5:00 AM - 8:00 PM', '9:00 AM - 3:00 AM', '2:00 AM - 8:00 PM');

INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);
INSERT INTO info (reservations, delivery, takeOut, credit, applePay, googlePay, bitcoin, goodFor, parking, bike, wheelchair, kids, groups, attire, ambience, noise, alcohol, outdoor, wifi, tv, dogs, waiter, caters, bathrooms) values(false, true, true, true, true, false, false, 'lunch and dinner', 'Street', false, true, true, true, 'casual', 'casual', 'wine', false, true, false, false, true, false, true);

-- Execute this file from the command line by typing:
-- mysql -u <USER> -p < schema.sql