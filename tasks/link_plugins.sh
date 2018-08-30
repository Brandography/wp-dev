#!/usr/bin/env bash
cd ../../
dirs=(src/plugins/*)
for dir in "${dirs[@]}"
do
    plugin=$(basename "$dir")
    echo $plugin
    if [ -d wordpress/wp-content/plugins/$plugin ]
    then
        echo "This plugin $plugin is already in the wordpress plugins folder"
    else
      ln -s ../../../plugins/$plugin wordpress/wp-content/plugins/$plugin
      echo "Linked the plugin $plugin into the wordpress plugins folder."
    fi
done
