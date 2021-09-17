#/bin/bash

docker build -f Dockerfile.postgres -t 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/postgres .
docker build -f Dockerfile.barman -t 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/barman .
docker build -f Dockerfile.pgpool -t 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/pgpool .

docker push 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/postgres
docker push 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/barman
docker push 571653913127.dkr.ecr.us-east-2.amazonaws.com/ekyc/pgpool