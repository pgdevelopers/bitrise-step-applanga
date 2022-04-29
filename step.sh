#!/bin/bash

if [ -z "${path_to_project}" ] ; then
  echo " [!] Missing required input: path_to_project"

  exit 1
fi

cd "${path_to_project}"

if [[ ! -f ".applanga.json" ]]
then
    echo ".applanga.json file is missing"

    exit 1
fi


COMMAND="${command}"

if [ "${force}" = "true" ]; then
    COMMAND="$COMMAND --force"
fi

if [ "${draft}" = "true" ]; then
    COMMAND="$COMMAND --draft"
fi

echo "Running 'applanga ${COMMAND}'"

applanga $COMMAND