select * from CovidVaccinations;
select * from CovidDeaths;

Select Location, date, total_cases, new_cases, total_deaths, population
From CovidDeaths
Where continent is not null 
order by 1,2;


Select Location, date, total_cases, total_deaths , (total_deaths/total_cases)*100 as DeathsPercentage
From CovidDeaths
where total_deaths is not null and location like '%state%'
order by 1,2;




select location , date , total_cases , population , (total_cases/population)*100 as populationPercentage From CovidDeaths
where location like 'eg%'
order by 3 desc , 2




Select Location, MAX(total_deaths) as HighestDeathsCount
From .CovidDeaths
--Where location like '%states%'
Group by Location
order by HighestDeathsCount desc

SELECT FORMAT(date, 'dd/MM/yyyy') AS FormattedDate from CovidDeaths;
