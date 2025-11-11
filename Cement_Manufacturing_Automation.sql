use cement_automation;
select * from industry;
DROP table industry;
select count(*) from industry;

###Mean###

select avg(Mill_TPH) as mean_mill_tph from industry;

select avg(Clinker_TPH) as mean_Clinker_TPH from industry;

select avg(Gypsum_TPH) as mean_Gypsum_TPH from industry;

select avg(DFA_TPH) as mean_DFA_TPH from industry;

select avg(WFA_TPH) as mean_WFA_TPH from industry;

select avg(Mill_KW) as mean_Mill_KW from industry;

select avg(Mill_I_Temp) as mean_Mill_I_Temp from industry;

select avg(Mill_O_Temp) as mean_Mill_O_Temp from industry;

select avg(Mill_O_BE_Amp) as mean_Mill_O_BE_Amp from industry;

select avg(Mill_Vent_Fan_RPM) as mean_Mill_Vent_Fan_RPM from industry;

select avg(Mill_Vent_Fan_KW) as mean_Mill_Vent_Fan_KW from industry;

select avg(Mill_Vent_BF_I_Draft) as mean_Mill_Vent_BF_I_Draft from industry;

select avg(Mill_Vent_BF_O_Draft) as mean_Mill_Vent_BF_O_Draft from industry;

select avg(Reject) as mean_Reject from industry;

select avg(Sep_RPM) as mean_Sep_RPM from industry;

select avg(Sep_KW) as mean_Sep_KW from industry;

select avg(Sep_Amp) as mean_Sep_Amp from industry;

select avg(CA_Fan_RPM) as mean_CA_Fan_RPM from industry;

select avg(CA_Fan_KW) as mean_CA_Fan_KW from industry;

select avg(Mill_Folaphone) as mean_Mill_Folaphone from industry;

select avg(Mill_I_Draft) as mean_Mill_I_Draft from industry;

select avg(Mill_O_Draft) as mean_Mill_O_Draft from industry;

select avg(Sep_Vent_I_Draft) as mean_Sep_Vent_I_Draft from industry;

select avg(Sep_Vent_O_Draft) as mean_Sep_Vent_O_Draft from industry;

select avg(Sep_Vent_bag_filter_fan_kw) as mean_Sep_Vent_bag_filter_fan_kw from industry;

select avg(Sep_Vent_bag_filter_fan_rpm) as mean_Sep_Vent_bag_filter_fan_rpm from industry;

select avg(Residue) as mean_Residue from industry;



#MEDIAN##

