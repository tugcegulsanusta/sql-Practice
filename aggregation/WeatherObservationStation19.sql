SELECT ROUND(SQRT
                 (POWER((MAX(long_w)-MIN(long_W)),2)+
                  POWER((MAX(lat_n)-MIN(lat_n)),2))
           ,4)
FROM STATION;
