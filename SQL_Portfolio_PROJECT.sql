--SELECT *
--FROM PortfolioProject..CovidDeaths

--SELECT *
--FROM PortfolioProject..CovidVaccinations

--USE DATA

--SELECT location, date, total_cases, new_cases, total_deaths, population
--FROM PortfolioProject..CovidDeaths
--ORDER BY 1, 2


--The Percentage of the Totals

--SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)* 100 Percentage_of_deaths
--FROM PortfolioProject..CovidDeaths
--WHERE location like '%states%'
--ORDER BY 1, 2

--SELECT location, date, total_cases, population, total_deaths, (total_cases/population)* 100 Percentage_of_deaths
--FROM PortfolioProject..CovidDeaths
--ORDER BY date, total_cases, population, total_deaths


-- Cases recorded per country

--SELECT location, population, MAX(total_cases) Magnitude_of_cases, MAX(total_cases/population)*100 percentage_of_population
--FROM PortfolioProject..CovidDeaths
--GROUP BY location, population
--ORDER BY percentage_of_population DESC

-- Calculating the DeatToll

--SELECT location, population, MAX(total_cases) Total_cases, MAX(CAST(total_deaths AS INT)) Deathtoll, MAX(total_cases/population) Percentage_died
--FROM PortfolioProject..CovidDeaths
--WHERE continent IS NOT NULL 
--GROUP BY location, population
--ORDER BY Deathtoll DESC

--SELECT location, MAX(CAST(total_deaths AS INT)) Deathtoll
--FROM PortfolioProject..CovidDeaths
--WHERE continent IS NOT NULL 
--GROUP BY location
--ORDER BY Deathtoll DESC


--THE DEATH TOLL




--SELECT cd.location,Max(total_cases) Infected_people, Max(total_deaths) DeathToll, MAX(total_deaths/total_cases)*100 percentageOfDeaths, 
--			cd.population, MAX(total_deaths/population)*100 DeathsByTotalPopulation
--FROM PortfolioProject..CovidDeaths cd
--JOIN PortfolioProject..CovidVaccinations vc
--	ON vc.location = cd.location
--GROUP BY cd.location, cd.population 


SELECT *
FROM CovidDeaths
WHERE continent IS NOT NULL








