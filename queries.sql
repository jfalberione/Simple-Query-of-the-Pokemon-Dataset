SELECT * FROM "mytable";

/*Avg values of Attack, Defense and Speed*/
SELECT ROUND(AVG(hp)) AS Avg_HP, ROUND(AVG(Attack)) AS Avg_Attack, ROUND(AVG(Defense)) AS Avg_Defense, ROUND(AVG(Speed)) AS Avg_Speed FROM "mytable";

/*Pokemons with the highest HP, Attack, Defense and Speed*/
SELECT MAX(hp) AS max_hp, MAX(Attack) AS max_attack, MAX(Defense) AS max_defense, MAX(Speed) AS max_speed FROM "mytable";
SELECT * FROM "mytable"
WHERE hp = 255 OR Attack = 181 OR Defense = 230 OR Speed = 200;


/*Types of pokemon that have an hp, Attack, Defense and Speed value above the average*/
SELECT "name", Type1, hp, attack, defense, speed FROM "mytable"
    WHERE hp > 70 AND Attack > 77 AND Defense > 72 AND Speed > 67
    GROUP BY "name", Type1, hp, attack, defense, speed
    ORDER BY type1;

/*Compartative between the pokemos with above averare hp, attack, defense and speed order by total*/
SELECT * FROM "mytable"
    WHERE hp > 70 AND Attack > 77 AND Defense > 72 AND Speed > 67
    ORDER BY total DESC;
    
/*Clasifie all the pokemon by above avg and bellow avg */
SELECT *,
    CASE
        WHEN HP > 70 AND Attack > 77 AND Defense > 72 AND Speed > 67 THEN 'Pokemon above avg'
        ELSE 'Pokemon below avg'
    END AS "above or below avg stats"
FROM "mytable";

/*What types of categories are and how many of each*/
SELECT category, COUNT(*) FROM "mytable" GROUP BY category;

/*Check all the MYTHICAL pokemon*/
SELECT * FROM "mytable" WHERE category = 'Mythical';

/*Check the max stats in the mythical pokemons*/
SELECT MAX(hp) AS max_hp_mythical, MAX(Attack) AS max_attack_mythical, MAX(Defense) AS max_defense_mythical, MAX(Speed) AS max_speed_mythical FROM "mytable"
WHERE category = 'Mythical';

/*Check the mithical pokemon with the higher stats*/
SELECT * FROM "mytable"
WHERE category = 'Mythical' AND (hp = 135 OR Attack = 150 OR Defense = 150 OR Speed = 150);

/*Avg values of Attack, Defense and Speed of Mythical pokemon*/
SELECT ROUND(AVG(hp)) AS Avg_HP, ROUND(AVG(Attack)) AS Avg_Attack, ROUND(AVG(Defense)) AS Avg_Defense, ROUND(AVG(Speed)) AS Avg_Speed FROM "mytable" 
WHERE category = 'Mythical';

/*Types of Mithical pokemon that have an hp, Attack, Defense and Speed value above the average*/
SELECT "name", Type1, hp, attack, defense, speed, category FROM "mytable"
    WHERE category = 'Mythical' AND hp > 88 AND Attack > 104 AND Defense > 96 AND Speed > 94
    GROUP BY "name", Type1, hp, attack, defense, speed, category
    ORDER BY type1;
    
/*Check all the LEGENDARY pokemon*/
SELECT * FROM "mytable" WHERE category = 'Legendary';

/*Check the max stats in the Legendary pokemons*/
SELECT MAX(hp) AS max_hp_legendary, MAX(Attack) AS max_attack_legendary, MAX(Defense) AS max_defense_legendary, MAX(Speed) AS max_speed_legendary FROM "mytable"
WHERE category = 'Legendary';

/*Check the Legendary pokemon with the higher stats*/
SELECT * FROM "mytable"
WHERE category = 'Legendary' AND (hp = 150 OR Attack = 150 OR Defense = 140 OR Speed = 138);

/*Avg values of Attack, Defense and Speed of Legendary pokemon*/
SELECT ROUND(AVG(hp)) AS Avg_HP, ROUND(AVG(Attack)) AS Avg_Attack, ROUND(AVG(Defense)) AS Avg_Defense, ROUND(AVG(Speed)) AS Avg_Speed FROM "mytable" 
WHERE category = 'Legendary';

/*Types of Legendary pokemon that have an hp, Attack, Defense and Speed value above the average*/
SELECT "name", Type1, hp, attack, defense, speed, category FROM "mytable"
    WHERE category = 'Legendary' AND hp > 105 AND Attack > 110 AND Defense > 103 AND Speed > 98
    GROUP BY "name", Type1, hp, attack, defense, speed, category
    ORDER BY type1;
/*There are no Legendary pokemon with all the majaor stats avobe the average*/
/*2nd Try lowering the hp avg stat*/
SELECT "name", Type1, hp, attack, defense, speed, category FROM "mytable"
    WHERE category = 'Legendary' AND hp > 90 AND Attack > 110 AND Defense > 103 AND Speed > 98
    GROUP BY "name", Type1, hp, attack, defense, speed, category
    ORDER BY type1;

/*Compare the Mythical and Legendary pokemon with major stats avobe the average*/
SELECT "name", Type1, hp, attack, defense, speed, category FROM "mytable"
    WHERE "name" = 'Zacian Hero of Many Battles' OR "name" = 'Koraidon' OR "name" = 'Zamazenta Hero of Many Battles' OR "name" = 'Zarude' OR "name" = 'Arceus'
    GROUP BY "name", Type1, hp, attack, defense, speed, category
    ORDER BY category;
