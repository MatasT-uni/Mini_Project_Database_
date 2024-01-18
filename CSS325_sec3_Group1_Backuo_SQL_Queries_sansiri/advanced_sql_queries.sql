use Sansiri;
select database();

-- 1: List all projects along with the number of residents:
SELECT p.Name, COUNT(r.House_Number) AS Resident_Count
FROM Project p
LEFT JOIN Residents r ON p.ResidentHouse_Number = r.House_Number
GROUP BY p.Name;

-- 2: Display the list of residents who have a car registered:
SELECT r.Name, r.Resident_Car_PlateNumber
FROM Residents r
WHERE r.Resident_Car_PlateNumber IS NOT NULL;

-- 3: List projects along with the central areas they have:
SELECT p.Name, GROUP_CONCAT(ra.Name_Area) AS Central_Areas
FROM Project p
JOIN Register rg ON p.ResidentHouse_Number = rg.ResidentHouse_Number
JOIN central_area ra ON rg.CentralArea_Name_Area = ra.Name_Area
GROUP BY p.Name;

-- 4: Show legal departments and the number of permissions they have: 
SELECT ld.name, COUNT(p.Permission_ID) AS Permission_Count
FROM legaldepartment ld
LEFT JOIN Permission p ON ld.legal_ID = p.legaldepartment_ID
GROUP BY ld.name;

-- 5: List all contracts along with the names of the customers who made them: 
SELECT con.Contract_ID, con.Contract_type, con.Date_Time, con.Use_Project_Name, c.fname, c.lname
FROM Contract con
JOIN Customer c ON con.Make_Customer_Customer_ID = c.Cus_ID;

-- 6: Display all projects along with the services provided by Sansiri: 
SELECT p.Name, s.service_type
FROM Project p
JOIN Sansiri sa ON p.Name = sa.Project_Name
JOIN Service s ON sa.service_provider_name = s.provider_name;

-- 7: Show residents who are registered in a central area: 
SELECT r.Name, ra.Name_Area
FROM Residents r
JOIN Register rg ON r.House_Number = rg.ResidentHouse_Number
JOIN central_area ra ON rg.CentralArea_Name_Area = ra.Name_Area;

-- 8: List all projects and the total number of contracts associated with them: 
SELECT p.Name, COUNT(con.Contract_ID) AS Total_Contracts
FROM Project p
LEFT JOIN Contract con ON p.Name = con.Use_Project_Name
GROUP BY p.Name;

-- 9: Display the list of residents along with the legal department they are in contact with: 
SELECT r.Name, ld.name AS Legal_Department
FROM Residents r
JOIN legaldepartment ld ON r.Contact_legaldepartment_ID = ld.legal_ID;

-- 10: List all projects along with the promotion details they have: 
SELECT p.Name, pr.Pro_name AS Promotion_Name
FROM Project p
LEFT JOIN promotion pr ON p.promotion_Pro_ID = pr.Pro_ID;

-- 11: Show the names of customers along with the contracts they made and the projects they are associated with:
SELECT c.fname, c.lname, con.Contract_ID, con.Use_Project_Name
FROM Customer c
JOIN Contract con ON c.Cus_ID = con.Make_Customer_Customer_ID; 

-- 12: Display the total number of contracts made by each customer and the projects they are associated with:
SELECT c.fname, c.lname, COUNT(con.Contract_ID) AS Total_Contracts
FROM Customer c
LEFT JOIN Contract con ON c.Cus_ID = con.Make_Customer_Customer_ID
GROUP BY c.fname, c.lname;

-- 13: List all projects along with the names of Sansiri employees involved and the services they provide:
SELECT p.Name, sa.E_Name, sa.service_provider_name
FROM Project p
JOIN Sansiri sa ON p.Name = sa.Project_Name;

