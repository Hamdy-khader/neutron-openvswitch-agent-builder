#!/bin/bash -ex

yum-config-manager --enable extras
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
usermod -aG docker $(whoami)
systemctl start docker.service
systemctl enable docker.service

yum install -y openstack-kolla

