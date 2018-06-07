#!/usr/bin/env bash
dirs=(themes/*)
for dir in "${dirs[@]}"
do
    theme=$(basename "$dir")
    echo $theme
    ln -s ../../../themes/$theme wordpress/wp-content/themes/$theme
done