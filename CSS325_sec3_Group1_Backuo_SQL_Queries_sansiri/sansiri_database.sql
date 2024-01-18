CREATE DATABASE IF NOT EXISTS Sansiri;
use Sansiri;

-- Create table service and setting --
create table Service(provider_name varchar(50) primary key not null, service_type varchar(50) not null);
alter table Service add (address varchar(50), phone_num varchar(10));
ALTER TABLE `Service` CHANGE COLUMN `address` `address` VARCHAR(300);
ALTER TABLE `Service` CHANGE COLUMN `phone_num` `phone_num` VARCHAR(15);
ALTER TABLE `Service` CHANGE COLUMN `service_type` `service_type` VARCHAR(100);

-- Create table Fee and setting --
create table Fee( Fee_Type varchar(50) not null,Date_Time date, ID int AUTO_INCREMENT not null primary key);
ALTER TABLE `Fee` CHANGE COLUMN `Date_Time` `Date_Time` VARCHAR(50);

-- Create table car and setting --
create table car (Plate_Num varchar(50) not null, Car_Type varchar(50) not null, Colors varchar(50) not null, primary key (Plate_Num));

-- Create table legaldepartment and setting --
create table legaldepartment (legal_ID int AUTO_INCREMENT not null, name varchar(50) not null, Residental_Juristic_Person varchar(50) not null, primary key (legal_ID));

-- Create table Residents and setting --
create table Residents (House_Number int primary key not null, Name varchar(50) not null);
alter table Residents add Fee_F_ID int;
alter table Residents add constraint fk_rffid foreign key (Fee_F_ID) references Fee(ID);
alter table Residents add (Resident_Car_PlateNumber varchar(50),Contact_legaldepartment_ID int, constraint fk_platenum foreign key (Resident_Car_PlateNumber) references car(Plate_Num),
constraint fk_legalidforesidents foreign key (Contact_legaldepartment_ID) references legaldepartment(legal_ID));

-- Create table promotion and setting --
create table promotion(Pro_ID int AUTO_INCREMENT not null primary key, Pro_name varchar(50) not null);
ALTER TABLE `promotion` CHANGE COLUMN `Pro_name` `Pro_name` VARCHAR(200);

-- Create table Project and setting --
create table Project( Name varchar(50) primary key not null,location varchar(50) not null,relavant_info varchar(100) not null, Area_size int);
alter table Project add promotion_Pro_ID int;
alter table Project add constraint fk_pjpid foreign key (promotion_Pro_ID) references promotion(Pro_ID);
alter table Project add ResidentHouse_Number int not null;
alter table Project add constraint fk_pjrhn foreign key (ResidentHouse_Number) references Residents(House_Number);
ALTER TABLE `Project` CHANGE COLUMN `Area_size` `Area_size` VARCHAR(50);
ALTER TABLE `Project` CHANGE COLUMN `location` `location` VARCHAR(300);
ALTER TABLE `Project` CHANGE COLUMN `relavant_info` `relavant_info` VARCHAR(500);

-- Create table Sansirit and setting --
create table Sansiri(owner_name varchar(50) not null,E_ID int not null, E_Name varchar(50) not null, service_provider_name varchar(50) not null, 
constraint FK_serviceName foreign key (service_provider_name) references Service(provider_name), primary key(E_ID,E_Name));
alter table Sansiri add (Project_Name varchar(50), constraint fk_projnameforsan foreign key (Project_Name) references Project(name));

-- Create table central_area and setting --
create table central_area (CentralArea_Type varchar(50) not null,Name_Area varchar(50) primary key not null);

-- Create table Register and setting --
create table Register (ResidentHouse_Number int , CentralArea_Name_Area varchar(50) not null,ID int not null, 
constraint fk_rrhn foreign key (ResidentHouse_Number) references Residents(House_Number),constraint fk_cana foreign key (CentralArea_Name_Area) references central_area(Name_Area),
primary key(ResidentHouse_Number,CentralArea_Name_Area,ID));

-- Create table Ownership and setting --
create table Ownership (Ownership_ID int AUTO_INCREMENT not null, Date_time date, primary key(Ownership_ID));

