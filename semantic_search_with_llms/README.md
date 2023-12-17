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

To run the container:
1. [Get docker](https://docs.docker.com/desktop/install/mac-install/).
1. Run `docker build -t my_pgvector:latest`
1. Run `docker run --name my_pgvector -e POSTGRES_PASSWORD=123456 -d my_pgvector`

To create the required database and schema:
1. Run `docker exec -it my_pgvector bash`
1. Run `psql -h localhost -U postgres-a -f ./make_db.sql`

You can stop your container with `docker container stop my_pgvector`