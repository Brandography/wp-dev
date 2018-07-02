#!/usr/bin/env bash
cd ../../
dirs=(src/themes/*)
for dir in "${dirs[@]}"
do
    theme=$(basename "$dir")
    if [ -d wordpress/wp-content/themes/$theme ]
    then
        echo "This theme $theme $ is already in the wordpress themes folder"
    else
        ln -s ../../../themes/$theme wordpress/wp-content/themes/$theme
        echo "Linked the theme $theme into the wordpress themes folder."        
    fi
done