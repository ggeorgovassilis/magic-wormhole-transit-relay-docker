# Docker file for wormhole transit relay

The [wormhole transit relay](https://github.com/warner/magic-wormhole-transit-relay) is a python application which implements a transit relay for [magic wormhole](https://github.com/warner/magic-wormhole). This repository provides a Docker file which builds a docker image for the wormhole transit relay.

## Building

`sudo docker build -t magic-wormhole-transit-relay-docker .`

## Running

`sudo docker run magic-wormhole-transit-relay-docker`

The relay server is exposed at TCP port 4001.

## Using

`wormhole --transit-helper "tcp:localhost:4001" send Dockerfile`

Replace "localhost" with whatever server name the relay is running on.
