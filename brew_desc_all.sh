#!/bin/zsh

for installed_package in `brew list`
	brew desc ${installed_package}

