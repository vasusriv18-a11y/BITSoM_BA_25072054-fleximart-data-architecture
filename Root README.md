# FlexiMart Data Architecture Project

**Student Name:** Utkarsh Srivastava
**Student ID:** BITSoM_BA_25072054
**Email:** vasusriv18@gmail.com
**Date:** 23 December 2025

## Project Overview

The project includes designing and creating a full data architecture solution for FlexiMart. ETL pipeline creation for structured transactional data, NoSQL analysis using MongoDB, and star schema-based data warehouse development are parts of the work. The project illustrates the conversion of unrefined operational data into structured and analytical forms to provide business intelligence, reporting, and data-driven decisions support.

## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## Setup Instructions

### Database Setup

# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js

## Key Learnings

By means of this project, I got to know the full cycle of data engineering; thus, the process of ingesting raw data and finally coming up with analytical reporting. I got to know the role of ETL pipelines in cleaning, transforming, and loading data into the relational DB. My work with MongoDB made me know about the advantages of schema-less and flexible data storage. Building a star schema and writing OLAP queries boosted my understanding of dimensional modeling and analytical SQL. All in all, the project made my practical understanding of data architecture concepts more robust.

## Challenges Faced

1. Managing data inconsistencies during the ETL process
Data cleaning methods like duplicate record elimination, format standardization, and effective handling of missing values were applied to this problem.

2. Writing complex analytical queries for OLAP analysis
The issue was solved through the use of proper SQL aggregation techniques, CASE statements for segmentation, and structured queries that would guarantee accurate and meaningful analytical results.

