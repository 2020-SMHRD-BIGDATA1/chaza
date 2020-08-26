SELECT * FROM MEMBER

DROP TABLE MEMBER CASCADE CONSTRAINT

CREATE TABLE MEMBER(
					MEMBER_ID VARCHAR(100),						-- ȸ�� ���̵�
					MEMBER_PW VARCHAR(100)			NOT NULL,	-- ��й�ȣ
					MEMBER_GENDER CHAR(20)			NOT NULL,	-- ����
					MEMBER_TEL VARCHAR2(20)			NOT NULL,	-- ȸ�� ����ó
					MEMBER_ADDR VARCHAR2(200)		NOT NULL,	-- ȸ�� �ּ�
					MEMBER_CAR_OWN CHAR(20),					-- ���� ���� ����
					MEMBER_CAR_MODEL VARCHAR2(100)			,	-- �����Ѵٸ� ���� ����?
					
					CONSTRAINT MEMBER_ID_PK PRIMARY KEY (MEMBER_ID)
)

insert into member values ('BORADORI','123','��','010-1234-1234','���ֱ����� ���� �۾ϵ�', '��', 'ī�Ϲ�');
insert into member values ('DONGGU','123','��','010-4567-4567','���ֱ����� ���� ���굿', '��', '��Ÿ����');
insert into member values ('SILVER','123','��','010-1111-1111','���ֱ����� ���걸 ���ϵ�', '�ƴϿ�', null);
insert into member values ('SOO','123','��','010-9999-9999','���ֱ����� ȿõ��', '��', '����');

SELECT * FROM PLACE WHERE PLACE_ID = 1

DROP TABLE PLACE

CREATE TABLE PLACE(
			   PLACE_ID NUMBER 					NOT NULL,		-- ������ ���̵�
               PLACE_NAME VARCHAR2(100)			NOT NULL,		-- ������ �̸�
               PLACE_CAT VARCHAR2(100)			NOT NULL,		-- ���� ī�װ�
               PLACE_ADDR VARCHAR2(200)         NOT NULL,		-- ������ �ּ�
               TOILET CHAR(20)                  NOT NULL,		-- ȭ��� ����
               SINK CHAR(20)                  NOT NULL,			-- �ֺ� ������ ����
               WATER CHAR(20)                  NOT NULL,		-- �ֺ� ������ ����
               TITLE VARCHAR2(100),								-- ������ ������
               CONTENTS VARCHAR2(1024),							-- ������ �Ұ���
               PLACE_SCORE NUMBER               NOT NULL,		-- ����(�� ���)
               
               CONSTRAINT PLACE_ID_PK PRIMARY KEY(PLACE_ID)
)



SELECT * FROM REVIEW

DROP TABLE REVIEW

CREATE TABLE REVIEW(
					REVIEW_NUMBER NUMBER,
					REVIEW_ID VARCHAR2(100)					NOT NULL,
					START_LOCATION VARCHAR2(200)			NOT NULL,
					DEST_LOCATION VARCHAR2(200)				NOT NULL,
					TRAVEL_TIME NUMBER,
					BREAK_TIME NUMBER,
					REVIEW_SCORE NUMBER						NOT NULL,
					REVIEW_TITLE VARCHAR2(100)				NOT NULL,
					REVIEW_CONTENTS VARCHAR2(1024),
					PLACE_NAME VARCHAR2(100)				NOT NULL,
					REVIEW_DATE DATE	DEFAULT SYSDATE,
					MAP_LAT FLOAT,
					MAP_LONG FLOAT,
					REVIEW_IMAGE VARCHAR2(100),
					
					CONSTRAINT REVIEW_NUMBER_PD PRIMARY KEY (REVIEW_NUMBER),
					CONSTRAINT REVIEW_ID_FK FOREIGN KEY (REVIEW_ID)
					REFERENCES MEMBER (MEMBER_ID)
)