-- Create table customer and setting --
create table customer (Cus_ID int AUTO_INCREMENT not null, DOB date, fname varchar(50) not null, lname varchar(50) not null, GetPromotion_Pro_ID int, GenerateOwnership_Ownership_ID int,
verification_documents varchar(5) not null, Phone_Num varchar(10) not null, constraint fk_promotion foreign key (GetPromotion_Pro_ID) references promotion(Pro_ID),
constraint fk_ownershipid foreign key (GenerateOwnership_Ownership_ID) references Ownership(Ownership_ID),constraint fk_verifydoc foreign key (verification_documents) references Project(Name)
,primary key(Cus_ID,GetPromotion_Pro_ID,GenerateOwnership_Ownership_ID));
ALTER TABLE `customer` CHANGE COLUMN `phone_num` `phone_num` VARCHAR(15);
ALTER TABLE customer DROP FOREIGN KEY fk_verifydoc;

-- Create table Contract and setting --
create table Contract (Contract_ID int AUTO_INCREMENT not null, Contract_type varchar(50) not null,Date_Time date, Name varchar(50) not null,Use_Project_Name varchar(50) not null,Make_Customer_Customer_ID int not null, 
constraint fk_useprojn foreign key (Use_Project_Name) references Project(Name), constraint fk_cusid foreign key (Make_Customer_Customer_ID) references Customer(Cus_ID),primary key(Contract_ID));

-- Create table Asset and setting --
create table Asset (Asset_ID int AUTO_INCREMENT not null, Asset_Name varchar(50) not null, Contain_Project_Name varchar(50) not null,Asset_type varchar(10) not null,
constraint fk_projname foreign key (Contain_Project_Name) references Project(Name), primary key (Asset_ID));
ALTER TABLE `Asset` CHANGE COLUMN `Asset_type` `Asset_type` VARCHAR(30);


-- Create table Permission and setting --
create table Permission (Permission_ID int AUTO_INCREMENT not null, legaldepartment_ID int, Name varchar(50) not null, constraint fk_legalid foreign key (legaldepartment_ID) references legaldepartment(legal_ID),
primary key (Permission_ID, legaldepartment_ID));

-- Insert info into service table --
insert into service (provider_name,service_type,address,phone_num) values
("PLUS+","Real estate brokerage services","Plus Property Company Limited No. 59 Soi Rim Klong Phra Khanong Phra Khanong Nuea Subdistrict, Watthana District, Bangkok 10110"
,"02-688-7555"),("Quintessentially","Lifestyle management services","9 Building A, 5th Fl, Soi Rim Klong","082-079-1959"),("HABITO","An expansive network of trendy residential and retail developments services",
"Prakanong, Prakanong Nua, Wattana, Bangkok 10110","02-136-5932");

-- Insert info into promotion table --
INSERT INTO promotion (Pro_ID, Pro_name) VALUES
(62358, 'Mahue Deal Lod Mahuema'),(64852, '11.11 Pro Break Taek'),
(63246, 'Yok Tap Guaruntee Raka'),(68452, 'Haus Deals'),
(61597, 'Reeb Loey Raka Pid Krongkan'),(61354, '10.10 Pro Rang Sang Took Deal'),
(67513, 'Pro Dee Tang Free Took Hong!'),(60578, 'Pro Kodd Chill'),
(63186, '5 Plaeng Sud Tai Rub Pro 5 Larn'),(63357, 'Ban Lod Sud Reang Rub Pro 5 Larn Dok Bier Soong Sud 1.99%'),
(62400, 'Pay Sood Tua Hai Kuen Soong Sood 1.5 Larn'),(62751, 'Sathu 9.9'),
(65927, 'Hai Kern Roi Koo Dai 100%'),(64581, 'Sek Hai Dai Took Pro Lod 900k'),
(61157, 'Deal Nee Mae Pluem Rub Ka SuanKlang Perm 1 Pee'),(63488, 'Pro Tid Speed Deal Duan Tunjai'),
(65597, 'Pro Duan Dai Ban Ngai Bab Rhoo Rhoo Lod Soong Sud 30k'),(62248, 'Sansiri Family Living Juicy'),
(63438, 'Luer Noi Tae Pro Yer'),(65676, 'Oh My Deal!'),
(61275, '6.6 On-Top Only You'),(68878, 'Koo Dai Tem Rab Kuen 100k'),
(69925, 'Deal Dee Only You'),(61323, 'Furniture Tem Lang Koo Kern Roi Dai Soong Sood 300k'),
(68567, 'Double Deal Rub Pro Soong Sood 1.2m'),(62975, 'Deal Hot Over Heat Lod Soong Sood 4m'),
(61247, 'Hot Deal Lod Soong Sood 6m'),(68879, 'Happy Hour Lod Soong Sood 1.5m'),(62217, 'Pro Dee Very March'),(68542, 'Love On Top');

