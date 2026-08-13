DROP TABLE IF EXISTS avaliacoes;

DROP TABLE IF EXISTS filmes;

DROP TABLE IF EXISTS generos;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE generos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero_id INTEGER REFERENCES generos (id),
    ano INTEGER NOT NULL,
    duracao_min INTEGER NOT NULL,
    nota_imdb NUMERIC(3, 1)
);

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER,
    cidade VARCHAR(50),
    plano VARCHAR(20) NOT NULL
);

CREATE TABLE avaliacoes (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios (id),
    filme_id INTEGER REFERENCES filmes (id),
    nota INTEGER CHECK (nota BETWEEN 1 AND 5),
    data_avaliacao DATE NOT NULL
);