#!/usr/bin/env bash

# sudo apt-get install wine zip -y
sudo apt-get install zip -y

node_modules/quasar-cli/bin/quasar build --mode electron --theme ios --target linux

# # NOTE: Saving build files from clean of quasar
# rm -rf /tmp/Vuenote-linux-x64
# mkdir /tmp/Vuenote-linux-x64
# cp -r dist/electron-ios/Vuenote-linux-x64/* /tmp/Vuenote-linux-x64
#
# node_modules/quasar-cli/bin/quasar build --mode electron --theme ios --target win32
#
# # NOTE: Copy files back
# mkdir dist/electron-ios/Vuenote-linux-x64
# cp -r /tmp/Vuenote-linux-x64/* dist/electron-ios/Vuenote-linux-x64
# rm -rf /tmp/Vuenote-linux-x64

cp src/statics/icon.png dist/electron-ios/Vuenote-linux-x64/icon.png
# cp src/statics/icon.png dist/electron-ios/Vuenote-win32-x64/icon.png

cd dist
cd electron-ios/Vuenote-linux-x64/ && zip -r ../../vuenote-linux-x64.zip ./* -9 && cd ../../
# cd electron-ios/Vuenote-win32-x64/ && zip -r ../../vuenote-win32-x64.zip ./* -9 && cd ../../
