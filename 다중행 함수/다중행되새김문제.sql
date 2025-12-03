--1
SELECT DEPTNO, 
       TRUNC(AVG(SAL), 0) AS AVG_SAL,
       MAX(SAL) AS MAX_SAL,
       MIN(SAL) AS MIN_SAL,
       COUNT(*) AS CNT
      FROM EMP
    GROUP BY DEPTNO;
    
--2
SELECT JOB,
      COUNT(JOB)
      FROM EMP
      GROUP BY JOB
      HAVING COUNT(JOB) >= 3; -- 그룹화한 조건은 WHERE을 사용할 수 없다.
      
--3
SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR, -- 별칭으로 GROUP BY를 적용할 수 없다.
        DEPTNO,
        COUNT(*) AS CNT
        FROM EMP
      GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;
      /* 별칭으로 그룹화를 하려면 서브 쿼리를 활용 */
        
-- 4
SELECT NVL2(COMM, 'O', 'X') AS EXIST_COMM,
       COUNT(NVL2(COMM, 'O', 'X')) AS CNT
       FROM EMP
      GROUP BY  NVL2(COMM, 'O', 'X'); 

        
      
       