#!/bin/bash
#
# Install custom ns-3 version and all the required modules
#
# This script should be executed in the ns-3 top folder and not
# within this repo's root folder (will clone this repo again)

git clone git@gitlab.com:nsnam/ns-3-allinone.git

cd ns-3-allinone

git clone git@gitlab.com:zhaochow/sr-research.git ns-3-dev

git -C remote add nsnam git@gitlab.com:nsnam/ns-3-dev.git

./download.py
