#!/bin/bash

source /etc/profile
source /jlab/remoll/bin/remoll.sh

remoll /srv/runexample.mac
mv /srv/remollout.root /srv/remollout.$1.$2.root

stashcp /srv/remollout.$1.$2.root stash:///osgconnect/public/<username>/remollOutput/remollout.$1.$2.root
