#!/bin/bash

source /etc/profile
source /jlab/remoll/bin/remoll.sh

#curl https://github.com/$3/remoll/blob/$4/geometry/$5 -o $5

remoll /srv/runexample.mac
mv /srv/remollout.root /srv/remollout.$1.$2.root

#rm $5

stashcp /srv/remollout.$1.$2.root stash:///osgconnect/public/${osgName}/remollOutput/remollout.$1.$2.root
