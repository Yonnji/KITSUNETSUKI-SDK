#!/bin/bash

VERSION=$(date +%s)

TARGETS=${1};
if [ "${1}" = "all" ]; then
    TARGETS="blender blender-thirdparty bullet panda3d kcc runtime";
fi
if [ "${1}" = "panda" ]; then
    TARGETS="panda3d kcc runtime";
fi
if [ "${1}" = "sdk" ]; then
    TARGETS="bullet panda3d kcc runtime";
fi

for i in ${TARGETS}; do
    echo ${i};
    find conda/${i} -name meta.yaml -exec sed -i "s/^  string\: [0-9]\+\$/  string\: ${VERSION}/g" {} \;;
done
