#!/bin/bash

#
# this pre setup was moved to superset-base image
#

#apt-get -y update && apt-get -y upgrade
#apt-get install --reinstall -y language-pack-en language-pack-pt
#apt-get install -y build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev
#apt-get install libmysqlclient-dev
#pip install virtualenvwrapper

#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh
#export PYTHONPATH=/opt/superset:$WORKON_HOME/superset-env/lib/python-2.7

# create virtualenv
#mkvirtualenv superset-env

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONPATH=/opt/superset:$WORKON_HOME/superset-env/lib/python-2.7

# the virtualenv environment variables are set in .bashrc for docker image exports !
workon superset-env

# Install superset
pip install superset==0.17.4
pip install mysqlclient	
pip install pyhive // MUST HAVE TCLI modules
pip install MySQL-python

# 
# this is not necessary as the metadata database is already configured !
#
# Create an admin user (you will be prompted to set username, first and last name before setting a password)
fabmanager create-admin --app superset

# Initialize the database
superset db upgrade

# Load some data to play with
superset load_examples


