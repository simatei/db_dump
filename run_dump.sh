docker cp tz_db tz_dashboard_postgres_1:/
    
docker exec tz_dashboard_postgres_1 su - postgres -c "pg_restore -d tz_db /tz_db"

docker exec tz_dashboard_postgres_1 su - postgres -c "psql -d tz_db -c '\l+'"

