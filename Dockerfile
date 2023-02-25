FROM jupyter/minimal-notebook:latest
COPY environment.yml /tmp/environment.yml
RUN mamba env update -n notebook --file /tmp/environment.yml \
  && mamba clean -yaf
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
USER root
RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}