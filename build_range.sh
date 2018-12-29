#!/usr/bin/env bash
versions=( "2.0.0" "2.0.1" "2.0.2" "2.0.3" "2.0.4" "2.1.0" "3.0.0" "3.0.1" "3.0.2" "3.0.3" "3.1.0" "3.1.1" "3.1.2" "3.1.3" "3.1.4" )
for VERSION in "${versions[@]}"
do
   export VERSION
   ./build.sh
done
