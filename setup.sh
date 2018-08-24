#!/bin/bash

APP_REPO="flask-app-starter"
APP_NAME="flaskapp"

source /Users/julie/Code/$APP_REPO/venv/bin/activate;

if [[ "$VIRTUAL_ENV" != "/Users/julie/Code/$APP_REPO/venv" ]]
then
  echo "Not inside virtualenv"
  exit
else
  echo "Installing requirements"
fi

# pip install -r requirements.txt
# pip install -e .

cd /Users/julie/Code/$APP_REPO/$APP_NAME; alembic init alembic
