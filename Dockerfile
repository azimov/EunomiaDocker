FROM postgres
ENV POSTGRES_DB eunomia
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
COPY postgres/init.sql /docker-entrypoint-initdb.d/
COPY postgres/cdm_schema.sql /docker-entrypoint-initdb.d/
COPY data /eunomia_dt