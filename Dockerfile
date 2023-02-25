# FROM python:3.10
FROM jupyter/minimal-notebook:latest
# COPY requirements.txt /tmp/requirements.txt
# RUN pip install --no-cache --upgrade pip && \
#     pip install --no-cache pip-tools && \
#     pip-sync /tmp/requirements.txt --pip-args "--quiet --retries 10 --timeout 30"

# FROM jupyter/datascience-notebook:cde8b4389ade
# FROM jupyter/base-notebook:latest
COPY src /src
COPY demo.ipynb /demo.ipynb
COPY index.ipynb /index.ipynb
COPY environment.yml /tmp/environment.yml
RUN mamba env update -n notebook --file /tmp/environment.yml \
  && mamba clean -yaf
