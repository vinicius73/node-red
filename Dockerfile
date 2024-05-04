FROM nodered/node-red:3.1.9-debian

# Install ffmpeg
USER root
RUN apt update \
    && apt install -y ffmpeg \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
USER node-red
RUN ffmpeg -version