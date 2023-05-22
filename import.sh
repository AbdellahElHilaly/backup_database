#!/bin/bash


import_query_file() {

  file_name="query.sql"
  #get query frome file "query.sql"

  use="USE $MYSQL_DATABASE;"
  query_import=$(cat $file_name)


  echo "Importing query file into the database..."

  if mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "$use $query_import"; then
    echo "Query file imported successfully"
  else
    echo "Failed to import query file"
    exit 1
  fi

}

# Usage: import_query_file $MYSQL_HOST $MYSQL_USER $MYSQL_PASSWORD $MYSQL_DATABASE "query.sql"
import_query_file




