POSTGRES CODE

CREATING TABLES IN MY DATABASE:

CREATE TABLE admintb (
  username varchar(50) NOT NULL,
  password varchar(30) NOT NULL
);

INSERT INTO admintb (username, password) VALUES ('admin', 'admin123');

CREATE TABLE appointmenttb (
  pid integer NOT NULL,
  ID integer NOT NULL,
  fname varchar(20) NOT NULL,
  lname varchar(20) NOT NULL,
  gender varchar(10) NOT NULL,
  email varchar(30) NOT NULL,
  contact varchar(10) NOT NULL,
  doctor varchar(30) NOT NULL,
  docFees integer NOT NULL,
  appdate date NOT NULL,
  apptime time NOT NULL,
  userStatus integer NOT NULL,
  doctorStatus integer NOT NULL
);

INSERT INTO appointmenttb (pid, ID, fname, lname, gender, email, contact, doctor, docFees, appdate, apptime, userStatus, doctorStatus) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1);

CREATE TABLE contact (
name varchar(30) NOT NULL,
email text NOT NULL,
contact varchar(10) NOT NULL,
message varchar(200) NOT NULL
);

INSERT INTO contact (name, email, contact, message) VALUES 
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
('Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');


CREATE TABLE doctb (
username varchar(50) NOT NULL,
password varchar(50) NOT NULL,
email varchar(50) NOT NULL,
spec varchar(50) NOT NULL,
docFees integer NOT NULL
);

INSERT INTO doctb (username, password, email, spec, docFees) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450);

CREATE TABLE patreg (
pid integer NOT NULL,
fname varchar(20) NOT NULL,
lname varchar(20) NOT NULL,
gender varchar(10) NOT NULL,
email varchar(30) NOT NULL,
contact varchar(10) NOT NULL,
password varchar(30) NOT NULL,
cpassword varchar(30) NOT NULL
);

INSERT INTO patreg (pid, fname, lname, gender, email, contact, password, cpassword) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123');

CREATE TABLE prestb (
doctor varchar(50) NOT NULL,
pid int NOT NULL,
ID int NOT NULL,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
appdate date NOT NULL,
apptime time without time zone NOT NULL,
disease varchar(250) NOT NULL,
allergy varchar(250) NOT NULL,
prescription varchar(1000) NOT NULL
);

INSERT INTO prestb (doctor, pid, ID, fname, lname, appdate, apptime, disease, allergy, prescription) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--------------------

SETTING PRIMARY AND FOREIGN KEYS:

ALTER TABLE appointmenttb
  ADD PRIMARY KEY (ID);

ALTER TABLE patreg
  ADD PRIMARY KEY (pid);

ALTER TABLE appointmenttb
  ALTER COLUMN ID SET DATA TYPE SERIAL PRIMARY KEY;

ALTER TABLE patreg
  ALTER COLUMN pid SET DATA TYPE SERIAL PRIMARY KEY;

-- Assuming 'patreg' is the referenced table and 'pid' is the primary key
ALTER TABLE prestb
ADD CONSTRAINT fk_prestb_pid
FOREIGN KEY (pid)
REFERENCES patreg (pid);

-- Assuming 'appointmenttb' is the referenced table and 'ID' is the primary key
ALTER TABLE prestb
ADD CONSTRAINT fk_prestb_ID
FOREIGN KEY (ID)
REFERENCES appointmenttb (ID);

-- Assuming 'patreg' is the referenced table and 'pid' is the primary key
ALTER TABLE appointmenttb
ADD CONSTRAINT fk_appointmenttb_pid
FOREIGN KEY (pid)
REFERENCES patreg (pid);

-- Assuming 'doctb' is the referenced table and 'docFees' is the primary key
ALTER TABLE appointmenttb
ADD CONSTRAINT fk_appointmenttb_docFees
FOREIGN KEY (docFees)
REFERENCES doctb (docFees);

-- Assuming 'userStatus' is the foreign key column referencing 'userstatus' table
ALTER TABLE appointmenttb
ADD CONSTRAINT fk_appointmenttb_userStatus
FOREIGN KEY (userStatus)
REFERENCES userstatus (userStatus);

-- Assuming 'doctorStatus' is the foreign key column referencing 'doctorstatus' table
ALTER TABLE appointmenttb
ADD CONSTRAINT fk_appointmenttb_doctorStatus
FOREIGN KEY (doctorStatus)
REFERENCES doctorstatus (doctorStatus);

-----------------

ASSIGNING ROLES AND GRANTING PRIVILEGES:

CREATE ROLE doctor WITH LOGIN PASSWORD 'doctor123';
CREATE ROLE patient WITH LOGIN PASSWORD 'patient123';
CREATE ROLE receptionist WITH LOGIN PASSWORD 'receptionist123';
CREATE ROLE kate WITH LOGIN PASSWORD 'jessikat45';

ALTER ROLE kate SUPERUSER CREATEDB CREATEROLE REPLICATION BYPASSRLS;

