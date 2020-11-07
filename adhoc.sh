#!/bin/bash

BASEOS='http://mirror.centos.org/centos/8/BaseOS/x86_64/os/'
STREAM='http://mirror.centos.org/centos/8/AppStream/x86_64/os/'
KEY='http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-Official'

#ansible node-01 -m yum_repository -a 'name=BaseOS baseurl=http://mirror.centos.org/centos/8/BaseOS/x86_64/os/ description="BaseOS Repo" enabled=true gpgcheck=yes' -b
ansible rhel -m yum_repository -a "name=BaseOS baseurl=${BASEOS} description='BaseOS Repo' enabled=true gpgcheck=yes gpgkey=${KEY}" -b
ansible rhel -m yum_repository -a "name=AppStream baseurl=${STREAM} description='AppStream Repo' enabled=true gpgcheck=yes gpgkey=${KEY}" -b