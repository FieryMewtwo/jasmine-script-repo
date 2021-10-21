#!/bin/bash
echo "Updating your system as a precaution, please wait..."
sudo apt-get update
sudo apt-get upgrade
echo "Installing dependencies, please wait..."
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev
echo "Cloning repositories, please wait..."
git clone https://github.com/FieryMewtwo/pokeemerald
git clone https://github.com/pret/agbcc
cd agbcc
echo "Compiling pokeemerald.gba, please wait..."
./build.sh
./install.sh ../pokeemerald
cd ..
cd pokeemerald
make compare
make
echo "Done! You should now have the rom in the pokeemerald directory, ready to release to git.
