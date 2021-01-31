{{/*
Expand the name of the chart.
*/}}
{{- define "pet-battle-infra.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "pet-battle-infra.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pet-battle-infra.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pet-battle-infra.labels" -}}
helm.sh/chart: {{ include "pet-battle-infra.chart" . }}
app.kubernetes.io/part-of: petbattleworld
{{ include "pet-battle-infra.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "pet-battle-infra.selectorLabels" -}}
app.kubernetes.io/name: {{ include "pet-battle-infra.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "pet-battle-infra.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "pet-battle-infra.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Lookup the application domain
*/}}
{{- define "pet-battle-infra.app_domain" -}}
{{- if (lookup "operator.openshift.io/v1" "IngressController" "openshift-ingress-operator" "default") }}
{{- print (lookup "operator.openshift.io/v1" "IngressController" "openshift-ingress-operator" "default").status.domain }}
{{- else }}
{{- default .Values.app_domain }}
{{- end }}
{{- end }}
