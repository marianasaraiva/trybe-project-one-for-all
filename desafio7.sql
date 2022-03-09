SELECT 
	Art.artista AS `artista`,
    Alb.album AS `album`,
    COUNT(Seg.usuario_id) AS `seguidores`
FROM SpotifyClone.Artista AS Art
JOIN SpotifyClone.Album AS Alb
ON Art.artista_id = Alb.artista_id
JOIN SpotifyClone.SeguindoArtistas AS Seg
ON Art.artista_id = Seg.artista_id
GROUP BY Seg.artista_id, Alb.album
ORDER BY `seguidores` DESC, Art.artista, Alb.album;