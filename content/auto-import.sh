mongoimport --db=DataFeed --collection=Content --file=docker-entrypoint-initdb.d/ru_data.json
mongoimport --db=DataFeed --collection=Content --file=docker-entrypoint-initdb.d/he_data.json
mongoimport --db=DataFeed --collection=Content --file=docker-entrypoint-initdb.d/en_data.json

