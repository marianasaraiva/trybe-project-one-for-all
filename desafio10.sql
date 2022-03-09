SELECT 
	C.cancoes AS `nome`,
	COUNT(HR.cancoes_id) AS `reproducoes`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.HistoricoReproducao AS HR
ON U.usuario_id = HR.usuario_id
JOIN SpotifyClone.Cancoes AS C
ON C.cancoes_id = HR.cancoes_id
WHERE U.plano_id IN (1, 4)
GROUP BY HR.cancoes_id
ORDER BY C.cancoes;