#/bin/bash

docker node update --label-add pgpool=true --label-add pgbackup=true pgpool

docker node update --label-add pgtype=primary master

docker node update --label-add pgtype=replica1 slave1

docker node update --label-add pgtype=replica2 slave2
