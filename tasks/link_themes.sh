#!/usr/bin/env bash
cd ../
dirs=(src/themes/*)
for dir in "${dirs[@]}"
do
    theme=$(basename "$dir")
    echo $theme
    ln -s ../../../src/themes/$theme wordpress/wp-content/themes/$theme
done