with ranked as(
select Mill_TPH,
row_number() over(order by Mill_TPH) AS r,
count(Mill_TPH) over() as c
from industry),
median as (
select Mill_TPH
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Clinker_TPH,
row_number() over(order by Clinker_TPH) AS r,
count(Clinker_TPH) over() as c
from industry),
median as (
select Clinker_TPH
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Gypsum_TPH,
row_number() over(order by Gypsum_TPH) AS r,
count(Gypsum_TPH) over() as c
from industry),
median as (
select Gypsum_TPH
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select DFA_TPH,
row_number() over(order by DFA_TPH) AS r,
count(DFA_TPH) over() as c
from industry),
median as (
select DFA_TPH
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select WFA_TPH,
row_number() over(order by WFA_TPH) AS r,
count(WFA_TPH) over() as c
from industry),
median as (
select WFA_TPH
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_KW,
row_number() over(order by Mill_KW) AS r,
count(Mill_KW) over() as c
from industry),
median as (
select Mill_KW
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_I_Temp,
row_number() over(order by Mill_I_Temp) AS r,
count(Mill_I_Temp) over() as c
from industry),
median as (
select Mill_I_Temp
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Mill_O_Temp,
row_number() over(order by Mill_O_Temp) AS r,
count(Mill_O_Temp) over() as c
from industry),
median as (
select Mill_O_Temp
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Mill_O_BE_Amp,
row_number() over(order by Mill_O_BE_Amp) AS r,
count(Mill_O_BE_Amp) over() as c
from industry),
median as (
select Mill_O_BE_Amp
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Mill_Vent_Fan_RPM,
row_number() over(order by Mill_Vent_Fan_RPM) AS r,
count(Mill_Vent_Fan_RPM) over() as c
from industry),
median as (
select Mill_Vent_Fan_RPM
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_Vent_Fan_KW,
row_number() over(order by Mill_Vent_Fan_KW) AS r,
count(Mill_Vent_Fan_KW) over() as c
from industry),
median as (
select Mill_Vent_Fan_KW
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_Vent_BF_I_Draft,
row_number() over(order by Mill_Vent_BF_I_Draft) AS r,
count(Mill_Vent_BF_I_Draft) over() as c
from industry),
median as (
select Mill_Vent_BF_I_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_Vent_BF_O_Draft,
row_number() over(order by Mill_Vent_BF_O_Draft) AS r,
count(Mill_Vent_BF_O_Draft) over() as c
from industry),
median as (
select Mill_Vent_BF_O_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Reject,
row_number() over(order by Reject) AS r,
count(Reject) over() as c
from industry),
median as (
select Reject
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Sep_RPM,
row_number() over(order by Sep_RPM) AS r,
count(Sep_RPM) over() as c
from industry),
median as (
select Sep_RPM
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Sep_KW,
row_number() over(order by Sep_KW) AS r,
count(Sep_KW) over() as c
from industry),
median as (
select Sep_KW
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Sep_Amp,
row_number() over(order by Sep_Amp) AS r,
count(Sep_Amp) over() as c
from industry),
median as (
select Sep_Amp
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select CA_Fan_RPM,
row_number() over(order by CA_Fan_RPM) AS r,
count(CA_Fan_RPM) over() as c
from industry),
median as (
select CA_Fan_RPM
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select CA_Fan_KW,
row_number() over(order by CA_Fan_KW) AS r,
count(CA_Fan_KW) over() as c
from industry),
median as (
select CA_Fan_KW
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_Folaphone,
row_number() over(order by Mill_Folaphone) AS r,
count(Mill_Folaphone) over() as c
from industry),
median as (
select Mill_Folaphone
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_I_Draft,
row_number() over(order by Mill_I_Draft) AS r,
count(Mill_I_Draft) over() as c
from industry),
median as (
select Mill_I_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Mill_O_Draft,
row_number() over(order by Mill_O_Draft) AS r,
count(Mill_O_Draft) over() as c
from industry),
median as (
select Mill_O_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Sep_Vent_I_Draft,
row_number() over(order by Sep_Vent_I_Draft) AS r,
count(Sep_Vent_I_Draft) over() as c
from industry),
median as (
select Sep_Vent_I_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median


with ranked as(
select Sep_Vent_O_Draft,
row_number() over(order by Sep_Vent_O_Draft) AS r,
count(Sep_Vent_O_Draft) over() as c
from industry),
median as (
select Sep_Vent_O_Draft
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Sep_Vent_bag_filter_fan_kw,
row_number() over(order by Sep_Vent_bag_filter_fan_kw) AS r,
count(Sep_Vent_bag_filter_fan_kw) over() as c
from industry),
median as (
select Sep_Vent_bag_filter_fan_kw
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median

with ranked as(
select Sep_Vent_bag_filter_fan_rpm,
row_number() over(order by Sep_Vent_bag_filter_fan_rpm) AS r,
count(Sep_Vent_bag_filter_fan_rpm) over() as c
from industry),
median as (
select Sep_Vent_bag_filter_fan_rpm
from ranked
where r in (FLOOR((c+1)/2),CEILING((c+1)/2))
)
select * from median




Mill_TPH as mode_Mill_TPH,

#MODE###

select Mill_TPH as mode_Mill_TPH,count(*)
from industry
group by Mill_TPH
order by count(*) DESC
LIMIT 1

select Clinker_TPH as mode_Clinker_TPH,count(*)
from industry
group by Clinker_TPH
order by count(*) DESC
LIMIT 1

select Gypsum_TPH as mode_Gypsum_TPH,count(*)
from industry
group by Gypsum_TPH
order by count(*) DESC
LIMIT 1

select DFA_TPH as mode_DFA_TPH,count(*)
from industry
group by DFA_TPH
order by count(*) DESC
LIMIT 1

select WFA_TPH as mode_WFA_TPH,count(*)
from industry
group by WFA_TPH
order by count(*) DESC
LIMIT 1

select Mill_KW as mode_Mill_KW,count(*)
from industry
group by Mill_KW
order by count(*) DESC
LIMIT 1

select Mill_I_Temp as mode_Mill_I_Temp,count(*)
from industry
group by Mill_I_Temp
order by count(*) DESC
LIMIT 1

select Mill_O_Temp as mode_Mill_O_Temp,count(*)
from industry
group by Mill_O_Temp
order by count(*) DESC
LIMIT 1

select Mill_O_BE_Amp as mode_Mill_O_BE_Amp,count(*)
from industry
group by Mill_O_BE_Amp
order by count(*) DESC
LIMIT 1

select Mill_Vent_Fan_RPM as mode_Mill_Vent_Fan_RPM,count(*)
from industry
group by Mill_Vent_Fan_RPM
order by count(*) DESC
LIMIT 1

select Mill_Vent_Fan_KW as mode_Mill_Vent_Fan_KW,count(*)
from industry
group by Mill_Vent_Fan_KW
order by count(*) DESC
LIMIT 1

select Mill_Vent_BF_I_Draft as mode_Mill_Vent_BF_I_Draft,count(*)
from industry
group by Mill_Vent_BF_I_Draft
order by count(*) DESC
LIMIT 1

select Mill_Vent_BF_O_Draft as mode_Mill_Vent_BF_O_Draft,count(*)
from industry
group by Mill_Vent_BF_O_Draft
order by count(*) DESC
LIMIT 1

select Reject as mode_Reject,count(*)
from industry
group by Reject
order by count(*) DESC
LIMIT 1

select Sep_RPM as mode_Sep_RPM,count(*)
from industry
group by Sep_RPM
order by count(*) DESC
LIMIT 1

select Sep_KW as mode_Sep_KW,count(*)
from industry
group by Sep_KW
order by count(*) DESC
LIMIT 1

select Sep_Amp as mode_Sep_Amp,count(*)
from industry
group by Sep_Amp
order by count(*) DESC
LIMIT 1

select CA_Fan_RPM as mode_CA_Fan_RPM,count(*)
from industry
group by CA_Fan_RPM
order by count(*) DESC
LIMIT 1

select CA_Fan_KW as mode_CA_Fan_KW,count(*)
from industry
group by CA_Fan_KW
order by count(*) DESC
LIMIT 1

select Mill_Folaphone as mode_Mill_Folaphone,count(*)
from industry
group by Mill_Folaphone
order by count(*) DESC
LIMIT 1

select Mill_I_Draft as mode_Mill_I_Draft,count(*)
from industry
group by Mill_I_Draft
order by count(*) DESC
LIMIT 1

select Mill_O_Draft as mode_Mill_O_Draft,count(*)
from industry
group by Mill_O_Draft
order by count(*) DESC
LIMIT 1

select Sep_Vent_I_Draft as mode_Sep_Vent_I_Draft,count(*)
from industry
group by Sep_Vent_I_Draft
order by count(*) DESC
LIMIT 1

select Sep_Vent_O_Draft as mode_Sep_Vent_O_Draft,count(*)
from industry
group by Sep_Vent_O_Draft
order by count(*) DESC
LIMIT 1

select Sep_Vent_bag_filter_fan_kw as mode_Sep_Vent_bag_filter_fan_kw,count(*)
from industry
group by Sep_Vent_bag_filter_fan_kw
order by count(*) DESC
LIMIT 1

select Sep_Vent_bag_filter_fan_rpm as mode_Sep_Vent_bag_filter_fan_rpm,count(*)
from industry
group by Sep_Vent_bag_filter_fan_rpm
order by count(*) DESC
LIMIT 1

##2nd Moment Decision

Variance
SELECT
    VARIANCE(Mill_TPH) AS Variance_Mill_TPH,
    VARIANCE(Clinker_TPH) AS Variance_Clinker_TPH,
    VARIANCE(Gypsum_TPH) AS Variance_Gypsum_TPH,
    VARIANCE(DFA_TPH) AS Variance_DFA_TPH,
    VARIANCE(WFA_TPH) AS Variance_WFA_TPH,
    VARIANCE(Mill_KW) AS Variance_Mill_KW,
    VARIANCE(Mill_I_Temp) AS Variance_Mill_I_Temp,
    VARIANCE(Mill_O_Temp) AS Variance_Mill_O_Temp,
    VARIANCE(Mill_O_BE_Amp) AS Variance_Mill_O_BE_Amp,
    VARIANCE(Mill_Vent_Fan_RPM) AS Variance_Mill_Vent_Fan_RPM,
    VARIANCE(Mill_Vent_Fan_KW) AS Variance_Mill_Vent_Fan_KW,
    VARIANCE(Mill_Vent_BF_I_Draft) AS Variance_Mill_Vent_BF_I_Draft,
    VARIANCE(Mill_Vent_BF_O_Draft) AS Variance_Mill_Vent_BF_O_Draft,
    VARIANCE(Reject) AS Variance_Reject,
    VARIANCE(Sep_RPM) AS Variance_Sep_RPM,
    VARIANCE(Sep_KW) AS Variance_Sep_KW,
    VARIANCE(Sep_Amp) AS Variance_Sep_Amp,
    VARIANCE(CA_Fan_RPM) AS Variance_CA_Fan_RPM,
    VARIANCE(CA_Fan_KW) AS Variance_CA_Fan_KW,
    VARIANCE(Mill_Folaphone) AS Variance_Mill_Folaphone,
    VARIANCE(Mill_I_Draft) AS Variance_Mill_I_Draft,
    VARIANCE(Mill_O_Draft) AS Variance_Mill_O_Draft,
    VARIANCE(Sep_Vent_I_Draft) AS Variance_Sep_Vent_I_Draft,
    VARIANCE(Sep_Vent_O_Draft) AS Variance_Sep_Vent_O_Draft,
    VARIANCE(Sep_Vent_bag_filter_fan_kw) AS Variance_Sep_Vent_bag_filter_fan_kw,
    VARIANCE(Sep_Vent_bag_filter_fan_rpm) AS Variance_Sep_Vent_bag_filter_fan_rpm
    FROM industry;

#####Standard Deviation###

SELECT stddev(Mill_TPH) AS Mill_TPH_std,
stddev(Clinker_TPH) AS Clinker_TPH_std,
stddev(Gypsum_TPH) AS gypsium_TPH_std,
stddev(DFA_TPH)as DFA_TPH_std,
stddev(WFA_TPH)as WFA_TPH_std,
stddev(Mill_KW) as Mill_KW_std,
stddev(Mill_I_Temp) as Mill_I_Temp_std,
stddev(Mill_O_Temp) as Mill_OL_Temp_std,
stddev(Mill_O_BE_Amp) as Mill_O_BE_Amp_std,
stddev(Mill_Vent_Fan_RPM) as Mill_Vent_Fan_RPM_std,
stddev(Mill_Vent_Fan_KW) as Mill_Vent_Fan_KW_std,
stddev(Mill_Vent_BF_I_Draft) as Mill_Vent_BF_I_Draft_std,
stddev(Mill_Vent_BF_O_Draft) as Mill_Vent_BF_OL_Draft_std,
stddev(Reject) as Reject_std,
stddev(Sep_RPM)as Sep_RPM_std,
stddev(Sep_KW) as Sep_KW_std,
stddev(Sep_Amp) asSep_Amp_std,
stddev(CA_Fan_RPM) as CA_Fan_RPM_std,
stddev(CA_Fan_KW) as CA_Fan_KW_std,
stddev(Mill_Folaphone) as Mill_Folaphone_std,
stddev(Mill_I_Draft) as Mill_I_Draft_std,
stddev(Mill_O_Draft) as Mill_O_Draft_std,
stddev(Sep_Vent_I_Draft) as  Sep_Vent_I_Draft_std,
stddev(Sep_Vent_O_Draft) as Sep_Vent_O_Draft_std,
stddev(Sep_Vent_bag_filter_fan_kw) as Sep_Vent_bag_filter_fan_kw_std,
stddev(Sep_Vent_bag_filter_fan_rpm) as Sep_Vent_bag_filter_fan_rpm_std
FROM industry;

##Count##

SELECT COUNT(Mill_TPH) as Mill_TPH,
COUNT(Clinker_TPH) as Clinker_TPH,
COUNT(Gypsum_TPH) as Gypsum_TPH,
COUNT(DFA_TPH)as DFA_TPH,
COUNT(WFA_TPH)as WFA_TPH,
COUNT(Mill_KW) as Mill_KW,
COUNT(Mill_I_Temp) as Mill_I_Temp,
COUNT(Mill_O_Temp) as Mill_O_Temp,
COUNT(Mill_O_BE_Amp) as Mill_O_BE_Amp,
COUNT(Mill_Vent_Fan_RPM) as Mill_Vent_Fan_RPM,
COUNT(Mill_Vent_Fan_KW) as Mill_Vent_Fan_KW,
COUNT(Mill_Vent_BF_I_Draft) as Mill_Vent_BF_I_Draft,
COUNT(Mill_Vent_BF_O_Draft) as Mill_Vent_BF_O_Draft,
COUNT(Reject) as Reject,
COUNT(Sep_RPM)as Sep_RPM,
COUNT(Sep_KW) as Sep_KW,
COUNT(Sep_Amp) as Sep_Amp,
COUNT(CA_Fan_RPM) as CA_Fan_RPM,
COUNT(CA_Fan_KW) as CA_Fan_KW,
COUNT(Mill_Folaphone) as Mill_Folaphone,
COUNT(Mill_I_Draft) as Mill_IL_Draft,
COUNT(Mill_O_Draft) as Mill_OL_Draft,
COUNT(Sep_Vent_I_Draft) as  Sep_Vent_I_Draft,
COUNT(Sep_Vent_O_Draft) as SepVent_OL_Draft,
COUNT(Sep_Vent_bag_filter_fan_kw) as Sep_Vent_bag_filter_fan_kw,
COUNT(Sep_Vent_bag_filter_fan_rpm) as Sep_Vent_bag_filter_fan_rpm
from industry;


##MAX##

SELECT max(Mill_TPH) as Mill_TPH,
 max(Clinker_TPH) as Clinker_TPH,
max(Gypsum_TPH) as Gypsum_TPH,
 max(DFA_TPH)as DFA_TPH,
 max(WFA_TPH)as WFA_TPH,
 max(Mill_KW) as Mill_KW,
 max(Mill_I_Temp) as Mill_IL_Temp,
max(Mill_O_Temp) as Mill_OL_Temp,
 max(Mill_O_BE_Amp) as Mill_OL_BE_Amp,
max(Mill_Vent_Fan_RPM) as Mill_Vent_Fan_RPM,
 max(Mill_Vent_Fan_KW) as Mill_Vent_Fan_KW,
max(Mill_Vent_BF_I_Draft) as Mill_Vent_BF_I_Draft,
 max(Mill_Vent_BF_O_Draft) as Mill_Vent_BF_O_Draft,
 max(Reject) as Reject,
max(Sep_RPM)as Sep_RPM,
max(Sep_KW) as Sep_KW,
max(Sep_Amp) as Sep_Amp,
max(CA_Fan_RPM) as CA_Fan_RPM,
max(CA_Fan_KW) as CA_Fan_KW,
max(Mill_Folaphone) as Mill_Folaphone,
max(Mill_I_Draft) as Mill_I_Draft,
max(Mill_O_Draft) as Mill_O_Draft,
max(Sep_Vent_I_Draft) as  Sep_Vent_I_Draft,
max(Sep_Vent_O_Draft) as Sep_Vent_O_Draft,
max(Sep_Vent_bag_filter_fan_kw) as Sep_Vent_bag_filter_fan_kw,
max(Sep_Vent_bag_filter_fan_rpm) as Sep_Vent_bag_filter_fan_rpm
 from industry;


###MIN###
SELECT min(Mill_TPH) as Mill_TPH,
min(Clinker_TPH) as Clinker_TPH,
min(Gypsum_TPH) as Gypsum_TPH,
min(DFA_TPH)as DFA_TPH,
min(WFA_TPH)as WFA_TPH,
min(Mill_KW) as Mill_KW,
min(Mill_I_Temp) as Mill_IL_Temp,
min(Mill_O_Temp) as Mill_OL_Temp,
min(Mill_O_BE_Amp) as Mill_OL_BE_Amp,
min(Mill_Vent_Fan_RPM) as Mill_Vent_Fan_RPM,
min(Mill_Vent_Fan_KW) as Mill_Vent_Fan_KW,
min(Mill_Vent_BF_I_Draft) as Mill_Vent_BF_I_Draft,
min(Mill_Vent_BF_O_Draft) as Mill_Vent_BF_O_Draft,
min(Reject) as Reject,
min(Sep_RPM)as Sep_RPM,
min(Sep_KW) as Sep_KW,
min(Sep_Amp) as Sep_Amp,
min(CA_Fan_RPM) as CA_Fan_RPM,
min(CA_Fan_KW) as CA_Fan_KW,
min(Mill_Folaphone) as Mill_Folaphone,
min(Mill_I_Draft) as Mill_I_Draft,
min(Mill_O_Draft) as Mill_O_Draft,
min(Sep_Vent_I_Draft) as  Sep_Vent_I_Draft,
min(Sep_Vent_O_Draft) as Sep_Vent_O_Draft,
min(Sep_Vent_bag_filter_fan_kw) as Sep_Vent_bag_filter_fan_kw,
min(Sep_Vent_bag_filter_fan_rpm) as Sep_Vent_bag_filter_fan_rpm
 from industry;
 
 
 

 
 SELECT 
    (SUM(POWER(Mill_TPH - (SELECT AVG(Mill_TPH) FROM industry), 4)) / (COUNT(Mill_TPH) * POWER((SELECT STD(Mill_TPH) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Clinker_TPH - (SELECT AVG(Clinker_TPH) FROM industry), 4)) / (COUNT(Clinker_TPH) * POWER((SELECT STD(Clinker_TPH) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Gypsum_TPH - (SELECT AVG(Gypsum_TPH) FROM industry), 4)) / (COUNT(Gypsum_TPH) * POWER((SELECT STD(Gypsum_TPH) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(DFA_TPH- (SELECT AVG(DFA_TPH) FROM industry), 4)) / (COUNT(DFA_TPH) * POWER((SELECT STD(DFA_TPH) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(WFA_TPH - (SELECT AVG(WFA_TPH) FROM industry), 4)) / (COUNT(WFA_TPH) * POWER((SELECT STD(WFA_TPH) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_KW - (SELECT AVG(Mill_KW) FROM industry), 4)) / (COUNT(Mill_KW) * POWER((SELECT STD(Mill_KW) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Mill_I_Temp - (SELECT AVG(Mill_I_Temp) FROM industry), 4)) / (COUNT(Mill_I_Temp) * POWER((SELECT STD(Mill_I_Temp) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_O_Temp - (SELECT AVG(Mill_O_Temp) FROM industry), 4)) / (COUNT(Mill_O_Temp) * POWER((SELECT STD(Mill_O_Temp) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_O_BE_Amp - (SELECT AVG(Mill_O_BE_Amp) FROM industry), 4)) / (COUNT(Mill_O_BE_Amp) * POWER((SELECT STD(Mill_O_BE_Amp) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_Vent_Fan_RPM - (SELECT AVG(Mill_Vent_Fan_RPM) FROM industry), 4)) / (COUNT(Mill_Vent_Fan_RPM) * POWER((SELECT STD(Mill_Vent_Fan_RPM) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_Vent_Fan_KW - (SELECT AVG(Mill_Vent_Fan_KW) FROM industry), 4)) / (COUNT(Mill_Vent_Fan_KW) * POWER((SELECT STD(Mill_Vent_Fan_KW) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_Vent_BF_I_Draft - (SELECT AVG(Mill_Vent_BF_I_Draft) FROM industry), 4)) / (COUNT(Mill_Vent_BF_I_Draft) * POWER((SELECT STD(Mill_Vent_BF_I_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Mill_Vent_BF_O_Draft - (SELECT AVG(Mill_Vent_BF_O_Draft) FROM industry), 4)) / (COUNT(Mill_Vent_BF_O_Draft) * POWER((SELECT STD(Mill_Vent_BF_O_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Reject - (SELECT AVG(Reject) FROM industry), 4)) / (COUNT(Reject) * POWER((SELECT STD(Reject) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Sep_RPM - (SELECT AVG(Sep_RPM) FROM industry), 4)) / (COUNT(Sep_RPM) * POWER((SELECT STD(Sep_RPM) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Sep_KW - (SELECT AVG(Sep_KW) FROM industry), 4)) / (COUNT(Sep_KW) * POWER((SELECT STD(Sep_KW) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(Sep_Amp - (SELECT AVG(Sep_Amp) FROM industry), 4)) / (COUNT(Sep_Amp) * POWER((SELECT STD(Sep_Amp) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;

 SELECT 
    (SUM(POWER(CA_Fan_RPM - (SELECT AVG(CA_Fan_RPM) FROM industry), 4)) / (COUNT(CA_Fan_RPM) * POWER((SELECT STD(CA_Fan_RPM) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(CA_Fan_KW - (SELECT AVG(CA_Fan_KW) FROM industry), 4)) / (COUNT(CA_Fan_KW) * POWER((SELECT STD(CA_Fan_KW) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Mill_Folaphone - (SELECT AVG(Mill_Folaphone) FROM industry), 4)) / (COUNT(Mill_Folaphone) * POWER((SELECT STD(Mill_Folaphone) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Mill_I_Draft - (SELECT AVG(Mill_I_Draft) FROM industry), 4)) / (COUNT(Mill_I_Draft) * POWER((SELECT STD(Mill_I_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Mill_O_Draft - (SELECT AVG(Mill_O_Draft) FROM industry), 4)) / (COUNT(Mill_O_Draft) * POWER((SELECT STD(Mill_O_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Sep_Vent_I_Draft - (SELECT AVG(Sep_Vent_I_Draft) FROM industry), 4)) / (COUNT(Sep_Vent_I_Draft) * POWER((SELECT STD(Sep_Vent_I_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Sep_Vent_O_Draft - (SELECT AVG(Sep_Vent_O_Draft) FROM industry), 4)) / (COUNT(Sep_Vent_O_Draft) * POWER((SELECT STD(Sep_Vent_O_Draft) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Sep_Vent_bag_filter_fan_kw - (SELECT AVG(Sep_Vent_bag_filter_fan_kw) FROM industry), 4)) / (COUNT(Sep_Vent_bag_filter_fan_kw) * POWER((SELECT STD(Sep_Vent_bag_filter_fan_kw) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;


 SELECT 
    (SUM(POWER(Sep_Vent_bag_filter_fan_rpm - (SELECT AVG(Sep_Vent_bag_filter_fan_rpm) FROM industry), 4)) / (COUNT(Sep_Vent_bag_filter_fan_rpm) * POWER((SELECT STD(Sep_Vent_bag_filter_fan_rpm) FROM industry), 4))) - 3
AS Kurtosis
FROM industry;




stddev(`Sep.Vent bag filter fan rpm`) as SepVent_bag_filter_fan_rpm_std
stddev('Residue (45Âµ)') AS Residue_Mean
FROM industry;

SELECT stddev(Mill_TPH) AS Mill_TPH_std
FROM industry;

SELECT 
     PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Mill_TPH) AS 25th Percentile
FROM
    industry;


SELECT
    PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY Mill_TPH)
    oevr() as p AS Percentile
FROM industry;

SELECT
  PERCENTILE(Mill_TPH, 0.25) AS "25th Percentile"
FROM
  industry;


SELECT
(SELECT Mill_TPH
     FROM your_table
     ORDER BY Mill_TPH
     LIMIT 1 OFFSET FLOOR((0.25) * (SELECT COUNT(*) FROM industry))) AS Percentile;





 ###skewness###
 use cement_automation;
 
 SELECT 
    SUM(POW(Mill_TPH - (SELECT AVG(Mill_TPH) FROM industry), 3)) / (COUNT(Mill_TPH) * POW((SELECT STDDEV(Mill_TPH) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Clinker_TPH - (SELECT AVG(Clinker_TPH) FROM industry), 3)) / (COUNT(Clinker_TPH) * POW((SELECT STDDEV(Clinker_TPH) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Gypsum_TPH - (SELECT AVG(Gypsum_TPH) FROM industry), 3)) / (COUNT(Gypsum_TPH) * POW((SELECT STDDEV(Gypsum_TPH) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(DFA_TPH - (SELECT AVG(DFA_TPH) FROM industry), 3)) / (COUNT(DFA_TPH) * POW((SELECT STDDEV(DFA_TPH) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(WFA_TPH - (SELECT AVG(WFA_TPH) FROM industry), 3)) / (COUNT(WFA_TPH) * POW((SELECT STDDEV(WFA_TPH) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Mill_KW - (SELECT AVG(Mill_KW) FROM industry), 3)) / (COUNT(Mill_KW) * POW((SELECT STDDEV(Mill_KW) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Mill_KW - (SELECT AVG(Mill_KW) FROM industry), 3)) / (COUNT(Mill_KW) * POW((SELECT STDDEV(Mill_KW) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_I_Temp - (SELECT AVG(Mill_I_Temp) FROM industry), 3)) / (COUNT(Mill_I_Temp) * POW((SELECT STDDEV(Mill_I_Temp) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_O_Temp - (SELECT AVG(Mill_O_Temp) FROM industry), 3)) / (COUNT(Mill_O_Temp) * POW((SELECT STDDEV(Mill_O_Temp) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_O_BE_Amp - (SELECT AVG(Mill_O_BE_Amp) FROM industry), 3)) / (COUNT(Mill_O_BE_Amp) * POW((SELECT STDDEV(Mill_O_BE_Amp) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_Vent_Fan_RPM - (SELECT AVG(Mill_Vent_Fan_RPM) FROM industry), 3)) / (COUNT(Mill_Vent_Fan_RPM) * POW((SELECT STDDEV(Mill_Vent_Fan_RPM) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_Vent_Fan_KW - (SELECT AVG(Mill_Vent_Fan_KW) FROM industry), 3)) / (COUNT(Mill_Vent_Fan_KW) * POW((SELECT STDDEV(Mill_Vent_Fan_KW) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_Vent_BF_I_Draft - (SELECT AVG(Mill_Vent_BF_I_Draft) FROM industry), 3)) / (COUNT(Mill_Vent_BF_I_Draft) * POW((SELECT STDDEV(Mill_Vent_BF_I_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_Vent_BF_O_Draft - (SELECT AVG(Mill_Vent_BF_O_Draft) FROM industry), 3)) / (COUNT(Mill_Vent_BF_O_Draft) * POW((SELECT STDDEV(Mill_Vent_BF_O_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Reject - (SELECT AVG(Reject) FROM industry), 3)) / (COUNT(Reject) * POW((SELECT STDDEV(Reject) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_RPM - (SELECT AVG(Sep_RPM) FROM industry), 3)) / (COUNT(Sep_RPM) * POW((SELECT STDDEV(Sep_RPM) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_KW - (SELECT AVG(Sep_KW) FROM industry), 3)) / (COUNT(Sep_KW) * POW((SELECT STDDEV(Sep_KW) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_Amp - (SELECT AVG(Sep_Amp) FROM industry), 3)) / (COUNT(Sep_Amp) * POW((SELECT STDDEV(Sep_Amp) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(CA_Fan_RPM - (SELECT AVG(CA_Fan_RPM) FROM industry), 3)) / (COUNT(CA_Fan_RPM) * POW((SELECT STDDEV(CA_Fan_RPM) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(CA_Fan_KW - (SELECT AVG(CA_Fan_KW) FROM industry), 3)) / (COUNT(CA_Fan_KW) * POW((SELECT STDDEV(CA_Fan_KW) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Mill_Folaphone - (SELECT AVG(Mill_Folaphone) FROM industry), 3)) / (COUNT(Mill_Folaphone) * POW((SELECT STDDEV(Mill_Folaphone) FROM industry), 3)) AS Skewness
FROM industry;

 SELECT 
    SUM(POW(Mill_I_Draft - (SELECT AVG(Mill_I_Draft) FROM industry), 3)) / (COUNT(Mill_I_Draft) * POW((SELECT STDDEV(Mill_I_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Mill_O_Draft - (SELECT AVG(Mill_O_Draft) FROM industry), 3)) / (COUNT(Mill_O_Draft) * POW((SELECT STDDEV(Mill_O_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_Vent_I_Draft - (SELECT AVG(Sep_Vent_I_Draft) FROM industry), 3)) / (COUNT(Sep_Vent_I_Draft) * POW((SELECT STDDEV(Sep_Vent_I_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_Vent_O_Draft - (SELECT AVG(Sep_Vent_O_Draft) FROM industry), 3)) / (COUNT(Sep_Vent_O_Draft) * POW((SELECT STDDEV(Sep_Vent_O_Draft) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_Vent_bag_filter_fan_kw - (SELECT AVG(Sep_Vent_bag_filter_fan_kw) FROM industry), 3)) / (COUNT(Sep_Vent_bag_filter_fan_kw) * POW((SELECT STDDEV(Sep_Vent_bag_filter_fan_kw) FROM industry), 3)) AS Skewness
FROM industry;


 SELECT 
    SUM(POW(Sep_Vent_bag_filter_fan_rpm - (SELECT AVG(Sep_Vent_bag_filter_fan_rpm) FROM industry), 3)) / (COUNT(Sep_Vent_bag_filter_fan_rpm) * POW((SELECT STDDEV(Sep_Vent_bag_filter_fan_rpm) FROM industry), 3)) AS Skewness
FROM industry;

use cement_automation;

SELECT Mill_TPH
FROM (
  SELECT Mill_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_TPH
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_TPH
FROM (
  SELECT Mill_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_TPH
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;



SELECT Clinker_TPH
FROM (
  SELECT Clinker_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Clinker_TPH
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Clinker_TPH
FROM (
  SELECT Clinker_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Clinker_TPH
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Gypsum_TPH
FROM (
  SELECT Gypsum_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Gypsum_TPH
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Gypsum_TPH
FROM (
  SELECT Gypsum_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Gypsum_TPH
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT DFA_TPH
FROM (
  SELECT DFA_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY DFA_TPH
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT DFA_TPH
FROM (
  SELECT DFA_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY DFA_TPH
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT WFA_TPH
FROM (
  SELECT WFA_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY WFA_TPH
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT WFA_TPH
FROM (
  SELECT WFA_TPH, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY WFA_TPH
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_KW
FROM (
  SELECT Mill_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_KW
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_KW
FROM (
  SELECT Mill_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_KW
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_I_Temp
FROM (
  SELECT Mill_I_Temp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_I_Temp
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_I_Temp
FROM (
  SELECT Mill_I_Temp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_I_Temp
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_O_Temp
FROM (
  SELECT Mill_O_Temp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_Temp
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_O_Temp
FROM (
  SELECT Mill_O_Temp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_Temp
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_O_BE_Amp
FROM (
  SELECT Mill_O_BE_Amp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_BE_Amp
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_O_BE_Amp
FROM (
  SELECT Mill_O_BE_Amp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_BE_Amp
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_Vent_Fan_RPM
FROM (
  SELECT Mill_Vent_Fan_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_Fan_RPM
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_Vent_Fan_RPM
FROM (
  SELECT Mill_Vent_Fan_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_Fan_RPM
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_Vent_Fan_KW
FROM (
  SELECT Mill_Vent_Fan_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_Fan_KW
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_Vent_Fan_KW
FROM (
  SELECT Mill_Vent_Fan_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_Fan_KW
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_Vent_BF_I_Draft
FROM (
  SELECT Mill_Vent_BF_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_BF_I_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_Vent_BF_I_Draft
FROM (
  SELECT Mill_Vent_BF_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_BF_I_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_Vent_BF_O_Draft
FROM (
  SELECT Mill_Vent_BF_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_BF_O_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_Vent_BF_O_Draft
FROM (
  SELECT Mill_Vent_BF_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Vent_BF_O_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Reject
FROM (
  SELECT Reject, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Reject
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Reject
FROM (
  SELECT Reject, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Reject
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_RPM
FROM (
  SELECT Sep_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_RPM
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_RPM
FROM (
  SELECT Sep_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_RPM
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_KW
FROM (
  SELECT Sep_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_KW
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_KW
FROM (
  SELECT Sep_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_KW
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_Amp
FROM (
  SELECT Sep_Amp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Amp
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_Amp
FROM (
  SELECT Sep_Amp, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Amp
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT CA_Fan_RPM
FROM (
  SELECT CA_Fan_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY CA_Fan_RPM
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT CA_Fan_RPM
FROM (
  SELECT CA_Fan_RPM, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY CA_Fan_RPM
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT CA_Fan_KW
FROM (
  SELECT CA_Fan_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY CA_Fan_KW
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT CA_Fan_KW
FROM (
  SELECT CA_Fan_KW, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY CA_Fan_KW
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;

SELECT Mill_Folaphone
FROM (
  SELECT Mill_Folaphone, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Folaphone
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_Folaphone
FROM (
  SELECT Mill_Folaphone, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_Folaphone
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_I_Draft
FROM (
  SELECT Mill_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_I_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_I_Draft
FROM (
  SELECT Mill_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_I_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Mill_O_Draft
FROM (
  SELECT Mill_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Mill_O_Draft
FROM (
  SELECT Mill_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Mill_O_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_Vent_I_Draft
FROM (
  SELECT Sep_Vent_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_I_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_Vent_I_Draft
FROM (
  SELECT Sep_Vent_I_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_I_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_Vent_O_Draft
FROM (
  SELECT Sep_Vent_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_O_Draft
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_Vent_O_Draft
FROM (
  SELECT Sep_Vent_O_Draft, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_O_Draft
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_Vent_bag_filter_fan_kw
FROM (
  SELECT Sep_Vent_bag_filter_fan_kw, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_bag_filter_fan_kw
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_Vent_bag_filter_fan_kw
FROM (
  SELECT Sep_Vent_bag_filter_fan_kw, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_bag_filter_fan_kw
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;


SELECT Sep_Vent_bag_filter_fan_rpm
FROM (
  SELECT Sep_Vent_bag_filter_fan_rpm, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_bag_filter_fan_rpm
) t
WHERE t.r >= CEIL(0.25 * @total_rows)
LIMIT 1;

SELECT Sep_Vent_bag_filter_fan_rpm
FROM (
  SELECT Sep_Vent_bag_filter_fan_rpm, @rownum := @rownum + 1 AS r, @total_rows := @rownum
  FROM industry, (SELECT @rownum := 0) r
  ORDER BY Sep_Vent_bag_filter_fan_rpm
) t
WHERE t.r >= CEIL(0.75 * @total_rows)
LIMIT 1;

select * from industry;


### Find DUPLICATES###
select Date_Time,count(*) from industry
group by Date_Time having COUNT(*) >1;

select Mill_Vent_Fan_RPM,count(*) from industry
group by Mill_Vent_Fan_RPM having COUNT(*) >1;

##FIND NULL VALUES###


###find unique values##

SELECT Mill_Vent_Fan_RPM, COUNT(DISTINCT Mill_Vent_Fan_RPM) AS unique_values
FROM industry
GROUP BY Mill_Vent_Fan_RPM;

##To find Distinct count of the table###

SELECT COUNT(DISTINCT CONCAT(Date_Time,Mill_TPH, Clinker_TPH, Gypsum_TPH,DFA_TPH,WFA_TPH,Mill_KW,Mill_I_Temp,Mill_O_Temp,Mill_O_BE_Amp,
Mill_Vent_Fan_RPM,Mill_Vent_Fan_KW,Mill_Vent_BF_I_Draft,Mill_Vent_BF_O_Draft,Reject,Sep_RPM,Sep_KW,Sep_Amp,CA_Fan_RPM,CA_Fan_KW,
Mill_Folaphone,Mill_I_Draft,Mill_O_Draft,Sep_Vent_I_Draft,Sep_Vent_O_Draft,Sep_Vent_bag_filter_fan_kw,Sep_Vent_bag_filter_fan_rpm,Residue_(45Âµ))) AS unique_values
FROM industry;

###find duplicates###

SELECT Date_Time,Mill_TPH,Clinker_TPH,Gypsum_TPH,DFA_TPH,WFA_TPH,Mill_KW,Mill_I_Temp,Mill_O_Temp,Mill_O_BE_Amp,
Mill_Vent_Fan_RPM,Mill_Vent_Fan_KW,Mill_Vent_BF_I_Draft,Mill_Vent_BF_O_Draft,Reject,Sep_RPM,Sep_KW,Sep_Amp,CA_Fan_RPM,CA_Fan_KW,
Mill_Folaphone,Mill_I_Draft,Mill_O_Draft,Sep_Vent_I_Draft,Sep_Vent_O_Draft,Sep_Vent_bag_filter_fan_kw,Sep_Vent_bag_filter_fan_rpm,Residue_(45Âµ),count(*) as count from industry group by Date_Time,Mill_TPH, Clinker_TPH, Gypsum_TPH,DFA_TPH,WFA_TPH,Mill_KW,Mill_I_Temp,Mill_O_Temp,Mill_O_BE_Amp,Mill_Vent_Fan_RPM,Mill_Vent_Fan_KW,Mill_Vent_BF_I_Draft,Mill_Vent_BF_O_Draft,Reject,Sep_RPM,Sep_KW,Sep_Amp,CA_Fan_RPM,CA_Fan_KW,
Mill_Folaphone,Mill_I_Draft,Mill_O_Draft,Sep_Vent_I_Draft,Sep_Vent_O_Draft,Sep_Vent_bag_filter_fan_kw,Sep_Vent_bag_filter_fan_rpm,Residue_(45Âµ) having count(*)>1 


use cement_automation;

select * from industry;

###Find outliers by SQL###
select
Date_Time,
Mill_TPH,
(Mill_TPH-AVG(Mill_TPH) over())/ stddev(Mill_TPH) over() as Zscore
from industry;

###Extreme outliers by 3SD###
select * from
(select
Date_Time,
Mill_TPH,
(Mill_TPH-AVG(Mill_TPH) over())/ stddev(Mill_TPH) over() as Zscore
from industry) as Score_Table
where Zscore>2.576 or Zscore<-2.576

##outliers 2SD and above/below mean

select * from 
(select 
Date_Time,
Mill_TPH,
(Mill_TPH-AVG(Mill_TPH) over())/stddev(Mill_TPH) over() as Zscore
from industry) as Score_Table
where Zscore>1.960 or Zscore<-1.960

###Outliers 1SD and above/Below mean
select * from
(select 
Date_Time,
Mill_TPH,
(Mill_TPH-AVG(Mill_TPH) over())/STDDEV(Mill_Tph) over() as Zscore
from industry) as Zscore_Table
where Zscore>1.645 or Zscore<-1.645




DROP table industry;


###TO FIND NIT NULL##

select * from industry where Mill_TPH is Not null;

###TO find Null Values no###

