from jupyter/scipy-notebook

COPY requirements.txt /tmp/
RUN python -m pip install -r /tmp/requirements.txt 
WORKDIR /home/jovyan/work
