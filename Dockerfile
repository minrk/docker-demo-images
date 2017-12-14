# Docker demo image, as used on try.jupyter.org and tmpnb.org

FROM jupyter/demo:c7fb6660d096
USER root
# scrub out tmpnb-specific stuff
RUN rm -rf $HOME/.jupyter
USER $NB_USER
COPY ["notebooks/Welcome to Python.ipynb", "$HOME/Welcome to Python.ipynb"]
