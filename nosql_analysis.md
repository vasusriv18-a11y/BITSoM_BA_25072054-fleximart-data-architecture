# NoSQL Database Analysis  
## FlexiMart Product Catalog

---

## Section A: RDBMS Limitations

When dealing with fixed and well-structured data, MySQL and other relational databases have advantages. Nevertheless, they will run into a number of problems in the case of a product catalog with a wide variety of products. The fact that different products have different qualities is one of the first problems. This would lead to a large number of blank columns or even numerous distinct tables throughout the remainder of the database, making the design extremely intricate and ineffective.

The second problem is that when new product types are added to the catalog, schema changes are frequently made. One day, it will be necessary to split the table structure in order to add a new attribute. Due to the possibility of interfering with the ongoing processes, this can be a drawn-out and disruptive process.

Additionally, in the world of RDBMS, storing customer opinions is a hassle. Reviews only use nested data, whereas RDBMSs assume that separate tables must be created and joins must be used. Increased query complexity and consequently lower performance were the results of this.

These challenges lead to the conclusion that flexible and dynamic product data cannot be efficiently supported by a traditional relational database.

---

## Section B: Advantages of NoSQL MongoDB

The limitations of relational databases are easily overcome by MongoDB, a NoSQL database. Every product is represented as a document in this adaptable document-based model. That make it possible for various products to have different qualities without any limitations. Example: A document for a laptop have information about the RAM and processor, whereas a document for a shoe have only the size and color.

Adding to, incorporated documents can be used with MongoDB. The product document can directly incorporate customer feedback. This type of methods reduces the need for complex joins and makes reading, writing, and managing data easier.

Its scalability is an another significant feature of MongoDB. The database can always be spread across several servers, handling any future large amounts of data. This implies that MongoDB will be able to expand with the system with minimal interruption as FlexiMart's clientele and product selection grow.

In conclusion, MongoDB provides improved performance, flexibility, and simpler handling of heterogeneous product data.

---

## Section C: Trade-offs

Out of many advantages of MongoDB, one disadvantage is its weaker support for complex transactions. MySQL is the best choice for applications requiring strict ACID compliance like financial systems.

Another downside is the inconsistency of data. If you do not apply the editor's validation rules correctly, the data may not necessarily be consistent. The structure and quality of data are strictly in the hands of programmers.

That is why, while for an extensible product catalog MongoDB can be said to be suitable, it is not a great deal of use when it comes to applications that require integrity of data in being rigorously maintained.
