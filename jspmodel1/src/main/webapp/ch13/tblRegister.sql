CREATE TABLE `tblRegister` (
	`id` VARCHAR(20) NOT NULL,
	`pwd` VARCHAR(20) NOT NULL,
	`name` CHAR(6) NULL DEFAULT NULL,
	`num1` CHAR(6) NULL DEFAULT NULL,
	`num2` CHAR(7) NULL DEFAULT NULL,
	`email` VARCHAR(30) NULL DEFAULT NULL,
	`phone` VARCHAR(30) NULL DEFAULT NULL,
	`zipcode` CHAR(5) NULL DEFAULT NULL,
	`address` VARCHAR(60) NULL DEFAULT NULL,
	`job` VARCHAR(30) NULL DEFAULT NULL
);


insert into tblregister VALUES(
'abc', '1234', '야스오1', '123456', '1234567', 'abc@naver.com',
'010-1234-1234','12345', '부산시연제구', '개발자');

insert into tblregister VALUES(
'ddd', '1234', '야스오2', '123456', '1234567', 'ddd@naver.com',
'010-1234-1234','12345', '부산시연제구', '개발자');

insert into tblregister VALUES(
'kkui', '1234', '야스오3', '123456', '1234567', 'kkui@naver.com',
'010-1234-1234','12345', '부산시연제구', '개발자');
