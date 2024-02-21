-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/taWn1D
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Monthly_Home_Sales" (
    "Year" int   NOT NULL,
    "Month" varchar(3)   NOT NULL,
    "County_City" varchar(20)   NOT NULL,
    "Sale_Count" varchar   NOT NULL,
    CONSTRAINT "pk_Monthly_Home_Sales" PRIMARY KEY (
        "County_City"
     )
);

CREATE TABLE "Monthly_Median_Sales_Prices" (
    "Year" int   NOT NULL,
    "Month" varchar(3)   NOT NULL,
    "County_City" varchar(25)   NOT NULL,
    "Median_Sale_Value" varchar   NOT NULL,
    CONSTRAINT "pk_Monthly_Median_Sales_Prices" PRIMARY KEY (
        "County_City"
     )
);

CREATE TABLE "County_City_Population_2010_2021" (
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
    "2021" int   NOT NULL,
    "County_City" varchar(20)   NOT NULL,
    "State" varchar(5)   NOT NULL,
    "2010_Census" varchar(13)   NOT NULL,
    "2020_Census" varchar(15)   NOT NULL,
    "Change_2010-2021" varchar(20)   NOT NULL,
    "Pct_Chg_2010-2020" varchar(20)   NOT NULL,
    CONSTRAINT "pk_County_City_Population_2010_2021" PRIMARY KEY (
        "County_City"
     )
);

CREATE TABLE "Annual_Residential_Building_Permits" (
    "2000" int   NOT NULL,
    "2001" int   NOT NULL,
    "2002" int   NOT NULL,
    "2003" int   NOT NULL,
    "2004" int   NOT NULL,
    "2005" int   NOT NULL,
    "2006" int   NOT NULL,
    "2007" int   NOT NULL,
    "2008" int   NOT NULL,
    "2009" int   NOT NULL,
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
    "2020" int   NOT NULL,
    "2021" int   NOT NULL,
    "2022" int   NOT NULL,
    "County_City" varchar(20)   NOT NULL,
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
    "Year" varchar(5)   NOT NULL,
    "Month" varchar(5)   NOT NULL,
    "State" varchar(5)   NOT NULL,
    "Job_Status" varchar   NOT NULL,
    "Job_Value" varchar   NOT NULL
);

