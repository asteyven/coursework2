SELECT c.Name, c.CountryCode, c.Population
FROM City c
JOIN Country co ON c.ID = co.Capital
ORDER BY c.Population DESC;
