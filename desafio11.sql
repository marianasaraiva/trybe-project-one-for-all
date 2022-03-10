-- CASE: https://www.w3schools.com/sql/sql_case.asp.
-- REPLACE: https://www.w3schools.com/sql/func_mysql_replace.asp

SELECT
	cancoes AS `nome_musica`,
  CASE
    WHEN cancoes LIKE '%Streets' THEN REPLACE('Without My Streets', 'Streets', 'Code Review')
    WHEN cancoes LIKE '%Her Own' THEN REPLACE('Dance With Her Own', 'Her Own', 'Trybe')
    WHEN cancoes LIKE '%Inner Fire' THEN REPLACE('Troubles Of My Inner Fire', 'Inner Fire', 'Project')
    WHEN cancoes LIKE '%Circus' THEN REPLACE('Magic Circus', 'Circus', 'Pull Request')
    WHEN cancoes LIKE '%Silly' THEN REPLACE("Let's Be Silly", 'Silly', 'Nice') 
    END AS 'novo_nome'
FROM SpotifyClone.Cancoes
WHERE
	cancoes LIKE '%Streets' OR
  cancoes LIKE '%Her Own' OR
	cancoes LIKE '%Inner Fire' OR 
	cancoes LIKE '%Circus' OR 
	cancoes LIKE '%Silly'
ORDER BY cancoes, `novo_nome`;