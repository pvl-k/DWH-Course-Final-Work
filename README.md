# DWH Modul's Project Work

As part of the project work, it will be necessary to:

- Take the demonstration [database of air travel](https://postgrespro.com/community/demodb) as a source
- Run an empty database in a docker container and create fact and dimension tables in it
- Load into the created database from the demo database using ETL

## Required tables:

1. Fact_Flights - contains completed flights. 
If the ticket included a complex route with transfers, each segment is taken into account independently
         Passenger
         Date and time of departure (actual)
         Date and time of arrival (actual)
         Departure delay (difference between actual and scheduled date in seconds)
         Arrival delay (difference between actual and planned date in seconds)
         Airplane
         Departure airport
         Arrival airport
         Service class
         Price
2. Dim_Calendar - date catalog
3. Dim_Passengers - directory of passengers
4. Dim_Aircrafts - aircraft catalog
5. Dim_Airports - directory of airports
6. Dim_Tariff - tariff catalog (Economy / business, etc.)
