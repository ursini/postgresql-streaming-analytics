-- 3. Desempenho por gênero
SELECT g.nome AS genero, ROUND(AVG(f.nota_imdb), 2) AS nota_media
FROM filmes f
    INNER JOIN generos g ON f.genero_id = g.id
GROUP BY
    g.nome
ORDER BY nota_media DESC;

-- 7. Filmes sem avaliação
SELECT f.titulo
FROM filmes f
    LEFT JOIN avaliacoes a ON f.id = a.filme_id
WHERE
    a.id IS NULL;

-- 10. Matriz usuário x gênero (São Paulo)
SELECT u.nome, g.nome AS genero
FROM usuarios u
    CROSS JOIN generos g
WHERE
    u.cidade = 'São Paulo';

-- 11. Oportunidades de recomendação
SELECT matriz.nome, matriz.genero
FROM (
        SELECT
            u.id AS usuario_id,
            u.nome,
            g.id AS genero_id,
            g.nome AS genero
        FROM usuarios u
            CROSS JOIN generos g
        WHERE
            u.cidade = 'São Paulo'
    ) AS matriz
    LEFT JOIN filmes f ON f.genero_id = matriz.genero_id
    LEFT JOIN avaliacoes a ON a.filme_id = f.id
    AND a.usuario_id = matriz.usuario_id
WHERE
    a.id IS NULL
GROUP BY
    matriz.nome,
    matriz.genero;