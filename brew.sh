#!/usr/bin/env bash

# Update Homebrew
brew update

# Upgrade installed formulae
brew upgrade

# Install more recent version of macOS tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install git binaries
brew install git
brew install bfg

# Install Heroku
brew install heroku

# Install go
brew install go

# Install node binaries
brew install n

# Install databases
brew install postgresql
brew install mysql

# Install useful binaries
brew install tree
brew install modd
brew install ncdu

# Remove outdated versions from cellar
brew cleanup

