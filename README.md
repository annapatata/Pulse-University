# Pulse University Music Festival Database
## Project Overview

This project involves the design and implementation of a relational database for Pulse University, an international music festival that takes place once a year during the summer and lasts 2-5 days. Each festival hosts multiple events on each day, which in turn consist of 3 performances (warm up/opening act, main act, closing act). The system manages information about the events, the performances, the artists and bands that are available to perform, the performers which are the artists/bands that have performed or are scheduled to perform, the staff and equipment required for each performance. Also, besides the management of visitors and tickets to an event, the database supports a resale FIFO queue where unactivated tickets can be resold and potential buyers can request specific tickets or ticket for a specific performance and ticket class. Lastly, the reviews of activated tickets concerning a specific performance are stored and analyzed in some of the queries. 
  The project includes the creation of an ER Diagram, its conversion to a relational schema, SQL scripts to create tables and populate the database and a set of queries to test real-life scenarios.

## Creators 
- Alexiou Pericles 03122079
- Anagnostopoulou Anna Eirini 03122004
- Tsiblaki Penelope Anna 03122097

## Technologies Used
- Database: MariaDB
- Languages: SQL
- Tools: phpMyAdmin,MySQLWorkbench

## Project Components
- ER Diagram : A diagram that highlights the logical relationships between the most important entities
- Relational Diagram: Acquired by MySQLWorkbench, after the implementation of the schema and the ER Diagram
- SQL Scripts:
    1. install.sql contains the creation of tables, the triggers, the constraints,the views and the indexes
    2. load.sql contains the data that populate our database
    3. queries.sql contains the queries Q01-Q15 and the corresponding output Q01_out-Q15_out
- report : explains our train of thought and summarizes the key points of our implementation 
## Testing
- 9 Festivals
- 90 Artists
- 17 Bands
- 683 Employments
- 50 Events
- 150 Performances
- 67 Performers
- 55 Staff Members
- 398 Tickets
- 160 Visitors







