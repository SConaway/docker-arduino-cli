# docker-arduino-cli [![Build Status](https://travis-ci.com/SConaway/docker-arduino-cli.svg?branch=master)](https://travis-ci.com/SConaway/docker-arduino-cli) [![Image Size / Layer Count](https://images.microbadger.com/badges/image/sconaway/docker-arduino-cli.svg)](https://microbadger.com/images/sconaway/docker-arduino-cli)

This is a docker image for the Arduino CLI. It opens bash. It contains `jq`, `make`, and whatever else the ubuntu image contains.

This should open a bash shell: `docker run --name arduino-cli --rm -ti --mount type=bind,source="$(pwd)",target=/work sconaway/docker-arduino-cli`. From there, you can run make or whatever command you need.

You can use the host's serial port to connect to programming hardware: `docker run --name arduino-cli --rm -ti -v /dev/tty.WHATEVER:/dev/tty.WHATEVER --mount type=bind,source="$(pwd)",target=/work sconaway/docker-arduino-cli`.
