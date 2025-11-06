#!/bin/sh -x

cd "${PLUGIN_WORKDIR:-.}"

pwd
ls

cmake --preset "${PLUGIN_PRESET}"
cmake --build --preset "${PLUGIN_PRESET}"