-- 14: Show the names of residents along with the legal department permissions they have: 
SELECT r.Name AS Resident_Name, p.Name AS Project_Name, ld.name AS Legal_Department
FROM Project p
JOIN Residents r ON p.ResidentHouse_Number = r.House_Number
JOIN legaldepartment ld ON r.Contact_legaldepartment_ID = ld.legal_ID;

-- 15: Show residents who are registered in central areas along with the projects they are associated with:
SELECT r.Name AS Resident_Name, ca.Name_Area AS Central_Area, p.Name AS Project_Name
FROM Residents r
JOIN Register rg ON r.House_Number = rg.ResidentHouse_Number
JOIN central_area ca ON rg.CentralArea_Name_Area = ca.Name_Area
JOIN Project p ON rg.ResidentHouse_Number = p.ResidentHouse_Number;

-- 16: List all projects along with the promotions they have and the names of residents associated with them: 
SELECT p.Name AS Project_Name, pr.Pro_name AS Promotion_Name, r.Name AS Resident_Name
FROM Project p
LEFT JOIN promotion pr ON p.promotion_Pro_ID = pr.Pro_ID
LEFT JOIN Residents r ON p.ResidentHouse_Number = r.House_Number;

-- 17: Show the project with the highest number of contracts:
SELECT p.Name AS Project_Name, COUNT(con.Contract_ID) AS Num_Contracts
FROM Project p
LEFT JOIN Contract con ON p.Name = con.Use_Project_Name
GROUP BY p.Name
ORDER BY Num_Contracts DESC
LIMIT 1;

-- 18: Retrieve customers who have not paid any fees:
SELECT c.Cus_ID, c.fname, c.lname
FROM customer c
LEFT JOIN Fee f ON c.Cus_ID = f.ID
WHERE f.ID IS NULL;

-- 19: Find residents who have not made any contracts: 
SELECT r.Name AS Resident_Name
FROM Residents r
LEFT JOIN Contract con ON r.House_Number = con.Make_Customer_Customer_ID
WHERE con.Contract_ID IS NULL;

-- 20: Retrieve projects with contracts made by customers of a specific age range: 
SELECT p.Name AS Project_Name, con.Contract_ID
FROM Project p
JOIN Contract con ON p.Name = con.Use_Project_Name
JOIN customer c ON con.Make_Customer_Customer_ID = c.Cus_ID
WHERE c.DOB BETWEEN '1990-01-01' AND '2000-12-31';

-- 21: Show customers who have ownership information and the total number of ownerships:
SELECT c.Cus_ID, c.fname, c.lname, COUNT(o.Ownership_ID) AS Num_Ownerships
FROM customer c
LEFT JOIN Ownership o ON c.GenerateOwnership_Ownership_ID = o.Ownership_ID
GROUP BY c.Cus_ID, c.fname, c.lname; 

-- 22: Show legal departments with the highest number of permissions: 
SELECT ld.name AS Legal_Department, COUNT(per.Permission_ID) AS Num_Permissions
FROM legaldepartment ld
LEFT JOIN Permission per ON ld.legal_ID = per.legaldepartment_ID
GROUP BY ld.name
ORDER BY Num_Permissions DESC
LIMIT 1;

-- 23: List the most common car types among residents:
SELECT c.Car_Type, COUNT(r.Resident_Car_PlateNumber) AS Num_Residents
FROM car c
LEFT JOIN Residents r ON c.Plate_Num = r.Resident_Car_PlateNumber
GROUP BY c.Car_Type
ORDER BY Num_Residents DESC;

-- 24: Show the names of legal departments with at least one permission: 
SELECT ld.name AS Legal_Department
FROM legaldepartment ld
JOIN Permission per ON ld.legal_ID = per.legaldepartment_ID;

-- 25: List all customers who have not made any contracts: 
SELECT c.Cus_ID, c.fname, c.lname
FROM customer c
LEFT JOIN Contract con ON c.GenerateOwnership_Ownership_ID = con.Make_Customer_Customer_ID
WHERE con.Contract_ID IS NULL;

