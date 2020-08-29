drop table if exists state_name ;
drop table if exists ppp_loan ;
drop table if exists unemployment_rate ;

CREATE TABLE state_name (
state varchar PRIMARY KEY NOT NULL,
state_name varchar
);

CREATE TABLE ppp_loan (
state varchar PRIMARY KEY NOT NULL,
jobsretained int
);

CREATE TABLE unemployment_rate (
state_name varchar NOT NULL,
unemp_rate float
);

select * from ppp_loan;
select * from state_name;
select * from unemployment_rate;


CREATE VIEW loan_unemp_state AS
SELECT a.state, a.jobsretained,c.unemp_rate
FROM ppp_loan a
JOIN state_name b
ON a.state = b.state
JOIN unemployment_rate c
ON b.state_name = c.state_name
order by unemp_rate desc;

select * from loan_unemp_state;