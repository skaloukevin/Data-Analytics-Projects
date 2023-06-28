Select *
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year >= 2015
order by 5 desc


-- Looking at year with highest deaths for each countries and for each age segment 


Select [Code], [Year], max(cast([Deaths_Rate_all_ages] as int)) as HighestDeathsAllAges
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year = 2015 and Code is not null
Group by Code, Year
Order by 2, 3 desc

Select [Code], [Year], max(cast([Deaths_Rate_all_ages] as int)) as HighestDeathsAllAges
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year = 2016 and Code is not null 
Group by Code, Year
Order by 2, 3 desc

Select [Code], [Year], max(cast([Deaths_Rate_all_ages] as int)) as HighestDeathsAllAges
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year = 2017 and Code is not null
Group by Code, Year
Order by 2, 3 desc

Select [Code], [Year], max(cast([Deaths_Rate_all_ages] as int)) as HighestDeathsAllAges
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year = 2018 and Code is not null
Group by Code, Year
Order by 2, 3 desc

Select [Code], [Year], max(cast([Deaths_Rate_all_ages] as int)) as HighestDeathsAllAges
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year = 2019 and Code is not null
Group by Code, Year
Order by 2, 3 desc

--global deaths for each year for all age segments

Select [Year],sum(cast([Deaths_Rate_all_ages] as int)) as TotalDeathsAllAges,sum(cast([Deaths_Rate_under_5] as int)) as TotalDeathsUnder5, Sum(cast([Deaths_Rate_5-14_years] as int)) as TotalDeaths5to14, Sum(cast([Deaths_Rate_15-49_years] as int)) as TotalDeaths15to49, Sum(cast([Deaths_Rate_50-69_years] as int)) as TotalDeaths50to69,
sum(cast([Deaths_Rate_70+_years]as int)) as TotalDeaths70plus
From SQLMalaria..['malaria-death-rates-by-age$']
Where Year >= 2015
Group by Year
Order by 1


