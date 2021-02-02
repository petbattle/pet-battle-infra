## pet-battle-infra

Pet Battle infrastructure helm chart. This chart requires cluster admin privileges to deploy operators and custom resource definitions.

```bash
helm repo add petbattle https://petbattle.github.io/helm-charts
helm repo update
# install chart from current directory
helm upgrade --install pet-battle-infra . --namespace petbattle --create-namespace
# install from chart repo
helm upgrade --install pet-battle-infra petbattle/pet-battle-infra --version=1.0.10 --namespace petbattle --create-namespace
```

To unsintall
```bash
helm uninstall pet-battle-infra --namespace petbattle
```
