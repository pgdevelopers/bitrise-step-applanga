#!/bin/bash
set -ex

if [ -z "${path_to_project}" ] ; then
  echo " [!] Missing required input: path_to_project"

  exit 1
fi

cd "${path_to_project}"

# TODO: check for periphery file. If not, check parameters to build the scan

output="$(periphery scan --quiet --format checkstyle)"
envman add --key "PERIPHERY_REPORT" --value "${output}"