#!/usr/bin/env bash

# turn on verbose debugging output for logs.
exec 4>&1; export BASH_XTRACEFD=4; set -x
# make errors fatal
set -e
# bleat on references to undefined shell variables
set -u

echo "1.0" > VERSION.txt

# this script should be executed from the build output directory (stage)
cp -r "../include" "include/"
cp -r "../LICENSES" "LICENSES/"
cp -r "../llphysicsextensions" "llphysicsextensions/"
