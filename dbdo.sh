psql -d postgres -c 'DROP DATABASE bookhead_dev;'
psql -d postgres -c 'DROP DATABASE bookhead_test;'
psql -d postgres -c 'CREATE DATABASE bookhead_dev;'
psql -d postgres -c 'CREATE DATABASE bookhead_test;'
mix ecto.migrate
