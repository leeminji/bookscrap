
/* Create Tables */

CREATE TABLE BOARD_FILE
(
	BO_TABLE varchar2(100),
	BO_IDX number(10),
	BF_NO number(10),
	BF_FILE varchar2(500),
	BF_SOURCE varchar2(500),
	BF_DOWNLOAD number(5),
	BF_CONTENT varchar2(500),
	BF_FILESIZE number(10),
	BF_DATETIME date
);



CREATE TABLE BOARD_NOTICE
(
	BO_IDX number(10,0) NOT NULL,
	BO_WRITER varchar2(20),
	BO_MEMBER varchar2(10),
	BO_SUBJECT varchar2(200),
	BO_CONTENT varchar2(2000),
	BO_IS_SECRET number(1,0),
	BO_IS_NOTICE number(1,0),
	BO_FILE varchar2(20),
	BO_PASS varchar2(300),
	BO_REF number(10,0),
	BO_LEVEL number(10,0),
	BO_STEP number(5,0),
	BO_HIT number(10,0),
	BO_REGDATE date,
	BO_IS_VIEW number(1,0),
	BO_IP varchar2(20),
	BO_1 varchar2(200),
	BO_2 varchar2(200),
	BO_3 varchar2(200),
	BO_4 varchar2(200),
	BO_5 varchar2(200),
	BO_TAG varchar2(500),
	PRIMARY KEY (BO_IDX)
);


CREATE TABLE BOARD_OPTION
(
	OP_IDX number(10,0) NOT NULL,
	OP_NAME varchar2(20) NOT NULL,
	OP_TABLE varchar2(10) NOT NULL,
	OP_SKIN varchar2(20),
	OP_ADM_SKIN varchar2(20),
	OP_IS_SECRET number(1,0) DEFAULT 0,
	OP_IS_IP number(1,0) DEFAULT 0,
	OP_IS_SIGN number(1,0) DEFAULT 0,
	OP_NEW_DATE number(5,0) DEFAULT 24,
	OP_REGDATE date DEFAULT sysdate,
	OP_VIEW_LEVEL number(2,0) DEFAULT 0,
	OP_LIST_LEVEL number(2,0) DEFAULT 0,
	OP_WRITE_LEVEL number(2,0) DEFAULT 0,
	OP_COMMENT_LEVEL number(2,0) DEFAULT 0,
	OP_REPLY_LEVEL number(2,0) DEFAULT 0,
	OP_PAGE_LENGTH number(2,0) DEFAULT 10,
	OP_IS_PREVIEW number(1,0) DEFAULT 0,
	OP_IS_NOTICE number(1,0) DEFAULT 0,
	OP_CATE varchar2(1000),
	OP_IMG_WIDTH number(5,0),
	OP_THUMB varchar2(20),
	PRIMARY KEY (OP_IDX, OP_TABLE)
);




CREATE TABLE CONFIG
(
	CF_TITLE varchar2(30),
	CF_ADMIN varchar2(20),
	CF_ADMIN_EMAIL varchar2(50),
	CF_ADMIN_NAME varchar2(20),
	CF_ADDR varchar2(50),
	CF_TEL varchar2(20),
	CF_INFO1 varchar2(100),
	CF_INFO2 varchar2(100),
	CF_INFO3 varchar2(100),
	CF_USE_ADDR number(1,0) DEFAULT 0,
	CF_USE_TEL number(1,0) DEFAULT 0,
	CF_USE_HP number(1,0) DEFAULT 0,
	CF_PRIVACY varchar2(4000),
	CF_SERVICE varchar2(4000)
);


CREATE TABLE LOGIN
(
	LO_IP varchar2(20),
	MB_ID varchar2(20),
	LO_REGDATE date,
	LO_LOCATION varchar2(500),
	LO_URL varchar2(500)
);


CREATE TABLE MEMBER
(
	MB_IDX number(6) AUTO_INCREMENT NOT NULL,
	MB_ID varchar2(20) NOT NULL,
	MB_PASS varchar2(300) NOT NULL,
	MB_NAME varchar2(20) NOT NULL,
	MB_EMAIL varchar2(30) NOT NULL,
	MB_REGDATE date DEFAULT sysdate,
	MB_LASTEST date DEFAULT sysdate,
	MB_BIRTH varchar2(10),
	MB_ZIP varchar2(10),
	MB_ADDR1 varchar2(100),
	MB_ADDR2 varchar2(100),
	MB_MAILING number(1,0) DEFAULT 0,
	MB_LEVEL number(2,0) DEFAULT 1,
	MB_TEL varchar2(20),
	MB_HP varchar2(20),
	MB_SALT varchar2(300),
	PRIMARY KEY (MB_IDX)
);


CREATE TABLE MENU
(
	ME_IDX number(10,0) AUTO_INCREMENT NOT NULL,
	ME_NUM number(5,0) DEFAULT 0,
	ME_CODE varchar2(20) NOT NULL,
	ME_NAME varchar2(30) NOT NULL,
	ME_LINK varchar2(100),
	ME_IS_VIEW number(1,0) DEFAULT 0,
	ME_IS_TARGET number(1,0) DEFAULT 0,
	ME_CONTENT varchar2(1000),
	PRIMARY KEY (ME_IDX)
);


CREATE TABLE POPUP
(
	PO_IDX number(10,0) AUTO_INCREMENT NOT NULL,
	PO_DEVICE varchar2(10),
	PO_BEGIN_TIME date,
	PO_END_TIME date,
	PO_DISABLE_HOURS number(10,0),
	PO_LEFT number(10,0),
	PO_TOP number(10,0),
	PO_HEIGHT number(10,0),
	PO_WIDTH number(10,0),
	PO_SUBJECT varchar2(1000),
	PO_CONTENT varchar2(4000),
	PRIMARY KEY (PO_IDX)
);


CREATE TABLE VISIT
(
	VI_IDX number(10,0) AUTO_INCREMENT NOT NULL,
	VI_IP varchar2(20),
	VI_REGDATE date,
	VI_REFERER varchar2(200),
	VI_AGENT varchar2(100),
	VI_BROWER varchar2(100),
	VI_OS varchar2(100),
	VI_DEVICE varchar2(100),
	PRIMARY KEY (VI_IDX)
);
