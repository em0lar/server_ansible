docker stop matrix.labcode.de-app

docker exec matrix.labcode.de-db pg_dumpall -c -U synapse > /volume/backup/labcode.de/matrix.labcode.de/db_data.sql

chown rsync-backup:rsync-backup /volume/backup/labcode.de/matrix.labcode.de/*

docker start matrix.labcode.de-app