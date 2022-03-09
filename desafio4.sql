SELECT
	usuario AS usuario,
	IF(YEAR(MAX(HR.data_reproducao)) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.HistoricoReproducao AS HR
ON U.usuario_id = HR.usuario_id
GROUP BY U.usuario 
ORDER BY U.usuario ASC;