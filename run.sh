#!/usr/bin/env bash

if [ ! -f /data/dungeon/VERSION ]; then
  trac-admin /data/dungeon initenv 'The Dungeon' sqlite:db/trac.db
fi

tracd /data/dungeon
