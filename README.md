## pet-battle-infra

Pet Battle infrastructure helm chart. This chart requires cluster admin privileges to deploy operators and custom resource definitions.

```bash
oc new-project pet-battle
helm repo add petbattle https://petbattle.github.io/helm-charts
helm repo update
helm install pet-battle-infra petbattle/pet-battle-infra --version=1.0.2 --set pet-battle-infra.operatorgroup.enabled=true --set pet-battle-infra.operatorgroup.targetNamespaces={pet-battle}
```