-- Insert info into car table --
insert into car (Plate_Num, Car_type,Colors) values 
('JJ 5244', 'Car', 'FFFFFF'), ('AS 2633', 'Mototcycle', 'FF0000'),('OP 3266', 'Car', '00FF40'),('FF 9523', 'Car', '0080FF'),('QD 2365', 'Mototcycle', 'FFFFFF'),
('PP 6592', 'Car', '000000'),('TY 5299', 'Car', '000000'),('RE 7884', 'Mototcycle', 'FFFFFF'),('RT 8895', 'Mototcycle','000000'),('HJ 2322', 'Car', '000000');

-- Insert info into legaldepartment table --
insert into legaldepartment (legal_ID, name, Residental_Juristic_Person) values (23554, 'Security','Jame Sone'), ( 56823, 'Fitness','Geoger Fote'), ( 46438, 'Swimming Pool','Rote Hojo'), 
( 56583, 'Co-working space','Akane Shima'), ( 23538, 'Laundry','Hori Miki'), ( 23154, 'Garden','Teras Tyler'), ( 32423, 'Car parking','Luke Jerty');

-- Insert info into fee table --
INSERT INTO fee (Fee_Type, Date_Time, ID) VALUES
('Transfer Fee', '4 years', 56201),('Lease Registration Fee', 'Leases exceeding 3 years, and up to 30 years', 32155),
('Specific Business Tax (SBT)', '5 years', 45650),('Stamp Duty', '3 months', 55623),
('Withholding Tax (WHT)', '2 years', 49325),('Transfer Fee', '4 years', 54243),
('Withholding Tax (WHT)', '2 years', 45635),('Transfer Fee', '4 years', 45456),
('Withholding Tax (WHT)', '2 years', 45637),('Transfer Fee', '4 years', 45628),
('Lease Registration Fee', 'Leases exceeding 3 years, and up to 30 years', 48622),
('Specific Business Tax (SBT)', '5 years', 42052),('Stamp Duty', '3 months', 30265),
('Withholding Tax (WHT)', '2 years', 50267),('Lease Registration Fee', 'Leases exceeding 3 years, and up to 30 years', 32045),
('Specific Business Tax (SBT)', '5 years', 32046),('Specific Business Tax (SBT)', '5 years', 45200),
('Lease Registration Fee', 'Leases exceeding 3 years, and up to 30 years', 32044),('Specific Business Tax (SBT)', '5 years', 45304),
('Stamp Duty', '3 months', 53120),('Withholding Tax (WHT)', '2 years', 53400),('Transfer Fee', '4 years', 42125),
('Withholding Tax (WHT)', '2 years', 33245),('Transfer Fee', '4 years', 32005),('Withholding Tax (WHT)', '2 years', 42055),('Transfer Fee', '4 years', 52052),
('Lease Registration Fee', 'Leases exceeding 3 years, and up to 30 years', 54340),('Specific Business Tax (SBT)', '5 years', 54200),('Stamp Duty', '3 months', 53672),('Withholding Tax (WHT)', '2 years', 49528);

-- Insert info into residents table --
INSERT INTO residents (House_Number, Name, Fee_F_ID, Resident_Car_PlateNumber, Contact_legaldepartment_ID) VALUES
(2661, 'Rick Novak', 56201, 'JJ 5244', 23554),(8366, 'Susan Connor', 32155, 'AS 2633', 56823),
(7510, 'Margaret Adelman', 55623, 'OP 3266', 46438),(4924, 'Ronald Barr', 56201, 'FF 9523', 56583),
(9422, 'Marie Broadbet', 49325, 'QD 2365', 23538),(2036, 'Roger Lum', 56201, 'PP 6592', 23154),
(4773, 'Marlen Dona', 56201, 'TY 5299', 32423),(8569, 'Pepe Porha', 32155, 'RE 7884', 23538),
(5869, 'Walter White', 32155, 'RT 8895', 23154),(1382, 'Saul Goodman', 56201, 'HJ 2322', 32423);

