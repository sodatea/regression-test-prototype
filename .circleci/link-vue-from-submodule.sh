#!/bin/bash

script_directory=$(cd "$(dirname "$0")/.."; pwd)
base_directory="$(dirname "${script_directory}")"
working_directory="$(pwd)"

echo "base ${base_directory} ${script_directory}"

cd "${base_directory}/vue"
yarn link

for dir in ${base_directory}/vue/packages/*/; do
  cd "${dir}"
  yarn link

  package="$(basename $dir)"
  cd "${working_directory}"
  yarn link "${package}"
done
