--CREATE SCHEMA public;

CREATE TABLE "fact_flights" (
	"fact_id" serial,
	"passenger_id" varchar(11) NOT NULL,
	"actual_departure" DATE NOT NULL,
	"actual_arrival" DATE NOT NULL,
	"departure_delay" int NOT NULL,
	"arrival_delay" int NOT NULL,
	"aircraft_code" varchar(50) NOT NULL,
	"from" varchar(50) NOT NULL,
	"destination" varchar(50) NOT NULL,
	"fare_conditions" varchar(50) NOT NULL,
	"amount" int NOT NULL,
	CONSTRAINT "fact_fact_pk" PRIMARY KEY ("fact_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "dim_calendar" (
	"date_id" serial,
	"date" varchar(100) NOT NULL,
	CONSTRAINT "date_pk" PRIMARY KEY ("date_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "dim_passengers" (
	"passenger_id" serial,
	"passport" varchar(10) NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"passenger_name" varchar(100) NOT NULL,
	"contact_data" varchar(100) NOT NULL,
	"phone" varchar(20) NOT NULL,
	"email" varchar(50),
	CONSTRAINT "passengers_pk" PRIMARY KEY ("passenger_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "dim_aircrafts" (
	"aircraft_id" serial,
	"aircraft_code" varchar(15),
	"model" varchar(100) NOT NULL,
	"range" varchar(5) NOT NULL,
	CONSTRAINT "aircrafts_pk" PRIMARY KEY ("aircraft_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "dim_airports" (
	"airport_id" serial,
	"city" varchar(100) NOT NULL,	
	"airport_code" varchar(5),
	"airport_name" varchar(100) NOT NULL,
	"coordinates" varchar(100) NOT NULL,
	"timezone" varchar(100) NOT NULL,	
	CONSTRAINT "airport_pk" PRIMARY KEY ("airport_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "dim_tariff" (
	"fare_id" serial,
	"fare_conditions" varchar(15),
	CONSTRAINT "tariff_pk" PRIMARY KEY ("fare_id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "rejected_fact_flights" (
	"fact_id" serial,
	"passenger_id" varchar(11) NOT NULL,
	"actual_departure" DATE NOT NULL,
	"actual_arrival" DATE NOT NULL,
	"departure_delay" int NOT NULL,
	"arrival_delay" int NOT NULL,
	"aircraft_code" varchar(50) NOT NULL,
	"from" varchar(50) NOT NULL,
	"destination" varchar(50) NOT NULL,
	"fare_conditions" varchar(50) NOT NULL,
	"amount" int NOT NULL,
	CONSTRAINT "rejected_fact_fact_pk" PRIMARY KEY ("fact_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "rejected_dim_calendar" (
	"date_id" serial,
	"date" varchar(100) NOT NULL,
	CONSTRAINT "rejected_date_pk" PRIMARY KEY ("date_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "rejected_dim_passengers" (
	"passenger_id" serial,
	"passport" varchar(10) NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"passenger_name" varchar(100) NOT NULL,
	"contact_data" varchar(100) NOT NULL,
	"phone" varchar(20) NOT NULL,
	"email" varchar(50),
	CONSTRAINT "rejected_passengers_pk" PRIMARY KEY ("passenger_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "rejected_dim_aircrafts" (
	"aircraft_id" serial,
	"aircraft_code" varchar(15),
	"model" varchar(100) NOT NULL,
	"range" varchar(5) NOT NULL,
	CONSTRAINT "rejected_aircrafts_pk" PRIMARY KEY ("aircraft_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "rejected_dim_airports" (
	"airport_id" serial,
	"city" varchar(100) NOT NULL,	
	"airport_code" varchar(5),
	"airport_name" varchar(100) NOT NULL,
	"coordinates" varchar(100) NOT NULL,
	"timezone" varchar(100) NOT NULL,	
	CONSTRAINT "rejected_airport_pk" PRIMARY KEY ("airport_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "rejected_dim_tariff" (
	"fare_id" serial,
	"fare_conditions" varchar(15),
	CONSTRAINT "rejected_tariff_pk" PRIMARY KEY ("fare_id")
) WITH (
  OIDS=FALSE
);