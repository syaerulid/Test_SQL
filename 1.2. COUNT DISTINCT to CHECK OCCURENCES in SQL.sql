select * from spotify_worldwide_daily_song_ranking;

-- ID COUNT
SELECT COUNT(ID)
FROM spotify_worldwide_daily_song_ranking;

-- ID AND ARTIST COUNT
SELECT COUNT(DISTINCT ID), ARTIST
FROM spotify_worldwide_daily_song_ranking
GROUP BY ARTIST;

-- ID AND ARTIST COUNT DISTINCT
SELECT ARTIST, COUNT(DISTINCT ID) AS N_OCCURENCES
FROM spotify_worldwide_daily_song_ranking
GROUP BY ARTIST
ORDER BY N_OCCURENCES DESC;
