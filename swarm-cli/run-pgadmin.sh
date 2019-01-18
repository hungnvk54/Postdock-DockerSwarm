docker service create  \
--constraint "node.labels.pgadmin == true" \
--endpoint-mode vip                        \
--log-driver json-file                     \
--log-opt max-size=32m                     \
--log-opt max-file=16                      \
--mount "type=volume,source=pgadmindata,destination=/var/lib/pgadmin" \
--mode replicated                        \
--name pgadmin                        \
--network cluster-network                        \
--replicas 1                        \
--env-file /opt/postdock/pgadmin/env_file \
--publish 5050:80/tcp                        \
--restart-condition any dpage/pgadmin4
