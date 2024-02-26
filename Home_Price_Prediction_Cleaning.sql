SELECT * FROM "Monthly_Mortgage_Rates";

-- Create a temporary table to store the first week of every month.

CREATE TEMP TABLE temp_filtered_data AS
SELECT *
FROM "Weekly_Mortage_Rates"
WHERE TO_DATE("Week", 'MM/DD/YYYY') <= DATE_TRUNC('MONTH', TO_DATE("Week", 'MM/DD/YYYY')) + INTERVAL '6 DAYS';

-- Truncate the original table to delete the data but keep the structure

TRUNCATE "Weekly_Mortage_Rates";

-- Insert the filtered data back into the original table

INSERT INTO "Weekly_Mortage_Rates"
SELECT *
FROM temp_filtered_data;

-- Drop the temporary table

DROP TABLE temp_filtered_data;

--Drop unnecessary columns from mortgage rates

ALTER TABLE "Weekly_Mortage_Rates" DROP COLUMN "Week";

-- Rename the table from weekly to monthly

ALTER TABLE "Weekly_Mortage_Rates" RENAME TO "Monthly_Mortgage_Rates";

--Drop nulls

DELETE FROM "Monthly_Median_Sales_Prices" AS mmsp
WHERE mmsp."Median_Sale_Value" IS NULL;

DELETE FROM "Monthly_Home_Sales" AS mhs
WHERE mhs."Sale_Count" IS NULL;


--Filter for relevant data and create new table

CREATE TABLE "VA_Monthly_Job_Totals" AS
SELECT * FROM "Monthly_Job_Totals_2009-Present" AS mjt
WHERE mjt."State" = 'Virginia' AND mjt."Job_Status" = 'Jobs (000s, nonfarm, not seasonally adjusted)';

ALTER TABLE "VA_Monthly_Job_Totals" DROP COLUMN "Job_Status";
ALTER TABLE "VA_Monthly_Job_Totals" DROP COLUMN "State";

--Drop N/A from Jobs 

DELETE FROM "VA_Monthly_Job_Totals" AS mjt
WHERE mjt."Job_Value" = 'N/A';

SELECT * FROM "Monthly_Home_Sales";
SELECT * FROM "Monthly_Median_Sales_Prices";
SELECT * FROM "VA_Monthly_Job_Totals";
SELECT * FROM "Monthly_Mortgage_Rates";
SELECT * FROM "Annual_Residential_Building_Permits";

-- Merge the Monthly county tables 

CREATE TABLE "VA_Home_Sale_Totals_And_Prices" AS
SELECT     
	mhs."County_City",
    mhs."Month",
    mhs."Year",
    mhs."Sale_Count",
    mmsp."Median_Sale_Value"
FROM "Monthly_Home_Sales" as mhs
INNER JOIN "Monthly_Median_Sales_Prices" AS mmsp
    ON mhs."County_City" = mmsp."County_City"
    AND mhs."Month" = mmsp."Month"
	AND mhs."Year" = mmsp."Year";

SELECT * FROM "VA_Home_Sale_Totals_And_Prices";

--Merge the Monthly state tables

CREATE TABLE "VA_Monthly_Jobs_Mortgage_Rates" AS
SELECT
	mjt."Year",
	mjt."Month",
	mjt."Job_Value",
	mmr."30-Year_Fixed",
	mmr."15-Year_Fixed",
	mmr."5-1_Year_Adj"
FROM "VA_Monthly_Job_Totals" AS mjt
INNER JOIN "Monthly_Mortgage_Rates" AS mmr
	ON mjt."Year" = mmr."Year"
	AND mjt."Month" = mjt."Month";
	
SELECT * FROM "VA_Monthly_Jobs_Mortgage_Rates";




