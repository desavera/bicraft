#---------------------------------------------------------
# Superset specific config
#---------------------------------------------------------
ROW_LIMIT = 5000
SUPERSET_WORKERS = 4

SUPERSET_WEBSERVER_PORT = 8080

CACHE_CONFIG={'CACHE_TYPE':'filesystem', 'CACHE_DEFAULT_TIMEOUT': 50000, 'CACHE_DIR': '/opt/superset/fscache'}
#---------------------------------------------------------

#---------------------------------------------------------
# Flask App Builder configuration
#---------------------------------------------------------
# Your App secret key
SECRET_KEY = '\2\1thisismyscretkey\1\2\e\y\y\h'

# The SQLAlchemy connection string to your database backend
# This connection defines the path to the database that stores your
# superset metadata (slices, connections, tables, dashboards, ...).
# Note that the connection information to connect to the datasources
# you want to explore are managed directly in the web UI
SQLALCHEMY_DATABASE_URI = 'sqlite:////root/.superset/superset.db'
#SQLALCHEMY_DATABASE_URI = 'impala://'

# Flask-WTF flag for CSRF
CSRF_ENABLED = True

# Set this API key to enable Mapbox visualizations
MAPBOX_API_KEY = ''

SQLLAB_TIMEOUT=900
SUPERSET_WEBSERVER_TIMEOUT=900
