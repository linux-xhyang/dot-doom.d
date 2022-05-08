#!/usr/bin/env bash

cd ~/.local/share/fonts/ || exit

echo "Installing fonts..."

url=https://www.1001fonts.com/download/jetbrains-mono.zip
curl -L $url > JetBrainsMono.zip
unzip -o JetBrainsMono.zip -d JetBrainsMono

url=https://www.1001fonts.com/download/merriweather.zip
curl -L $url > Merriweather.zip
unzip -o Merriweather -d Merriweather

url=https://www.1001fonts.com/download/alegreya.zip
curl -L $url > Alegreya.zip
unzip -o Alegreya.zip -d Alegreya

url=https://www.wfonts.com/download/data/2014/06/01/microsoft-yahei/microsoft-yahei.zip
curl -L $url > MicroYahei.rar
unrar x MicroYahei.rar

#url=http://x.downya.com/down/weiruanyaheibold_downyi.com.zip
#curl -L $url > MicroYaheiBold.zip
#unzip -o MicroYaheiBold.zip -d MicroYaheiBold

fc-cache -f -v
rm JetBrainsMono.zip
rm Merriweather.zip
rm Alegreya.zip
rm MicroYahei.rar
