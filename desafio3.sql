SELECT
  U.usuario AS `usuario`,
  COUNT(HR.cancoes_id) AS `qtde_musicas_ouvidas`,
  ROUND(SUM(C.duracao_segundos)/60, 2) AS `total_minutos`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.HistoricoReproducao AS HR
ON U.usuario_id = HR.usuario_id
JOIN SpotifyClone.Cancoes AS C
ON HR.cancoes_id = C.cancoes_id
GROUP BY U.usuario
ORDER BY U.usuario;