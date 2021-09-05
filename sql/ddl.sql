CREATE TABLE IF NOT EXISTS "Languages" (
	id serial primary key,
	langueage varchar(50),
	"greetingMessage" TEXT
);

CREATE TABLE "ProductionHouses"(
	id serial primary key,
	company varchar(50),
	location varchar(100)
);

CREATE TABLE "Movies" (
	id serial primary key,
	title VARCHAR(100),
	duration INTEGER,
	"productionHouseId" INTEGER REFERENCES "ProductionHouses"(id),
	"languageId" INTEGER REFERENCES "Languages"(id)
);

CREATE TABLE "Features" (
	id serial primary key,
	name VARCHAR(50),
	description TEXT
);

CREATE TABLE "Subscriptions" (
	id serial primary key,
	subscription VARCHAR(50),
	price INTEGER,
	description TEXT
);

CREATE TABLE "SubscriptionFeatures" (
	id serial primary key,
	"subscriptionId" INTEGER REFERENCES "Subscriptions"(id),
	"featureId" INTEGER REFERENCES "Features"(id)
);

CREATE TABLE "Customers" (
	id serial primary key,
	"fullName" VARCHAR(200),
	email VARCHAR(120),
	"subscriptionId" INTEGER REFERENCES "Subscriptions"(id),
	"paymentDate" DATE
);

CREATE TABLE "Favorites" (
	id serial primary key,
	"customerId" INTEGER REFERENCES "Customers"(id),
	"movieId" INTEGER REFERENCES "Movies"(id),
	"createdAt" DATE
);