-- Insert info into Project table --
INSERT INTO Project (Name, Location, Relavant_Info, Area_Size, Promotion_Pro_ID, ResidentHouse_Number)
VALUES 
('Town Avenue Song-Kwae', 'Singhawat Road, Tambon Plai Chumphon, Muang, Phitsanulok 65000', 
 'Popularly referred to as the ''Song Kwae'' or ''the City of Two Rivers'', Phitsanulok is an important and historic city in lower northern Thailand which gets its nickname from its prominent location on the banks of two major rivers – Nan River and Kwae Noi River.', 
 '17-1-48.79 rai',63246, 2661),
('Setthasiri Wongwaen - Lamlukka', '38 Lamlukka Road, Bueng Kham Phroi, Lamlukka, Pathumthani 12150', 
 'The freedom to live your life in a new dimension. The project answers the demand of members of the new generation who love freedom, who are weary of monotony, and who possess distinctive lifestyles.', 
'78-0-44.76 rai',68452, 8366),
('Mettown Bangna', 'Bangna Road , Bang Bo, Bang Bo, Samut Prakan 10560', 
 'Welcome to a brand-new neighbourhood of gracefully-designed townhomes that superbly respond to the lifestyle demands of all family members.', 
 'Approximately 13.44 acre',61597, 7510),
('Dcondo Hideaway Rangsit', 'Chiangrak Road, Klong Luang, Pathum Thani 12150', 
 'Enjoy your solitude in an 8-rai green oasis. Relax with everything you love, privately and socially. Fulfill the fun lifestyle with leisurely jogging and cooking with fresh vegetables.', 
 'Approximately 8 rai',61354, 4924),
('THE BASE Central Phuket', 'Chaofa West Road, Wichit, Muang Phuket, Phuket 83000', 
 'At the confluence of an enchanting lifestyle where the native people and Chinese from across the seas come together in a perfect harmony of diversity to create the Peranakan culture so prevalent to Phuket inspiring a way of living at the heart of the city affording the ultimate freedom, convenience and discovery of new opportunities each and every day.', 
 'Approximately 4 Rai',67513, 9422),
('Burasiri Panya Indra', 'Liap Khlong Song Rd, Khwaeng Bang Chan, Khet Khlong Sam Wa, Bangkok 10510', 
 'The “Veranda Series” homes provide you with a breathtakingly romantic housing concept in the New England Colonial Style.', 
 '163 rai',60578, 2036),
('KHUN by Yoo Inspired by Starck', 'Sukhumvit 55 Road (Thong Lor), Klongton-Nua, Wattana, Bangkok 10510', 
 'Reflect your individuality through architecture and design. Inspired by the industrial heritage and the distinctive lifestyle of Thong Lo, KHUN by YOO incorporates outstanding creativity and opulent amenities that promise to deliver an incomparable place to call home.', 
 'Approximately 1 Rai',63186, 4773),
('La Casita Hua Hin', '94/2 Hua Hin, Prachaubkirikhan 77110', 
 '"La Casita” in Spanish means a house filled with the happiness of love and warmth. However, for Sansiri, La Casita is the embodiment of a new condominium at the heart of Hua Hin that truly stands out with Spanish-inspired architecture.', 
 'Approximately 6 Rai',63357, 8569),
('Town Avenue Merge Rattanathibet', 'Rattanathibet Road, Sao Thong Hin, Bang Yai, Nonthaburi 11140', 
 'Discover a truly unique home design inspired by the concept of “Urban Fabric.” Lines and shapes traced from urban elements, such as buildings, streets and lamp posts, seamlessly blend into natural beauty.', 
 '17.60 acre',62400, 5869),
