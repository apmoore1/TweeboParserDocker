# escape=`

# Use an official Python runtime as a parent image
FROM python:2

LABEL maintainer "andrew.p.moore94@gmail.com"
RUN apt-get -y update && apt-get install -y cmake git gcc default-jdk
RUN git clone https://github.com/apmoore1/TweeboParser.git
WORKDIR TweeboParser
RUN echo n | bash install.sh
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN python -m pytest
CMD ["python", "tweebo/server.py"]
