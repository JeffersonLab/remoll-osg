#!/bin/bash

source /etc/profile
source /jlab/remoll/bin/remoll.sh

#curl https://github.com/JeffersonLab/remoll/blob/$3/geometry/$4 -o $4

remoll /srv/runexample.mac
mv /srv/remollout.root /srv/remollout.$1.$2.root

#rm $4

stashcp /srv/remollout.$1.$2.root stash:///osgconnect/public/${osgName}/remollOutput/remollout.$1.$2.root
