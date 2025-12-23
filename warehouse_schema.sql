BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dim_customer" (
	"customer_key"	INTEGER,
	"customer_id"	TEXT,
	"customer_name"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"customer_segment"	TEXT,
	PRIMARY KEY("customer_key" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "dim_date" (
	"date_key"	INTEGER,
	"full_date"	TEXT NOT NULL,
	"day_of_week"	TEXT,
	"day_of_month"	INTEGER,
	"month"	INTEGER,
	"month_name"	TEXT,
	"quarter"	TEXT,
	"year"	INTEGER,
	"is_weekend"	INTEGER,
	PRIMARY KEY("date_key")
);
CREATE TABLE IF NOT EXISTS "dim_product" (
	"product_key"	INTEGER,
	"product_id"	TEXT,
	"product_name"	TEXT,
	"category"	TEXT,
	"subcategory"	TEXT,
	"unit_price"	REAL,
	PRIMARY KEY("product_key" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "fact_sales" (
	"sale_key"	INTEGER,
	"date_key"	INTEGER NOT NULL,
	"product_key"	INTEGER NOT NULL,
	"customer_key"	INTEGER NOT NULL,
	"quantity_sold"	INTEGER NOT NULL,
	"unit_price"	REAL NOT NULL,
	"discount_amount"	REAL DEFAULT 0,
	"total_amount"	REAL NOT NULL,
	PRIMARY KEY("sale_key" AUTOINCREMENT),
	FOREIGN KEY("customer_key") REFERENCES "dim_customer"("customer_key"),
	FOREIGN KEY("date_key") REFERENCES "dim_date"("date_key"),
	FOREIGN KEY("product_key") REFERENCES "dim_product"("product_key")
);
COMMIT;
