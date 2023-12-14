FROM carla-prerequisites:latest

ARG TAG_NAME

USER carla
WORKDIR /home/carla

RUN cd /home/carla/ && \
    git clone --depth 1 --branch ${TAG_NAME} https://github.com/carla-simulator/carla.git && \
    cd /home/carla/carla && \
#  ./Update.sh && \
#  make CarlaUE4Editor && \
    make PythonAPI 
#  make build.utils && \
#  make package && \
WORKDIR /home/carla/carla
