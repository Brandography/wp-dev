#!/usr/bin/env bash
cd ../../
dirs=(src/plugins/*)
for dir in "${dirs[@]}"
do
    plugin=$(basename "$dir")
    echo $plugin
    ln -s ../../../src/plugins/$plugin wordpress/wp-content/themes/$plugin
done