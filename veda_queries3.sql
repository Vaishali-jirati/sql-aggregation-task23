USE chinook_autoincrement;

-- 1.COUNT(): Total Customers
SELECT COUNT(*) AS Total_Customers FROM Customer;

-- 2. COUNT(): Total Employees
SELECT COUNT(*) AS Total_Employees FROM Employee;

-- 3. COUNT(): Total Tracks
SELECT COUNT(*) AS Total_Tracks FROM Track;

-- 4. COUNT() with WHERE: Total Rock Tracks   
SELECT COUNT(*) AS Total_Rock_Tracks FROM Track
WHERE GenreId = 1;

-- 5. SUM(): sum of total
SELECT SUM(Total) AS Total_Revenue FROM Invoice;

-- 6. SUM() with WHERE: USA Sales
SELECT SUM(Total) AS USA_Sales FROM Invoice
WHERE BillingCountry = 'USA';

-- 7. AVG(): Average Track Price
SELECT AVG(UnitPrice) AS Avg_Track_Price FROM Track;

-- 8. MIN(): Minimum Track Price
SELECT MIN(UnitPrice) AS Min_Track_Price FROM Track;

-- 9. MAX(): Maximum Track Duration
SELECT MAX(Milliseconds) AS Max_Track_Duration FROM Track;

-- 10. GROUP BY & COUNT(): Tracks per Genre
SELECT GenreId, COUNT(*) AS Track_Count FROM Track
GROUP BY GenreId 
ORDER BY Track_Count DESC;
