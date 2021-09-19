#/bin/bash

docker node update --label-add pgpool=true --label-add pgbackup=true rikkeiai01-tannm-ai

docker node update --label-add pgtype=primary tannm-srv4-ai

docker node update --label-add pgtype=replica1 hungnvai

docker node update --label-add pgtype=replica2 server-ai-4
