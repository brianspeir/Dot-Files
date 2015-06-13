#!/bin/sh

#
#  Copyright (C) 2013-2015 Brian Speir. All rights reserved.
#
#  Licensed under The BSD 3-Clause License (the "License"); you may not
#  use this file except in compliance with the License. You may obtain
#  a copy of the License at http://opensource.org/licenses/BSD-3-Clause.
#
#

#  Install.sh
#  Dot-Files
#
#  Automate the installation of dot-files.
#


# Dependencies ------------------------------------------------------- #

# Install UNIX defaults to create links.
bash <(curl -s https://raw.githubusercontent.com/brianspeir/Defaults/master/Defaults/Unix.sh)

# Variables ---------------------------------------------------------- #

SOURCE="https://raw.githubusercontent.com/brianspeir/Dot-Files/master/Dot-Files"

# Installer ---------------------------------------------------------- #

echo ""
echo "Welcome to Dot-Files."
echo ""
echo "Please quit open apps."
echo ""

curl -L# $SOURCE/Bash/bashrc --create-dirs -o $HOME/Library/Preferences/Bash/bashrc
curl -L# $SOURCE/Bash/inputrc --create-dirs -o $HOME/Library/Preferences/Bash/inputrc

curl -L# $SOURCE/Git/attributes --create-dirs -o $HOME/Library/Preferences/Git/attributes
curl -L# $SOURCE/Git/config --create-dirs -o $HOME/Library/Preferences/Git/config
curl -L# $SOURCE/Git/ignore --create-dirs -o $HOME/Library/Preferences/Git/ignore

curl -L# $SOURCE/Mercurial/config --create-dirs -o $HOME/Library/Preferences/Mercurial/config
curl -L# $SOURCE/Mercurial/ignore --create-dirs -o $HOME/Library/Preferences/Mercurial/ignore

curl -L# $SOURCE/Shell/aliases --create-dirs -o $HOME/Library/Preferences/Shell/aliases
curl -L# $SOURCE/Shell/paths --create-dirs -o $HOME/Library/Preferences/Shell/paths
curl -L# $SOURCE/Shell/profile --create-dirs -o $HOME/Library/Preferences/Shell/profile
curl -L# $SOURCE/Shell/sources --create-dirs -o $HOME/Library/Preferences/Shell/sources

curl -L# $SOURCE/SSH/config --create-dirs -o $HOME/Library/SSH/config

echo ""
echo "The installation was successful."
echo ""
