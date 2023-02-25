FROM python:3.10
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache pip-tools && \
    pip-sync /tmp/requirements.txt --pip-args "--quiet --retries 10 --timeout 30"
EXPOSE 8888
CMD ["jupyter lab", "--port='8888'", "--ip='*'", "--no-browser", "--allow-root"]
# FROM jupyter/datascience-notebook:cde8b4389ade
# FROM jupyter/base-notebook:latest
# COPY environment.yml /tmp/environment.yml
# RUN mamba env update -n notebook --file /tmp/environment.yml \
#   && mamba clean -yaf
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