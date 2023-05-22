#!/bin/bash

drop_database() {
  local database=$1

  echo "Dropping database $database..."
  mysql -h localhost -u root -p -e "DROP DATABASE $database"
  echo "Database $database dropped successfully"
}

# Usage: drop_database "restocode"
drop_database "restocode"
