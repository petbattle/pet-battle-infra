## pet-battle-infra

Pet Battle infrastructure helm chart. This chart requires cluster admin privileges to deploy operators and custom resource definitions.

```bash
helm repo add petbattle https://petbattle.github.io/helm-charts
helm repo update
helm install petbattle/pet-battle-infra --version=1.0.3 --set pet-battle-infra.operatorgroup.enabled=true --set pet-battle-infra.operatorgroup.targetNamespaces={petbattle} --namespace petbattle --create-namespace --generate-name
```
