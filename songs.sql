--sql 1
SELECT name FROM songs;


--sql 2
SELECT name FROM songs ORDER BY tempo;


--sql 3
SELECT name FROM songs ORDER BY duration_ms DESC LIMIT 5;


--sql 4
SELECT name FROM songs WHERE danceability > 0.75 AND energy > 0.75 AND valence > 0.75;


--sql 5
SELECT avg(energy) AS average_energy FROM songs;


--sql 6
SELECT name FROM songs WHERE artist_id =(SELECT id FROM artists WHERE name == 'Post Malone');


--sql 7
SELECT avg(energy) FROM songs WHERE artist_id  = (SELECT id FROM artists WHERE name == "Drake");


--sql 8
SELECT name FROM songs WHERE name LIKE "%feat.%";


--answers.txt
--Charactarizing the audio aura:
    --Average Energy :- 0.65906
    --Average Valence :- 0.48443
    --Average Danceability :- 0.71646

--I think the better way to calculate the aura is consider weighting songs based on play counts or other relavance metrics give more weight to songs that the listner played more frequently.