('Kanasiri Rangsit Klong 2', 'Soi Rangsit-nakhon nayok 46, Rangsit Road , Khu Khot, Lamlukka, Pathum Thani 12150', 
 'It uses the abundance of field at Rungsit area as an inspiration for its design. The pattern grid is used from rectangle of the field which represents modernity and reflected to the former area of the project. The urban planning is run systematically and simply.', 
 '43-0-61.33 rai',62751, 1382);


-- Insert info into Sansiri table --
insert into Sansiri (owner_name,E_ID, E_Name, service_provider_name,Project_Name) 
values ('Rick Novack',42516,'Rick','Quintessentially','Setthasiri Wongwaen - Lamlukka'),
('Susan Cornor',53685,'Susan','Quintessentially','Dcondo Hideaway Rangsit'),
('Margaret Adelman',52745,'Margaret','PLUS+','La Casita Hua Hin'),
('Ronald Barr',19853,'Ronald','HABITO','Mettown Bangna'),
('Marie Broadbet',36643,'Marie','PLUS+','THE BASE Central Phuket'),
('Roger Lum',59323,'Roger','HABITO','Town Avenue Merge Rattanathibet'),
('Marlen Dona',56423,'Marlen','PLUS+','Kanasiri Rangsit Klong 2'),
('Pepe Porha',26265,'Pepe','Quintessentially','Town Avenue Song-Kwae'), 
('Walter White',52310 ,'Heisenberg','HABITO','KHUN by Yoo Inspired by Starck'),
('Saul Goodman',32680,'SaulsoCool','PLUS+','Burasiri Panya Indra'); 

-- Insert info into Ownership table --
INSERT INTO Ownership (Ownership_ID, Date_Time) VALUES
(42516, '2019-12-13'),(53685, '2021-12-23'),(52745, '2019-08-17'),(19853, '2022-11-29'),
(36643, '2020-03-23'),(59323, '2021-06-12'),(56423, '2019-09-28'),(26265, '2018-09-09'),
(52310, '2020-02-10'),(32680, '2012-09-06'),(22516, '2019-09-28'),(23687, '2019-09-09'),
(22745, '2018-02-10'),(29853, '2015-09-06'),(26644, '2018-12-13'),(29323, '2017-12-23'),
(26423, '2015-08-17'),(86265, '2018-12-23'),(22310, '2017-08-17'),(22680, '2018-11-29'),
(22517, '2016-03-23'),(23685, '2015-06-12'),(22747, '2018-09-28'),(29854, '2016-09-09'),
(26645, '2017-02-10'),(29324, '2016-09-28'),(26429, '2018-09-09'),(76265, '2020-02-10'),
(22311, '2016-09-06'),(22688, '2018-11-29');

