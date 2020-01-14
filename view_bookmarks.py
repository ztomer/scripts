#! python3
"""
Opens a list of URLS in new tabs, since I didn't want to mess up my bookmarks
reads from a 'bookmarks' file, generates a 'bookmarks_unique' file with no duplicates.

Lines with '#' prefix are skipped, so it can be used for comments.

Probably not fit for any purpose, so do whatever.
Assumes Windows 10, Python3 and Chrome, since that's what I've got :)

Author: Tomer Zaidenstein
License: Public Domain
"""

import os
SOURCE_FILE = "bookmarks"
TARGET_FILE = "bookmarks_unique"

CHROME_BIN = r'"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"'


def remove_duplicates(in_file: str, out_file: str):
    lines_seen = set()
    outfile = open(out_file, "w")
    with open(in_file, 'r') as f:
        for line in f:
            if line not in lines_seen:
                outfile.write(line)
                lines_seen.add(line)
    outfile.close()


def open_in_tab(url: str, is_private: bool = False):
    private_switch = ''
    if is_private:
        private_switch = '-incognito'
    s = f"{CHROME_BIN} {private_switch} {url}"
    # print(s)
    os.system(s)


def open_all(file_name: str):
    open_in_tab(' ')
    with open(file_name, 'r') as f:
        for line in f:
            line = line.strip()

            if line.startswith('#'):
                continue

            if not line.strip():
                continue

            if line.strip().startswith('#'):
                continue

            open_in_tab(line)


remove_duplicates(SOURCE_FILE, TARGET_FILE)
open_all(TARGET_FILE)
