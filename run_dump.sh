if [ ! -d /tz_dashboard_postgres_1/tz_db ]; then
    echo "tz_db not found in container, copying to container"
    cp -r /tz_dashboard_postgres_1/tz_db /tz_dashboard_postgres_1/
fi
    
docker exec tz_dashboard_postgres_1 su - postgres -c "pg_restore -d tz_db /tz_db"

docker exec tz_dashboard_postgres_1 su - postgres -c "psql -d tz_db -c '\l+'"

