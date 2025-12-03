-- 특정 열이나 데이터에 따라 어떤 데이터를 반환할지 결정할 DECODE 또는 CASE문 사용
-- DECODE함수
SELECT EMPNO, ENAME, JOB, SAL,
       DECODE(JOB,
              'MANAGER', SAL*1.1,
              'SALEMAN', SAL*1.05,
              'ANALYST', SAL,
              SAL*1.03) AS UPSAL
FROM EMP;

--CASE 문
SELECT EMPNO, ENAME, JOB, SAL,
       CASE JOB
            WHEN 'MANAGER' THEN SAL*1.1
            WHEN 'SALEMAN' THEN SAL*1.05
            WHEN 'ANALYST' THEN SAL
            ELSE SAL*1.03
      END AS UPSAL
      FROM EMP;
      
-- CASE문은 기준 데이터를 지정하지 않아도 조건식만으로 CASE문을 사용할 수 있다.
SELECT EMPNO, ENAME, COMM,
    CASE
      WHEN COMM IS NULL THEN '해당 사항 없음'
      WHEN COMM = 0 THEN '수당 없음'
      WHEN COMM > 0 THEN '수당: ' || COMM
    END AS COMM_TEXT
    FROM EMP;