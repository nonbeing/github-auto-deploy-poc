#!/bin/bash

PROJECT_DIR=/srv/projects/github-auto-deploy-poc

# git pull in the server workspace dir
cd ${PROJECT_DIR}
git pull

# restart discord-bot
pgrep -f discord-bot.py | xargs kill
python discord-bot.py

# pgrep -f GitAutoDeploy.py | xargs kill

# cd ${AUTODEPLOY_DAEMON_DIR}
# python GitAutoDeploy.py -d

