FROM jupyter/scipy-notebook:python-3.9.13
ARG NB_USER=jovyan
ARG NB_UID=1000
# ENV USER ${NB_USER}
# ENV NB_UID ${NB_UID}
# ENV HOME /home/${NB_USER}
USER root
COPY . /home/${NB_USER}
COPY environment.yml /tmp/environment.yml
RUN mamba env update -n base --file /tmp/environment.yml \
  && mamba clean -yaf
# Encountered problems while solving by manba ! need pip
RUN pip install digautoprofiler
RUN pip install nbtools
RUN pip install jupyter-wysiwyg
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}