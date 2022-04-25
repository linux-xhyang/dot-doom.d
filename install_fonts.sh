#!/usr/bin/env bash

cd ~/.local/share/fonts/ || exit

echo "Installing fonts..."

url=https://www.1001fonts.com/download/jetbrains-mono.zip
# https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip

curl -L $url > JetBrainsMono.zip
unzip -o JetBrainsMono.zip -d JetBrainsMono

url=https://www.1001fonts.com/download/merriweather.zip
curl -L $url > Merriweather.zip
unzip -o Merriweather -d Merriweather

url=https://www.1001fonts.com/download/alegreya.zip
curl -L $url > Alegreya.zip
unzip -o Alegreya.zip -d Alegreya

fc-cache -f -v
rm JetBrainsMono.zip
rm Merriweather.zip
rm Alegreya.zip

