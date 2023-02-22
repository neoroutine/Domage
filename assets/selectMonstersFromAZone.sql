SELECT *
FROM Monster 
INNER JOIN MonsterZone on Monster.id = MonsterZone.monsterId
INNER JOIN Zone on MonsterZone.zoneId = Zone.id
WHERE Zone.name = "Zone1"