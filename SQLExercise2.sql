USE northwind;

-- 1 --
-- Products

-- 2 --
SELECT 
	ProductID, 
    ProductName, 
    UnitPrice
FROM 
	Products;

-- 3 --
SELECT 
	ProductID, 
	ProductName, 
	UnitPrice
FROM 
	Products
ORDER BY 
	UnitPrice;

-- 4 --
SELECT 
	*
FROM 
	Products
WHERE 
	UnitPrice <= 7.50;

-- 5 --
SELECT 
	*
FROM 
	Products
WHERE 
	UnitsInStock >= 100
ORDER BY 
	UnitPrice 
DESC;

-- 6 --
SELECT 
	*
FROM 
	Products
WHERE 
	UnitsInStock >= 100
ORDER BY 
	UnitPrice 
DESC, 
	ProductName;

-- 7 --
SELECT 
	*
FROM 
	Products
WHERE 
	UnitsInStock = 0 
AND 
	UnitsOnOrder > 0
ORDER BY 
	ProductName;

-- 8 --
-- Categories

-- 9 --
SELECT 
	*
FROM 
	Catagories;
-- Seafood ID =  9

-- 10 -- 
SELECT 
	*
FROM 
	products
WHERE 
	categoryid = (
    SELECT 
		categoryID 
	FROM
		categories
	WHERE 
		categoryName = 'Seafood'
	);
    
-- 11 --
SELECT 
	firstname,
    lastname
FROM employees;

-- 12 --
SELECT
	*
FROM
	employees
WHERE 
	title 
LIKE 
	'%Manager%';
    
-- 13 --
SELECT distinct
	title
FROM
	employees;
    
-- 14 --
SELECT
	*
FROM
	employees
WHERE
	salary
BETWEEN
	2000
    AND
    2500;
    
-- 15 --
SELECT
	*
FROM
	suppliers;
    
-- 16 --
SELECT
	*
FROM
	Products
Where
	SupplierID = 4;