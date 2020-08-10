FROM balenalib/raspberry-pi-node:9.11.2-stretch-run

RUN apt-get update && \ 
  apt-get install -y libasound2 wget bzip2 && \
  rm -rf /var/lib/apt/lists/*

RUN wget --no-verbose https://files.plexapp.com/elan/Plexamp-v2.0.0-rPi-beta.2.tar.bz2 && \
  tar xjf Plexamp-v2.0.0-rPi-beta.2.tar.bz2 -C /root && \
  rm Plexamp-v2.0.0-rPi-beta.2.tar.bz2

ENV LD_LIBRARY_PATH /root/plexamp/resources/helpers/linux-arm
ENV LD_LIBRARY_PATH /root/plexamp/server/node_modules/treble/build/Release/
ENV PLUGIN_PATH /root/plexamp/server/node_modules/treble/build/Release/

EXPOSE 20000
ENTRYPOINT ["node", "/root/plexamp/server/server.prod.js"]
