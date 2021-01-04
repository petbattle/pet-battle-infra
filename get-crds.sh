#!/bin/bash

#set -x
curl https://raw.githubusercontent.com/integr8ly/grafana-operator/master/deploy/crds/Grafana.yaml -o crds/Grafana.yaml
curl https://raw.githubusercontent.com/integr8ly/grafana-operator/master/deploy/crds/GrafanaDashboard.yaml -o crds/GrafanaDashboard.yaml
curl https://raw.githubusercontent.com/integr8ly/grafana-operator/master/deploy/crds/GrafanaDataSource.yaml -o crds/GrafanaDataSource.yaml

curl https://raw.githubusercontent.com/keycloak/keycloak-operator/11.0.3/deploy/crds/keycloak.org_keycloakrealms_crd.yaml -o crds/keycloak.org_keycloakrealms_crd.yaml
curl https://raw.githubusercontent.com/keycloak/keycloak-operator/11.0.3/deploy/crds/keycloak.org_keycloakbackups_crd.yaml -o crds/keycloak.org_keycloakbackups_crd.yaml
curl https://raw.githubusercontent.com/keycloak/keycloak-operator/11.0.3/deploy/crds/keycloak.org_keycloakclients_crd.yaml -o crds/keycloak.org_keycloakclients_crd.yaml
curl https://raw.githubusercontent.com/keycloak/keycloak-operator/11.0.3/deploy/crds/keycloak.org_keycloaks_crd.yaml -o crds/keycloak.org_keycloaks_crd.yaml
curl https://raw.githubusercontent.com/keycloak/keycloak-operator/11.0.3/deploy/crds/keycloak.org_keycloakusers_crd.yaml -o crds/keycloak.org_keycloakusers_crd.yaml

curl https://raw.githubusercontent.com/infinispan/infinispan-operator/master/deploy/crds/infinispan.org_backups_crd.yaml -o crds/infinispan.org_backups_crd.yaml
curl https://raw.githubusercontent.com/infinispan/infinispan-operator/master/deploy/crds/infinispan.org_caches_crd.yaml -o crds/infinispan.org_caches_crd.yaml
curl https://raw.githubusercontent.com/infinispan/infinispan-operator/master/deploy/crds/infinispan.org_infinispans_crd.yaml -o crds/infinispan.org_infinispans_crd.yaml
curl https://raw.githubusercontent.com/infinispan/infinispan-operator/master/deploy/crds/infinispan.org_restores_crd.yaml -o crds/infinispan.org_restores_crd.yaml
