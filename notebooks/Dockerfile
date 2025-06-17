FROM jupyter/pyspark-notebook

WORKDIR /home/src

ENV PYTHONPATH="home/src"

COPY ./notebooks/pyproject.toml ./notebooks/poetry.lock ./

RUN python3 -m pip install poetry
RUN poetry install --no-root --only main

COPY --chmod=755 ./notebooks/scripts/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
