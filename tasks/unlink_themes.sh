#!/usr/bin/env bash
cd ../
dirs=(src/themes/*)
for dir in "${dirs[@]}"
do
    if [ -d wordpress/wp-content/themes/$theme ]
    then
        theme=$(basename "$dir")
        echo $theme
        rm wordpress/wp-content/themes/$theme
        echo "Unlinked the theme $theme from the wordpress themes folder."
    else
        "This theme is not linked yet."
    fi
done