#!/bin/bash

create_file(){
  table_name=$1
  date=$(date +%Y-%m-%d)
  database_name=$MYSQL_DATABASE
  file_name="$table_name-$database_name-$date.csv"

  if [ ! -f "$file_name" ]; then
    echo "File $file_name does not exist, creating new file..."
    touch "$file_name"
    echo "File $file_name created"
  fi
}



select_table(){
  table_name=$1

  query="SELECT * FROM $table_name;"

  result=$(mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE -e "$query")

  if [ $? -eq 0 ]; then
    echo "$result"
  else
    echo "Error: $result"
  fi


}




backup_table(){
  table_name=$1

  create_file "$table_name"

  echo "Backing up $table_name to $file_name ..."

  select_table "$table_name" | awk 'BEGIN {FS="\t"; OFS=";"} {$1=$1} 1' > "$file_name"

  echo "Backup completed"
}


backup_table "$1"
