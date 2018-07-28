#! /bin/bash

# installing external libraries
if [ $(uname -s) == 'Darwin' ]
then 
    # installing brew, if you're doing this on a Mac, you should have Homebrew
    command -v brew >/dev/null 2>&1 || { echo >&2 "Homebrew not found; installing Homebrew now"; \
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
    brew install pandoc libgit2
    
else
    sudo apt-get install pandoc libgit2-dev

# create cache directory because R won't create directories for you during save()
mkdir -p $(pwd)/cache