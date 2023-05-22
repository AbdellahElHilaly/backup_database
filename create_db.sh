#!/bin/bash

create_database() {
  echo "Creating database $MYSQL_DATABASE..."

  # Connect to MySQL server and create the database
  if mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"; then
    echo "Database $MYSQL_DATABASE created successfully"

    # Use the database
    echo "Selecting database $MYSQL_DATABASE..."
    if mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "USE $MYSQL_DATABASE"; then
      echo "Database $MYSQL_DATABASE selected successfully"
    else
      echo "Failed to select database $MYSQL_DATABASE"
      exit 1
    fi
  else
    echo "Failed to create database $MYSQL_DATABASE"
    exit 1
  fi
}

create_database
