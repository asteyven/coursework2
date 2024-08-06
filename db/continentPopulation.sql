SELECT Continent, SUM(Population) as ContinentPopulation
FROM Country
GROUP BY Continent;
