#!/bin/bash

echo "Removing temp files"
git clean -ffxd

xcodebuild test -project pokedex-bootcamp.xcodeproj \
-scheme pokedex-bootcamp \
-skip-testing:pokedex-bootcampUITests \
-destination 'platform=iOS Simulator,name=iPhone 14 Pro' \
-resultBundlePath ./build | xcbeautify