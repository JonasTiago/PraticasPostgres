CREATE TABLE "companies" (
	"id" serial NOT NULL,
	"acronym" TEXT NOT NULL,
	"name" TEXT NOT NULL
);

CREATE TABLE "flight" (
	"id" serial NOT NULL,
	"acronym" TEXT NOT NULL,
	"companyId" integer NOT NULL,
	"airportOriginId" integer NOT NULL,
	"airportDestinationId" integer NOT NULL,
	"departureTime" TIME NOT NULL,
	"arrivalTime" TIME NOT NULL
);

CREATE TABLE "airports" (
	"id" serial NOT NULL,
	"acronym" TEXT NOT NULL,
	"name" TEXT NOT NULL
);

ALTER TABLE "flight" ADD CONSTRAINT "flight_fk0" FOREIGN KEY ("companyId") REFERENCES "companies"("id");
ALTER TABLE "flight" ADD CONSTRAINT "flight_fk1" FOREIGN KEY ("airportOriginId") REFERENCES "airports"("id");
ALTER TABLE "flight" ADD CONSTRAINT "flight_fk2" FOREIGN KEY ("airportDestinationId") REFERENCES "airports"("id");




