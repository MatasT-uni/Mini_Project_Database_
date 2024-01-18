use Sansiri;
select database();

-- 1: List all service types in uppercase:
SELECT UPPER(service_type) AS Uppercase_Service_Type
FROM Service;

-- 2: Count the number of unique colors of cars:
SELECT COUNT(DISTINCT Colors) AS Unique_Colors_Count
FROM car;

-- 3: Retrieve the legal department names in lowercase:
SELECT LOWER(name) AS Lowercase_Name
FROM legaldepartment;

-- 4: List the names of residents with their house numbers concatenated:
SELECT CONCAT(Name, ' - ', House_Number) AS Resident_Info
FROM Residents;

-- 5: Count the number of characters in promotion names:
SELECT Pro_name, LENGTH(Pro_name) AS Name_Length
FROM promotion;

-- 6: Retrieve project names where the area size is greater than 100:
SELECT Name
FROM Project
WHERE Area_size > 100;

-- 7: List Sansiri owners with a substring of the second to fourth characters in their names:
SELECT owner_name, SUBSTRING(E_Name, 2, 3) AS Substring_Name
FROM Sansiri;

-- 8: Count the number of central areas starting with the letter 'C':
SELECT COUNT(*) AS Total_Central_Areas
FROM central_area
WHERE Name_Area LIKE 'C%';

-- 9: Retrieve the first three characters of customer last names:
SELECT lname, LEFT(lname, 3) AS First_Three_Characters
FROM customer;

-- 10: Count the number of assets for each project:
SELECT Project.Name, COUNT(Asset.Asset_ID) AS Total_Assets
FROM Project
LEFT JOIN Asset ON Project.Name = Asset.Contain_Project_Name
GROUP BY Project.Name;

-- 11: Retrieve ownership records for a specific date range:
-- Retrieve ownership records between '2019-01-01' and '2019-12-31':
SELECT * FROM Ownership WHERE Date_Time BETWEEN '2019-01-01' AND '2019-12-31';

-- Retrieve ownership records between '2020-01-01' and '2020-12-31':
SELECT * FROM Ownership WHERE Date_Time BETWEEN '2020-01-01' AND '2020-12-31';

-- 12: List Sansiri owners with their project names in a single column:
SELECT owner_name, E_Name, Project_Name, CONCAT(owner_name, ' - ', Project_Name) AS Owner_Project_Info FROM Sansiri;

-- 13: Count the number of residents with associated fees:
SELECT Residents.House_Number, Residents.Name, Fee_F_ID, Fee_Type
FROM Residents
LEFT JOIN Fee ON Residents.Fee_F_ID = Fee.ID;

-- 14: Retrieve contracts with a specific customer ID:
-- This query retrieves contracts for the customer with the ID '52776'. 
SELECT * FROM Contract WHERE Make_Customer_Customer_ID = 52776;

-- This query retrieves contracts for the customer with the ID '45856'. 
SELECT * FROM Contract WHERE Make_Customer_Customer_ID = 45856;

-- 15: List residents with a specific car plate number:
-- Selected plate number  'JJ 5244'
SELECT House_Number, Name, Resident_Car_PlateNumber
FROM Residents
WHERE Resident_Car_PlateNumber = 'JJ 5244';

-- Selected plate number  'AS 2633'
SELECT House_Number, Name, Resident_Car_PlateNumber
FROM Residents
WHERE Resident_Car_PlateNumber = 'AS 2633';

-- 16: Count the number of distinct legal department names:
-- Count the distinct names in the Legal Department: 
SELECT COUNT(DISTINCT name) AS Distinct_Legal_Department_Count
FROM legaldepartment;

-- Count the distinct Residential Juristic Persons in the Legal Department: 
SELECT COUNT(DISTINCT Residental_Juristic_Person) AS Distinct_Residental_Juristic_Person_Count
FROM legaldepartment;

-- 17: Retrieve Sansiri owners with a specific employee name:
-- Retrieve owner name and employee name for employee 'Rick':
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_Name = 'Rick';

-- Retrieve owner name and employee name for employee 'Susan':
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_Name = 'Susan';

-- Retrieve owner name and employee name for employee 'Margaret':
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_Name = 'Margaret';

-- 18: List customers with a specific verification document and their birthdate in the format 'YYYY-MM-DD':
-- if the  verification_documents = 'Yes'
SELECT Cus_ID, FName, LName, verification_documents, DATE_FORMAT(DoB, '%Y-%m-%d') AS Formatted_Birthdate
FROM Customer
WHERE verification_documents = 'Yes';

