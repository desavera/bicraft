#apt-get -y update && apt-get -y upgrade
#apt-get install --reinstall -y language-pack-en language-pack-pt
#apt-get install -y build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev
#pip install virtualenvwrapper
#pip install pyhive // MUST HAVE TCLI modules

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# create virtualenv
mkvirtualenv superset-env

# Install superset
#pip install superset

# Create an admin user (you will be prompted to set username, first and last name before setting a password)
#fabmanager create-admin --app superset

# Initialize the database
#superset db upgrade

# Load some data to play with
#superset load_examples

# Create default roles and permissions
superset init

# Start the web server on port 8088, use -p to bind to another port
superset runserver -t 300

# To start a development web server, use the -d switch
# superset runserver -d