-- Grant privileges to user kate on all tables in myhmsdb database
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO kate;

-- Grant INSERT, SELECT, and UPDATE privileges on admintb table to receptionist
GRANT INSERT, SELECT, UPDATE ON TABLE public.admintb TO receptionist;

-- Grant INSERT, SELECT, and UPDATE privileges on contact table to receptionist
GRANT INSERT, SELECT, UPDATE ON TABLE public.contact TO receptionist;

-- Grant INSERT and SELECT privileges on contact table to doctor
GRANT INSERT, SELECT ON TABLE public.contact TO doctor;

-- Grant INSERT and SELECT privileges on contact table to patient
GRANT INSERT, SELECT ON TABLE public.contact TO patient;

-- Grant SELECT, INSERT, UPDATE, DELETE privileges on doctb table to receptionist
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.doctb TO receptionist;

-- Grant SELECT and INSERT privileges on doctb table to doctor
GRANT SELECT, INSERT ON TABLE public.doctb TO doctor;

-- Grant SELECT privilege on doctb table to patient
GRANT SELECT ON TABLE public.doctb TO patient;

-- Grant SELECT privilege on appointmenttb table to receptionist
GRANT SELECT ON TABLE public.appointmenttb TO receptionist;

-- Grant SELECT, INSERT, UPDATE, DELETE privileges on appointmenttb table to doctor
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.appointmenttb TO doctor;

-- Grant SELECT, INSERT, UPDATE, DELETE privileges on appointmenttb table to patient
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.appointmenttb TO patient;

-- Grant SELECT privilege on patreg table to receptionist
GRANT SELECT ON TABLE public.patreg TO receptionist;

-- Grant SELECT privilege on patreg table to doctor
GRANT SELECT ON TABLE public.patreg TO doctor;

-- Grant SELECT and INSERT privileges on patreg table to patient
GRANT SELECT, INSERT ON TABLE public.patreg TO patient;

-- Grant SELECT privilege on prestb table to receptionist
GRANT SELECT ON TABLE public.prestb TO receptionist;

-- Grant SELECT privilege on prestb table to doctor
GRANT SELECT ON TABLE public.prestb TO doctor;

-- Grant SELECT and UPDATE privileges on prestb table to doctor
GRANT SELECT, UPDATE ON TABLE public.prestb TO doctor;

--------------------

CREATE USER kate WITH PASSWORD 'jessikat45';
CREATE USER receptionist WITH PASSWORD 'receptionist123';
CREATE USER doctor WITH PASSWORD 'doctor123';
CREATE USER patient WITH PASSWORD 'patient123';

CREATE ROLE kate1;
CREATE ROLE receptionist1;
CREATE ROLE doctor1;
CREATE ROLE patient1;

CREATE ROLE kate1 LOGIN PASSWORD 'jessikat45';
CREATE ROLE receptionist1 LOGIN PASSWORD 'receptionist123';
CREATE ROLE doctor1 LOGIN PASSWORD 'doctor123';
CREATE ROLE patient1 LOGIN PASSWORD 'patient123';

-- Grant privileges to role kate1
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO kate1;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO kate1;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO kate1;

-- Grant privileges to role receptionist1
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO receptionist1;
-- Grant USAGE, SELECT on all sequences in schema public
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO receptionist1;

-- Grant privileges to role doctor1
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO doctor1;
REVOKE SELECT, INSERT, UPDATE, DELETE ON admintb FROM patient1;
-- Grant USAGE, SELECT on all sequences in schema public
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO doctor1;

-- Grant SELECT, INSERT, UPDATE, DELETE on all tables in schema public except admintb
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO patient1;
REVOKE SELECT, INSERT, UPDATE, DELETE ON admintb FROM patient1;
-- Grant USAGE, SELECT on all sequences in schema public
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO patient1;

---------------------

CREATE VIEW appointmenttb_view AS
SELECT ID, pid, appid, apptime
FROM appointmenttb;

CREATE VIEW doctb_view AS
SELECT username, spec, docFees
FROM doctb_view;

CREATE VIEW prestb_view AS
SELECT doctor, fname, lname, disease, allergy, prescription
FROM prestb_view;

----------------------------------

CREATE OR REPLACE FUNCTION GetPatientCount() RETURNS INT AS $$
DECLARE 
    count INT;
BEGIN
    SELECT COUNT(*) INTO count FROM patreg;
    RETURN count;
END $$ LANGUAGE plpgsql;

SELECT GetPatientCount();

-------------------------------

CREATE OR REPLACE FUNCTION docFeesUpdate()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW."docFees" < 3000 THEN
        NEW."docFees" := 3000; -- Set minimum fee to 3000
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER docFeesUpdateTrigger
BEFORE INSERT ON doctb
FOR EACH ROW
EXECUTE FUNCTION docFeesUpdate();

SELECT * FROM doctb;

---------------------------------













