CREATE TABLE "Monthly_Home_Sales" (
    "Year" int   NOT NULL,
    "Month" varchar(5)   NOT NULL,
    "County_City" varchar(30)   NOT NULL,
    "Sale_Count" varchar   NOT NULL
);

CREATE TABLE "Monthly_Median_Sales_Prices" (
    "Year" int   NOT NULL,
    "Month" varchar(5)   NOT NULL,
    "County_City" varchar(25)   NOT NULL,
    "Median_Sale_Value" varchar NULL
);

CREATE TABLE "County_City_Population_2010_2021" (
    "County_City" varchar(30)   NOT NULL,
    "State" varchar(10)   NOT NULL,
    "2010_Census" varchar(13)   NOT NULL,
	"CY_2010" varchar   NOT NULL,
    "CY_2011" varchar   NOT NULL,
    "CY_2012" varchar   NOT NULL,
    "CY_2013" varchar   NOT NULL,
    "CY_2014" varchar   NOT NULL,
    "CY_2015" varchar   NOT NULL,
    "CY_2016" varchar   NOT NULL,
    "CY_2017" varchar   NOT NULL,
    "CY_2018" varchar   NOT NULL,
    "CY_2019" varchar   NOT NULL,
    "2020_Census" varchar(15)   NOT NULL,
	"CY_2021" varchar   NOT NULL,
    "Change_2010_2021" varchar(20)   NOT NULL,
    "Pct_Chg_2010_2020" varchar(20)   NOT NULL
);

CREATE TABLE "Annual_Residential_Building_Permits" (
    "County_City" varchar(30) NOT NULL,
	"CY_2000" varchar   NOT NULL,
    "CY_2001" varchar   NOT NULL,
    "CY_2002" varchar   NOT NULL,
    "CY_2003" varchar   NOT NULL,
    "CY_2004" varchar   NOT NULL,
    "CY_2005" varchar   NOT NULL,
    "CY_2006" varchar   NULL,
    "CY_2007" varchar   NULL,
    "CY_2008" varchar   NOT NULL,
    "CY_2009" varchar   NOT NULL,
    "CY_2010" varchar   NOT NULL,
    "CY_2011" varchar   NOT NULL,
    "CY_2012" varchar   NOT NULL,
    "CY_2013" varchar   NOT NULL,
    "CY_2014" varchar   NOT NULL,
    "CY_2015" varchar   NOT NULL,
    "CY_2016" varchar   NOT NULL,
    "CY_2017" varchar   NOT NULL,
    "CY_2018" varchar   NOT NULL,
    "CY_2019" varchar   NOT NULL,
    "CY_2020" varchar   NOT NULL,
    "CY_2021" varchar   NOT NULL,
    "CY_2022" varchar   NOT NULL
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
    "Year" int  NOT NULL,
    "Month" varchar(5)   NOT NULL,
    "State" varchar(20)   NOT NULL,
    "Job_Status" varchar   NOT NULL,
    "Job_Value" varchar   NULL
);

CREATE TABLE "Monthly_Unemployment_Rate" (
    "Year" int   NOT NULL,
    "Month" varchar(5)   NOT NULL,
    "US" varchar   NOT NULL,
    "VA" varchar   NULL
);

drop table "Annual_Residential_Building_Permits"