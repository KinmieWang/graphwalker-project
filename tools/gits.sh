#!/bin/bash



set -ev
modules="core java io cli dsl service maven-plugin gradle-plugin dashboard example maven-archetype"
for module in $modules
do
    pushd ..
    if [ -d "graphwalker-$module" ]; then
    	pushd "graphwalker-$module"
     	git "$@"
    	popd
	fi
    popd
done