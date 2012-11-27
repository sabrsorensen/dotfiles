#!/usr/bin/env python

import os
import glob

symlinks = []

def main():
    for files in glob.glob("*/**.symlink"):
        link = files.split("/")[1].split(".symlink")[0]
        os.system("ln -s %s $HOME/.%s" % (files, link))
        #print "ln -s %s $HOME/.%s" % (files, link)
    for inst_script in glob.glob("*/*install.py*"):
        os.system("chmod +x %s" % inst_script)
        os.system(inst_script)

if __name__ == "__main__":
        main()


