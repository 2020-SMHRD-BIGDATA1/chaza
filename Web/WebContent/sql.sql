SELECT * FROM MEMBER

DROP TABLE MEMBER CASCADE CONSTRAINT

CREATE TABLE MEMBER(
					MEMBER_ID VARCHAR(100),						-- 회원 아이디
					MEMBER_PW VARCHAR(100)			NOT NULL,	-- 비밀번호
					MEMBER_GENDER CHAR(20)			NOT NULL,	-- 성별
					MEMBER_TEL VARCHAR2(20)			NOT NULL,	-- 회원 연락처
					MEMBER_ADDR VARCHAR2(200)		NOT NULL,	-- 회원 주소
					MEMBER_CAR_OWN CHAR(20),					-- 차량 소유 여부
					MEMBER_CAR_MODEL VARCHAR2(100)			,	-- 소유한다면 차량 모델은?
					
					CONSTRAINT MEMBER_ID_PK PRIMARY KEY (MEMBER_ID)
)

insert into member values ('BORADORI','123','여','010-1234-1234','광주광역시 남구 송암동', '예', '카니발');
insert into member values ('DONGGU','123','남','010-4567-4567','광주광역시 남구 월산동', '예', '스타랙스');
insert into member values ('SILVER','123','여','010-1111-1111','광주광역시 광산구 수완동', '아니오', null);
insert into member values ('SOO','123','여','010-9999-9999','광주광역시 효천로', '예', '벤츠');

SELECT * FROM PLACE WHERE PLACE_ID = 1

DROP TABLE PLACE

