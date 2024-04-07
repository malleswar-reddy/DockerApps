#!/bin/bash

# su -

# Set Oracle environment variables
export ORACLE_HOME=/opt/oracle/product/21c/dbhomeXE
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH

echo "Path $ORACLE_HOME"
echo "Path FIles $(ls -lat)"
# Set Oracle connection details
export ORACLE_SID=XE
export USERNAME=SYSTEM
export PASSWORD=password

# Function to check Oracle server health
check_oracle_health() {
    echo "Checking Oracle server health..."
    # Run a query to check if Oracle server is up and running
    sqlplus  $USERNAME/$PASSWORD@$ORACLE_SID <<EOF
    SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF
    SELECT 'Oracle server is up and running' FROM dual;
    exit;
EOF
    # Check the exit status of the sqlplus command
    if [ $? -eq 0 ]; then
        return 0  # Oracle server is healthy
    else
        return 1  # Oracle server is not healthy
    fi
}


# # Wait for Oracle server to become healthy
wait_for_oracle_health() {
    echo "Waiting for Oracle server to become healthy..."
    while true; do
        if check_oracle_health ; then
            echo "Oracle server is healthy!"
            break
        else
            echo "Oracle server is not yet healthy. Retrying in 10 seconds..."
            sleep 10
        fi
    done
}

# Execute the health check

echo "Sleeping 1m wait_for_oracle_health"

# sleep 1m

echo "Sleeping 1m DONE check once $USERNAME/$PASSWORD@$ORACLE_SID"
echo "Done "
# Print the current working directory
echo "Current directory: $(pwd)"

sleep 2m



wait_for_oracle_health
# Function to execute SQL script
execute_sql_script() {
    sqlplus  $USERNAME/$PASSWORD@$ORACLE_SID <<EOF
    @$1
    exit;
EOF
}

# Execute SQL scripts
execute_sql_script "/app/dataset/schema.sql"
execute_sql_script "/app/dataset/insert.sql"
# execute_sql_script "/app/dataset/query3.sql"
# Add more SQL script paths as needed
