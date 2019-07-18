# docker-arduino-cli [![Build Status](https://travis-ci.com/SConaway/docker-arduino-cli.svg?branch=master)](https://travis-ci.com/SConaway/docker-arduino-cli) [![Image Size / Layer Count](https://images.microbadger.com/badges/image/sconaway/docker-arduino-cli.svg)](https://microbadger.com/images/sconaway/docker-arduino-cli)

This is a docker image for the Arduino CLI. It opens bash. It contains whatever the Ubuntu image contains, and `arduino-cli`.

This should open a bash shell: `docker run --name arduino-cli --rm -ti --mount type=bind,source="$(pwd)",target=/work sconaway/docker-arduino-cli`. From there, you can use the cli as if it were installed directly on the host computer.

You can use the host's serial port to connect to programming hardware: `docker run --name arduino-cli --rm -ti -v /dev/tty.WHATEVER:/dev/tty.WHATEVER --mount type=bind,source="$(pwd)",target=/work sconaway/docker-arduino-cli`.
