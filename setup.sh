#!/bin/bash

#Let's add the scripts to the PATH
mkdir -p $HOME/.local

BIN_PATH="$HOME/.local/bin"
for file in ./src/*; do
    cp $file $BIN_PATH
    sed -i "s|SCRIPT_HOME=\"\.\"|SCRIPT_HOME=\"${BIN_PATH}\"|g" ${BIN_PATH}/$(basename $file)
done

export PATH=$PATH:${BIN_PATH}
