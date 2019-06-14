#Dockerfile for CoDeChan

  # The base image
  FROM ubuntu:latest

  # Install python and pip
  RUN apt-get update -y
  RUN apt-get install -y python-pip python-dev build-essential

  # Install Python modules needed by the Python app
  COPY requirements.txt /usr/src/app/
  WORKDIR /usr/src/app
  RUN pip install --no-cache-dir -r requirements.txt
  RUN pip install requests

  # Copy files required for the app to run
  COPY . /usr/src/app/

  # Declare the port number the container should expose
  EXPOSE 5000

  # Run the application
  CMD ["python", "run.py"]
