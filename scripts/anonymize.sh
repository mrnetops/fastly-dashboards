#!/usr/bin/env bash

#
# only show random shard
#

COMMAND="${FASTLY_DASHBOARDS_ANONYMIZE_COMMAND:- -service-shard 1/10 -service-allowlist b.*}"

perl -pi -e "s#command: -namespace fastly#command: ${COMMAND}#" \
	docker-compose.yml

#
# strip service names and ids
#

find grafana/provisioning/dashboards/ -type f \
        | xargs perl -pi -e 's/{{service_name}}/service_name/g'

find grafana/provisioning/dashboards/ -type f \
        | xargs perl -pi -e 's/\[\$service_id_derived\]/[service_id]/g'

find grafana/provisioning/dashboards/ -type f \
        | xargs perl -pi -e 's/\[\$service_name_derived\]/[service_name]/g'
