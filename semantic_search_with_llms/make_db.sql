-- create a database
create database semantic_search;
-- for use with pgvector
-- https://github.com/pgvector/pgvector
create extension vector;

alter user postgres password '123456';
-- sentence_transformers from SentenceTransformer creates embeddings of size 768
-- https://huggingface.co/sentence-transformers/multi-qa-mpnet-base-cos-v1
CREATE TABLE semantic_search.items (id bigserial PRIMARY KEY, embedding vector(768), text_chunk varchar(1024));
