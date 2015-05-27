#!/usr/local/bin/python3
import pip
from subprocess import call

for dist in pip.get_installed_distributions():
	call("pip3 install --allow-external pycairo --allow-unverified pycairo --upgrade " + dist.project_name, shell=True)
