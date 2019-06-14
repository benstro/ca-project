#Dockerfile for CoDeChan

FROM ubuntu:14.04
RUN apt-get update -y

RUN sudo apt-get install python pip \
sudo pip install requests

COPY requirements.txt /home/ubuntu/ca-project

RUN pip install -r /home/ubuntu/ca-project/requirements.txt

CMD ['python', '/home/ubuntu/ca-project/run.py']



