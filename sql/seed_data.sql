INSERT INTO
    generos (nome)
VALUES ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Terror'),
    ('Ficção Científica'),
    ('Animação');

INSERT INTO
    filmes (
        titulo,
        genero_id,
        ano,
        duracao_min,
        nota_imdb
    )
VALUES (
        'Fúria no Asfalto',
        1,
        2019,
        118,
        7.2
    ),
    (
        'Risadas em Família',
        2,
        2021,
        95,
        6.5
    ),
    -- ... (mais 10 filmes)
    (
        'Aventura Encantada',
        6,
        2022,
        92,
        8.2
    );

INSERT INTO
    usuarios (nome, idade, cidade, plano)
VALUES (
        'Marina Alves',
        28,
        'São Paulo',
        'premium'
    ),
    -- ... (mais 7 usuários)
    (
        'Pedro Rocha',
        38,
        'Rio de Janeiro',
        'básico'
    );

INSERT INTO
    avaliacoes (
        usuario_id,
        filme_id,
        nota,
        data_avaliacao
    )
VALUES (1, 1, 5, '2026-01-10'),
    -- ... (mais 14 avaliações)
    (8, 8, 2, '2026-01-05');