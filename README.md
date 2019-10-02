[![CircleCI](https://circleci.com/gh/hamaer0214/udacitykube.svg?style=svg)](https://circleci.com/gh/hamaer0214/udacitykube)

## Project Overview
This is a udacity DevOps project.

In this project, a Machine Learning Microservice API is operationalized 

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project I operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Project Files

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 
* Dockerfile: using to build docker image
* Makefile: includes instructions on environment setup and lint tests
* requirements.txt: a file to install dependencies
* run_docker.sh: To run and build a docker image
* app.py: serves out predictions (inference) about housing prices through API calls
* make_prediction.sh: sending some input data to your containerized application via the appropriate port
* run_kubernetes.sh: This script should create a running pod
* upload_docker.sh: upload built image to docker
* .circleci/config.yml: calling to identify how you want your testing environment set up and what tests you want to run.
* output_txt_files: log statements

## How to run
* clone the project repository:
  - git clone https://github.com/hamaer0214/udacitykube.git
* To run and build a docker image
  - bash run_docker.sh:
* Then, to make a prediction, open another terminal windown and run,
  - bash make_prediction.sh
* To use Kubernetes to run docker image
  - minikube start
  - bash run_kubernetes.sh
