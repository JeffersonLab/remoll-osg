#!/bin/bash

source /etc/profile
source /jlab/remoll/bin/remoll.sh

if [ -n "$3" ] ; then
  git clone --depth 1 --branch ${3/*:/} https://github.com/${3/:*/} remoll
  ln -sf remoll/geometry geometry
fi

remoll /srv/runexample.mac
mv /srv/remollout.root /srv/remollout.$1.$2.root

stashcp /srv/remollout.$1.$2.root stash:///osgconnect/public/${osgName}/remollOutput/remollout.$1.$2.root