SELECT 
	IF(U.usuario = "Bill", COUNT(HR.cancoes_id), 1) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.HistoricoReproducao AS HR
ON U.usuario_id = HR.usuario_id
GROUP BY U.usuario
ORDER BY `quantidade_musicas_no_historico` DESC LIMIT 1;