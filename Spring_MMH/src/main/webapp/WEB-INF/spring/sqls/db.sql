"멤버  시퀀스 / 테이블 / SNS 테이블 삭제"
DROP SEQUENCE MMH_MEMBER_SEQ;
DROP TABLE MMH_MEMBER;
DROP TABLE MMH_MEMBER_SNS;

"멤버 시퀀스 생성"
CREATE SEQUENCE MMH_MEMBER_SEQ;

"멤버 테이블 생성"
CREATE TABLE MMH_MEMBER(
	M_NO NUMBER PRIMARY KEY,
	M_ID VARCHAR2(20) NOT NULL,
	M_PW VARCHAR2(20) NOT NULL,
	M_NAME VARCHAR2(20),
	M_EMAIL VARCHAR2(40) NOT NULL,
	M_ADDRESS VARCHAR2(200),
	M_JOIN CHAR(1) CHECK (M_JOIN IN('Y','N')),
	M_GRADE CHAR(1) CHECK(M_GRADE IN ('U','A'))
	"M_ADDRESS2 VARCHAR2(200)"
);
INSERT INTO MMH_MEMBER VALUES(MMH_MEMBER_SEQ.NEXTVAL, 'dada01', '1234', '다다01', 'xldksps4@naver.com', '경기도 일산동구 정발산동 1238-3', 'N', 'A', '3층');
"M_ADDRESS2 VARCHAR2(200)"
--ALTER TABLE MMH_MEMBER(M_ADDRESS2 VARCHAR2(200));
--select * from MMH_MEMBER;
"SNS 멤버 테이블 생성"
CREATE TABLE MMH_MEMBER_SNS(
	M_NO NUMBER PRIMARY KEY,
	M_ID VARCHAR2(20),
	M_PW VARCHAR2(20),
	M_NAME VARCHAR2(20),
	M_EMAIL VARCHAR2(40),
	M_ADDRESS VARCHAR2(200),
	M_JOIN CHAR(1) CHECK(M_JOIN IN('Y','N')),
	M_GRADE CHAR(1) CHECK(M_GRADE IN ('U','A'))
);


"프로젝트 시퀀스 / 테이블 제거"
DROP SEQUENCE MMH_PROJECT_MAIN_SEQ;
DROP SEQUENCE MMH_PROJECT_SEQ;
DROP TABLE MMH_PROJECT_MAIN;

"프로젝트 시퀀스 생성"
CREATE SEQUENCE MMH_PROJECT_MAIN_SEQ;
CREATE SEQUENCE MMH_PROJECT_SEQ;

"프로젝트 테이블 생성"
CREATE TABLE MMH_PROJECT_MAIN(
	O_P_NO NUMBER PRIMARY KEY,
	P_M_NO NUMBER,
	P_M_ID VARCHAR2(20) NOT NULL,
	P_M_PAYMENT CHAR(1) CHECK(M_P_PAYMENT IN ('Y','N')) NOT NULL,
	P_DATESTART DATE,
	P_DATEEND DATE,
	P_CODE VARCHAR2(20)
);
select * from MMH_PROJECT_MAIN;
--INSERT INTO MMH_PROJECT_MAIN VALUES(450, 450, 'TEST0005', 'N', '2020-03-24', '2020-05-20', 'abcdef');

"관리자 시퀀스 / 테이블 삭제"
DROP SEQUENCE MMH_ADMIN_SEQ;
DROP TABLE MMH_ADMIN;


DROP SEQUENCE MYNOSEQ;
DROP TABLE MYBOARD;
"공지사항 시퀀스"
CREATE SEQUENCE MYNOSEQ;
"공지사항 테이블"
CREATE TABLE MYBOARD(
   MYNO NUMBER PRIMARY KEY,
   MYNAME VARCHAR2(1000) NOT NULL,
   MYTITLE VARCHAR2(2000) NOT NULL,
   MYCONTENT VARCHAR2(4000) NOT NULL,
   MYDATE DATE NOT NULL
);

"유저 프로젝트 그룹 테이블 삭제"
DROP TABLE MMH_PROJECT_GROUP;

"유저 프로젝트 그룹 테이블 생성"
CREATE TABLE MMH_PROJECT_GROUP(
	O_P_NO NUMBER REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	M_NO NUMBER REFERENCES MMH_MEMBER(M_NO)
);
--SELECT * FROM MMH_PROJECT_GROUP;
"게시판 시퀀스 / 테이블 삭제"
DROP SEQUENCE MMH_NOTE_SEQ;

DROP TABLE MMH_NOTE;

"서머노트 인덱스 사용 위한 시퀀스"
CREATE SEQUENCE MMH_NOTE_SEQ
MINVALUE 1 MAXVALUE 9999999999999999999999999999
INCREMENT BY 1 START WITH 1 NOCACHE;
--O_P_NO, N_NO, N_CONTENT, N_WIDTH, N_HEIGHT, N_TOP, N_LEFT, N_Z
CREATE TABLE MMH_NOTE(
	O_P_NO REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	N_NO NUMBER,
	N_TITLE VARCHAR2(200),
	N_WRITER VARCHAR2(50),
	N_CONTENT VARCHAR2(4000)
);

--INSERT INTO MMH_NOTE VALUES(450, MMH_NOTE_SEQ.NEXTVAL, '제목입니다', '작성자(ID입니다)', '앍앍앍앍앍앍앍앍');
--SELECT * FROM MMH_NOTE;
"포스트 잇 테이블 삭제"
DROP TABLE MMH_POIT;

"포스트 잇 테이블 생성"
CREATE TABLE MMH_POIT(
	O_P_NO NUMBER REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	PO_NO NUMBER,
	PO_GRIDID VARCHAR2(100),
	PO_CONTENT VARCHAR2(1000),
	PO_WIDTH FLOAT,
	PO_HEIGHT FLOAT,
	PO_TOP FLOAT,
	PO_LEFT FLOAT,

);

"피드백 테이블 삭제"
DROP TABLE MMH_FEEDBACK YUNY ;

"피드백 테이블 생성"
CREATE TABLE MMH_FEEDBACK(
	O_P_NO NUMBER REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	FE_R_NAME VARCHAR2(100),
	FE_R_PATH VARCHAR2(1000)
);

"이미지 or PDF 테이블 삭제"
DROP TABLE MMH_IMG_OR_PDF;

"이미지 or PDF 테이블 생성"
CREATE TABLE MMH_IMG_OR_PDF(
	O_P_NO REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	IMG_NAME VARCHAR2(100),
	IMG_PATH VARCHAR2(1000)
);

"음성인식 테이블 삭제"
DROP TABLE MMH_RECORD;

"음성인식 테이블 생성"
CREATE TABLE MMH_RECORD(
	O_P_NO REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	RE_NAME VARCHAR2(100),
	RE_PATH VARCHAR2(1000),
	RE_CONTENT VARCHAR2(4000),
	RE_TRANS_CONTENT VARCHAR2(4000)
);

"마인드맵 테이블 삭제"
DROP TABLE MMH_MIND;

"마인드맵 테이블 생성"
CREATE TABLE MMH_MIND(
	O_P_NO REFERENCES MMH_PROJECT_MAIN(O_P_NO),
	MI_NAME VARCHAR2(100),
	MI_ADDR VARCHAR2(1000),
	MI_WIDTH FLOAT,
	MI_HEIGHT FLOAT,
	MI_TOP FLOAT,
	MI_LEFT FLOAT,
	MI_Z FLOAT
);

 SELECT * FROM tab;