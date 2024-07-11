FROM nodered/node-red:4.0.2-debian

# Install ffmpeg
USER root
RUN apt update \
    && apt install -y ffmpeg \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
USER node-red
RUN ffmpeg -version