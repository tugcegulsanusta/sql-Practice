SELECT Wands.id, Wands_Property.age, Wands.coins_needed, Wands.power
FROM Wands
JOIN Wands_Property on Wands.code = Wands_property.code
WHERE (age, power, coins_needed)in
    (SELECT age, power, min(coins_needed)
     FROM Wands
     JOIN Wands_Property on Wands.code = Wands_Property.code
     WHERE Wands_Property.is_evil = 0
     GROUP BY age, power)
ORDER BY power desc ,age desc ;
