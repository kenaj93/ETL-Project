-- Create tables for raw data to be loaded into
drop table state_name if exist;
drop table ppp_loan if exist;
drop table unemployment_rate if exist;

CREATE TABLE state_name (
state varchar PRIMARY KEY,
state_name varchar
);

CREATE TABLE ppp_loan (
state varchar PRIMARY KEY,
job_retained int
);

CREATE TABLE unemployment_rate (
state_name varchar PRIMARY KEY,
unemp_rate float
);

-- Joins tables
SELECT a.state, a.job_retained,c.unemp_rate
FROM ppp_loan a
JOIN state_name b
ON a.state = b.state
JOIN unemployement_rate c
ON b.state_name = c.state_name;

