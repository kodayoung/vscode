CREATE DATABASE SSAC;

USE SSAC;

SHOW TABLES;

CREATE TABLE 이름 (
    칼럼명 데이터타입;
    칼럼명 데이터타입;
);

INSERT INTO member VALUES (값);

UPDATE 테이블명 SET 바꿀내용이해당하는컬럼=바꿀내용 , .. [WHERE 조건]


CREATE TABLE sql_practice(
	id varchar(10) not null,
	pw varchar(20) not null,
	name varchar(5) not null,
	gender enum('female','male') default 'female',
	birthday date not null
);


('hong1234', '8o4bkg', '홍길동', 'male', '1990-01-31'),
('sexysung', '87awjkdf', '성춘향', 'female', '1992-03-31'),
('power70', 'qxur8sda', '변사또', 'male', '1970-05-02'),
('hanjo', 'jk48fn4', '한조', 'male', '1984-10-18'),
('widowmaker', '38ewifh3', '위도우', 'female', '1986-06-27'),
('dvadva', 'k3f3ah', '송하나', 'female', '1994-06-03'),
('jungkrat', '4ifha7f', '정크랫', 'male', '1975-11-11')


1. insert문제
hong1234, 8o4bkg, 홍길동, male, 1990-01-31
sexysung, 87awjkdf, 성춘향, female, 1992-03-31
power70, qxur8sda, 변사또, male, 1970-05-02
hanjo, jk48fn4, 한조, male, 1984-10-18
widowmaker, 38ewifh3, 위도우, female, 1986-06-27
dvadva, k3f3ah, 송하나, female, 1994-06-03
jungkrat, 4ifha7f, 정크랫, male, 1975-11-11

2. 모든 회원목록을 가져오되, birthday컬럼의 값을 기준으로 오름차순 정렬하여 가져오세요.

3. gender컬럼의 값이 "male"인 회원목록을 가져오되, birthday컬럼의 값을 기준으로 오름차순 정렬하여 가져오세요.

4. birthday컬럼의 값이 199X-XX-XX 인 회원목록을 가져오세요.

5. birthday컬럼의 값이 XXXX-06-XX 인 회원목록을 가져오되, birthday의 값을 기준으로 오름차순 정렬하여 가져오세요.

6. gender컬럼의 값이 "male"이고 birthday 컬럼의 값이 199X-XX-XX 인 회원목록을 가져오세요.

7. 모든 회원목록 중에서 birthday컬럼의 값을 기준으로 오름차순 정렬하여 가져오되 처음 3개의 레코드만 가져오세요.

8. gender컬럼의 값이 "female"이거나 birthday 컬럼의 값이 199X-XX-XX 인 회원목록을 가져오세요.

9. id컬럼의 값이 "hong1234"인  레코드의 pw컬럼의 값을 12345678 로 변경하세요.

10. id컬럼의 값이 "jungkrat"인 레코드를 삭제하세요.