-- 26: Show the average area size of projects in each location: 
SELECT p.location, AVG(p.Area_size) AS Avg_Area_Size
FROM Project p
GROUP BY p.location;

-- 27: Show the details of customers with ownership information: 
SELECT c.Cus_ID, c.fname, c.lname, o.Ownership_ID, o.Date_time
FROM customer c
JOIN Ownership o ON c.GenerateOwnership_Ownership_ID = o.Ownership_ID;

-- 28: List legal departments and the number of permissions granted: 
SELECT ld.name AS Legal_Department, COUNT(per.Permission_ID) AS Num_Permissions
FROM legaldepartment ld
LEFT JOIN Permission per ON ld.legal_ID = per.legaldepartment_ID
GROUP BY ld.name;

-- 29: Retrieve distinct legal department names from permissions or contracts: 
SELECT ld.name FROM legaldepartment ld
JOIN Permission p ON ld.legal_ID = p.legaldepartment_ID
UNION
SELECT ld.name FROM legaldepartment ld
JOIN Contract con ON ld.legal_ID = con.Make_Customer_Customer_ID;

-- 30: Show all unique customer IDs from contracts and ownership records: 
SELECT Make_Customer_Customer_ID FROM Contract
UNION
SELECT GenerateOwnership_Ownership_ID FROM customer;

-- 31: Retrieve names of legal departments from both permissions and contracts 
SELECT ld.name FROM legaldepartment ld
JOIN Permission p ON ld.legal_ID = p.legaldepartment_ID
UNION ALL
SELECT ld.name FROM legaldepartment ld
JOIN Residents r ON ld.legal_ID = r.Contact_legaldepartment_ID;

-- 32: Show project names from both contracts and owned by Sansiri:
SELECT Use_Project_Name FROM Contract
UNION ALL
SELECT Project_Name FROM Sansiri;

-- 33: Retrieve central area names from both registered residents and projects: 
SELECT CentralArea_Name_Area FROM Register
UNION ALL
SELECT location AS CentralArea_Name_Area FROM Project;

-- 34: Combine names of customers who own assets and those who made contracts: 
SELECT c.fname, c.lname FROM customer c
JOIN Ownership o ON c.Cus_ID = o.Ownership_ID
UNION ALL
SELECT c.fname, c.lname FROM customer c
JOIN Contract con ON c.Cus_ID = con.Make_Customer_Customer_ID;

-- 35: Retrieve project names from contracts and Sansiri, excluding projects with legal departments:
SELECT Use_Project_Name FROM Contract
WHERE Use_Project_Name NOT IN (SELECT Project_Name FROM Sansiri)
UNION ALL
SELECT Project_Name FROM Sansiri
WHERE Project_Name NOT IN (SELECT CentralArea_Name_Area FROM Register);

-- 36: Combine project names from residents' registrations and contracts, excluding those without legal departments: 
SELECT ResidentHouse_Number AS Project_Name FROM Register
WHERE CentralArea_Name_Area NOT IN (SELECT name FROM legaldepartment)
UNION ALL
SELECT Use_Project_Name FROM Contract
WHERE Use_Project_Name NOT IN (SELECT name FROM legaldepartment);

-- 37: Combine project names from residents' registrations and contracts, excluding projects owned by Sansiri: 
SELECT ResidentHouse_Number AS Project_Name FROM Register
WHERE CentralArea_Name_Area NOT IN (SELECT Project_Name FROM Sansiri)
UNION ALL
SELECT Use_Project_Name FROM Contract
WHERE Use_Project_Name NOT IN (SELECT Project_Name FROM Sansiri);

-- 38: Combine project names from Sansiri and residents' registrations, excluding projects without legal departments:
SELECT Project_Name FROM Sansiri
WHERE Project_Name IN (SELECT name FROM legaldepartment)
UNION ALL
SELECT ResidentHouse_Number AS Project_Name FROM Register
WHERE CentralArea_Name_Area IN (SELECT name FROM legaldepartment);

 


 






















 
 

