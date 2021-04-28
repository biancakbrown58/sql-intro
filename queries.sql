createdb CompanyDatabase
CREATE TABLE "Employees" (
  "FullName" TEXT NOT NULL,
  "Salary" INT,
  "JobPosition" TEXT,
  "PhoneExtension" TEXT,
  "IsPartTime" BOOLEAN,
);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 1000, 'DJ', '123', TRUE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Linda Larson', 1000, 'Cook', '113', FALSE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Sally Smith', 190, 'Beekeeper', '103', TRUE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Bianca Brown', 300, 'Bookkeeper', '213', FALSE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Bobby Brown', 90 , 'Cook', '193', TRUE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Hugh Smith', 890, 'Server', '119', FALSE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mary Moore', 240, 'IT', '413', True);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Rob Barker', 400, 'Receptionist', '113', FALSE);


INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Suzy Steel', 300, 'Bartender', '503', TRUE);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Gary Snail', 800, 'Cook', '119', FALSE);

SELECT * FROM "Employees";

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = FALSE;

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jim Freed', 450, 'Seftware Developer', '593', TRUE);

UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';

DELETE FROM "Employees"  WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

ALTER TABLE "Employees" ADD COLUMN "Id";




CREATE TABLE "Departments" (
  "Id" SERIAL PRIMARY KEY,
  "DepartmentName" TEXT,
  "Building" TEXT
  );

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

CREATE TABLE "Products" (
  "Id" SERIAL PRIMARY KEY,
  "Price" DECIMAL,
  "Name" TEXT,
  "Description" TEXT,
  "QuantityInStock" INT,
);

CREATE TABLE "Orders" (
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT,
  "DatePlaced" DATE,
  "Email" TEXT
);

CREATE TABLE "ProductOrders" (
  "Id" SERIAL PRIMARY KEY,
  "ProductId" INTEGER REFERENCES "Products" ("Id"),
  "OrderId" INTEGER REFERENCES "Orders" ("Id")
);

INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Development', 'Main');

INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Marketing', 'North');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") 
VALUES ('Tim Smith', 40000, 'Programmer', '123', false, 1);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") 
VALUES ('Barbara Ramsey', 80000, 'Manager', '234', false, 1);

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId") 
VALUES ('Tom Jones', 32000, 'Admin', '456', true, 2);

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock") 
VALUES (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock") 
VALUES (99.99, 'Flowbee', 'Perfect for haircuts', 3);

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email") 
VALUES ('X529', '2020-01-01', 'person@example.com');

ALTER TABLE "ProductOrders" ADD COLUMN "OrderQuantity" INT;

INSERT INTO "ProductOrders"  ("ProductId", "OrderId") VALUES (1, 1)

UPDATE "ProductOrders" set "OrderQuantity" = 3 where "Id" in (1)

INSERT INTO "ProductOrders"  ("ProductId", "OrderId") VALUES (2, 1)

UPDATE "ProductOrders" set "OrderQuantity" = 2 where "Id" in (2)

SELECT *
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'North';

SELECT "Orders"."OrderNumber", "Products"."Name"
FROM "Orders"
JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."Id"
JOIN "Products" on "Products"."Id" = "ProductOrders"."ProductId"
WHERE "Products"."Id" = 2;

SELECT "Orders"."OrderNumber", "ProductOrders"."OrderQuantity", "Products"."Name"
FROM "Orders"
JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."Id"
JOIN "Products" on "Products"."Id" = "ProductOrders"."ProductId"
WHERE "Products"."Name" = 'Flowbee' AND "Orders"."OrderNumber" = 'X529';
