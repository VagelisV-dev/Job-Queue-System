#!/bin/sh
set -e

host="$1"
shift

echo "Waiting for database at $host..."

until PGPASSWORD=pass psql -h "$host" -U user -d jobs -c '\q' > /dev/null 2>&1; do
  echo "Database not ready yet... retrying in 2 seconds."
  sleep 2
done

echo "Database is up! Starting service..."
exec "$@"