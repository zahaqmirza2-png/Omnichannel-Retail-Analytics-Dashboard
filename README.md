# Omnichannel-Retail-Analytics-Dashboard
## Project Overview
# Omnichannel Retail Sales and Inventory Analytics Dashboard

## Executive Problem Statement

In the rapidly digitizing retail industry, businesses transitioning from offline to online operations often face challenges due to fragmented sales data across multiple channels.

Retailers operating across physical stores and online platforms struggle to:
- Track overall sales performance
- Forecast inventory requirements
- Identify high-performing products
- Monitor seasonal sales trends
- Centralize retail transaction data

This project focuses on building a complete Data Analytics workflow and Business Intelligence dashboard that combines retail sales and inventory data for better business decision-making.

---

# Project Objective

The main objective of this project is to:
- Clean and preprocess retail datasets
- Analyze sales trends and customer behavior
- Monitor inventory performance
- Identify revenue patterns
- Create an interactive analytics dashboard

The project helps businesses improve:
- Inventory turnover
- Sales tracking
- Product performance analysis
- Operational decision-making

---

# Main Dataset Used

## Product Sales by Region Dataset

The primary dataset used in this project contains approximately 1,500 retail sales records across multiple regions and store locations.

### Business Analysis Areas
- Regional sales analysis
- Product performance tracking
- Promotion effectiveness
- Payment method trends
- Customer purchasing behavior
- Salesperson performance

---

# Additional Datasets Included

The workbook also contains:
- Online Store Orders Dataset
- Retail Store Transactions Dataset
- Customer Purchase History Dataset
- Inventory Tracking Dataset

These datasets support additional retail and inventory analysis.

---

# Columns Included

- Date
- Region
- Product
- Quantity
- UnitPrice
- StoreLocation
- CustomerType
- Discount
- Salesperson
- TotalPrice
- PaymentMethod
- Promotion
- Returned
- OrderID
- CustomerName
- ShippingCost
- OrderDate
- DeliveryDate
- RegionManager

---
# Project Workflow Architecture

Raw CSV Dataset
↓
Excel Data Cleaning
↓
Python Data Exploration
↓
MySQL Database Import
↓
SQL Analysis & Aggregations
↓
Power BI Dashboard Preparation
↓
Business Insights & Reporting
# Excel Data Cleaning Performed

The dataset was cleaned in Excel before importing into SQL.

### Cleaning Tasks
- Handled missing values
- Replaced missing Promotion values with "UNKNOWN"
- Removed inconsistencies
- Standardized date formats
- Corrected data types
- Validated columns
- Checked duplicate records
- Fixed CSV import issues
# Data Cleaning Process

## 1. Removed Duplicate Records
Duplicate rows were identified and removed to improve data accuracy.

## 2. Handled Missing Values
Missing and empty values were identified and corrected.

## 3. Standardized Text Data
- Removed extra spaces
- Corrected inconsistent capitalization
- Standardized region and product names

## 4. Corrected Data Types
Converted columns into appropriate formats:
- Dates → Date format
- Quantity → Integer
- Price columns → Decimal

## 5. Data Validation
Validated:
- Sales values
- Quantities
- Inconsistent records
- Invalid entries

---
## Excel Calculated Columns

##Delivery_Days

Calculated delivery turnaround time using:

```excel
=DATEDIF(OrderDate,DeliveryDate,"D")
# SQL Work Performed

The cleaned retail dataset was imported into MySQL for structured business analysis.

## SQL Operations Used
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- Date Functions
- Revenue Calculations

---

## SQL Business Analysis

### Total Revenue Analysis

```sql
SELECT SUM(TotalPrice) AS Total_Revenue
FROM omnichannel_retail_cleaned;
# Key Performance Indicators (KPIs)

- Total Sales
- Average Revenue per Order
- Regional Sales Performance
- Product Category Performance
- Sales Growth Trends
- Peak Purchase Periods
- Inventory Monitoring

---
## Dashboard Progress

### KPIs
- Total Revenue: 4.38M
- Total Orders: 2K
- Average Order Value: 2.9K
- Return Rate: 24.8%

### Visualizations Completed
- Monthly Revenue Trend
- KPI Cards

### Upcoming Visualizations
- Revenue by Region
- Product Performance Analysis
- Payment Method Distribution
- Customer Type Analysis

# Tools Used

- POWER BI
- Excel
- GitHub
- Data Cleaning Techniques

---

# Folder Structure

data/
├── raw/
│ └── omnichannel_retail_raw.xlsx
│
└── cleaned/
└── omnichannel_retail_cleaned.xlsx

---

# Project Outcome

The cleaned and structured dataset is prepared for:
- Dashboard Development
- Retail Sales Analysis
- Inventory Analytics
- Business Intelligence Reporting
- Data Visualization

---

# Author
## FATHIMA C
zahaqmirza2@gmail.com

  
  