-- Insert info into Asset table -- 
INSERT INTO Asset (Asset_ID, Asset_Name, Asset_Type, Contain_Project_Name) VALUES
(95543, 'The Line Sukhumvit 101', 'Condominium', 'Town Avenue Song-Kwae'),
(95345, 'Ideo Ladprao 5', 'Condominium', 'Setthasiri Wongwaen - Lamlukka'),
(95675, 'K.C. Garden Home', 'House', 'Mettown Bangna'),
(97654, 'The Tempo Grand Sathorn-Wutthakat', 'Condominium', 'Dcondo Hideaway Rangsit'),
(95656, 'Dcondo Hideaway Rangsit', 'Condominium', 'THE BASE Central Phuket'),
(96765, 'Setthasiri Wongwaen - Lamlukka', 'House', 'Burasiri Panya Indra'),
(99837, 'THE BASE Central Phuket', 'Condominium', 'KHUN by Yoo Inspired by Starck'),
(98633, 'La Casita Hua Hin', 'Condominium', 'La Casita Hua Hin'),
(98354, 'KHUN by Yoo Inspired by Starck', 'Condominium', 'Town Avenue Merge Rattanathibet'),
(98322, 'THE LINE Vibe', 'Condominium', 'Kanasiri Rangsit Klong 2'),
(97755, 'Town Avenue Merge Rattanathibet', 'House', 'Town Avenue Song-Kwae'),
(93959, 'Mettown Bangna', 'House', 'Setthasiri Wongwaen - Lamlukka'),
(95969, 'Kanasiri Rangsit Klong 2', 'House', 'Mettown Bangna'),
(91953, 'Town Avenue Song-Kwae', 'House', 'Dcondo Hideaway Rangsit'),
(91534, 'Burasiri Panya Indra', 'House', 'THE BASE Central Phuket'),
(94538, 'Saransiri Korat', 'House', 'Burasiri Panya Indra'),
(94134, 'Burasiri San Phi Suea', 'House', 'KHUN by Yoo Inspired by Starck'),
(94453, 'Setthasiri Chaengwattana-Prachachuen 2', 'House', 'La Casita Hua Hin'),
(93655, 'NIA BY SANSIRI', 'Condominium', 'Town Avenue Merge Rattanathibet'),
(96535, 'XT Phayathai', 'Condominium', 'Kanasiri Rangsit Klong 2'),
(96543, 'THE MUVE RAM22', 'Condominium', 'Town Avenue Song-Kwae'),
(98473, 'THE MUVE Bangna', 'Condominium', 'Setthasiri Wongwaen - Lamlukka'),
(95231, 'THE MUVE Bangkhae', 'Condominium', 'Mettown Bangna'),
(95322, 'THE BASE Phetchaburi Thonglor', 'Condominium', 'Dcondo Hideaway Rangsit'),
(95111, 'THE BASE Height-Chiang Mai', 'Condominium', 'THE BASE Central Phuket'),
(96333, 'THE BASE BUKIT Phuket', 'Condominium', 'Burasiri Panya Indra'),
(99856, 'SHUSH Ratchathewi', 'Condominium', 'KHUN by Yoo Inspired by Starck'),
(96325, 'FLO BY SANSIRI', 'Condominium', 'La Casita Hua Hin'),
(98562, 'dcondo reef', 'Condominium', 'Town Avenue Merge Rattanathibet'),
(97212, 'Shuj Ratchathewi', 'Condominium', 'Kanasiri Rangsit Klong 2');

-- Insert info into Customer table --  
INSERT INTO Customer (Cus_ID, DoB, FName, LName, GetPromotion_Pro_ID, GenerateOwnership_Ownership_ID, verification_documents, Phone_Num) VALUES
(52776, '1989-11-18', 'John', 'Ratchata', 62358, 42516, 'Yes', '080-452-4555'),
(45856, '2006-06-07', 'Petong', 'Nakron', 64852, 53685, 'No', '091-235-6655'),
(35785, '1986-12-30', 'Nizam', 'Maha', 63246, 52745, 'Yes', '084-653-9899'),
(25862, '1984-10-01', 'Henry', 'Kola', 68452, 19853, 'Yes', '092-987-3651'),
(56455, '1995-09-27', 'Terry', 'Homa', 61597, 36643, 'Yes', '085-853-6213'),
(30544, '2007-02-19', 'Smith', 'Dermico', 61354, 59323, 'No', '086-955-9833'),
(20015, '1987-03-12', 'Kilay', 'Thony', 67513, 56423, 'Yes', '098-326-9952'),
(47952, '1981-03-12', 'Tony', 'Yana', 60578, 26265, 'Yes', '087-525-6698'),
(53025, '2005-06-26', 'Pong', 'Nasri', 63186, 52310, 'No', '089-714-7746'),
(15402, '1986-06-12', 'Jimmy', 'Budgee', 63357, 32680, 'Yes', '084-263-6358'),
(72516, '1989-11-17', 'Jin', 'See', 62400, 22516, 'Yes', '089-714-7747'),
(73685, '2006-06-08', 'Gon', 'Lee', 62751, 23685, 'No', '084-263-6333'),
(72745, '1986-12-05', 'Matas', 'Pro', 65927, 22745, 'Yes', '084-263-1872'),
(79853, '1985-10-01', 'Naphat', 'Hala', 64581, 29853, 'Yes', '091-235-6255'),
(76643, '1996-09-29', 'Brim', 'Stone', 61157, 26644, 'Yes', '084-653-9829'),
(79323, '2008-03-19', 'Jett', 'Rey', 63488, 29323, 'No', '089-714-4446'),
(76423, '1988-04-12', 'Neon', 'Kun', 65597, 26423, 'Yes', '084-263-6328'),
(76265, '1983-04-12', 'Kiiljoy', 'Naon', 62248, 86265, 'Yes', '086-955-9847'),
(72310, '2006-06-26', 'Raze', 'Boto', 63438, 22310, 'No', '098-326-9348'),
(72680, '1987-06-12', 'Fin', 'Nom', 65676, 22680, 'Yes', '087-525-6782'),
(12516, '1990-11-13', 'Toyate', 'Tyloy', 61275, 22516, 'Yes', '089-714-6431'),
(13685, '2007-06-01', 'Maki', 'Lone', 68878, 23685, 'No', '084-263-6357'),
(12745, '1987-12-30', 'Aspas', 'Copa', 69925, 22745, 'Yes', '091-235-5655'),
(19853, '1984-10-02', 'Yay', 'Pion', 61323, 29853, 'Yes', '084-653-7421'),
(16643, '1995-10-27', 'Timmy', 'Zaro', 68567, 26645, 'Yes', '089-714-9831'),
(19323, '2007-02-20', 'Yhandi', 'Wang', 62975, 29323, 'No', '084-263-6388'),
(16423, '1988-03-12', 'Mike', 'Dick', 61247, 26423, 'Yes', '085-853-6245'),
(16265, '1982-06-12', 'Yugene', 'Kiko', 68879, 76265, 'Yes', '086-955-9871'),
(12310, '2006-06-26', 'Taylor', 'Lang', 62217, 22310, 'No', '098-326-9967'),
(12680, '1987-06-06', 'Frank', 'Smith', 68542, 22680, 'Yes', '087-525-6699');

