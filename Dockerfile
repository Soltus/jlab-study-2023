FROM jupyter/scipy-notebook:python-3.9.13
ARG NB_USER=jovyan
ARG NB_UID=1000
# ENV USER ${NB_USER}
# ENV NB_UID ${NB_UID}
# ENV HOME /home/${NB_USER}
USER root
# 删除 jupyter/scipy-notebook 引入的文件夹
RUN sudo rm -rf /home/${NB_USER}/work
COPY . /home/${NB_USER}
COPY environment.yml /tmp/environment.yml
RUN sudo rm -rf environment.yml
RUN mamba env update -n base --file /tmp/environment.yml \
  && mamba clean -yaf
# Encountered problems while solving by manba ! need pip
RUN sudo -H pip install digautoprofiler
RUN sudo -H pip install jupyter-wysiwyg
RUN sudo -H pip install nbtools
# auto run initial work
RUN sudo -H nbdime config-git --enable --global
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}