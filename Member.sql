CREATE TABLE Member(
  id      VARCHAR2(20)PRIMARY KEY,
  passwd  VARCHAR2(20),
  name    VARCHAR2(30)
);

select * from Member;
DELETE FROM Member WHERE id='1';