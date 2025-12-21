# BITSoM_BA_25072054-fleximart-data-architecture
# FlexiMart Data Pipeline

## Project Overview
This project builds an ETL pipeline to clean and load customer data into a SQLite database for analytics.

## Dataset Used
- customers_raw.csv

## Data Issues Identified
- Missing email values
- Duplicate customer records
- Inconsistent phone formats
- Multiple date formats

## ETL Process
1. Extracted raw data from CSV
2. Cleaned and transformed data
3. Loaded data into SQLite database

## Technologies Used
- Python
- Pandas
- SQLite
- DB Browser for SQLite

## Database Schema

| Column | Type | Description |
|------|------|------------|
| customer_id | TEXT | Primary key |
| first_name | TEXT | First name |
| last_name | TEXT | Last name |
| email | TEXT | Email address |
| phone | TEXT | Phone number |
| city | TEXT | City |
| registration_date | DATE | Registration date |

## Sample SQL Query
```sql
SELECT city, COUNT(*) 
FROM customers
GROUP BY city;
