#!/usr/bin/env bash

# Update Homebrew
brew update

# Upgrade installed formulae
brew upgrade

# Install language package manager
brew install mise

# Install more recent version of macOS tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install git binaries
brew install git
brew install bfg

# Install go
brew install go

# Install useful binaries
brew install tree
brew install modd
brew install ncdu

sleep 1

# Remove outdated versions from cellar
brew cleanup
