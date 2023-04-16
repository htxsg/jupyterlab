# Background

1. This container references jupyter/scipy-notebook with the addition of performing pip install from requirements.txt to add additional packages.
2. The purpose of this container is to allow students to work with python and Juypter notebook without messing around with python installs on localhost.


# Installation

1. Clone repository
```
git clone https://github.com/htxsg/jupyterlab.git
```

2. Change directory
```
cd juppyterlab
```

3. Make a working folder that will be mounted by the running docuker container for hosting the notebook files
```
mkdir work
```

4. Edit the `requirements.txt` file to include any python packages or modules.

5. Build docker image
```
docker build -t <image name> .
```

# Run Docker

1. Once the installation steps are done you can launch your docker in interactive mode:

```
docker run -it --rm -p 8888:8888 -v $(pwd)/work:/home/jovyan/work <image name>
```

2. Look for the instruction on the command prompt for the URL to open in your browser

