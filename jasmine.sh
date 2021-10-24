#!/bin/bash
echo "Updating your system as a precaution, please wait..."
sudo apt-get update && apt-get upgrade
echo "Installing dependencies, please wait..."
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev
echo "Cloning repositories, please wait..."
git clone https://github.com/FieryMewtwo/jasmine
git clone https://github.com/pret/agbcc
cd agbcc
echo "Compiling jasmine from source, please wait..."
./build.sh
./install.sh ../jasmine
cd ..
cd jasmine
make
echo "Done! You should now have the rom in the jasmine directory.
