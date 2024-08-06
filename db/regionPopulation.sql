SELECT Region, SUM(Population) as RegionPopulation
FROM Country
GROUP BY Region;
