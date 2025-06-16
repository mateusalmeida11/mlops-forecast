FROM jupyter/pyspark-notebook

WORKDIR /home/src

ENV PYTHONPATH="home/src"

COPY pyproject.toml poetry.lock ./
COPY scripts ./

RUN python3 -m pip install poetry
RUN poetry install --no-root --only main
