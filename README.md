## pet-battle-infra

Pet Battle infrastructure helm chart. This chart requires cluster admin privileges to deploy operators and custom resource definitions.

```bash
helm repo add petbattle https://petbattle.github.io/helm-charts
helm repo update
# install the cluster scoped cert-util operator subscription into openshift-operators namespace only
helm upgrade --install pet-battle-infra-cluster petbattle/pet-battle-infra --version=1.0.7 --set subscription.cluster=true --set grafana.enabled=false --set keycloak.enabled=false --set infinispan.enabled=false --namespace petbattle --create-namespace
# install namespaced subscriptions only. this needs to be done in a new cluster so CRD's are installed
helm upgrade --install pet-battle-infra petbattle/pet-battle-infra --version=1.0.7 --set subscriptions.only=true --set operatorgroup.targetNamespaces={petbattle} --namespace petbattle --create-namespace
# install all infra applications including namespaced subscriptions (excl. cert-util oeprator)
helm upgrade --install pet-battle-infra petbattle/pet-battle-infra --version=1.0.7 --set operatorgroup.targetNamespaces={petbattle} --namespace petbattle --create-namespace
```

You can run an install from the source code by replacing the chart repo and version in the command above with a "."
```bash
# e.g replace this:
petbattle/pet-battle-infra --version=1.0.7
# with a dot to use files from current directory
.
```

You may deploy all the operator subscriptions under one helm release, but this may not be ideal for cluster scoped operators such as cert-util.
