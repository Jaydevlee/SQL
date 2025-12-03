-- NULL 처리 함수 NVL, NVL2
-- NVL함수의 기본 사용법
SELECT EMPNO, ENAME, SAL, COMM, SAL+COMM,
       NVL(COMM, 0),
       SAL+NVL(COMM, 0)
FROM EMP;       

-- NVL2는 NULL아닐 때 반환하는 데이터를 추가로 지정할 수 있다
SELECT EMPNO, ENAME, COMM,
       NVL2(COMM, 'O', 'X'),
       NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL
FROM EMP;       