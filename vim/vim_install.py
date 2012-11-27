#!/usr/bin/env python

import os, sys

def main():
    path = os.path.dirname(os.path.realpath(__file__))
    os.system("cd %s/vimfiles; git submodule update --init; cd .." % path)
    os.system("ln -s %s/vimfiles $HOME/.vim" % path)
    os.system("ln -s %s/vimfiles/vimrc $HOME/.vimrc" % path)
    sys.exit()

if __name__ == "__main__":
        main()


