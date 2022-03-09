SELECT C.cancoes AS `cancao`, COUNT(HR.usuario_id) AS `reproducoes`
FROM SpotifyClone.HistoricoReproducao AS HR
JOIN SpotifyClone.Cancoes AS C
ON HR.cancoes_id = C.cancoes_id
GROUP BY C.cancoes_id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;