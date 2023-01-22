# DWH Modul's Project Work

As part of the project work, it will be necessary to:

- Take the demonstration [database of air travel](https://postgrespro.com/community/demodb) as a source
- Run an empty database in a docker container and create fact and dimension tables in it
- Load into the created database from the demo database using ETL

## Required tables:

1. Fact_Flights - contains completed flights. 
If the ticket included a complex route with transfers, each segment is taken into account independently
* Passenger
* Date and time of departure (actual)
* Date and time of arrival (actual)
* Departure delay (difference between actual and scheduled date in seconds)
* Arrival delay (difference between actual and planned date in seconds)
* Airplane
* Departure airport
* Arrival airport
* Service class
* Price
2. Dim_Passengers - directory of passengers
3. Dim_Aircrafts - aircraft catalog
4. Dim_Airports - directory of airports
5. Dim_Tariff - tariff catalog (Economy / business, etc.)

## Data quality validation

For each table in the warehouse, you need to come up with and implement at least 3-4 data quality validations. 
For example, the actual departure date cannot be greater than today. 
A description of each check should be in the documentation.
Low-quality rows should be written to separate rejected tables.

## The decision must contain:

1. [Docker file](../tree/main/Docker) for creating container with PostgreSQL server.
1. [SQL script](https://github.com/pvl-k/DWH-Course-Final-Work/blob/main/Docker/init.sql) for creating a fact table and all catalogs in container.
2. [Transformations](https://github.com/pvl-k/DWH-Course-Final-Work/tree/main/etl)
* ETL loading fact tables and all catalogs
* Data quality validations
2. Documentation describing the ETL procedure and all the features of its work
3. [ER model](https://github.com/pvl-k/DWH-Course-Final-Work/blob/main/docs/ER-diagram.png) of the storage's created database
4. [Screenshots](https://github.com/pvl-k/DWH-Course-Final-Work/tree/main/screenshots) of ETL processes
