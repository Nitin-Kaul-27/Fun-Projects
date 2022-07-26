
-- Shows the data to be used for exploration
select * from [Covid19-Data-Exploration]..Cov_vac

select * from [Covid19-Data-Exploration]..covid_deaths

-- Daily COVID-19 deaths per million 

-- Shows new deaths/ million everyday in every country
select location,date,new_deaths_per_million
from [Covid19-Data-Exploration]..covid_deaths
order by 1,2

-- Shows new deaths/million everyday only in INDIA
select location,date,new_deaths_per_million
from [Covid19-Data-Exploration]..covid_deaths
where location='India'
order by 1,2

-- Shows new deaths/million on a specific date in INDIA
select location,date,new_deaths_per_million
from [Covid19-Data-Exploration]..covid_deaths
where location='India' and date='2022-07-09'
order by 1,2


-- Cummulative COVID-19 deaths

-- Shows total deaths in different countries 
select location, max(convert(int,total_deaths)) as Total_deaths
from [Covid19-Data-Exploration]..covid_deaths
where continent is not null
group by location
order by 2 desc

-- Shows Total deaths in all continents
with cont_stat(continent,location,Total_death, Rolling_death_in_continent)
as 
(
select continent,location, max(convert(int,total_deaths)) as Total_death,
sum(max(convert(int,total_deaths))) over (partition by continent order by location) as Rolling_death_in_continent
from [Covid19-Data-Exploration]..covid_deaths
where continent is not null
group by continent,location
)
select continent, max(Rolling_death_in_continent) as Total_deaths_in_continents
from cont_stat
group by continent

-- Shows maximum cases reported in a single day
select location, max(new_cases) as Max_cases_reported_in_a_day, max(cast(new_deaths as float)) as Max_deaths_in_a_day
from [Covid19-Data-Exploration]..covid_deaths
where continent is not null
group by location
order by location

-- Joining data

-- Shows Countries with higest rate of cases reported and Casualties happened
select cod.location, max(cov.population) as Population, max(cod.total_cases) as Total_cases, 
        max(convert(int,cod.total_deaths)) as Total_deaths,
        max(cod.total_cases)/max(cov.population)*100 as Case_Percentage,
	   (max(convert(int,cod.total_deaths))/max(cov.population))*100 as Death_Percentage
from [Covid19-Data-Exploration]..covid_deaths as cod
join [Covid19-Data-Exploration]..Cov_vac as cov
on cod.location=cov.location
where cod.continent is not null
group by cod.location
order by 1


-- Shows Countries with higest rate of cases reported and Vaccines done
select cod.location, max(cov.population) as Population, max(cod.total_cases)/max(cov.population)*100 as Case_Rate,
max(cast(cov.people_fully_vaccinated as float))/max(cov.population)*100 as Vaccination_Rate
from [Covid19-Data-Exploration]..covid_deaths as cod
join [Covid19-Data-Exploration]..Cov_vac as cov
on cod.location=cov.location
where cod.continent is not null
group by cod.location
order by 1

-- Shows patients hospitalized everyday 
select cod.location, cod.date, cod.hosp_patients, cov.hospital_beds_per_thousand
from [Covid19-Data-Exploration]..covid_deaths as cod
join [Covid19-Data-Exploration]..Cov_vac as cov
on cod.location=cov.location
group by cod.location,cod.date, cod.hosp_patients, cov.hospital_beds_per_thousand
order by 1






