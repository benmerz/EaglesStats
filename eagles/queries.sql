UPDATE eagles
SET two_point_attempt = CAST(two_point_attempt AS INTEGER);

UPDATE eagles
SET rush_attempt = CAST(rush_attempt AS INTEGER);

SELECT 
    total(rushing_yards) AS total_rushing_yards,
    total(fumble) AS total_fumbles,
    total(fumble_lost) AS total_fumbles_lost,
    MAX(rushing_yards) AS max_rushing_yards,
    total(rush_attempt) AS total_rushing_attempts
FROM eagles
WHERE rusher_player_name = 'S.Barkley' AND season_type = 'REG' AND two_point_attempt = 0;



SELECT two_point_attempt = 0 and two_point_attempt is not NULL FROM eagles


select week, sum(yards_gained)
from eagles
group by week
order by sum(yards_gained) 