#Dockerfile for CoDeChan

FROM ubuntu:14.04

WORKDIR /home/ubuntu/ca-project
RUN apt-get update -y

RUN sudo apt-get install python pip \
sudo pip install requests

RUN pip install -r requirements.txt

CMD ['python', 'run.py']



