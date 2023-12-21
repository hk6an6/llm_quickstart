A tool for semantic search.

There's 3 parts to semantic search:
- Chunking text, so that it fits size limitations for models that create embeddings.
- Creating embeddings and using them to index text chunks.
- Executing search via cosine similarity between asymetric embeddings.

See [this example to create embeddings from text](./embeddings_scratch.ipynb).

# Installation

We'll need pgvector to house embedings and to run cosine similarity. To get pgvector, we'll need to install python dependencies and run a container that hosts pgvector.

## Python dependencies
Install pgvector, run `conda install psycopg2` on the command line.

## Run a container that hosts pgvector
This is split in 2 parts. First running the container, and secondly creating the required database and schema.

After you [get docker](https://docs.docker.com/desktop/install/mac-install/), run the container:

```bash
docker build -t my_pgvector:latest .
docker run --publish 127.0.0.1:5432:5432 --name my_pgvector -e POSTGRES_PASSWORD=123456 -d my_pgvector
```

Now create a schema with:

```bash
docker exec -it my_pgvector  psql -U postgres -c "create database semantic_search;"
docker exec -it my_pgvector  psql -U postgres -c "create user postgresql password '123456';"
docker exec -it my_pgvector  psql -U postgres -c "grant all privileges on DATABASE semantic_search to postgresql;"
docker exec -it my_pgvector  psql -U postgres -d "semantic_search" -c "create extension vector;"
docker exec -it my_pgvector  psql -U postgres -d "semantic_search" -a -f "/ddl/semantic_search/make_db.sql"
```

You can stop your container with `docker container stop my_pgvector` and restart it anytime with `docker start --publish 127.0.0.1:5432:5432 --detach -e POSTGRES_PASSWORD=123456 my_pgvector`