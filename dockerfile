FROM jupyter/scipy-notebook

USER root

RUN apt-get update && \
    apt-get install -y libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN pip install psycopg2-binary

