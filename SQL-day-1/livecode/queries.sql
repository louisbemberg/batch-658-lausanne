-- QUESTION #1
-- 1. LIST ALL CUSTOMERS (first name & last name & EMAIL), ORDERED ALPHABETICALLY
# hint: should give 59 results, the first one would be:
# Aaron|Mitchell|aaronmitchell@yahoo.ca
SELECT first_name, last_name, email
FROM customers
ORDER BY first_name


-- QUESTION #2
-- 2. List tracks (Name + Composer) who belong to the 'Classical' playlist
# hint: should give 75 results, the first one being:
# Prometheus Overture, Op. 43|Ludwig van Beethoven
SELECT tracks.name, artists.name
FROM playlist_tracks

JOIN tracks ON tracks.id = playlist_tracks.track_id
JOIN playlists ON playlists.id = playlist_tracks.playlist_id
JOIN artists On artists.id = albums.artist_id
WHERE playlists.name = 'Classical'

-- QUESTION #3
-- 3. List the top 10 Artists who appear the most often in playlists
# hint: first results should be Iron Maiden - 516 appearances
SELECT artists.name, COUNT(*) AS c
FROM tracks
JOIN albums ON albums.id = tracks.album_id
JOIN artists On artists.id = albums.artist_id
JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
-- JOIN playlists ON playlists.id = playlist_tracks.playlist_id
GROUP BY artists.name
ORDER BY c DESC
LIMIT 10;

-- QUESTION #4
-- 4. List the tracks which have been purchased at least twice,
-- ordered by number of purchases.
# hint : should give 256 results. Steve Harris - The Trooper should be first with 5 purchases.
# hint 2: you may need a new keyword for this... HAVING said that, good luck!
SELECT t.name, COUNT(*) as purchases
FROM invoice_lines i
JOIN tracks t ON i.track_id = t.id
GROUP BY i.track_id
HAVING purchases >= 2
ORDER BY purchases DESC;
