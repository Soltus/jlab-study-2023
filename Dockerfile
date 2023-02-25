# FROM python:3.10-slim
FROM jupyter/datascience-notebook:cde8b4389ade
# install the notebook package
# RUN pip install --no-cache --upgrade pip && \
#     pip install --no-cache notebook jupyterlab jupyterhub
#     # pip-sync /home/jovyan/jlab-study-2023/jlab-study-2023/requirements.txt --pip-args "--quiet --retries 10 --timeout 30"
# ENV HOME=/home/jovyan/
# create user with a home directory
# ARG NB_USER=jovyan
# ARG NB_UID=1000
# ENV USER ${NB_USER}
# ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}
# WORKDIR ${HOME}
# USER ${USER}