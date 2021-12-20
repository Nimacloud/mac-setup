#!/usr/bin/env bash
# 
# Script for setting up a new mac machine
# 


echo "Setup starting 💻"

# Install Rosetta 
sudo softwareupdate --install-rosetta --agree-to-license

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Adding brew to zprofile file
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# Adding brew to shell environment
eval "$(/opt/homebrew/bin/brew shellenv)" 

BROWSERS=(
    google-chrome
    firefox
    brave-browser
)

echo "Installing browsers apps..."
brew install --cask ${BROWSERS[@]}

COMMUNICATION_TOOLS=(
    google-chat
    slack
    microsoft-teams
    zoom
)

echo "Installing communication tools..."
brew install --cask ${COMMUNICATION_TOOLS[@]}


DEV_TOOLS=(
    pritunl
)

echo "Installing dev tools..."
brew install --cask ${DEV_TOOLS[@]}

RANDOM_APPS=(
    spotify
    appcleaner
    caffeine
    scroll-reverser
    vlc
)

echo "Installing random apps..."
brew install --cask ${RANDOM_APPS[@]}

echo "Setup complete ✅"