-- if the  verification_documents = 'No'
SELECT Cus_ID, FName, LName, verification_documents, DATE_FORMAT(DoB, '%Y-%m-%d') AS Formatted_Birthdate
FROM Customer
WHERE verification_documents = 'No';

-- 19: Count the number of promotions for each project in uppercase:
SELECT Project.Name, COUNT(promotion.Pro_ID) AS Total_Promotions
FROM Project
LEFT JOIN promotion ON Project.promotion_Pro_ID = promotion.Pro_ID
GROUP BY Project.Name;

-- 20: List Sansiri owners with a specific project name and its location:
-- Retrieving Sansiri for the project 'Town Avenue Song-Kwae':
SELECT owner_name, E_Name, Project_Name, location
FROM Sansiri
JOIN Project ON Sansiri.Project_Name = Project.Name
WHERE Project_Name = 'Town Avenue Song-Kwae';

-- 21: Count the number of residents for each central area:
SELECT CentralArea_Name_Area, COUNT(*) AS Residents_Count
FROM Register
GROUP BY CentralArea_Name_Area;

-- 22: Retrieve contracts with a specific project name and sort by date in descending order:
-- Retrieving contracts for the project 'Town Avenue Song-Kwae':
SELECT *
FROM Contract
WHERE Use_Project_Name = 'Town Avenue Song-Kwae'
ORDER BY Date_Time DESC;

-- Retrieving contracts for the project 'Setthasiri Wongwaen - Lamlukka':
SELECT *
FROM Contract
WHERE Use_Project_Name = 'Setthasiri Wongwaen - Lamlukka'
ORDER BY Date_Time DESC;

-- Retrieving contracts for the project 'Dcondo Hideaway Rangsit':
SELECT *
FROM Contract
WHERE Use_Project_Name = 'Dcondo Hideaway Rangsit'
ORDER BY Date_Time DESC;

-- Retrieving contracts for the project 'KHUN by Yoo Inspired by Starck':
SELECT *
FROM Contract
WHERE Use_Project_Name = 'KHUN by Yoo Inspired by Starck'
ORDER BY Date_Time DESC;

-- 23: List projects with a specific promotion name (Haus Deals) and their relevant information:
SELECT Project.Name, Relavant_Info
FROM Project
JOIN Promotion ON Project.Promotion_Pro_ID = Promotion.Pro_ID
WHERE Promotion.Pro_name = 'Haus Deals';

-- 24: Count the number of distinct project locations:
SELECT COUNT(DISTINCT location) AS Distinct_Locations
FROM Project;

-- 25: Retrieve assets with a specific asset type and their associated projects:
-- To get assets with the type 'Condominium':
SELECT Asset.Asset_ID, Asset_Name, Asset_type, Project.Name AS Project_Name
FROM Asset
JOIN Project ON Asset.Contain_Project_Name = Project.Name
WHERE Asset_type = 'Condominium';

-- To get assets with the type 'House':
SELECT Asset.Asset_ID, Asset_Name, Asset_type, Project.Name AS Project_Name
FROM Asset
JOIN Project ON Asset.Contain_Project_Name = Project.Name
WHERE Asset_type = 'House';

-- 26: List Sansiri owners with a specific legal department ID:
-- To get owner names and E_names for the legal department with ID 46438:
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_ID IN (SELECT E_ID FROM legaldepartment WHERE legal_ID = 46438);

-- To get owner names and E_names for the legal department with ID 56823:
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_ID IN (SELECT E_ID FROM legaldepartment WHERE legal_ID = 56823);

-- To get owner names and E_names for the legal department with ID 23554: 
SELECT owner_name, E_Name
FROM Sansiri
WHERE E_ID IN (SELECT E_ID FROM legaldepartment WHERE legal_ID = 23554);

-- 27: Count the number of customers born after a specific date:
-- date '1990-01-01'
SELECT COUNT(*) AS Total_Customers
FROM Customer
WHERE DoB > '1990-01-01';

-- date '2000-01-01'
SELECT COUNT(*) AS Total_Customers
FROM Customer
WHERE DoB > '2000-01-01';

-- date '1995-06-01'
SELECT COUNT(*) AS Total_Customers
FROM Customer
WHERE DoB > '1995-06-01';

-- 28: Retrieve contracts with a Sales Contract and their associated project information:
SELECT Contract.Contract_ID, Contract_type, Date_Time, Project.Name AS Project_Name, location, relavant_info
FROM Contract
JOIN Project ON Contract.Use_Project_Name = Project.Name
WHERE Contract_type = 'Sales Contract';