-- Insert info into Permission table --
INSERT INTO Permission (Permission_ID, legaldepartment_ID, Name) VALUES
(75235, 23554, 'Co-working space'),(77565, 56823, 'Co-working space'),
(78935, 46438, 'Swimming Pool'),(78823, 56583, 'Swimming Pool'),
(73255, 23538, 'Co-working space'),(74562, 23154, 'Fitness'),
(71123, 32423, 'Fitness'),(71456, 23538, 'Co-working space'),
(76532, 23538, 'Co-working space'),(75225, 32423, 'Fitness');

-- Insert info into central_area table --
INSERT INTO central_area (CentralArea_Type, Name_Area)
VALUES 
('Free_Area', 'Lobby'),
('Facility', 'Co-working space'),
('Facility', 'Swimming Pool'),
('Facility', 'Laundry'),
('Free_Area', 'Car Parking'),
('Free_Area', 'Garden'),
('Facility', 'Fitness'),
('Facility', 'Wifi'),
('Facility', 'Security'),
('Free_Area', 'Roof top');

-- Insert info into Register table --
INSERT INTO Register (ResidentHouse_Number, CentralArea_Name_Area, ID)
VALUES 
(2661, 'Lobby', 77527),(2036, 'Co-working space', 75633),
(8366, 'Swimming Pool', 79465),(4773, 'Laundry', 74356),
(7510, 'Fitness', 74928),(8569, 'Wifi', 76325),
(4924, 'Security', 74830),(5869, 'Roof top', 76042),
(9422, 'Car Parking', 76435),(1382, 'Garden', 75620),
(2036, 'Fitness', 70164),(2661, 'Lobby', 70465),
(4773, 'Co-working space', 76524),(8366, 'Swimming Pool', 72310),
(8569, 'Laundry', 72256),(7510, 'Car Parking', 71625),
(5869, 'Garden', 75822),(4924, 'Fitness', 76578),
(1382, 'Wifi', 78522),(9422, 'Security', 78963),
(2661, 'Roof top', 75214),(2036, 'Lobby', 72056),
(8366, 'Co-working space', 72012),(8569, 'Swimming Pool', 78086),
(7510, 'Laundry', 79043),(5869, 'Car Parking', 76031),
(4924, 'Garden', 75030),(1382, 'Garden', 74061),
(9422, 'Fitness', 78520),(2661, 'Wifi', 76202);

