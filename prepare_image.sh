#!/bin/bash -x

#more details at https://github.com/openstack/tripleo-repos/blob/master/tripleo_repos/main.py
BRANCH=${BRANCH:-master}
DISTRO=${DISTRO:-centos7}
PACKAGES=${PACKAGES:-current}


echo "git clone https://github.com/openstack/tripleo-repos"
echo "tripleo-repos -d $DISTRO -b $BRANCH $PACKAGES # be configure according to required branch"
echo "kolla-build --base $DISTRO --base-arch aarch64 neutron-openvswitch-agent"
