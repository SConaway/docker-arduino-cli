FROM ubuntu

ENV USER=root
# Temporary fix – see issue here: https://github.com/arduino/arduino-cli/issues/182

COPY setup /

RUN bash /setup
