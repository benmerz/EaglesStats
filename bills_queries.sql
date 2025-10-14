-- Wild Card round
SELECT sum(rushing_yards)
from bills
WHERE season_type = 'REG' and posteam = 'BUF';

-- Divisional round
SELECT week, SUM(rushing_yards) AS total_rush_yards
FROM bills
WHERE posteam = 'BUF' AND season_type = 'REG'
GROUP BY week
ORDER BY total_rush_yards desc;

-- Conference Championship
SELECT COUNT(*)
FROM bills
WHERE posteam = 'BUF'
  AND season_type = 'REG'
  AND play_type IN ('run', 'pass', 'sack', 'qb_kneel');

-- Super Bowl
SELECT SUM(yards_gained) AS total_passing_yards
FROM bills
WHERE posteam = 'BUF' AND season_type = 'REG'
    AND play_type IN ('pass');
