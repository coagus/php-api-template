#!/bin/bash

mv example.gitignore .gitignore
mv example.htaccess .htaccess

CURRENT_PROY=project
PROY=project

CURRENT_PORT_DB="3306"
PORT_DB="3306"

CURRENT_PORT_API="80"
PORT_API="80"

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/$CURRENT_PROY/$PROY/g" docker-compose.yml
    sed -i '' "s/$CURRENT_PORT_DB:/$PORT_DB:/g" docker-compose.yml
    sed -i '' "s/$CURRENT_PORT_API:/$PORT_API:/g" docker-compose.yml
    sed -i '' "s/$CURRENT_PROY/$PROY/g" dev-up.sh
    sed -i '' "s/:$CURRENT_PORT_API/:$PORT_API/g" dev-up.sh    
else
    # Linux y otros sistemas
    sed -i "s/$CURRENT_PROY/$PROY/g" docker-compose.yml
    sed -i "s/$CURRENT_PORT_DB:/$PORT_DB:/g" docker-compose.yml
    sed -i "s/$CURRENT_PORT_API:/$PORT_API:/g" docker-compose.yml
    sed -i "s/$CURRENT_PROY/$PROY/g" dev-up.sh
    sed -i "s/:$CURRENT_PORT_API/:$PORT_API/g" dev-up.sh    
fi