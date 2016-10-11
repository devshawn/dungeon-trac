# Dungeon issue tracker

This is the build definition for the Dungeon's Trac instance. Right now, the image is super minimal. On startup, the container checks for the presence of a Trac environment called `dungeon`, creates one if it doesn't exist, and runs `tracd` to serve it.

The container exposes Trac on port 80 and stores stuff in `/data`.

## Usage

Eventually, this will go up on Docker Hub. For now, build the image and run it:

    $ git clone git@github.com:devshawn/dungeon-trac.git
    $ docker build -t dungeon-trac dungeon-trac
    $ docker run -d -p 8080:80 dungeon-trac

## To do

- [ ] Do more specific configuration
- [ ] Put `tracd` behind a proxy