insert into review values(1,'BORADORI','����Ư���� ������ õȣ��','���ֱ����� ��õ��',5,20,4,'�̰��� ����ΰ�','���� ��������� ���ڴ� ���� ��¥��','�������',SYSDATE,36.123123,128.789789,'img/��� ������ ����.png');
insert into review values(2,'DONGGU','���ֱ����� ���� ���굿','���� ���ֽ� ������ ������ 779',4,60,3,'���� ���� ���ð� �Ծ��!','��湮 �ǻ� �־�� �� ȣ�� ����ȿ','�ֹ� ������ ������',SYSDATE,36.123123,128.789789,'img/�ֹ� ������ ������ �α�.jpg');
insert into review values(3,'SILVER','���ֱ�����  ���걸 ���ϵ�','���� ö���� ������ ������ �� 304-2',2,30,5,'���� ���� �Ծ��','���� ��������� ���ڴ� ���� ��¥��','ö�� ������',SYSDATE,36.123123,128.789789,'img/ö�� ������1.jpg');
insert into review values(4,'SOO','���ֱ����� ȿõ��','�泲 �о�� ����� ���帮 922-1',5,20,4,'�̰��� ����ΰ�','�ʹ����� ���� �߾��� �������ֽ� Chaza�е鿡�� ����帳�ϴ�^^','���������',SYSDATE,36.123123,128.789789,'img/���������.jpg');


select * from place;
select * from PLACE where PLACE_CAT = '��⵵'
select * from PLACE where PLACE_CAT = '����'

INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (1,'��ź������ �ٸ���','��û��','��� ���ֽ� ��ô�� ���� 477-1','��밡��','��밡��','��밡��','�������� �Ƹ��ٿ� ���� ���!','����ȣ�� ���ԵǴ� ���Ѱ��� ������ �帣�� ���� ������ �ڿ��߻� ������������, ��û�ϵ� ���ֽ� ��ô�� ������ �ִ�. �ҳ�����������񿩿��õ�ҿ��� �� �� ����(����ź)�� ��췯���� ���̶� �Ͽ� ��ź�������� �Ѵ�. ����� ������ �ѷ��ο� �ְ�, ������� �Ʒ��� ��Ÿ��ó�� �귯���� ���� �ÿ������� �������� �������̴�.
������ ���� ������ �ۻ縮���ޱ⡤���� ���� ����Ⱑ ���� ���ø� ���⿡ ����, ������ ���� ��(�)�� �̷�� ���� �־� ����ö ������ ��ҷ� �����ϴ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (2,'�ⷯ�� ����','��û��','�泲 �ݻ걺 ������ õ���� 1007','��밡��','��밡��','��밡��','�ΰ������� ���� ��������!','������ ���� ġ��� �ٳ���� �ʹ� ���� �ⷯ�����, ���� �����ؼ� ���̵�� ��ħ���ﰡ�� ��ٰ� ������ �������� ���� ��', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (3,'�з�������','����','���� ��� �װ�� ���Ѹ� 1039','��밡��','��밡��','��밡��','������� �Բ� ��⼼��!','�������� �������� ������ ������ ������ �������� ���� ������ ���� ������ ������ �ڶ��Ÿ��̴�. ������ �꼼�� �Ƹ���� ������ ��� ����ö �Ǽ����� �����ϴ�. 
���� �ư� ���� ��Ʈ�ȴ� �Ͽ� �ϼҶ� �θ��� �����͸� ����Ͽ� ������ �Ϸ��� �����Ͱ� ���� �ؾ�׾�ޱ� ���� ���� ������. ������ ���� �ݿ���(�зϱ�)�� ö���� ������ ���� ����������, ���� ���� �� 54km�� �������δ� ����̺� �ڽ��� ����. �ֺ��� �¾Ȼ簡 �ְ�, ���� ������ ������ �����ꡤõ���硤ȭ���� ���� �������� �ִ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (4,'�޵ΰ���','����','���� ���� ����� ���ฮ 1332-14','��밡��','��밡��','��밡��','����ġ ������ ��ſ�!','���󳲵� ������ �޵ΰ������� �ֱ� ķ�۵��� �߱��� �پ����� �޵γ��� ���� �Բ� ������ ���� ķ�۵鿡�� ������ ����ް� �ִ� ���.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (5,'�ֹ������� ������ �α�','����','���� ���ֽ� ������ ������ 779','��밡��','��밡��','��밡��','��鰭�� �ҳ����� ������ ��⼼��','���󳲵� ���ֿ� ��簡 ������ ����ķ�������� �αⰡ ������ ȭ���, ������, �ļ��븦 ���߰� �ִ�.(�¼��� ������ ����)
�����⿡�� ķ����տ� ���� ������ ���� ���İŸ��� �Ŷ�� ���� �Ǹ��Ѵ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (6,'��� ���絿�齣 ������','����','���� �ϵ��� ���� �ص��� 938-2','��밡��','��밡��','��밡��','�ϵ��� �����ϰ� �����ϱ� ���� ��','������ ���� ���ڶ��� ��ġ�� ���絿�齣�غ��� ����� �� ���鳪�� �� �� �׷�� �Ĺڳ���, ��㳪���� �ؼ������� �ձ۰� ���ΰ� �ְ� �Ը� �ƴ��Ͽ� �����̵� �ϰ� �︲�嵵 ��� ���� �ִ�. ���� �̸��� �����ؼ������̿����� ���絿�齣�غ����� ��Ī�� ���� �Ǿ���. 3���̸� ������ �Ǿ�� ����ɵ��� �ٴٸ� �Ӱ� �����δٰ� �Ѵ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (7,'���� �߿���','������','���� ���� �漺�� 804','��밡��','��밡��','��밡��','���̵�� �Բ��ϴ� ķ�ο� ����!','���� �ݵ����� ����ó ��������� �������� ��ҷ� ���ù��� ���º��� ������ ���� ���� �޽İ����� ���õǾ� ������ ���� �н���, ���� ������, ���� Ž��� �� �°����� �ڿ��� ü���� �� �ִ� ����̴�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (8,'���� �̶���','������','���� ������ �Ӱ�� ��õ�� 126-2','��밡��','��밡��','��밡��','�Ƹ��ٿ�� ��ſ��� �������ִ� �̶���','���� �̶����� �޾����� �˷��� ������, �� �ȿ��� �����, ȭ���, �߿��� ���� ���ǽü��� ������, ������ �� ��ü��� ��ġ�Ǿ� �ִ�. ����ö�� ���� ã�ƿ��� �Ǽ������� �þ�� ������, �����ֹε��� �޽İ������ε� Ȱ��ǰ� �ִ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (9,'������ �ݰ���','��û��','��� ��õ�� �ȳ��� ������ 1332','���Ұ�','���Ұ�','���Ұ�','��ȭ <���>���� ���� ���� ���� ǳ��','2013�⵵���� �꼼���� �� ���� �̰� ���������� ķ���� �ϴ� ķ�۵鿡 ���� �������� ���� �˷����� ������ �߿����̴�.
�������ݰ��� �߿����� ���߻� �״���� ���� ķ���� ������ ������, �ε巴�� �帣�� �ݰ����� ���ø� ���� �����ο� ķ���� ������ ���� �ִ� ���̴�.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (10,'�쵿 �ҷϴ뱳 ��','����','���� ���ﱺ ������ ���ϸ� 2665-2','��밡��','���Ұ�','���Ұ�','���ÿ� �Բ��ϴ� ��ſ�!','�ҷϵ��� �� ��ü�� �����ҷϵ��������� �����Ǿ� ������ �Ѽ��� ȯ�ڿ� ���� ����, �ڿ������� ���� ��Ȱ�ϰ� �ִµ�, �ҷϴ뱳�� �������� ���� ã�� �������� �þ�� �ҷϵ� �ֹε��� �� ������ �շ��ϱⰡ ��������.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (11,'����������','������','���� ȫõ�� ���� ��� �� 129','��밡��','��밡��','��밡��','ī��, ��Ʈ �� ������ ����ͳ���?!','û��ȣ�� �̾����� ȫõ�� �Ϸ��� �ִ�. ���� ȫõ������ ���� ����� ������ ���� �״��� �־� ����ö�̸� �Ǽ������� �պ��. ���û� �ƴ϶� ���弭�Ρ����ͺ�Ʈ������Ű�� ��� �� �ְ� û��ȣ �����忡�� ���������� �������� �ٳ� �ֺ��� ���� ��ġ�� �����ϱ⿡ ����. ������ �߿��� �ϰų� �ֺ��� �ιڰ����� �̿��� �� �ִ�. ', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (12,'�����Ⱥ� ����','��û��','��� ���ֽ� ��ҿ��� ���ָ� �� 1-1','��밡��','��밡��','��밡��','���ڸŴϾƵ��� ���÷��̽�!','�����Ⱥ��� ���ָ� �Ⱥ��������� ��õ �ǳ� ������ ���� �ٶ� ��, ���󿡼� ���⽾���� ��õ ���� ���� ���� ���츮�� ������ �� ���� �Ͽ� �ٿ��� �̸��̴�. �� ������ �ٶ󺸸� ��ġ �� ���� ����ȭ�� ���� ���� �� ������ �̷��, �۰��������߹�����Į���� �� â��ó�� ������ ��ī�ο� �������� ���� ������ �̷�� ���� ���Ÿ��� ������ �ش�.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (13,'�󺸾� ������ �ϴ�','������','���� ���� �漮�� 738','��밡��','��밡��','��밡��','�ٸ��� ���Ƽ� �״ÿ��� ��� ���� ���!','�󺸾� �������� ���� ���� �漮���� ��ġ�ϰ� ������ ȭ���, ������, ����� ���� ���ǽü��� �̿��� �� �ֽ��ϴ�.
�αٿ� �������� �������� ��ȭ��, â�������, ����簡 �ְ�, �ֺ��� �ٸ� ķ�������� ���»��ڿ��޾縲, �����Ǿ�ķ����, ���� ����ķ����, ������������ķ����, ���� ��������ķ������ �ֽ��ϴ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (14,'������ ����ķ���� �α� ����','��⵵','��� ���ֽ� ��Ÿ� �糲�� 309-4','��밡��','��밡��','��밡��','���� ����, �ڿ��� �Բ� ��⼼��!','�ܵ�� ���̿� ������ ������ �̱׷��� ����� ���� �� �ִ�. ķ���� �������δ� 3~4������ ��ø�� ���� �ð����� ��ſ��� �����Ѵ�. ��� ����Ʈ���� ����� ȭ�� ����� �����ϴ�. �ķ�ǰ�� �Ϲ� ��ȭ�� �Ǹ��ϴ� ������ ��������, ������ �Ʒ��� ���÷� û���ϴ� ȭ���, ������, �����밡 �ڸ� ��� �ִ�. �翷�� ��ġ�� ������ �������� �־� ������ �Կ��� �ϱ⿡�� ����.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (15,'������ ���� ����','������','���� Ⱦ���� Ⱦ���� ������ �� 76-1','��밡��','���Ұ�','���Ұ�','Ʈ��ŷ�ڽ��� �־� ��å�ϱ� ���� ���!','���� �������� ���� ������ ����ϹǷ� ������ ����. ���ϰ� ���԰��(������׵)�Ͽ� ����� ������� ����. Ư�� ����(����)���� ����ö �Ǽ� ���İ� ���� ���δ�. �ݰ�õ(��͢��)��Ⱦ��õ(������)������õ(����) ���� ������ �շ��Ѵ�.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (16,'��õ �߿��� �α� �ݰ���','��û��','��� ��õ�� �̿��� ��渮 �� 49','���Ұ�','���Ұ�','���Ұ�','�����ϰ� ������ �ڿ� �� ����','����� ���� �̾����� �ڿ��� ����̴�', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (17,'ȫõ����','������','���� ȫõ�� ���� �� �� 234','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (18,'ȫõ�� �Ѵ���','������','���� ��õ�� ���� �Ѵ��� �� 130','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (19,'�Ӱ� ��������','���','��� ��õ�� �Ӱ�� ������ 163','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (20,'ȣ������ ����ķ����','����','���� ������ ������ ������ 766-6','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (21,'������ �ݰ��� �ٸ� ��','��û��','��� ������ ���� ������ 494','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (22,'���븮 �ݰ���','��û��','�泲 �ݻ걺 �θ��� ���븮 112','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (23,'�Ǽ� ���� �߿���','���','��� �Ǽ��� ���� ���踮 1017-5','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (24,'����õ ���� ķ��','����','���� ���ֽ� ������ ������ 901','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (25,'�ñݸ� �ʰ�õ��','��û��','��� ������ ���� �ñݸ� 490','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (26,'���� ���� �߿���','���','��� ��õ�� �ų�� ġ�긮 �� 125-5','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (27,'��ġ�� ������ ����','��û��','�泲 û�籺 ��ġ�� ��õ�� 137','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (28,'���� ���ݳ��� ������','����','���� ���ȱ� ����� ���ݳ���� 297','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (29,'�ϵ� ����� Ȱ����','���','�泲 �ϵ��� �Ǿ�� ������ �� 71','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (30,'ö�� ������','������','���� ö���� ������ ������ �� 304-2','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (31,'���˵� ������ ��','������','��õ ��ȭ�� ���� ���˱�','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (32,'�ݻ�� ���Ѱ���','��⵵','��� ���ֽ� �ݻ�� ���ϸ� 480','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (33,'��õ ������ �ֻ�����','��⵵','��� ��õ�� �̻�� ���̸� 817','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (34,'���� �����غ�����','����','���� ������ ������ ���ʸ� 853','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (35,'�Ҽ��� �ڿ��߻� ������ �߿���','��û��','��� �ܾ籺 �ܼ��� ���Ḯ 574','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (36,'��õ �ֹ������� �߿���','���','��� ������ ��ǰ�� ��õ�� 165-4','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (37,'���� ������','������','���� ȭõ�� ������ ������ 1313-3','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (38,'��õ ����','���','��� ��ɱ� ����� �븮 1181','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (39,'����õ �ٸ��� ķ����','���','��󳲵� �Ƿɱ� ����� ������ 13','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (40,'���߸� ȫõ����','������','���� ȫõ�� ���� ���߸� �� 93','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (41,'���߸� ������','������','���� ȫõ�� ���� ���߸� 154-8','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (42,'�ۻ������� ������','������','���� ���걸 �ۻ굿 387','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (43,'���� ������','���','�泲 ���ֽ� ������ ��踮 �� 347','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (44,'�ϻ���� ���� ������','���','�泲 �о�� ���� 118-14','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (45,'���������','���','�泲 �о�� ����� ���帮 922-1','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (46,'��ܸ� ü������ ������','���','�泲 �о�� ��ܸ� �ݰ 105-1','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (47,'������ ������','������','���� ���ֽ� ������ �ǵ 1325','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (48,'�����Ǽ���','����','���� ������ ȭ��� ������ 394-6','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (49,'������ ������','����','���� ���ﱺ ������ ������ �� 217','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (50,'����� ������','���','��� �ȵ��� ���ϸ� õ���� 1084-7','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (51,'�������� �޾��� ķ����','������','��� ���� ������ 714-4','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (52,'���� ��źõ�� ����� ȭ��','����','���� ������ ������ �Ծϸ� 435-4','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (53,'��â��','��û��','�泲 õ�Ƚ� ������ �ϸ� ��븮 117','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (54,'��õ ��������','������','���� ��õ�� ��õ�� 200-9','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (55,'�̰��� �����غ�','���','��� ���׽� �ϱ� û�ϸ� 22-1','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (56,'�Ͽ���� �߿���','���','��� ���׽� �ϱ� ����� �Ͽ��� 681','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (57,'���������Ϸ�','���','��� ���׽� �ϱ� ����� 650-3','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (58,'û���� ���� ������','������','���� ȫõ�� ���̸� ȭ��븮 �� 377','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (59,'��õ ����� ���','����','���� ��õ�� �־ϸ� ��渮 1019','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (60,'ǳ��õ��','��û��','�泲 õ�Ƚ� ������ ������687-1','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (61,'������ ���� ķ����','��û��','�泲 õ�Ƚ� ������ ������ ����� 420','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (62,'�� ���������','������','���� ���� ������ �Ҷ˷ɸ����� 32','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (63,'õ�� OKķ���� �ֺ�','��û��','�泲 õ�Ƚ� ������ �ϸ� ����� 603-6','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (64,'���ֹ�','��û��','��� ���ֽ� �߾�ž�� ��õ�� 412-2','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (65,'���� ������ �ֺ�','������','���� ���ֽ� ������ �뺴�� 438-73','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (66,'���� ����������','����','���� ������ �ݻ�� �ݻ긮 �� 106-2','���Ұ�','��밡��','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (67,'�ܿ��������� �ֺ�','��û��','��� ���ֽ� ǳ�� 408-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (68,'ȭ�� �ۼ��� ������','����','���� ȭ���� ûǳ�� ǳ�ϸ� �� 114','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (69,'���� �Ҿ߼ֹ�','���','��� ����� ������ ��õ�� 845-2','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (70,'��â ��������','������','���� ��â�� ��â�� �߸� 357','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (71,'���� ������ �α�','������','���� Ⱦ���� Ⱦ���� ��õ�� 221','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (72,'����� ������','������','���� ȫõ�� ���� �� �� 234','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (73,'ȫõ��3�� �ٸ� ��','������','���� ȫõ�� �Ϲ�� �ҸŰ �� 16-1','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (74,'���� �������','������','��õ ��ȭ�� ���� ������ 1157','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (75,'���� ����� �غ�','����','���� ������ ����� �ο츮 631','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (76,'������ ���Ѱ���','��⵵','��� �����ֽ� ȭ���� ���ϸ� 98-2','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (77,'��ź�� ������','��⵵','��� ���� �빮�� ��ź�� �� 54','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (78,'���� �������°���','���','�泲 â���� ��â�� ���� ������ 142-4','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (79,'�ʷ� �����','������','���� ������ ������ �͵и� 1055-1','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (80,'�۾�������','��û��','�泲 �ƻ�� �۾Ǹ� ���� 212-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (81,'�����غ�','������','���� ������ ������ 233-3','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (82,'��ġ�� �غ�','���ֵ�','����Ư����ġ�� �������� ������ ���� 224-7','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (83,'������ ����','��⵵','��� ���ֽ� ��Ÿ� �糲�� 318','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (84,'�强 Ȳ�� ������','����','���� �强�� Ȳ��� ��긮 360-2','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (85,'��õ ����','��û��','�泲 û�籺 ����� ��õ�� 275-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (86,'õ�� ������ �ֺ�','��û��','�泲 õ�Ƚ� ������ �ϸ� ��ϸ� 341','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (87,'�񳻼�','��û��','��� ���ֽ� �Ӽ��� ��õ�� 412','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (88,'������ �߿���','������','���� Ⱦ���� ����� ���︮ �� 109','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (89,'�Ⱦ��ؼ����� �ֹ�','����','���� ���� �պҸ� ��õ�� 1140','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (90,'����õ�� ����','��û��','��� ���ֽ� ��ô�� ��õ�� �� 3-4','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (91,'������ �ֹ� ����','��û��','�泲 ���ֽ� ������ 458','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (92,'������ �غ�','���','�泲 ������ ���θ� �е��� �� 12-24','���Ұ�','���Ұ�','���Ұ�','nan','nan', 3);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (93,'��� ������ �ֺ� ����','����','���� ����� ����� ���긮 804','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (94,'���ϰ��','������','���� ������ ������ ���ϸ� 1071','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (95,'������ ����ķ���� �ֺ� ���','������','���� Ⱦ���� ��õ�� �����渮 �� 20','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (96,'�ݰ�2�� ������A','��û��','��� ��õ�� ���̸� �ݾϸ� 1139','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (97,'������ ����������','������','���� ȫõ�� ���� �����ϸ� 369','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (98,'���� �ڿ��߻� ������A','���','�泲 �Ծ籺 ������ 1-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (99,'���� �ڿ��߻� ������B','���','�泲 ��û�� ���ʸ�  1153����','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (100,'������ �ڿ��߻�������','��⵵','��� ���� ������ ���帮 321','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (101,'������ ������ �ֺ� �ݰ���','��û��','�泲 �ο��� �ο��� ������ 184-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (102,'�Ծ� ���� ���ٱ� ���','���','�泲 �Ծ籺 ���ϸ� ������ 2021','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (103,'�Ʒ��罣 ķ����','������','���� ���ֽ� �Ÿ��� ������ 1061','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (104,'����������A','��û��','��� ���ֽ� ������ ���Ḯ 753-6','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (105,'�����','������','���� ������ ���� ���� 65','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (106,'��â�ڿ��߻������� �����A','���','�泲 ��â�� ������ ������ �� 11','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (107,'��â�ڿ��߻������� �����B','���','�泲 ��â�� ������ ������ �� 11-4','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (108,'�����غ�','���','��� ���ֽ� ��ϸ� ���渮 6-12','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (109,'��� �غ���������','������','��� �ϱ� ����1�� 5','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (110,'�ȼ�õ��','��⵵','��� ���ý� ������ ��Ÿ� 223-2','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (111,'ȭ���ؼ�����','���','��� ���׽� �ϱ� �۶�� ���渮 334','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (112,'��õ �ڿ��߻� ������','���','�泲 ��õ�� �糲�� ��õ�� 1231-1','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (113,'������ �ٸ���','��⵵','��� ���ý� ��ź�� �ݾϸ� 126-10','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (114,'����ؼ����� ������','����','���� ������ ȭ��� ����� 319','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (115,'����� ���','���','�泲 ��û�� ��û�� ���� 1125','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (116,'��ǰ����B','���','��� ������ ������ ��ǰ�� 59-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (117,'��ǰ����A','���','��� ������ ������ ��ǰ�� 215-3','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (118,'�����ؼ�����','���','��� ������ �׺��� ������ 53-8','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (119,'�ݰ��� ����','����','���� ����� õõ�� �뱤�� 484','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (120,'���� ������ �� ����','��⵵','��� ���� û��� ��渮 824','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (121,'���½��� ����','������','���� ����� ������ 1','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (122,'���� ���� ������','����','���� ���ȱ� ������ ������ 209-2','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (123,'���������� ����','����','���� ������ �뱸�� �� �� 94-37','��밡��','��밡��','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (124,'�ȵ� õ���� �ֺ�','���','��� �ȵ��� ��ȸ� õ���� 594-1','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (125,'��� ����õ��','����','���� ��籺 ����� ������ 793-7','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (126,'������ �ֺ�','���','��� û���� ������ ��ȣ�� 466-9','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (127,'��ȣ������','���','��� ��ȭ�� ��ȣ�� ��õ�� �� 348','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (128,'���� ����̰�','��û��','�泲 �ݻ걺 �θ��� ��츮 46-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (129,'�λ�ȣ','��û��','�泲 ��õ�� ���� �λ縮 987','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (130,'õ�� ���� ������','��û��','�泲 �¾ȱ� ����� ������ 273','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (131,'�긲û������ ������','����','���� �ξȱ� ����� ��û�� 212-5','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (132,'������� ���','������','���� ��â�� ���θ� ������ 97','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (133,'���� ��õ �ֻ����� (SUV������)','������','���� ������ ������ ���츮 303-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (134,'�����ؼ�����','���','�泲 â���� ����������230','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (135,'�˶߸������� �ֺ� ����','���ֵ�','����Ư����ġ�� �������� ������ ��� 1670-3','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (136,'������ �غ� ����','���','��� ���ֽ� ������ ���̸� �� 13-1','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (137,'���� �ܽ� ������','��û��','��� ���걺 ĥ���� �ְ 232-1','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (138,'����غ� �������� �ֺ�','���','��� ������ ������ ��縮 4-3','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (139,'�������� ������','������','������ ������ ������ ����� 199-3','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (140,'�� ����������','��û��','��� ���걺 ������ �񵵸� 864-19','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (141,'���� ��ġ �޾���','������','���� ��â�� ��â�� ������ 293','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (142,'ȭõ�ڹ���','������','���� ȭõ�� �ϳ��� ���� 509-2','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (143,'���� �Ŀ��� �ֺ�','��û��','��� ���걺 ûõ�� �Ŀ��� 143-5','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (144,'�߷�õ ����','����','���� ������ �곻�� ���׸� 565','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (145,'�����������̾߱� ��� �ֺ�','���','��� ��ȭ�� ������ ��õ�� 871','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (146,'��� ������ ����','����','���� ���ȱ� ��õ�� ����� 1595','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (147,'��ġ������','��û��','�泲 �ƻ�� ��ġ�� ������ 220','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (148,'���α� �ٸ���','��⵵','��� �����ֽ� ������ ���� 498-6','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (149,'��ô �غ� �ֺ�','������','���� ��ô�� ��õ�� 14-18','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (150,'�¾� ������ �α� ����','��û��','�泲 �¾ȱ� �ȸ��� �¾� 1317-19','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (151,'��긮 �ֹ� �ڿ�������','��û��','��� û�ֽ� ������ 897-2','���Ұ�','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (152,'�ݼһ��°���','���','��� �ȵ��� ���ϸ� �ݼҸ� 1028-88','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (153,'�ϵ� ���̸� Ⱦõ�� ���','���','�泲 �ϵ��� û�ϸ� ���̸� 505-6','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (154,'���Ͼ� ���Ͼ�','����','���� ���ȱ� ��õ�� ��Ҹ� 26','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (155,'���ٶ�ȭ �� ����','���','�泲 ������ ���θ� ���Ḯ �� 56-2','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (156,'��� ���������� ķ����','���','��� ��ɱ� �ָ��� ���ָ� 797-1','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (157,'���� �غ�','����','���� ���ﱺ ������ ���ʸ� 325-5','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (158,'�����غ� ������','���','��� ���ֽ� �糲�� ������ 17','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (159,'���Ѱ��뱳B','��û��','��� ���ֽ� �Ӽ��� �ܾϸ� 95-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (160,'���Ѱ��뱳A','������','���� ���ֽ� �ηи� ��õ�� 1617','��밡��','���Ұ�','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (161,'��â �渲�� ��â����','������','���� ��â�� �渲�� �渲�� 576-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (162,'������ ����','������','���� ��â�� ��ȭ�� ������ 733','��밡��','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (163,'������ ����','������','���� ������ ���������� ���︮ �� 1-1','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (164,'ȫõ ������ ����','������','���� ȫõ�� �Ϲ�� ������ �� 63','���Ұ�','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (165,'��â ��� ����','������','���� ��â�� ��â�� ��� 121-7','��밡��','���Ұ�','���Ұ�','nan','nan', 3);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (166,'��â ���ϸ�','������','���� ��â�� ��â�� ���ϸ� �� 1-1','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (167,'���� ��ұ� �ֺ�','����','���� ���ֱ� �γ��� ��Ҹ� 492','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (168,'�ݻ� �������ٸ� ����','��û��','�泲 �ݻ걺 �θ��� ���̸� 10-5','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (169,'���� ��õ2�� �ֺ�','������','���� ������ ��õ�� ��õ�� 1124-2','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (170,'���� ��� �ֹ�','����','���� ������ ���� ���ȸ� �� 31-1','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (171,'�о� �ݽô� ������','���','�泲 �о�� Ȱ���� 24-61 (Ȱ����)','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (172,'������������ �ֺ�','��⵵','��� ���ֽ� ������ ���� 379','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (173,'�͹��غ� ����','������','���� ��ô�� �ٴ��� �ϸ͹渮 221-5','��밡��','��밡��','��밡��','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (174,'���� ���������� �ֺ�','������','���� ������ ���� �Ͻָ� 55-4','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (175,'���� ������','������','���� ������ ���� �Ͻָ� 172-6','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (176,'ū�� ������','������','��� �ϱ� ���浿 978','���Ұ�','���Ұ�','���Ұ�','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (177,'���� �߱���','���','��� ����� ������ �̸� 37','��밡��','���Ұ�','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (178,'�򸲴� ����','����','���� �强�� ���� ������ 854-12','��밡��','��밡��','��밡��','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (179,'���þ� �غ�','������','��õ �߱� ������ 662-5','��밡��','���Ұ�','���Ұ�','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (180,'�ǹ̵� ������','������','��õ �߱� ���ǵ� 768-5','��밡��','��밡��','��밡��','nan','nan', 3);


delete place where place_name='���˵� ������ ��';
delete place where place_name='�̰��� �����غ�';
delete place where place_name='���� �ڿ��߻� ������A';
delete place where place_name='���� �ڿ��߻� ������B';
delete place where place_name='���������Ϸ�';
delete place where place_name='ǳ��õ��';
delete place where place_name='��긮 �ֹ� �ڿ�������';
delete place where place_name='�� ���������';
delete place where place_name='�����ؼ�����';