-- Q. gender가 1인 경우는 남자를 gender가 2인 경우에는 여자를 출력하시오.
SELECT id, 
Case WHEN gender = 1 then '남자'
WHEN gender = 2 then '여자' 
END AS 성별
FROM healthcare
LIMIT 5; 

--  Q. 나이에 따라 청소년(~18), 청년(~30), 중장년(~64)로 출력하시오

SELECT id , 
CASE when age <= 18 then '청소년' when age <= 30 then '청년' when age <= 64 then '중장년'
END 나이구분
from healthcare
Limit 10; 

-- Q. users에서 가장 나이가 작은 사람의 수는?

SELECT MIN(age) from healthcare; 

--MIN(age)
--------
--9

SELECT COUNT(*)
from healthcare
WHERE min(age) = 9 ;

-- Parse error: misuse of aggregate: min()

SELECT COUNT(*)
from healthcare
WHERE age = (SELECT MIN(age) from healthcare);

--COUNT(*)
--------
--156277

--Q. users에서 평균 계좌 잔고가 높은 사람의 수는?

SELECT COUNT(*)
FROM users
WHERE balance = (SELECT max(balance) from users;