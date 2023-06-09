--Student--

INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('1','Adam', 'Fridberg', '28', '111122334444', '15213', 'City1', 'Street 1');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('2','Simon', 'Anders', '19', '123422334444', '15222', 'City22', 'Street 22');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('3','Dilmon', 'Isak', '19', '123522334444', '15222', 'City22', 'Street 22');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('4','Filmon', 'Isak', '19', '123622334444', '15222', 'City22', 'Street 22');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('5','Simon', 'Simonsson', '19', '123722334444', '15227', 'City27', 'Street 27');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('6','Daniel', 'Mebrahtu', '21', '190101011234', '16555', 'Stockholm', 'Stockholm 1');

INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('7','Viktor', 'Merhaba', '24', '190202025678', '16555', 'Stockholm', 'Stockholm 2');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('8','David', 'Ibbe', '19', '123422333244', '15222', 'City24', 'Street 21');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('9','Sandra', 'Balil', '24', '999988776655', '99988', 'City99', 'Street 88');
INSERT INTO "student" ("id","first_name", "last_name", "age", "social_security_number", "zip_code","city", "street")
VALUES ('10','Jontathan', 'Simonsson', '19', '123722338756', '15227', 'City27', 'Street 27');



--Instruments--
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES (1,'Trombon', 'KTH', '1299',  '1');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('2','Piano', 'Yamaha', '2000', '2');

INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('3','Piano', 'Yamaha', '2500', '3');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('4','Gitarr', 'Fender', '1000', '4');

INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('5','Saxofon', 'Fender', '1000', '5');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('6','Saxofon', 'KTH', '500', '6');

INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('7','Följt', 'KTH', '222', '7');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('8','Fiol', 'KTH', '1100', '8');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('9','Maracas', 'Hawaii', '299', '9');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price", "student_id")
VALUES ('10','Maracas', 'Wooden', '148', '10');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price")
VALUES ('11','Trombon', 'KTH', '1299');
INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price")
VALUES ('12','Trombon', 'Hasselby', '1299');

INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price")
VALUES ('13','Trombon', 'Kth', '1299' );

INSERT INTO "rental_of_instrument" ("id","type_of_instrument", "brand", "price")
VALUES ('14','Trombon', 'Kth', '1299' );




--Lease period--
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('1', '2', '2021-02-20', 'False');
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('2', '2', '2021-01-24', 'False');
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('3', '2', '2021-02-01', 'False');
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('4', '2', '2021-02-15', 'False');
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('5', '2', '2021-03-04', 'False');
INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('6', '2', '2021-03-15', 'False');

INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('7', '2', '2021-03-17', 'False');

INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('8', '2', '2021-03-25', 'False');

INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('9', '2', '2021-03-28', 'False');

INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('10', '2', '2021-04-18', 'True');

INSERT INTO "lease_period" ("rental_of_instrument_id","max_lease_period", "start_of_rental","teminated")
VALUES ('1', '2', '2020-07-07', 'True');







--instructor--
INSERT INTO "instructor" ("id","first_name", "last_name", "social_security_number", "zip_code","city", "street")
VALUES('1', 'Stefan', 'Larsson', '198707082596', '16551', 'Duvbogatan', 'Stockholm');
INSERT INTO "instructor" ("id","first_name", "last_name", "social_security_number", "zip_code","city", "street")
VALUES('2', 'Sofia', 'Knutberg', '196902080011', '16554', 'Bondegatan', 'Uppsala');
INSERT INTO "instructor" ("id","first_name", "last_name", "social_security_number", "zip_code","city", "street")
VALUES ('3', 'Hamid', 'Haider', '196802121234', '12321', 'Farsta', 'Farstagatan');
INSERT INTO "instructor" ("id","first_name", "last_name", "social_security_number", "zip_code","city", "street")
VALUES ('4', 'Petter', 'Hakansson', '197107111177', '16268', 'Vallingby', 'Aprikosgatan');
INSERT INTO "instructor" ("id","first_name", "last_name", "social_security_number", "zip_code","city", "street")
VALUES('5', 'Bereket', 'Tesfu', '195903213657', '16552', 'Astrakangatan', 'Stockholm');



