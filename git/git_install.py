#!/usr/bin/env python

import os, sys

def main():
    path = os.path.dirname(os.path.realpath(__file__))
    username = input("Enter your preferred git username: ")
    email = input("Enter your preferred git email: ")
    os.system("echo '[user]\n\tname = %s\n\temail = %s' >> ~/.gitconfig" % (username, email))
    os.system("echo '[include]\n\tpath = ~/dotfiles/git/gitconfig' >> ~/.gitconfig")
    sys.exit()

if __name__ == "__main__":
        main()


