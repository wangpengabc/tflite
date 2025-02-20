#!/bin/bash

if [ "$(uname -s)" == "Darwin" ]; then
  root_dir=$(dirname $(dirname $(greadlink -f $0})))
else
  root_dir=$(dirname $(dirname $(readlink -f $0})))
fi
rm -f ${root_dir}/assets/dist/tflite-*.whl

pip install build flatbuffers numpy

python -m build --outdir ${root_dir}/assets/dist
rm -rf ${root_dir}/tflite.egg-info
rm -rf ${root_dir}/build
