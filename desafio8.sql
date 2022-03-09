SELECT 
	Art.artista AS `artista`,
    Alb.album AS `album`
FROM SpotifyClone.Artista AS Art
JOIN SpotifyClone.Album AS Alb
ON Art.artista_id = Alb.artista_id
HAVING Art.artista = "Walter Phoenix"
ORDER BY Alb.album;
