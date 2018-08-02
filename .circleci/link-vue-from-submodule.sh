#!/bin/bash
base_directory=$(cd "$(dirname "$0")/.."; pwd)
working_directory="$(pwd)"

cd "${base_directory}/vue"
yarn link

for dir in ${base_directory}/vue/packages/*/; do
  echo "${dir}"
  cd "${dir}"
  yarn link

  package="$(basename $dir)"
  cd "${working_directory}"
  yarn link "${package}"
done
