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

insert into review values('1','BORA','����','����','��������',SYSDATE,'5','�ȳ��ϼ�������','��¥ �̰Ÿ� �ϰ� �����ؾߵǤФФ� ��¥��̤̤�');
insert into review values('2','BORA1','����','����','��������',SYSDATE,'3','�����ϼ�������','�����ؾߵǤФФ� ��¥��̤̤�');
insert into review values('3','EUNJI','����','�λ�','��������~',SYSDATE,'4','����������','���κκκκ֤��κΤФФ� ��¥��̤̤�');


select * from place;



