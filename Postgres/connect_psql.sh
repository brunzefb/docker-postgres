export PGPASSWORD=$POSTGRES_PASSWORD
# -w means no password prompt
psql -h localhost -U postgres -d postgres -w