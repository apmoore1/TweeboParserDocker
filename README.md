# TweeboParser Docker image

This Dockerfile installs all the requirements to run TweeboParser API server and by default runs on localhost on port 8000. Options to change the following can be given:
1. port -- the port that the server runs from (default: 8000).
2. hostname -- the hostname the server runs from (default: 0.0.0.0).
3. threads -- the number of threads the server uses (default: Number of cpus on the machine running the server).

To run:
```
docker run -p 8000:8000 --rm mooreap/tweeboparserdocker
```
If you want to map the port 8000 running from the docker image to your local machines 8050 port:
```
docker run -p 8050:8000 --rm mooreap/tweeboparserdocker
```
If you want to run the server as a background task add -d:
```
docker run -p 8000:8000 -d --rm mooreap/tweeboparserdocker
```
Different options:
1. Setting the port on the API server to 9000:
```
docker run -p 9000:9000 --rm mooreap/tweeboparserdocker --port 9000
```
2. Setting the hostname to 10.1.1.1 on the API server:
```
docker run -p 8000:8000 --rm mooreap/tweeboparserdocker --hostname 10.1.1.1
```
3. Setting the number of threads to 3:
```
docker run -p 8000:8000 --rm mooreap/tweeboparserdocker --threads 3
```
4. To get help on any of the options above:
```
docker run --rm mooreap/tweeboparserdocker -h
```

## Issues

### Windows OS

1. See the following issue if you have a problem connecting to the server while running the docker image on windows OS, [issue](https://github.com/apmoore1/TweeboParserDocker/issues/1). 
