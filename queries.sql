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