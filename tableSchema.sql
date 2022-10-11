--Creating Entity Tables:

CREATE TABLE Medical_Clinic(
	Clinic_Name VARCHAR(30),
Clinic_Number INTEGER PRIMARY KEY,
	Clinic_Location VARCHAR(30),
Clinic_Phone_Number INTEGER UNIQUE
);


CREATE TABLE Doctor(
	Doctor_Name VARCHAR(20),
Empl_Number INTEGER PRIMARY KEY,
Ext_Number INTEGER UNIQUE,
	Specialty VARCHAR(20),
	Doctor_Location VARCHAR(30) --Same as Medical Clinic Location
);


CREATE TABLE Patient(
	Patient_Phone_Number INTEGER UNIQUE,
	OHIP VARCHAR(12) PRIMARY KEY,
	Birthdate DATE,
	Patient_Age INTEGER,
	Patient_Name VARCHAR(20),
	Patient_Location VARCHAR(30)
);



--Creating Relationship Tables:

CREATE TABLE works_for(
	Start_Date DATE,
	Empl_Number INTEGER PRIMARY KEY,
	Clinic_Number INTEGER
);


CREATE TABLE patron_of(
	Register_Date DATE,
	OHIP VARCHAR(12) PRIMARY KEY,
	Clinic_Number INTEGER
);


CREATE TABLE patient_of (
	OHIP VARCHAR(12) PRIMARY KEY,
	Empl_Number INTEGER
);