-- Insert info into Contract table --
INSERT INTO Contract (Contract_Type, Contract_ID, Date_Time, Name, Use_Project_Name, Make_Customer_Customer_ID) VALUES
('Sales Contract', 87527, '2016-12-13', 'Anasiri Payap Sales Contract', 'Town Avenue Song-Kwae', 52776),
('Homeowners Associations', 85633, '2018-12-23', 'Burasiri Homeowners Associations', 'Setthasiri Wongwaen - Lamlukka', 45856),
('Sales Contract', 89465, '2017-08-17', 'D-Condo Sales Contract', 'Mettown Bangna', 35785),
('Sales Contract', 84356, '2018-11-29', 'Condo Me Sales Contract', 'Dcondo Hideaway Rangsit', 25862),
('Mortgage', 84928, '2016-03-23', 'Habitia Mortgage', 'THE BASE Central Phuket', 56455),
('Homeowners Associations', 86325, '2019-06-12', 'Burasiri Homeowners Associations', 'Burasiri Panya Indra', 30544),
('Mortgage', 84830, '2019-09-28', 'Habitia Mortgage', 'KHUN by Yoo Inspired by Starck', 20015),
('Sales Contract', 86042, '2019-09-09', 'Burasiri Sales Contract', 'La Casita Hua Hin', 47952),
('Homeowners Associations', 86435, '2018-02-10', 'Burasiri Homeowners Associations', 'Town Avenue Merge Rattanathibet', 53025),
('Sales Contract', 85620, '2015-09-06', 'D-Condo Sales Contract', 'Kanasiri Rangsit Klong 2', 15402),
('Sales Contract', 80164, '2018-12-13', 'D-Condo Sales Contract', 'Town Avenue Song-Kwae', 72516),
('Mortgage', 80465, '2017-12-23', 'Bu Gaan Mortgage', 'Setthasiri Wongwaen - Lamlukka', 73685),
('Sales Contract', 86524, '2015-08-17', 'D-Condo Sales Contract', 'Mettown Bangna', 72745),
('Mortgage', 82310, '2017-11-29', 'Narasiri Mortgage', 'Dcondo Hideaway Rangsit', 79853),
('Homeowners Associations', 82256, '2020-03-23', 'Burasiri Homeowners Associations', 'THE BASE Central Phuket', 76643),
('Mortgage', 81625, '2015-06-12', 'Narasiri Mortgage', 'Burasiri Panya Indra', 79323),
('Homeowners Associations', 85822, '2018-09-28', 'Burasiri Homeowners Associations', 'KHUN by Yoo Inspired by Starck', 76423),
('Mortgage', 86578, '2016-09-09', 'Setthasiri Mortgage', 'La Casita Hua Hin', 76265),
('Sales Contract', 88522, '2017-02-10', 'Anasiri Payap Sales Contract', 'Town Avenue Merge Rattanathibet', 72310),
('Mortgage', 88963, '2015-09-06', 'Setthasiri Mortgage', 'Kanasiri Rangsit Klong 2', 72680),
('Sales Contract', 85214, '2018-12-13', 'Burasiri Sales Contract', 'Town Avenue Song-Kwae', 12516),
('Mortgage', 82056, '2016-12-23', 'D-Condo Mortage', 'Setthasiri Wongwaen - Lamlukka', 13685),
('Sales Contract', 82012, '2018-08-17', 'Saransiri Sales Contract', 'Mettown Bangna', 12745),
('Sales Contract', 88086, '2018-11-29', 'Anasiri Payap Sales Contract', 'Dcondo Hideaway Rangsit', 19853),
('Sales Contract', 89043, '2017-03-23', 'Condo Me Sales Contract', 'THE BASE Central Phuket', 16643),
('Sales Contract', 86031, '2017-06-12', 'Burasiri Sales Contract', 'Burasiri Panya Indra', 19323),
('Mortgage', 85030, '2016-09-28', 'Bu Gaan Mortgage', 'KHUN by Yoo Inspired by Starck', 16423),
('Homeowners Associations', 84061, '2018-09-09', 'Burasiri Homeowners Associations', 'La Casita Hua Hin', 16265),
('Mortgage', 88520, '2020-02-10', 'Bu Gaan Mortgage', 'Town Avenue Merge Rattanathibet', 12310),
('Homeowners Associations', 86202, '2016-09-06', 'Kanasiri Homeowners Associations', 'Kanasiri Rangsit Klong 2', 12680);

select * from permission