--individual_lesson--
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('1', '1', '99', NULL , '2021-02-20', '0', 'Intermediate');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('2', '2', '99', NULL , '2021-02-20', '0', 'Beginner');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('3', '3', '99', NULL , '2021-02-20', '0', 'Beginner');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('4', '1', '99', NULL , '2021-02-28', '0', 'Intermediate');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('5', '5', '149', NULL , '2021-02-28', '0', 'Advanced');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('6', '4', '99', NULL , '2021-02-28', '0', 'Intermediate');

INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('7', '1', '99', NULL , '2020-12-20', '0', 'Intermediate');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('8', '2', '99', NULL , '2020-12-18', '0', 'Beginner');
INSERT INTO "individual_lesson" ("id", "instructor_id", "price", "scheduled_time", "scheduled_date","weekend_extra_charge", "skill_level")
VALUES ('9', '3', '99', NULL , '2020-12-19', '0', 'Beginner');
--group_lesson--
INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('1', '1', NULL ,'99', NULL ,'2021-02-20', '50', '1', '0', 'Intermediate');
INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('2', '2', NULL ,'99', NULL ,'2021-02-21', '50', '1', '0', 'Beginner');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('3', '3', NULL ,'99', NULL ,'2021-02-21', '50', '1', '0', 'Beginner');
INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('4', '1', NULL ,'99', NULL ,'2021-03-29', '50', '1', '0', 'Intermediate');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('5', '5', NULL ,'99', NULL ,'2021-03-29', '50', '1', '0', 'Advanced');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('6', '4', NULL ,'99', NULL ,'2021-03-29', '50', '1', '0', 'Intermediate');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('7', '1', NULL ,'99', NULL ,'2020-12-21', '50', '1', '0', 'Intermediate');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('8', '2', NULL ,'99', NULL ,'2020-12-19', '50', '1', '0', 'Beginner');

INSERT INTO "group_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('9', '3', NULL ,'99', NULL ,'2020-12-20', '50', '1', '0', 'Beginner');


--ensamble_lesson--
INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('1', '1', NULL ,'99', NULL ,'2021-06-20', '50', '1', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('2', '2', NULL ,'99', NULL ,'2021-06-21', '50', '1', '0', 'Beginner');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('3', '3', NULL ,'99', NULL ,'2021-06-21', '50', '1', '0', 'Beginner');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('4', '1', NULL ,'99', NULL ,'2021-05-29', '50', '1', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('5', '5', NULL ,'99', NULL ,'2021-05-29', '50', '1', '0', 'Advanced');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('6', '4', NULL ,'99', NULL ,'2021-05-29', '50', '1', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('7', '1', NULL ,'99', NULL ,'2020-11-21', '50', '1', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('8', '2', NULL ,'99', NULL ,'2020-11-19', '50', '1', '0', 'Beginner');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","weekend_extra_charge",  "skill_level")
VALUES ('9', '3', NULL ,'99', NULL ,'2020-11-20', '50', '1', '0', 'Beginner');
--------------
--senare input--
INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","nr_of_students","weekend_extra_charge",  "skill_level")
VALUES ('10', '4', 'Piano','99', NULL ,'2021-05-10', '50', '1','49', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","nr_of_students","weekend_extra_charge",  "skill_level")
VALUES ('11', '1', 'Woodwind','99', NULL ,'2021-05-11', '50', '1','48', '0', 'Intermediate');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","nr_of_students","weekend_extra_charge",  "skill_level")
VALUES ('12', '2', 'Brass Instruments','99', NULL ,'2021-05-12', '50', '1','32', '0', 'Beginner');

INSERT INTO "ensamble_lesson" ("id", "instructor_id", "type", "price", "scheduled_time", "scheduled_date",
"maximum_amount_of_students", "minimum_amount_of_students","nr_of_students","weekend_extra_charge",  "skill_level")
VALUES ('13', '3', 'Guitar','99', NULL ,'2021-05-13', '50', '1','12', '0', 'Beginner');


--application--
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('1', 'Advanced', 'Trombon');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('2', 'Advanced', 'Piano');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('3', 'Advanced', 'Piano');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('4', 'Intermediate', 'Gitarr');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('5', 'Intermediate', 'Saxofon');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('6', 'Intermediate', 'Saxofon');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('7', 'Beginner', 'Följt');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('8', 'Beginner', 'Fiol');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('9', 'Beginner', 'Maracas');
INSERT INTO "application" ("student_id",  "skill_level", "instrument")
VALUES ('10', 'Beginner', 'Maracas');