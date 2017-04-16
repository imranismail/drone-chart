{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified server name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "server.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- $app := default "server" .Values.server.nameOverride -}}
{{- printf "%s-%s-%s" .Release.Name $name $app | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified worker name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "worker.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- $app := default "worker" .Values.worker.nameOverride -}}
{{- printf "%s-%s-%s" .Release.Name $name $app | trunc 63 | trimSuffix "-" -}}
{{- end -}}
