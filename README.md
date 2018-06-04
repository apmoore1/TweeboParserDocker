# TweeboParser Docker image

This Dockerfile installs all the requirements to run TweeboParser and then runs the TweeboParser server by default on port 8000.

To run:

docker run -p 8000:8000 --rm mooreap/TweeboParserServer

If you want it run over a different port e.g. 8050

docker run -p 8050:8000 --rm mooreap/TweeboParserServer