CREATE TABLE PLACE(
			   PLACE_ID NUMBER 					NOT NULL,		-- 여행지 아이디
               PLACE_NAME VARCHAR2(100)			NOT NULL,		-- 여행지 이름
               PLACE_CAT VARCHAR2(100)			NOT NULL,		-- 지역 카테고리
               PLACE_ADDR VARCHAR2(200)         NOT NULL,		-- 여행지 주소
               TOILET CHAR(20)                  NOT NULL,		-- 화장실 여부
               SINK CHAR(20)                  NOT NULL,			-- 주변 개수대 여부
               WATER CHAR(20)                  NOT NULL,		-- 주변 수돗물 여부
               TITLE VARCHAR2(100),								-- 여행지 한줄평
               CONTENTS VARCHAR2(1024),							-- 여행지 소개글
               PLACE_SCORE NUMBER               NOT NULL,		-- 평점(별 모양)
               
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

insert into review values(1,'BORADORI','서울특별시 성동구 천호동','광주광역시 광천동',5,20,4,'이곳은 어디인가','제발 실행됐으면 좋겠다 제발 진짜루','용담폭포',SYSDATE,36.123123,128.789789,'img/용담 섬바위 강변.png');
insert into review values(2,'DONGGU','광주광역시 남구 월산동','전남 나주시 남평읍 남석리 779',4,60,3,'맑은 공기 마시고 왔어요!','재방문 의사 있어요 또 호고 시퍼효','솔밭 유원지 주차장',SYSDATE,36.123123,128.789789,'img/솔밭 유원지 주차장 인근.jpg');
insert into review values(3,'SILVER','광주광역시  광산구 수완동','강원 철원군 갈말읍 문혜리 산 304-2',2,30,5,'북한 보고 왔어요','제발 실행됐으면 좋겠다 제발 진짜루','철원 문혜리',SYSDATE,36.123123,128.789789,'img/철원 문혜리1.jpg');
insert into review values(4,'SOO','광주광역시 효천로','경남 밀양시 단장면 단장리 922-1',5,20,4,'이곳은 어디인가','너무나도 좋은 추억을 선물해주신 Chaza분들에게 감사드립니다^^','양단유원지',SYSDATE,36.123123,128.789789,'img/양단유원지.jpg');


select * from place;
select * from PLACE where PLACE_CAT = '경기도'
select * from PLACE where PLACE_CAT = '전라도'

INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (1,'삼탄유원지 다리밑','충청도','충북 충주시 산척면 명서리 477-1','사용가능','사용가능','사용가능','기찻길이 아름다운 힐링 명소!','충주호로 유입되는 남한강의 지류가 흐르는 곳에 형성된 자연발생 강변유원지로, 충청북도 충주시 산척면 명서리에 있다. 소나무여울·따개비여울·광천소여울 등 세 여울(灘·탄)이 어우러지는 곳이라 하여 삼탄유원지라 한다. 사방이 산으로 둘러싸여 있고, 기암절벽 아래로 실타래처럼 흘러가는 강이 시원스럽게 펼쳐지는 유원지이다.
물살이 빠른 강에는 송사리·메기·꺽지 등의 물고기가 많아 낚시를 즐기기에 좋고, 곳곳에 넓은 소(沼)를 이루는 곳이 있어 여름철 물놀이 장소로 적당하다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (2,'기러기 공원','충청도','충남 금산군 제원면 천내리 1007','사용가능','사용가능','사용가능','인공폭포로 오는 감동까지!','간단히 당일 치기로 다녀오기 너무 좋은 기러기공원, 물도 깨끗해서 아이들과 아침일찍가서 놀다가 오후쯤 집에오기 좋은 곳', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (3,'압록유원지','전라도','전남 곡성군 죽곡면 하한리 1039','사용가능','사용가능','사용가능','오리배와 함께 즐기세요!','섬진강과 보성강이 만나는 지점에 조성된 유원지로 넓은 백사장과 맑고 깨끗한 강물이 자랑거리이다. 강변의 산세가 아름답고 수심이 얕아 여름철 피서지로 적합하다. 
북을 싣고 가다 빠트렸다 하여 북소라 부르는 낚시터를 비롯하여 보성강 하류에 낚시터가 많고 붕어·잉어·메기 등이 많이 잡힌다. 유원지 위로 반월교(압록교)와 철교가 나란히 강을 가로지르며, 강을 따라 난 54km의 강변도로는 드라이브 코스로 좋다. 주변에 태안사가 있고, 구례 쪽으로 나가면 지리산·천은사·화엄사 등의 관광지가 있다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (4,'앵두공원','전라도','전남 함평군 나산면 삼축리 1332-14','사용가능','사용가능','사용가능','가물치 낚시의 즐거움!','전라남도 함평의 앵두공원으로 최근 캠퍼들의 발길이 줄었지만 앵두나무 향기와 함께 여행을 즐기는 캠퍼들에겐 아직도 사랑받고 있는 장소.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (5,'솔밭유원지 주차장 인근','전라도','전남 나주시 남평읍 남석리 779','사용가능','사용가능','사용가능','드들강과 소나무의 조합을 즐기세요','전라남도 나주에 취사가 가능한 무료캠핑장으로 인기가 많으며 화장실, 샤워장, 식수대를 갖추고 있다.(온수는 나오지 않음)
성수기에는 캠핑장앞에 작은 매점이 생겨 간식거리나 컵라면 등을 판매한다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (6,'약산 가사동백숲 방파제','전라도','전남 완도군 약산면 해동리 938-2','사용가능','사용가능','사용가능','완도의 조용하고 힐링하기 좋은 곳','약산면의 남쪽 끝자락에 위치한 가사동백숲해변은 수백년 된 동백나무 수 백 그루와 후박나무, 잿밤나무가 해수욕장을 둥글게 감싸고 있고 규모가 아담하여 물놀이도 하고 삼림욕도 즐길 수가 있다. 원래 이름은 가사해수욕장이였으나 가사동백숲해변으로 명칭이 변경 되었다. 3월이면 일제히 피어나는 동백꽃들이 바다를 붉게 물들인다고 한다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (7,'노루벌 야영장','광역시','대전 서구 흑성동 804','사용가능','사용가능','사용가능','아이들과 함께하는 캠핑에 최적!','노루벌 반딧불이 서식처 조성사업이 진행중이 장소로 도시민의 생태복지 증진을 위한 생태 휴식공간이 마련되어 있으며 생태 학습장, 생태 놀이터, 생태 탐방로 등 온가족이 자연을 체험할 수 있는 장소이다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (8,'정선 미락숲','강원도','강원 정선군 임계면 낙천리 126-2','사용가능','사용가능','사용가능','아름다움과 즐거움을 선사해주는 미락숲','현재 미락숲은 휴양지로 알려져 있으며, 숲 안에는 음용수, 화장실, 야영장 등의 편의시설과 씨름장, 족구장 등 운동시설이 설치되어 있다. 여름철에 숲을 찾아오는 피서객들이 늘어나고 있으며, 마을주민들의 휴식공간으로도 활용되고 있다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (9,'지수리 금강변','충청도','충북 옥천군 안남면 지수리 1332','사용불가','사용불가','사용불가','영화 <용순>에서 나온 멋진 강변 풍경','2013년도부터 산세좋고 문 좋은 이곳 지수리에서 캠핑을 하던 캠퍼들에 의해 알음알음 세상에 알려지기 시작한 야영지이다.
지수리금강변 야영지는 생야생 그대로의 강변 캠핑이 가능한 곳으로, 부드럽게 흐르는 금강에서 낚시를 즐기며 여유로운 캠핑의 진수를 즐길수 있는 곳이다.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (10,'녹동 소록대교 밑','전라도','전남 고흥군 도양읍 봉암리 2665-2','사용가능','사용불가','사용불가','낚시와 함께하는 즐거움!','소록도는 섬 전체가 국립소록도병원으로 지정되어 있으며 한센병 환자와 병원 직원, 자원봉사자 등이 생활하고 있는데, 소록대교의 개통으로 섬을 찾는 관광객이 늘어나고 소록도 주민들이 섬 밖으로 왕래하기가 편리해졌다.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (11,'마곡유원지','강원도','강원 홍천군 서면 마곡리 산 129','사용가능','사용가능','사용가능','카누, 요트 등 레저를 즐기고싶나요?!','청평호로 이어지는 홍천강 하류에 있다. 맑은 홍천강물과 넓은 백사장 주위에 나무 그늘이 있어 여름철이면 피서객으로 붐빈다. 낚시뿐 아니라 윈드서핑·모터보트·수상스키를 즐길 수 있고 청평호 선착장에서 유원지까지 유람선이 다녀 주변의 강변 경치를 구경하기에 좋다. 숙박은 야영을 하거나 주변의 민박가구를 이용할 수 있다. ', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (12,'수주팔봉 강변','충청도','충북 충주시 대소원면 문주리 산 1-1','사용가능','사용가능','사용가능','차박매니아들의 핫플레이스!','수주팔봉은 문주리 팔봉마을에서 달천 건너 동쪽의 산을 바라볼 때, 정상에서 강기슭까지 달천 위에 여덟 개의 봉우리가 떠오른 것 같다 하여 붙여진 이름이다. 산 위에서 바라보면 마치 한 폭의 동양화를 펼쳐 놓은 듯 절경을 이루고, 송곳바위·중바위·칼바위 등 창검처럼 세워진 날카로운 바위들이 수직 절벽을 이루어 멋진 볼거리를 제공해 준다.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (13,'상보안 유원지 일대','광역시','대전 서구 흑석동 738','사용가능','사용가능','사용가능','다리가 많아서 그늘에서 놀기 좋은 장소!','상보안 유원지는 대전 서구 흑석동에 위치하고 있으며 화장실, 샤워실, 취사장 등의 편의시설을 이용할 수 있습니다.
인근에 가볼만한 관광지는 용화사, 창계숭절사, 모원재가 있고, 주변에 다른 캠핑장으로 장태산자연휴양림, 유토피아캠핑장, 벌곡 오토캠핑장, 벌곡힐링오토캠핑장, 벌곡 힐링오토캠핑장이 있습니다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (14,'이포보 오토캠핑장 인근 강변','경기도','경기 여주시 대신면 당남리 309-4','사용가능','사용가능','사용가능','낭만 가득, 자연과 함께 즐기세요!','잔디밭 사이에 수목을 식재해 싱그러운 기분을 맛볼 수 있다. 캠핑장 뒤쪽으로는 3~4겹으로 중첩된 산이 시각적인 즐거움을 선사한다. 모든 사이트에서 전기와 화로 사용이 가능하다. 식료품과 일반 잡화를 판매하는 매점을 갖췄으며, 관리소 아래로 수시로 청소하는 화장실, 샤워장, 개수대가 자리 잡고 있다. 양옆에 벤치를 마련한 포토존도 있어 기념사진 촬영을 하기에도 좋다.', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (15,'내지리 섬강 노지','강원도','강원 횡성군 횡성읍 내지리 산 76-1','사용가능','사용불가','사용불가','트레킹코스가 있어 산책하기 좋은 장소!','비교적 강수량이 많은 지역을 통과하므로 수량이 많다. 심하게 감입곡류(嵌入曲流)하여 협곡에는 경승지가 많다. 특히 간현(艮峴)에는 여름철 피서 인파가 많이 모인다. 금계천(錦溪川)·횡성천(橫城川)·원주천(原州川) 등의 지류가 합류한다.', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (16,'옥천 야영장 부근 금강변','충청도','충북 옥천군 이원면 용방리 산 49','사용불가','사용불가','사용불가','한적하고 조용한 자연 속 쉼터','계곡을 따라 이어지는 자연이 장관이다', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (17,'홍천강변','강원도','강원 홍천군 서면 모곡리 산 234','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (18,'홍천강 한덕교','강원도','강원 춘천시 남면 한덕리 산 130','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (19,'임고 강변공원','경상도','경북 영천시 임고면 덕연리 163','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (20,'호수공원 오토캠핑장','전라도','전남 강진군 강진읍 송전리 766-6','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (21,'가선리 금강변 다리 밑','충청도','충북 영동군 양산면 가선리 494','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (22,'수통리 금강변','충청도','충남 금산군 부리면 수통리 112','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (23,'의성 빙계 야영장','경상도','경북 의성군 춘산면 빙계리 1017-5','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (24,'지석천 낚시 캠핑','전라도','전남 나주시 남평읍 남석리 901','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (25,'시금리 초강천변','충청도','충북 영동군 용산면 시금리 490','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (26,'차산 노지 야영장','경상도','경북 영천시 신녕면 치산리 산 125-5','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (27,'까치내 유원지 강변','충청도','충남 청양군 대치면 작천리 137','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (28,'무안 조금나루 유원지','전라도','전남 무안군 망운면 조금나루길 297','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (29,'하동 구재봉 활공장','경상도','경남 하동군 악양면 축지리 산 71','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (30,'철원 문혜리','강원도','강원 철원군 갈말읍 문혜리 산 304-2','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (31,'동검도 선착장 옆','광역시','인천 강화군 길상면 동검길','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (32,'금사면 남한강변','경기도','경기 여주시 금사면 전북리 480','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (33,'연천 임진강 주상절리','경기도','경기 연천군 미산면 동이리 817','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (34,'강진 사초해변공원','전라도','전남 강진군 신전면 사초리 853','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (35,'소선암 자연발생 유원지 야영장','충청도','충북 단양군 단성면 대잠리 574','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (36,'오천 솔밭유원지 야영장','경상도','경북 영덕군 지품면 오천리 165-4','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (37,'딱산 유원지','강원도','강원 화천군 간동면 구만리 1313-3','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (38,'미천 공원','경상도','경북 고령군 덕곡면 노리 1181','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (39,'유곡천 다목적 캠핑장','경상도','경상남도 의령군 유곡면 박진로 13','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (40,'개야리 홍천강변','강원도','강원 홍천군 서면 개야리 산 93','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (41,'개야리 유원지','강원도','강원 홍천군 서면 개야리 154-8','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (42,'송산유원지 주차장','광역시','광주 광산구 송산동 387','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (43,'진주 남강변','경상도','경남 진주시 내동면 삼계리 산 347','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (44,'암새들앞 공용 주차장','경상도','경남 밀양시 용평동 118-14','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (45,'양단유원지','경상도','경남 밀양시 단장면 단장리 922-1','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (46,'산외면 체육공원 주차장','경상도','경남 밀양시 산외면 금곡리 105-1','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (47,'문막읍 섬강변','강원도','강원 원주시 문막읍 건등리 1325','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (48,'나진피서지','전라도','전남 여수시 화양면 나진리 394-6','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (49,'한적한 방파제','전라도','전남 고흥군 영남면 남열리 산 217','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (50,'백운정 유원지','경상도','경북 안동시 임하면 천전리 1084-7','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (51,'주전가족 휴양지 캠핑장','광역시','울산 동구 주전동 714-4','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (52,'영광 와탄천변 비밀의 화원','전라도','전남 영광군 법성면 입암리 435-4','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (53,'대창골','충청도','충남 천안시 동남구 북면 운용리 117','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (54,'춘천 수변공원','강원도','강원 춘천시 삼천동 200-9','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (55,'이가리 간이해변','경상도','경북 포항시 북구 청하면 22-1','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (56,'하옥계곡 야영장','경상도','경북 포항시 북구 죽장면 하옥리 681','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (57,'위배지미하류','경상도','경북 포항시 북구 죽장면 650-3','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (58,'청벽산 물골 유원지','강원도','강원 홍천군 내촌면 화상대리 산 377','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (59,'순천 용오름 계곡','전라도','전남 순천시 주암면 운룡리 1019','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (60,'풍서천변','충청도','충남 천안시 동남구 광덕면687-1','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (61,'광덕산 간이 캠핑장','충청도','충남 천안시 동남구 광덕면 대덕리 420','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (62,'고성 장신유원지','강원도','강원 고성군 간섭읍 소똥령마을길 32','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (63,'천안 OK캠핑장 주변','충청도','충남 천안시 동남구 북면 명덕리 603-6','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (64,'목계솔밭','충청도','충북 충주시 중앙탑면 장천리 412-2','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (65,'섬강 문막교 주변','강원도','강원 원주시 문막읍 취병리 438-73','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (66,'김제 금평저수지','전라도','전북 김제시 금산면 금산리 산 106-2','사용불가','사용가능','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (67,'단월강수욕장 주변','충청도','충북 충주시 풍동 408-1','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (68,'화순 송석정 유원지','전라도','전남 화순군 청풍면 풍암리 산 114','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (69,'문경 소야솔밭','경상도','경북 문경시 마성면 오천리 845-2','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (70,'평창 바위공원','강원도','강원 평창군 평창읍 중리 357','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (71,'섬강 유원지 부근','강원도','강원 횡성군 횡성읍 북천리 221','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (72,'모곡밤벌 유원지','강원도','강원 홍천군 서면 모곡리 산 234','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (73,'홍천강3교 다리 밑','강원도','강원 홍천군 북방면 소매곡리 산 16-1','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (74,'석모도 어류정항','광역시','인천 강화군 삼산면 매음리 1157','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (75,'영광 백바위 해변','전라도','전남 영광군 염산면 두우리 631','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (76,'남양주 북한강변','경기도','경기 남양주시 화도읍 구암리 98-2','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (77,'광탄리 유원지','경기도','경기 양평군 용문면 광탄리 산 54','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (78,'본포 수변생태공원','경상도','경남 창원시 의창구 동읍 본포리 142-4','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (79,'필례 약수터','강원도','강원 인제군 인제읍 귀둔리 1055-1','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (80,'송악저수지','충청도','충남 아산시 송악면 궁평리 212-1','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (81,'순긋해변','강원도','강원 강릉시 안현동 233-3','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (82,'광치기 해변','제주도','제주특별자치도 서귀포시 성산읍 고성리 224-7','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (83,'이포보 노지','경기도','경기 여주시 대신면 당남리 318','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (84,'장성 황룡 전적지','전라도','전남 장성군 황룡면 장산리 360-2','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (85,'지천 강변','충청도','충남 청양군 장평면 지천리 275-1','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (86,'천안 은석교 주변','충청도','충남 천안시 동남구 북면 용암리 341','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (87,'비내섬','충청도','충북 충주시 앙성면 조천리 412','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (88,'단지골 야영장','강원도','강원 횡성군 안흥면 안흥리 산 109','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (89,'안악해수욕장 솔밭','전라도','전남 함평군 손불면 월천리 1140','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (90,'원서천변 노지','충청도','충북 충주시 산척면 석천리 산 3-4','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (91,'고마나루 솔밭 공터','충청도','충남 공주시 웅진동 458','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (92,'거제도 해변','경상도','경남 거제시 동부면 학동리 산 12-24','사용불가','사용불가','사용불가','nan','nan', 3);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (93,'장수 덕산제 주변 공터','전라도','전북 장수군 장수읍 덕산리 804','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (94,'연하계곡','강원도','강원 영월군 영월읍 연하리 1071','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (95,'병지방 오토캠핑장 주변 계곡','강원도','강원 횡성군 갑천면 병지방리 산 20','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (96,'금강2교 차박지A','충청도','충북 옥천군 동이면 금암리 1139','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (97,'남노일 강변유원지','강원도','강원 홍천군 남면 남노일리 369','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (98,'강정 자연발생 유원지A','경상도','경남 함양군 유림면 1-1','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (99,'강정 자연발생 유원지B','경상도','경남 산청군 생초면  1153번길','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (100,'도장계곡 자연발생유원지','경기도','경기 양평군 서종면 도장리 321','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (101,'백제보 나루터 주변 금강변','충청도','충남 부여군 부여읍 정동리 184-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (102,'함양 남강 물줄기 계곡','경상도','경남 함양군 서하면 봉전리 2021','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (103,'아랫당숲 캠핑장','강원도','강원 원주시 신림면 성남리 1061','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (104,'추평저수지A','충청도','충북 충주시 엄정면 가춘리 753-6','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (105,'고병계곡','강원도','강원 정선군 남면 유평리 65','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (106,'거창자연발생유원지 계곡상류A','경상도','경남 거창군 가조면 수월리 산 11','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (107,'거창자연발생유원지 계곡상류B','경상도','경남 거창군 가조면 수월리 산 11-4','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (108,'봉길해변','경상도','경북 경주시 양북면 봉길리 6-12','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (109,'울산 해변수변공원','광역시','울산 북구 판지1길 5','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (110,'안성천변','경기도','경기 평택시 오성면 당거리 223-2','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (111,'화진해수욕장','경상도','경북 포항시 북구 송라면 지경리 334','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (112,'우천 자연발생 유원지','경상도','경남 사천시 사남면 우천리 1231-1','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (113,'적봉교 다리밑','경기도','경기 평택시 서탄면 금암리 126-10','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (114,'장등해수욕장 주차장','전라도','전남 여수시 화양면 장수리 319','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (115,'지곡사 계곡','경상도','경남 산청군 산청읍 내리 1125','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (116,'광품폭포B','경상도','경북 울진군 온정면 광품리 59-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (117,'광품폭포A','경상도','경북 울진군 온정면 광품리 215-3','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (118,'후정해수욕장','경상도','경북 울진군 죽변면 후정리 53-8','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (119,'금강변 노지','전라도','전북 장수군 천천면 용광리 484','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (120,'양평 율리교 밑 강변','경기도','경기 양평군 청운면 비룡리 824','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (121,'생태습지 공터','광역시','대전 대덕구 이현동 1','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (122,'진안 가막 유원지','전라도','전북 진안군 진안읍 가막리 209-2','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (123,'당전저수지 노지','전라도','전남 강진군 대구면 용운리 산 94-37','사용가능','사용가능','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (124,'안동 천지교 주변','경상도','경북 안동시 길안면 천지리 594-1','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (125,'담양 오례천변','전라도','전남 담양군 봉산면 제월리 793-7','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (126,'매전교 주변','경상도','경북 청도군 매전면 당호리 466-9','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (127,'매호유원지','경상도','경북 봉화군 명호면 도천리 산 348','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (128,'무주 산댐이골','충청도','충남 금산군 부리면 방우리 46-1','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (129,'부사호','충청도','충남 서천군 서면 부사리 987','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (130,'천안 마도 방파제','충청도','충남 태안군 근흥면 마도길 273','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (131,'산림청연수원 주차장','전라도','전북 부안군 변산면 도청리 212-5','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (132,'장전계곡 상류','강원도','강원 평창군 진부면 장전리 97','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (133,'정선 어천 주상절리 (SUV차량만)','강원도','강원 정선군 정선읍 덕우리 303-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (134,'광암해수욕장','경상도','경남 창원시 마산합포구230','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (135,'알뜨르비행장 주변 공터','제주도','제주특별자치도 서귀포시 대정읍 상모리 1670-3','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (136,'감포읍 해변 노지','경상도','경북 경주시 감포읍 전촌리 산 13-1','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (137,'괴산 외쌍 유원지','충청도','충북 괴산군 칠성면 쌍곡리 232-1','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (138,'장사해변 졸음쉼터 주변','경상도','경북 영덕군 남정면 장사리 4-3','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (139,'섭새강변 유원지','강원도','강원도 영월군 영월읍 삼옥리 199-3','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (140,'목도 강변유원지','충청도','충북 괴산군 불정면 목도리 864-19','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (141,'유동 둔치 휴양지','강원도','강원 평창군 평창읍 유동리 293','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (142,'화천박물관','강원도','강원 화천군 하남면 위라리 509-2','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (143,'괴산 후영교 주변','충청도','충북 괴산군 청천면 후영리 143-5','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (144,'추령천 노지','전라도','전북 정읍시 산내면 매죽리 565','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (145,'봄여름가을이야기 펜션 주변','경상도','경북 봉화군 법전면 소천리 871','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (146,'용담 섬바위 강변','전라도','전북 진안군 안천면 삼락리 1595','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (147,'염치저수지','충청도','충남 아산시 염치읍 동정리 220','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (148,'오두교 다리밑','경기도','경기 남양주시 진접읍 부평리 498-6','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (149,'삼척 해변 주변','강원도','강원 삼척시 갈천동 14-18','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (150,'태안 방포항 부근 노지','충청도','충남 태안군 안면읍 승언리 1317-19','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (151,'노산리 솔밭 자연유원지','충청도','충북 청주시 서원구 897-2','사용불가','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (152,'금소생태공원','경상도','경북 안동시 임하면 금소리 1028-88','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (153,'하동 상이리 횡천강 계곡','경상도','경남 하동군 청암면 상이리 505-6','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (154,'운일암 반일암','전라도','전북 진안군 주천면 대불리 26','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (155,'만다라화 시 공원','경상도','경남 거제시 동부면 부춘리 산 56-2','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (156,'고령 신촌유원지 캠핑장','경상도','경북 고령군 쌍림면 산주리 797-1','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (157,'염포 해변','전라도','전남 고흥군 봉래면 외초리 325-5','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (158,'진리해변 주차장','경상도','경북 경주시 양남면 진리길 17','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (159,'남한강대교B','충청도','충북 충주시 앙성면 단암리 95-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (160,'남한강대교A','강원도','강원 원주시 부론면 법천리 1617','사용가능','사용불가','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (161,'평창 방림리 평창강변','강원도','강원 평창군 방림면 방림리 576-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (162,'개수리 노지','강원도','강원 평창군 대화면 개수리 733','사용가능','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (163,'법흥계곡 노지','강원도','강원 영월군 무릉도원면 법흥리 산 1-1','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (164,'홍천 굴지리 노지','강원도','강원 홍천군 북방면 굴지리 산 63','사용불가','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (165,'평창 뇌운리 노지','강원도','강원 평창군 평창읍 뇌운리 121-7','사용가능','사용불가','사용불가','nan','nan', 3);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (166,'평창 하일리','강원도','강원 평창군 평창읍 하일리 산 1-1','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (167,'무주 대소교 주변','전라도','전북 무주군 부남면 대소리 492','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (168,'금산 무지개다리 강변','충청도','충남 금산군 부리면 평촌리 10-5','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (169,'영월 주천2교 주변','강원도','강원 영월군 주천면 주천리 1124-2','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (170,'보성 겸백 솔밭','전라도','전남 보성군 겸백면 도안리 산 31-1','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (171,'밀양 금시당 유원지','경상도','경남 밀양시 활성로 24-61 (활성동)','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (172,'도리지구공원 주변','경기도','경기 여주시 점동면 도리 379','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (173,'맹방해변 노지','강원도','강원 삼척시 근덕면 하맹방리 221-5','사용가능','사용가능','사용가능','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (174,'영월 선돌관광지 주변','강원도','강원 영월군 남면 북쌍리 55-4','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (175,'영월 서강변','강원도','강원 영월군 남면 북쌍리 172-6','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (176,'큰골 저수지','광역시','울산 북구 무룡동 978','사용불가','사용불가','사용불가','nan','nan', 4);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (177,'문경 야구장','경상도','경북 문경시 영순면 이목리 37','사용가능','사용불가','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (178,'평림댐 공원','전라도','전남 장성군 삼계면 수옥리 854-12','사용가능','사용가능','사용가능','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (179,'마시안 해변','광역시','인천 중구 덕교동 662-5','사용가능','사용불가','사용불가','nan','nan', 5);
INSERT INTO PLACE (PLACE_ID, PLACE_NAME, PLACE_CAT, PLACE_ADDR, TOILET, SINK, WATER, TITLE, CONTENTS, PLACE_SCORE) VALUES (180,'실미도 유원지','광역시','인천 중구 무의동 768-5','사용가능','사용가능','사용가능','nan','nan', 3);


delete place where place_name='동검도 선착장 옆';
delete place where place_name='이가리 간이해변';
delete place where place_name='강정 자연발생 유원지A';
delete place where place_name='강정 자연발생 유원지B';
delete place where place_name='위배지미하류';
delete place where place_name='풍서천변';
delete place where place_name='노산리 솔밭 자연유원지';
delete place where place_name='고성 장신유원지';
delete place where place_name='광암해수욕장';