-- Creating tables for District_Data
CREATE TABLE district_demographics (
	district VARCHAR(90) NOT NULL,
	county VARCHAR (90) NOT NULL,
	district_type VARCHAR (40) NOT NULL,
	enrollment INT NOT NULL,
	FRL DECIMAL(4,1) NOT NULL,
	disadv DECIMAL(5,2),
	EL DECIMAL(3,1),
	grad DECIMAL(4,1),
	teach_to_stud DECIMAL(4,1),
	susp DECIMAL(3,1),
	chronic_absent DECIMAL(3,1),
	per_pupil_exp INT,
	teacher_salary INT,
	Avg_yrs_teaching INT,
	PRIMARY KEY (district),
	UNIQUE (district)
);
CREATE TABLE district_scores (
	district VARCHAR(90) NOT NULL,
	Math_metAbove DECIMAL(4,2),
	ELA_metAbove DECIMAL(4,2),
FOREIGN KEY (district) REFERENCES district_demographics (district),
	PRIMARY KEY (district)
);