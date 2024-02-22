-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/taWn1D
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Monthly_Home_Sales" (
    "Year" int   NOT NULL,
    "Month" varchar(7)   NOT NULL,
    "County_City" varchar(40)   NOT NULL,
    "Sale_Count" int   
);


CREATE TABLE "Monthly_Median_Sales_Prices" (
    "Year" int   NOT NULL,
    "Month" varchar(7)   NOT NULL,
    "County_City" varchar(25)   NOT NULL,
    "Median_Sale_Value" float
);


CREATE TABLE "County_City_Population_2010_2021" (
	"County_City" varchar(40)   NOT NULL,
	"State" varchar(20)   NOT NULL,
	"2010_Census" int   NOT NULL,
    "2010" int   NOT NULL,
    "2011" int   NOT NULL,
    "2012" int   NOT NULL,
    "2013" int   NOT NULL,
    "2014" int   NOT NULL,
    "2015" int   NOT NULL,
    "2016" int   NOT NULL,
    "2017" int   NOT NULL,
    "2018" int   NOT NULL,
    "2019" int   NOT NULL,
	"2020_Census" int   NOT NULL,
    "2021" int   NOT NULL,
    "Change_2010-2021" int   NOT NULL,
    "Pct_Chg_2010-2020" decimal(10,9)   NOT NULL
);


CREATE TABLE "Annual_Residential_Building_Permits" (
	"County_City" varchar(30) NOT NULL,
    "2000" int,
    "2001" int,
    "2002" int,
    "2003" int,
    "2004" int,
    "2005" int,
    "2006" int,
    "2007" int,
    "2008" int,
    "2009" int,
    "2010" int,
    "2011" int,
    "2012" int,
    "2013" int,
    "2014" int,
    "2015" int,
    "2016" int,
    "2017" int,
    "2018" int,
    "2019" int,
    "2020" int,
    "2021" int,
    "2022" int,
    CONSTRAINT "pk_Annual_Residential_Building_Permits" PRIMARY KEY (
        "County_City" 
     )
);


CREATE TABLE "Weekly_Mortage_Rates" (
    "Month" varchar(8)   NOT NULL,
    "Week" varchar(5)   NOT NULL,
    "Year" int   NOT NULL,
    "30-Year_Fixed" varchar(15)   NOT NULL,
    "15-Year_Fixed" varchar(15)   NOT NULL,
    "5-1_Year_Adj" varchar(15)   NOT NULL
);

CREATE TABLE "Monthly_Job_Totals_2009-Present" (
    "Year" int   NOT NULL,
    "Month" varchar(10)   NOT NULL,
    "State" varchar(15)   NOT NULL,
    "Job_Status" varchar   NOT NULL,
    "Job_Value" varchar   NOT NULL
);


