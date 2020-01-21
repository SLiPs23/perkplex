#!/bin/bash
#
# Script to upgrade worker nodes
#
# Author Sean Perkins 
# 1/14/2020

VERSION="1.16.4"
apt upgrade
apt-mark unhold kubeadm kubelet kubectl
kubeadm upgrade node config --kubelet-version v$VERSION
apt-get update
apt-get install -y kubeadm=$VERSION-00 kubelet=$VERSION-00 kubectl=$VERSION-00
apt-mark hold kubeadm kubelet kubectl
systemctl restart kubelet
