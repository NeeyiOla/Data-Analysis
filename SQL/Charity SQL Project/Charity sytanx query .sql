select * from donation_data;
select * from donor_data;

-- How much is the total donation?
select sum(donation) as total_donation 
from donation_data;

select distinct  "state" 
from donation_data;

--What is the total donation by gender?
select gender, sum (donation) as total_donation 
from donation_data
group by gender;

--ow e tal donation and number of donations by gender 


select gender, sum (donation) as "Total Donation", count (donation) as "Number of donations"
from donation_data
group by gender;

-- Total donation made by frequency of donation
select sum (donation) as total_donation, count (donation) as "Number of donations", donation_frequency,
distinct (State) as "Count of state"
from donation_data
full join donor_data
on donor_data.id=donation_data.id
group by (state), donation_frequency;

-- Total donation and number of donation by Job field
select job_field, count (job_field), sum (donation) as total_donation 
from donation_data
group by job_field;

-- Total donation and number of donations above 200
select sum (donation) as total_donation, 
count(donation) as number_donation
from donation_data
where donation >'200';


-- Total donation and number of donations below $200
select sum (donation) as Total_donation_below_$200, 
count (donation) as number_donation_below_$200 from donation_data
where donation< '200';


-- Which top 10 states contributes the highest
donations
select state, sum (donation) as total_donation 
from donation_data
order by donation desc
limit 10;

SELECT state, SUM(donation) AS total_donation, count (donation) as "Number of donations"
FROM donation_data
GROUP BY state
ORDER BY total_donation DESC
LIMIT 10;


-- Which top 10 states contributes the least donations
SELECT state, SUM(donation) AS total_donation, count (donation) as "Number of donations"
FROM donation_data
GROUP BY state
ORDER BY total_donation asc
LIMIT 10;


-- What are the top 10 cars driven by the highest
donors

select donation_data.id, donation, car 
from donation_data
full join donor_data
on donor_data.id=donation_data.id
group by donation, donation_data.id, car
order by donation desc
limit 10;

select concat(first_name,' ',last_name),donation,car
from donation_data
full join donor_data on donation_data.id=donor_data.id
order by donation desc
limit 10;