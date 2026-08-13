# postgresql-streaming-analytics

Modelagem e análise de dados de um serviço de streaming fictício (CineFlix)
em PostgreSQL, cobrindo desde o design do schema até queries analíticas
que respondem perguntas reais de produto e conteúdo.

## Stack

- PostgreSQL
- SQL puro (DDL, DML, agregações, JOINs)

## Estrutura do projeto

```
postgresql-streaming-analytics/
├── sql/
│   ├── schema/
│   │   └── create_tables.sql   # DDL — criação das tabelas
│   ├── seeds/
│   │   └── seed_data.sql       # dados de exemplo
│   └── analytics/
│       └── queries.sql         # queries analíticas comentadas
├── docs/
│   └── er-diagram.md           # modelo de dados
└── README.md
```

## Modelo de dados

4 entidades: `generos`, `filmes`, `usuarios` e `avaliacoes`.
Detalhes em [`docs/er-diagram.md`](docs/er-diagram.md).

## Como rodar

```bash
createdb cineflix
psql -d cineflix -f sql/schema/create_tables.sql
psql -d cineflix -f sql/seeds/seed_data.sql
psql -d cineflix -f sql/analytics/queries.sql
```

## Análises incluídas

O arquivo `sql/analytics/queries.sql` responde perguntas como:

- Qual gênero tem a melhor nota média no catálogo?
- Quais filmes ainda não foram avaliados por nenhum usuário?
- Quem são os usuários mais engajados (mais avaliações)?
- Qual a duração média dos filmes assistidos por plano de assinatura?
- Combinando `CROSS JOIN` e `LEFT JOIN`: quais gêneros um usuário
  ainda não experimentou, útil como ponto de partida para um motor
  de recomendação.