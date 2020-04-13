FROM debian:buster-slim

ENV OCTANT_VERSION=0.11.1
RUN apt-get update -qq \

    && apt-get install -yqq curl \
    && curl -L -o "/tmp/octant.deb" "https://github.com/vmware-tanzu/octant/releases/download/v${OCTANT_VERSION}/octant_${OCTANT_VERSION}_Linux-64bit.deb" \
    && dpkg -i "/tmp/octant.deb" \
    && rm -f "/tmp/octant.deb" \
    && apt-get autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

# Set Global variables for octant runtime
ENV OCTANT_NAMESPACE=${OCTANT_NAMESPACE:-"default"}
ENV OCTANT_CONTEXT=${OCTANT_CONTEXT:-"kubernetes-admin@kubernetes"}
ENV OCTANT_LISTENER_ADDR=${OCTANT_LISTENER_ADDR:-"0.0.0.0:9000"}
ENV KUBECONFIG=${KUBECONFIG:-"/output/kubeconfig.yaml"}

CMD ["/usr/local/bin/octant"]
