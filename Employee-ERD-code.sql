-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/l1wsEs
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Gym" (
    "ID" INTEGER   NOT NULL,
    "Gym_Name" VARCHAR   NOT NULL,
    "Address" VARCHAR   NOT NULL,
    "City" VARCHAR   NOT NULL,
    "Zipcode" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Gym" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Trainers" (
    "ID" INTEGER   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Trainers" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Members" (
    "ID" INTEGER   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Address" VARCHAR   NOT NULL,
    "City" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Members" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Payments" (
    "ID" INTEGER   NOT NULL,
    "CreditCard_Info" INTEGER   NOT NULL,
    "Billing_Zip" INTEGER   NOT NULL,
    CONSTRAINT "pk_Payments" PRIMARY KEY (
        "ID"
     )
);

