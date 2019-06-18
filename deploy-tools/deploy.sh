#!/bin/bash

PROJECT_DIR=/srv/projects/github-auto-deploy-poc

# git pull in the server workspace dir
cd ${PROJECT_DIR}
git pull

# enable virtualenv (called 'discord-bot') for discord-bot
workon discord-bot

# restart discord-bot
pgrep -f discord-bot.py | xargs kill
python discord-bot.py

