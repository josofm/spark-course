FROM jupyter/pyspark-notebook:spark-3.1.2


COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt


COPY ./spark-course /app/spark-course
COPY ./tests/ /app/tests/
COPY ./hack/ /app/hack/


ENV PYTHONPATH /app
ENV PYTHONDONTWRITEBYTECODE 1

RUN python --version

WORKDIR /app
