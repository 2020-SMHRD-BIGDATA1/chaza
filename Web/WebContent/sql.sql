CREATE TABLE PLACE(
			   PLACE_ID NUMBER 					NOT NULL,
               PLACE_NAME VARCHAR2(100),
               PLACE_ADDR VARCHAR2(200)         NOT NULL,
               TOILET CHAR(10)                  NOT NULL,
               SINK CHAR(10)                  NOT NULL,
               WATER CHAR(10)                  NOT NULL,
               TITLE VARCHAR2(1000),
               CONTENTS VARCHAR2(1000),
               PLACE_SCORE NUMBER               NOT NULL,
               CONSTRAINT PLACE_NAME_PK PRIMARY KEY(PLACE_NAME)
)


CREATE TABLE review(
REVIEW_NUM	NUMBER,
REVIEW_ID	VARCHAR2(100),
START_LOCATION	VARCHAR2(100),
DEST_LOCATIONS	VARCHAR2(100),
REVIEW_PLACE_NAME	VARCHAR2(100),
REVIEW_DATE DATE,
REVIEW_RUNTIME NUMBER,
REVIEW_RESTTIME NUMBER,
REVIEW_SCORE	NUMBER,
TITLE  VARCHAR2(300),
CONTENTS	VARCHAR2(1000)
)

insert into review values('1','BORA','서울','광주','씨지아이',SYSDATE,'5','안녕하세유유ㅠ','진짜 이거만 하고 공부해야되ㅠㅠㅠ 진짜루ㅜㅜㅜ');
insert into review values('2','BORA1','광주','서울','씨지아이',SYSDATE,'3','리리하세유유ㅠ','공부해야되ㅠㅠㅠ 진짜루ㅜㅜㅜ');
insert into review values('3','EUNJI','광주','부산','씨지아이~',SYSDATE,'4','라랄ㄹ라라라롸','공부부부부붑ㅂ부부ㅠㅠㅠ 진짜루ㅜㅜㅜ');


select * from place;



