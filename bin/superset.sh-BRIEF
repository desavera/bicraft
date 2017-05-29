#!/bin/bash

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# create virtualenv
mkvirtualenv superset-env

# Start the web server on port 8088, use -p to bind to another port
superset runserver -t 300

