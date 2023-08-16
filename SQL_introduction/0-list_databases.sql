#!/bin/bash

# MySQL server connection details
mysql_host="localhost"
mysql_user="root"
mysql_password="your_password"

# MySQL command to list databases
mysql_query="SHOW DATABASES;"

# Run the MySQL command and pass the password using the -p flag
mysql -h"$mysql_host" -u"$mysql_user" -p"$mysql_password" -e"$mysql_query"
