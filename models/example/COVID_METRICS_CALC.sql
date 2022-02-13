{{ config(materialized='table') }}
select a.location,b.island,b.province,date,b.COUNTRY,b.continent,
Sum(TOTAL_CASES+new_cases) as Total_Active_Cases,
Sum(total_recovered+new_recovered) as Total_Recovered,
sum(total_deaths+NEW_DEATHS) as Total_Death,
sum(GROWTH_FACTOR_OF_NEW_CASES) as Growth_factor_of_new_cases,
sum(case_recovered_rate) as case_recovered_rate,
sum(case_fatality_rate) as case_fatality_rate,
Sum(POPULATION) as Total_population
from covid_stats a left join locations b on a.location=b.location and a.island=b.island
group by a.location,b.island,b.province,b.CONTINENT,b.COUNTRY,date