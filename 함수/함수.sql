-- 문자열 가공 함수
SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP;

-- UPPER 함수로 문자열 비교
SELECT * FROM EMP WHERE UPPER(ENAME) = UPPER('scott');
SELECT * FROM EMP WHERE UPPER(ENAME) LIKE UPPER('%scott%');

-- 문자열 길이를 구하는 함수
SELECT ENAME, LENGTH(ENAME) FROM EMP;

--WHERE 절에서 활용
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME) >= 5;

--LENGTH와 LENGTHB 비교
SELECT LENGTH('한글'), LENGTHB('한글') FROM DUAL;

-- 문자열 일부를 추출하는 SUBSTR함수
SELECT JOB, SUBSTR(JOB, 1, 2), SUBSTR(JOB, 3, 2), SUBSTR(JOB, 5) FROM EMP;

--SUBSTR 함수와 다른 함수와 함께 사용
SELECT JOB, SUBSTR(JOB, -LENGTH(JOB)), SUBSTR(JOB, -LENGTH(JOB), 2),
    SUBSTR(JOB, -3) FROM EMP;

-- 문자열 데이터안에서 특정 문자 위치를 찾는 INSTR함수
SELECT INSTR('HELLO, ORACLE!', 'L') AS INSTR_1,
        INSTR('HELLO, ORACLE!', 'L', 5) AS INSTR_2,
        INSTR('HELLO, ORACLE!', 'L', 2, 2) AS INSTR_3
FROM DUAL;

-- 특정 문자를 다른 문자로 바꾸는 REPLACE 함수
SELECT '010-1234-5678' AS REPLACE_BEFROE,
        REPLACE('010-1234-5678', '-', ' ') AS REPLACE_1,
        REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM DUAL;

-- 데이터의 공간을 특정 문자로 채우는 LPAD, RPAD 함수
SELECT 'ORALCE',
        LPAD('ORALCE', 10, '#') AS LPAD_1,
        RPAD('ORALCE', 10, '*') AS RPAD_1,
        LPAD('ORALCE', 10) AS RPAD_2,
        RPAD('ORALCE', 10) AS RPAD_2
FROM DUAL;

-- 두 문자열 데이터를 합치는 CONCAT함수
SELECT CONCAT(EMPNO, ENAME),
        CONCAT(EMPNO, CONCAT (':', ENAME))
FROM EMP WHERE ENAME = 'SCOTT';

-- 특정 문자를 지우는 TRIM, LTRIM, RTRIM함수(삭제할 자가 없을 때)
SELECT '[' || TRIM(' _ _Oracle_ _ ') || ']' AS TRIM,
       '[' || TRIM(LEADING FROM ' _ _Oracle_ _ ') || ']' AS TRIM_LEADING,
       '[' || TRIM(TRAILING FROM ' _ _Oracle_ _ ') || ']' AS TRIM_TRAILING,
       '[' || TRIM(BOTH FROM ' _ _Oracle_ _ ') || ']' AS TRIM_BOTH
FROM DUAL;    

-- TRIM 삭제할 문자가 있을 떄
SELECT '[' || TRIM('_' FROM '_ _Oracle_ _') || ']' AS TRIM,
       '[' || TRIM(LEADING '_' FROM  '_ _Oracle_ _') || ']' AS TRIM_LEADING,
       '[' || TRIM(TRAILING '_' FROM '_ _Oracle_ _') || ']' AS TRIM_TRAILING,
       '[' || TRIM(BOTH '_' FROM '_ _Oracle_ _') || ']' AS TRIM_BOTH
FROM DUAL;    

--LTRIM, RTRIM 사용하여 문자열 출력
SELECT '[' || TRIM(' _Oracle_ ') || ']' AS TRIM,
       '[' || LTRIM(' _Oracle_ ') || ']' AS LTRIM,
       '[' || LTRIM('<_Oracle_>', '_<') || ']' AS LTRIM2,
       '[' || RTRIM(' _Oracle_ ') || ']' AS RTRIM,
       '[' || RTRIM('<_Oracle_>', '>_') || ']' AS RTRIM2
FROM DUAL;    
        