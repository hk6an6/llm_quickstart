FROM ankane/pgvector:v0.5.1
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB semantic_search
RUN docker-ensure-initdb.sh
#RUN su ${POSTGRES_USER} -c 'postgres'
WORKDIR /ddl/semantic_search/
COPY make_db.sql ./
#RUN psql -h localhost -U ${POSTGRES_USER} -a -f ./make_db.sql