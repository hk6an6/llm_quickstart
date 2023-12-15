A tool for semantic search.

# Installation

We'll use pgvector to house embedings and to run cosine similarity.

```sql
-- example cosine distance:
SELECT * FROM items ORDER BY embedding <=> '[3,1,2]' LIMIT 5;
-- nearest by cosine similarity
SELECT * FROM items WHERE id != 1 ORDER BY embedding <=> (SELECT embedding FROM items WHERE id = 1) LIMIT 5;

```

## Create a database for your embeddings
1. [Get docker](https://docs.docker.com/desktop/install/mac-install/).
1. Run `docker build -t my_pgvector:latest`
1. Run `docker run --name my_pgvector -e POSTGRES_PASSWORD=123456 -d my_pgvector`
1. Run `docker exec -it my_pgvector bash`
1. Run `psql -h localhost -U postgres-a -f ./make_db.sql`

You can stop your container with `docker container stop my_pgvector`