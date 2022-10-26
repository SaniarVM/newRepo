#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=ac3f6f6c6300557bc4e7
export DRONE_GITHUB_CLIENT_SECRET=7cd60dfaaf1b7e8112ded44bed2c4bc30068ad86
export DRONE_GITHUB_ADMIN=SaniarVM
export DRONE_SERVER_HOST=8ea8-217-128-52-119.eu.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
