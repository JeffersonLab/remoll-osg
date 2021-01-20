#!/bin/bash

source /etc/profile
remoll macros/runexample.mac
cp remollout.root remollout.$1.$2.root
rm remollout.root
