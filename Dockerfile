FROM jupyter/minimal-notebook:latest
ENV LANG=C.UTF-8

# Jovyan username permissions
USER $NB_UID
RUN : \
      && pip install --upgrade pip \
      && pip install -r requirements.txt \
      && fix-permissions "/home/${NB_USER}" \
      && :
