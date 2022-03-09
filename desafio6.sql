SELECT 
	MIN(valor_plano) AS `faturamento_minimo`,
    MAX(valor_plano) AS `faturamento_maximo`,
    ROUND(SUM(valor_plano)/COUNT(usuario_id), 2) AS `faturamento_medio`,
    ROUND(SUM(valor_plano), 2) AS `faturamento_total`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Plano AS P
ON U.plano_id = P.plano_id;