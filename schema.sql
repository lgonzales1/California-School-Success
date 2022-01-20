-- Creating tables for Dristict_Data
CREATE TABLE district_demographics (
	district VARCHAR(90) NOT NULL,
	county VARCHAR (90) NOT NULL,
	district_type VARCHAR (20) NOT NULL,
	enrollment INT NOT NULL,
	FRL DECIMAL(3,2) NOT NULL,
	disadv DECIMAL(3,2),
	EL INT,
	grad DECIMAL(3,2),
	teach_to_stud INT,
	susp DECIMAL(3,2),
	chronic_absent INT,
	per_pupil_exp INT,
	teacher_salary INT,
	Avg_yrs_teaching INT,
	PRIMARY KEY (district),
	UNIQUE (district)
);
CREATE TABLE district_scores (
	district VARCHAR(90) NOT NULL,
	Math_metAbove INT,
	ELA_metAbove INT,
FOREIGN KEY (district) REFERENCES district_demographics (district),
	PRIMARY KEY (district)
);