CREATE DATABASE Complaint_Portal;
CREATE TABLE Complaint_Portal.complaint_table(
	id INT(10) NOT NULL AUTO_INCREMENT,
	username VARCHAR(20) NOT NULL,
	complaint VARCHAR(50) NOT NULL,
	time TIMESTAMP NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id)
	);
