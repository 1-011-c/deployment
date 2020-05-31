#!/bin/sh

apt update
apt install -y curl

curl -sfL https://get.k3s.io | sh -
