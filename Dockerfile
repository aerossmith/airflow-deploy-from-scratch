FROM apache/airflow:2.7.3
LABEL name="aerosmith"
COPY requirements.txt /
RUN pip install --upgrade pip \
    pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt