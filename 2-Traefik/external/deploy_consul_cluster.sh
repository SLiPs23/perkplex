#!/bin/bash
# Version 1.1.0 is needed because the consul manifest doesn't have the 1.0.0 image for ARM
helm install consul-traefik stable/consul
