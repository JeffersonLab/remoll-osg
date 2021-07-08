#!/bin/bash

source /etc/profile
source /jlab/remoll/bin/remoll.sh

remoll /srv/runexample.mac
mv remollout.root remollout.$1.$2.root
