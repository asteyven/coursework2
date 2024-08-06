SELECT co.Name as Country,
       co.Population as TotalPopulation,
       SUM(ci.Population) as CityPopulation,
       (co.Population - SUM(ci.Population)) as NonCityPopulation,
       (SUM(ci.Population) / co.Population) * 100 as CityPopulationPercentage,
       ((co.Population - SUM(ci.Population)) / co.Population) * 100 as NonCityPopulationPercentage
FROM Country co
JOIN City ci ON co.Code = ci.CountryCode
GROUP BY co.Name, co.Population;
