#!/bin/bash
# Version 1.1.0 is needed because the consul manifest doesn't have the 1.0.0 image for ARM
helm install --name consul-traefik stable/consul --set ImageTag=1.4.3

cat << EOF
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: consul-ui
  namespace: kube-system
spec:
  rules:
  - host: consul.int.perkplex.geekgalaxy.com
    http:
      paths:
      - path: /
        backend:
          serviceName: consul-traefik-ui
          servicePort: http
EOF | kubectl create -f -
