#!/bin/python3

"""
Minimal and reductive script to update all python3 pip packages.
Works for me, will probably not work for you, etc.

Assumes WSL2/Ubuntu 18.04.2
Author: Tomer Zaidenstein
License: Public Domain
"""

import os
import subprocess
import sys


_SKIP_LIST = ('Package', '---', 'WARNING')
# Ubuntu 18.04/WSL2 specific skip list:
_SKIP_LIST += ('distro-info', 'httplib2', 'pyasn1-modules', 'pygobject', 'pyxdg', 'PyYAML')


def main():
    cmd = "sudo pip3 list --outdated | grep wheel"
    proc = subprocess.Popen(cmd.split(),
                            stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT)
    stdout, stderr = proc.communicate()

    packages = []
    lines = stdout.splitlines()
    for line in lines:
        line = line.decode("utf-8").strip()

        # Skip the header
        if any(line.startswith(s) for s in _SKIP_LIST):
            continue

        package = line.split()[0]
        print(f'--> Updating {package}')
        packages.append(package)
        print(f'<-- Updating {package}')

    for p in packages:
        cmd = f"sudo pip3 install {p} --upgrade"
        out = subprocess.Popen(cmd.split())
        _, _ = out.communicate()


if __name__ == "__main__":
    main()
