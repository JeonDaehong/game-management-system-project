CREATE DATABASE GMS;

USE GMS;

CREATE TABLE T_SHOPPING_MEMBER(
    MEMBER_ID 			VARCHAR(20) PRIMARY KEY,
    MEMBER_PW 			VARCHAR(1000),
	MEMBER_NAME 		VARCHAR(50),
	MEMBER_GENDER 		VARCHAR(10),
	MEMBER_BIRTH_Y 		VARCHAR(20),
	MEMBER_BIRTH_M 		VARCHAR(20),
	MEMBER_BIRTH_D 		VARCHAR(20),
	MEMBER_BIRTH_GN 	VARCHAR(20),
	TEL1 				VARCHAR(20),
    TEL2 				VARCHAR(20),
	TEL3 				VARCHAR(20),
	HP1 				VARCHAR(20),
	HP2 				VARCHAR(20),
	HP3 				VARCHAR(20),
	SMSSTS_YN 			VARCHAR(20),
	EMAIL1 				VARCHAR(20),
	EMAIL2 				VARCHAR(20),
	EMAILSTS_YN 		VARCHAR(20),
	ZIPCODE 			VARCHAR(20),
	ROADADDRESS 		VARCHAR(500),
	JIBUNADDRESS 		VARCHAR(500),
	NAMUJIADDRESS 		VARCHAR(500),
	JOIN_DATE 			DATE,
    CONSENT_OR_NOT      VARCHAR(20),
    ATTENDANCE          INT,
    DELETE_ACCOUNT		DATE,
    ATTENDANCE_CHECK	INT
);

CREATE TABLE T_ADMIN_NOTICE(
	NUM 		INT AUTO_INCREMENT PRIMARY KEY,
    WRITER 		VARCHAR(50),
    SUBJECT 	VARCHAR(50),
    REG_DATE 	DATE,
    READ_COUNT  INT,
   	CONTENT 	VARCHAR(2000),
    CUT_CONTENT VARCHAR(80),
    SUGGESTION  INT
);

CREATE TABLE T_NOTICE_SUGGESTION (
	MEMBER_ID VARCHAR(30),
    NOTICE_NUM INT
)

CREATE TABLE T_IMG_BOARD (
	NUM INT AUTO_INCREMENT PRIMARY KEY,
	MEMBER_ID VARCHAR(50),
	SUBJECT VARCHAR(20),
	FILE_NAME VARCHAR(2000),
	CONTENT VARCHAR(200),
    READ_COUNT INT,
    REG_DATE DATE
);

CREATE TABLE T_IMG_SUGGESTION (
	MEMBER_ID VARCHAR(20),
    FILE_NAME VARCHAR(2000)
);