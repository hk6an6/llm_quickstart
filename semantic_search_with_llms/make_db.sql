-- sentence_transformers from SentenceTransformer creates embeddings of size 768
-- https://huggingface.co/sentence-transformers/multi-qa-mpnet-base-cos-v1
CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(768), text_chunk varchar(4096));
