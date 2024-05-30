{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ingress.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ingress"  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.secret.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-secret"  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.secret-dc.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-secret-dc"  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-client-id-secret.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-client-id-secret"  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-client-id-secret-value.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-client-id-secret-value"  | trunc 63 | trimSuffix "-" | b64enc | quote -}}
{{- end -}}

{{- define "odm.oidc-auth-secret.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-auth-secret"  | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dbserver.fullname" -}}
{{- printf "%s-%s" .Release.Name "dbserver" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.decisionserverconsole.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-decisionserverconsole" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.decisionserverconsole.notif.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-decisionserverconsole-notif" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.decisionserverruntime.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-decisionserverruntime" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.decisioncenter.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-decisioncenter" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.decisionrunner.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-decisionrunner" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.persistenceclaim.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-pvclaim" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.test.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-test" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.test-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-test-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-registration.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-registration" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "productsemver" -}}
{{- default .Chart.AppVersion .Values.customization.productSemVer -}}
{{- end -}}

{{- define "odm.oidc-job-registration.fullname" -}}
{{- printf "%s-%s-%s" .Release.Name "odm-oidc-job-reg" (include "productsemver" .) |replace "." "" |trunc 63 |trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-registration-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-registration-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-redirect-uris-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-redirect-uris-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.oidc-client-id.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-oidc-client-id" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dc-logging-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-logging-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dr-logging-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dr-logging-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-console-logging-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-logging-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-logging-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-logging-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-xu-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-xu-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dc-web-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-web-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-web-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-web-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-console-web-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-web-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dc-jvm-options-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-jvm-options-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.default-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-default-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dr-jvm-options-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dr-jvm-options-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-console-jvm-options-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-jvm-options-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-jvm-options-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-jvm-options-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-console-custom-scripts-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-custom-scripts-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-custom-scripts-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-custom-scripts-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dc-custom-scripts-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-custom-scripts-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dr-custom-scripts-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dr-custom-scripts-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.customization-custom-scripts-configmap.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-customization-custom-scripts-configmap" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dbserver-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dbserver-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dc-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.dr-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dr-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-console-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm.ds-runtime-network-policy.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-network-policy" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-security-secret-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-security-secret-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-externaldatabase-security-secret-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-externaldatabase-security-secret-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-baiemitterconfig-secret-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-baiemitterconfig-secret-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-meteringconfig-secret-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-meteringconfig-secret-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-auth-secret-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-auth-secret-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-custom-secret-ds.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-custom-secret-ds" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "odm-custom-secret-ds-file.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-custom-secret-ds-file" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "odm-customdatasource-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/customdatasource/"
{{- end -}}

{{- define "odm-logging-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-logging-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-jvm-options-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-jvm-options-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-driver-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-driver-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-dc-customlib-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-customlib-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-ds-runtime-xuconfigref-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-xuconfigref-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-dc-webconfigref-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-webconfigref-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-ds-runtime-webconfigref-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-webconfigref-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-ds-console-webconfigref-volume.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-webconfigref-volume" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-dc-route.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dc-route" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-ds-console-route.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-console-route" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-ds-runtime-route.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-ds-runtime-route" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "odm-dr-route.fullname" -}}
{{- printf "%s-%s" .Release.Name "odm-dr-route" | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "odm-sql-internal-db-check-env" -}}
- name: PGDATABASE
  value: "{{ .Values.internalDatabase.databaseName }}"
- name: PGCONNECT_TIMEOUT
  value: "2"
- name: PGHOST
  value: {{ template "odm.dbserver.fullname" . }}
- name: PGUSER_FILE
  value: /var/run/postgresql/secrets/db-user
- name: PGPASSWORD_FILE
  value: /var/run/postgresql/secrets/db-password
{{- end -}}

{{- define "odm-fips-init-container-env" -}}
env:
  - name: ENABLE_FIPS
    value: "{{ .Values.customization.enableFips }}"
  - name: JVM_ARGS
    value: "-Dsemeru.fips={{ .Values.customization.enableFips }}"
{{- end -}}

{{- define "odm-sql-internal-db-check-volume" -}}
{{- if eq (include "isInternalDatabase" .) "true" }}
- name: checkdb-secret
  secret:
    {{- if not (empty .Values.internalDatabase.secretCredentials) }}
    secretName: {{ .Values.internalDatabase.secretCredentials }}
    {{- else }}
    secretName: {{ template "odm.secret.fullname" . }}
    {{- end }}
{{- end }}
{{- end -}}

{{- define "odm-sql-internal-db-check-volume-mount" -}}
- name: checkdb-secret
  mountPath: "/var/run/postgresql/secrets/"
  readOnly: true
{{- end -}}

{{- define "odm-sql-internal-db-check-resources" -}}
requests:
  cpu: 200m
  memory: 100Mi
limits:
  cpu: 500m
  memory: 200Mi
{{- end -}}

{{- define "odm-tolerations" -}}
tolerations:
  - key: {{ .Values.customization.dedicatedNodeLabel }}
    operator: "Exists"
    effect: "NoSchedule"
{{- end -}}

{{- define "odm-topologyspreadconstraints" -}}
{{- $root := index . "root" -}}
{{- if $root.Values.customization.isMultipleAz -}}
topologySpreadConstraints:
  - maxSkew: 1
    topologyKey: topology.kubernetes.io/zone
    whenUnsatisfiable: ScheduleAnyway
    labelSelector:
      matchLabels:
        app: {{ template "fullname" $root }}
        app.kubernetes.io/component: {{ .componentName }}
    matchLabelKeys:
      - pod-template-hash
{{- end -}}
{{- end -}}

{{- define "odm-annotations" -}}
{{- $cpVersion := default "23.0.2" .Values.customization.cloudpakVersion -}}
{{- $productCpName := default "Operational Decision Manager Containers - CP4BA" .Values.customization.productName -}}
{{- $productCpNameNonProd := printf "%s - %s" $productCpName "Non Prod" -}}
{{- $productName := default "IBM Operational Decision Manager" .Values.customization.productName -}}
{{- $productNameNonProd := printf "%s - %s" $productName "Non Prod" -}}
{{- $productID := default "b1a07d4dc0364452aa6206bb6584061d" .Values.customization.productID -}}
{{- $productIDNonProd := default "e32af5770e06427faae142993c691048" .Values.customization.productID -}}
{{- $productVersion := default .Chart.AppVersion .Values.customization.productVersion -}}
annotations:
  {{- if .Values.customization.cp4baLicense }}
  cloudpakName: "IBM Cloud Pak for Business Automation"
  cloudpakId: "94a9c8c358bb43ba8fbdea62e7e166a5"
  cloudpakVersion: {{ $cpVersion | quote }}
  {{- if .Values.customization.deployForProduction }}
  productName: {{ $productCpName | quote }}
  productID: "cfdbd71c64094971a70b6985df6b1e93"
  productCloudpakRatio: "1:5"
  {{- else }}
  productName: {{ $productCpNameNonProd | quote }}
  productID: "d803dec7647d48d39f6803e077d36080"
  productCloudpakRatio: "2:5"
  {{- end }}
  productMetric: "VIRTUAL_PROCESSOR_CORE"
  productVersion: {{ $cpVersion | quote }}
  {{- else }}
  {{- if .Values.customization.deployForProduction }}
  productName: {{ $productName | quote }}
  productID: {{ $productID | quote }}
  {{- else }}
  productName: {{ $productNameNonProd | quote }}
  productID: {{ $productIDNonProd | quote }}
  {{- end }}
  productVersion: {{ $productVersion | quote }}
  {{- if and (not (empty (.Values.customization.cloudpakID))) (not (empty .Values.customization.cloudpakVersion)) }}
  productMetric: "VIRTUAL_PROCESSOR_CORE"
  {{- if .Values.customization.deployForProduction }}
  productCloudpakRatio: "1:5"
  {{- else }}
  productCloudpakRatio: "2:5"
  {{- end }}
  cloudpakName: {{ .Values.customization.cloudpakName | quote }}
  cloudpakId: {{ .Values.customization.cloudpakID | quote }}
  cloudpakVersion: {{ .Values.customization.cloudpakVersion | quote }}
  {{- else }}
  productMetric: "PROCESSOR_VALUE_UNIT"
  {{- end -}}
  {{- end }}
{{- end -}}

{{/* Decision Runner is deployed as non-prod only so the productCloudpakRatio is set to 2:5 */}}
{{- define "odm-annotations.decisionrunner" -}}
{{- $cpVersion := default "23.0.2" .Values.customization.cloudpakVersion -}}
{{- $productCpName := default "Operational Decision Manager Containers - CP4BA" .Values.customization.productName -}}
{{- $productCpNameNonProd := printf "%s - %s" $productCpName "Non Prod" -}}
{{- $productName := default "IBM Operational Decision Manager" .Values.customization.productName -}}
{{- $productNameNonProd := printf "%s - %s" $productName "Non Prod" -}}
{{- $productVersion := default .Chart.AppVersion .Values.customization.productVersion -}}
annotations:
  {{- if .Values.customization.cp4baLicense }}
  cloudpakName: "IBM Cloud Pak for Business Automation"
  cloudpakId: "94a9c8c358bb43ba8fbdea62e7e166a5"
  cloudpakVersion: {{ $cpVersion | quote }}
  productName: {{ $productCpNameNonProd | quote }}
  productVersion: {{ $cpVersion | quote }}
  productID: "d803dec7647d48d39f6803e077d36080"
  productMetric: "VIRTUAL_PROCESSOR_CORE"
  productCloudpakRatio: "2:5"
  {{- else }}
  productName: {{ $productNameNonProd | quote }}
  productVersion: {{ $productVersion | quote }}
  {{- if and (not (empty (.Values.customization.cloudpakID))) (not (empty .Values.customization.cloudpakVersion)) }}
  productID: "d803dec7647d48d39f6803e077d36080"
  productMetric: "VIRTUAL_PROCESSOR_CORE"
  productCloudpakRatio: "2:5"
  cloudpakName: {{ .Values.customization.cloudpakName | quote }}
  cloudpakId: {{ .Values.customization.cloudpakID | quote }}
  cloudpakVersion: {{ .Values.customization.cloudpakVersion | quote }}
  {{- else }}
  productID: "e32af5770e06427faae142993c691048"
  productMetric: "PROCESSOR_VALUE_UNIT"
  {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "odm-security-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/security/volume"
{{- end -}}

{{- define "odm-auth-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/auth"
{{- end -}}

{{- define "odm-log-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/logging"
{{- end -}}

{{- define "odm-jvm-options-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/configDropins/overrides"
{{- end -}}

{{- define "odm-driver-dir" -}}
"/drivers"
{{- end -}}

{{- define "odm-dc-customlib-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/customlib"
{{- end -}}

{{- define "odm-baiemitterconfig-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/baiemitterconfig/"
{{- end -}}

{{- define "odm-meteringconfig-dir" -}}
"/opt/ibm/wlp/usr/servers/defaultServer/pluginconfig/"
{{- end -}}

{{- define "odm-secrets-config-dir" -}}
/opt/ibm/wlp/usr/servers/defaultServer/secrets
{{- end -}}

{{- define "odm-keystore-password-key" -}}
"keystore_password"
{{- end -}}

{{- define "odm-truststore-password-key" -}}
"truststore_password"
{{- end -}}

## Utilities
# Method to strip the / at the end of the repository name
{{- define "odm.repository.name" -}}
{{- $reponame := default "cp.icr.io/cp/cp4a/odm" .Values.image.repository -}}
{{- printf "%s"  $reponame |  trimSuffix "/" -}}
{{- end -}}
## End Utilities

{{- define "odm.http.protocol" -}}
{{- if .Values.service.enableTLS }}
{{- printf "https" | quote -}}
{{- else }}
{{- printf "http" | quote -}}
{{- end }}
{{- end -}}

{{/*
Check if tag contains specific platform suffix and if not set based on kube platform
*/}}
{{- define "platform" -}}
{{- if not .Values.image.arch }}
  {{- if (eq "linux/amd64" .Capabilities.KubeVersion.Platform) }}
    {{- printf "-%s" "amd64" }}
  {{- end -}}
  {{- if (eq "linux/ppc64le" .Capabilities.KubeVersion.Platform) }}
    {{- printf "-%s" "ppc64le" }}
  {{- end -}}
  {{- if (eq "linux/s390x" .Capabilities.KubeVersion.Platform) }}
    {{- printf "-%s" "s390x" }}
  {{- end -}}
{{- else -}}
    {{- printf "-%s" .Values.image.arch }}
{{- end -}}
{{- end -}}

{{/*
Return arch based on kube platform
*/}}
{{- define "arch" -}}
  {{- if (eq "linux/amd64" .Capabilities.KubeVersion.Platform) }}
    {{- printf "%s" "amd64" }}
  {{- else if (eq "linux/ppc64le" .Capabilities.KubeVersion.Platform) }}
    {{- printf "%s" "ppc64le" }}
  {{- else if (eq "linux/s390x" .Capabilities.KubeVersion.Platform) }}
    {{- printf "%s" "s390x" }}
  {{- else }}
    {{- printf "%s" "amd64" }}
  {{- end -}}
{{- end -}}

{{- define "odm-security-context" -}}
securityContext:
  runAsUser: {{ .Values.customization.runAsUser }}
  runAsNonRoot: true
  privileged: false
  readOnlyRootFilesystem: {{ .Values.customization.readOnlyRootFilesystem }}
  allowPrivilegeEscalation: false
  capabilities:
    drop:
    - ALL
{{- end -}}
{{- define "odm-spec-security-context" -}}
hostNetwork: false
hostPID: false
hostIPC: false
securityContext:
  runAsNonRoot: true
  runAsUser: {{ .Values.customization.runAsUser }}
  fsGroup: {{ .Values.customization.runAsUser }}
{{ include "odm-seccomp-profile" . | indent 2 }}
{{- end -}}
{{- define "odm-kubeVersion" -}}
  {{- if .Values.customization.kubeVersion }}
- name: "KubeVersion"
  value: "{{ .Values.customization.kubeVersion }}"
  {{- else -}}
- name: "KubeVersion"
  value: "{{ .Capabilities.KubeVersion.GitVersion }}"
  {{- end -}}
{{- end -}}

{{- define "odm-seccomp-profile" -}}
{{- if (.Values.customization.seccompProfile) -}}
  {{- if (.Values.customization.seccompProfile.type) -}}
seccompProfile:
  type: {{ .Values.customization.seccompProfile.type }}
    {{- if (eq .Values.customization.seccompProfile.type "Localhost") }}
  localhostProfile: {{ .Values.customization.seccompProfile.localhostProfile }}
    {{- end -}}
  {{- else -}}
seccompProfile:
  type: RuntimeDefault
  {{- end -}}
{{- else -}}
{{/* In case of upgrade */}}
seccompProfile:
  type: RuntimeDefault
{{- end -}}
{{- end -}}

{{/*
Define Metering variable for Deployment
*/}}
{{- define "odm-metering-config" -}}
{{- if or (not (empty .Values.customization.usageMeteringSecretRef )) (not (empty .Values.customization.meteringServerUrl )) }}
- name: COM_IBM_RULES_METERING_ENABLE
  value: "true"
{{- if not (empty .Values.customization.meteringServerUrl ) }}
- name: METERING_SERVER_URL
  value: "{{ .Values.customization.meteringServerUrl }}"
{{- end }}
{{- if not (empty .Values.customization.meteringSendPeriod ) }}
- name: METERING_SEND_PERIOD
  value: "{{ .Values.customization.meteringSendPeriod }}"
{{- end }}
{{- end }}
{{- end }}
{{/*
Define database configuration for deployment
*/}}
{{- define "isExternalDatabase" -}}
{{- if and (empty .Values.externalDatabase.serverName) (empty .Values.externalDatabase.url) (empty .Values.externalDatabase.decisionServer.serverName) (empty .Values.externalDatabase.decisionServer.url) (empty .Values.externalDatabase.decisionCenter.serverName) (empty .Values.externalDatabase.decisionCenter.url) }}
{{- printf "false" }}
{{- else }}
{{- printf "true" }}
{{- end }}
{{- end -}}

{{- define "isInternalDatabase" -}}
{{- if (and (empty .Values.externalCustomDatabase.datasourceRef) (eq (include "isExternalDatabase" .) "false") )  }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end -}}



{{- define "odm-db-setexternal" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- $config := index . "config" -}}
- name: DB_TYPE
  value: "{{ $config.type }}"
{{- if not (empty ($config.serverName)) }}
- name: DB_SERVER_NAME
  value: "{{ $config.serverName }}"
{{- end }}
{{- if not (empty ($config.port)) }}
- name: DB_PORT_NUMBER
  value: "{{ $config.port }}"
{{- end }}
{{- if not (empty ($config.databaseName)) }}
- name: DB_NAME
  value: "{{ $config.databaseName }}"
{{- end }}
{{- if not (empty ($config.url)) }}
- name: DB_URL
  value: "{{ $config.url }}"
{{- end }}
{{- if not (empty ($config.driversUrl)) }}
- name: DB_DRIVER_URL
  value: {{ join "," $config.driversUrl }}
{{- end }}
{{- end -}}

{{- define "odm-db-setexternal-volume" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- $config := index . "config" -}}
- name: db-config-secret
  secret:
  {{- if not (empty $config.secretCredentials) }}
    secretName: {{ $config.secretCredentials }}
  {{- else }}
  {{- if (empty $root.Values.customization.vault) }}
    {{- if  eq $componentName "decisionCenter"  }}
    secretName: {{ template "odm.secret-dc.fullname" $root }}
    {{- else}}
    secretName: {{ template "odm.secret.fullname" $root }}
    {{- end}}
  {{- end }}
  {{- end }}
{{- end -}}

{{- define "odm-external-sec-user" -}}
{{- if  not (empty  .Values.externalDatabase.decisionServer.user) }}{{ .Values.externalDatabase.decisionServer.user }}
{{- else }}{{ .Values.externalDatabase.user }}
{{- end }}
{{- end -}}

{{- define "odm-external-sec-password" -}}
{{- if  not (empty  .Values.externalDatabase.decisionServer.password) }}{{ .Values.externalDatabase.decisionServer.password }}
{{- else }}{{ .Values.externalDatabase.password }}
{{- end }}
{{- end -}}

{{- define "odm-external-sec-dc-user" -}}
{{- if  not (empty  .Values.externalDatabase.decisionCenter.user) }}{{ .Values.externalDatabase.decisionCenter.user }}
{{- else }}
{{ .Values.externalDatabase.user }}
{{- end }}
{{- end -}}

{{- define "odm-external-sec-dc-password" -}}
{{- if  not (empty  .Values.externalDatabase.decisionCenter.password) }}{{ .Values.externalDatabase.decisionCenter.password }}
{{- else }}
{{ .Values.externalDatabase.password }}
{{- end }}
{{- end -}}

{{- define "odm-db-config" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- if empty ($root.Values.externalCustomDatabase.datasourceRef) }}
{{- if eq (include "isExternalDatabase" $root) "false"  }}
- name: DB_TYPE
  value: "postgresql"
- name: "DB_SERVER_NAME"
  value: {{ template "odm.dbserver.fullname" $root }}
- name: DB_PORT_NUMBER
  value: "5432"
- name: DB_NAME
  value: "{{ $root.Values.internalDatabase.databaseName }}"
{{- else }}
{{- if  and (eq $componentName  "decisionServer") (or (not (empty $root.Values.externalDatabase.decisionServer.serverName)) (not (empty $root.Values.externalDatabase.decisionServer.url))) }}
{{ include "odm-db-setexternal"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase.decisionServer) }}
{{- else if  and (eq $componentName "decisionCenter") (or (not (empty $root.Values.externalDatabase.decisionCenter.serverName)) (not (empty $root.Values.externalDatabase.decisionCenter.url))) }}
{{ include "odm-db-setexternal"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase.decisionCenter) }}
{{- else }}
{{ include "odm-db-setexternal"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase) }}
{{- end }}
{{- end }}
{{- else }}
{{- if not (empty ($root.Values.externalDatabase.driversUrl)) }}
- name: DB_DRIVER_URL
  value: {{ join "," $root.Values.externalDatabase.driversUrl }}
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-db-config-volume" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- if empty ($root.Values.externalCustomDatabase.datasourceRef) }}
{{- if eq (include "isExternalDatabase" $root) "false"  }}
- name: db-config-secret
  secret:
  {{- if not (empty $root.Values.internalDatabase.secretCredentials) }}
    secretName: {{ $root.Values.internalDatabase.secretCredentials }}
  {{- else }}
    secretName: {{ template "odm.secret.fullname" $root }}
  {{- end }}
{{- else }}
{{- if  and (eq $componentName  "decisionServer") (or (not (empty $root.Values.externalDatabase.decisionServer.serverName)) (not (empty $root.Values.externalDatabase.decisionServer.url))) }}
{{ include "odm-db-setexternal-volume"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase.decisionServer) }}
{{- else if  and (eq $componentName "decisionCenter") (or (not (empty $root.Values.externalDatabase.decisionCenter.serverName)) (not (empty $root.Values.externalDatabase.decisionCenter.url))) }}
{{ include "odm-db-setexternal-volume"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase.decisionCenter) }}
{{- else }}
{{ include "odm-db-setexternal-volume"  (dict "componentName" $componentName "root" $root "config" $root.Values.externalDatabase) }}
{{- end }}
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-db-config-volume-mount" -}}
{{- if (empty .Values.externalCustomDatabase.datasourceRef) }}
- name: db-config-secret
  mountPath: {{ template "odm-secrets-config-dir" . }}/db-config
  readOnly: true
{{- end }}
{{- end -}}

{{- define "odm-additional-labels" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- $config := index . "config" -}}
app: {{ template "fullname" $root }}
chart: "{{ $root.Chart.Name }}-{{ $root.Chart.Version | replace "+" "_" }}"
release: "{{ $root.Release.Name }}"
heritage: "{{ $root.Release.Service }}"
app.kubernetes.io/instance: {{ $root.Release.Name }}
app.kubernetes.io/name: {{ template "name" $root }}
app.kubernetes.io/version: "{{ template "productsemver" $root }}"
{{- if and (not (empty ($root.Values.customization.cloudpakID))) (not (empty $root.Values.customization.cloudpakVersion)) }}
app.kubernetes.io/component: odm
app.kubernetes.io/part-of: icp4a
app.kubernetes.io/managed-by: Operator
{{- else }}
app.kubernetes.io/component: {{ $componentName }}
app.kubernetes.io/part-of: odm
app.kubernetes.io/managed-by: helm
{{- end }}
helm.sh/chart: {{ $root.Chart.Name }}-{{ $root.Chart.Version | replace "+" "_" }}
{{- with $config.labels }}
{{- range $key, $val := . }}
{{- if $val }}
{{ $key }}: {{ $val }}
{{- else }}
{{- $_ := unset $config.labels $key -}}
{{- end }}
{{- end -}}
{{- end -}}
{{- with $root.Values.customization.labels }}
{{- range $key, $val := . }}
{{- if and (not (hasKey $config.labels $key)) $val }}
{{ $key }}: {{ $val }}
{{- end }}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "odm-oidc-context" -}}
{{- if .Values.oidc.enabled }}
- name: OPENID_CONFIG
  value: "true"
- name: OPENID_SERVER_URL
  value: "{{ .Values.oidc.serverUrl }}"
- name: OPENID_PROVIDER
  {{- if not (empty .Values.oidc.provider) }}
  value: "{{ .Values.oidc.provider }}"
  {{- else }}
  value: "ums"
  {{- end }}
- name: OPENID_ALLOWED_DOMAINS
  {{- if not (empty .Values.oidc.allowedDomains) }}
  value: "{{ .Values.oidc.allowedDomains }}"
  {{- else }}
  value: "*"
  {{- end }}
{{- if .Values.oidc.disableLoginPanel }}
- name: DISABLE_LOGIN_PANEL
  value: "true"
{{- end }}
{{- if not (empty .Values.oidc.mode) }}
- name: OPENID_MODE
  value: "{{ .Values.oidc.mode }}"
{{- end }}
{{- if not (empty .Values.oidc.keyAliasName) }}
- name: OPENID_KEYALIAS_NAME
  value: "{{ .Values.oidc.keyAliasName }}"
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-oidc-context-volume" -}}
{{- if .Values.oidc.enabled }}
{{- if (not (eq .Values.customization.vault "initcontainer")) }}
- name: oidc-config-secret
  secret:
    {{- if not (empty .Values.oidc.clientRef) }}
    secretName: {{ .Values.oidc.clientRef }}
    {{- else }}
    secretName: {{ template "odm.oidc-client-id-secret.fullname" . }}
    {{- end }}
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-oidc-context-volume-mount" -}}
{{- if .Values.oidc.enabled }}
{{- if (not (eq .Values.customization.vault "initcontainer")) }}
- name: oidc-config-secret
  mountPath: {{ template "odm-secrets-config-dir" . }}/oidc-config
  readOnly: true
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-dba-volumes-context" -}}
{{- if  (not (empty .Values.dba.rootCaSecretRef)) }}
- name: root-ca
{{- if (empty .Values.customization.vault) }}
  secret:
    secretName: {{ .Values.dba.rootCaSecretRef }}
{{- else}}
  emptyDir: {}
{{- end }}
{{- end }}
- name: tls-stores
  emptyDir: {}
{{- if not (empty .Values.dba.ldapSslSecretRef) }}
- name: ldap-ssl-secret
  secret:
    secretName: {{ .Values.dba.ldapSslSecretRef }}
- name: ldap-trust-store
  emptyDir: {}
{{- end }}
{{- if and (not (empty .Values.dba.passwordSecretRef )) (not (empty .Values.dba.rootCaSecretRef )) }}
- name: dba-password-secret
  secret:
    secretName: {{ .Values.dba.passwordSecretRef }}
{{- end }}
{{- end -}}

{{- define "odm-dba-volumemounts-context" -}}
{{- if not (empty .Values.dba.rootCaSecretRef) }}
- name: tls-stores
  mountPath: /shared/tls
{{- end}}
{{- if not (empty .Values.dba.ldapSslSecretRef) }}
- name: ldap-trust-store
  mountPath: /opt/ibm/wlp/usr/servers/defaultServer/ldap/ldap.jks
  subPath: truststore/jks/trusts.jks
{{- end}}
{{- if and (not (empty .Values.dba.passwordSecretRef )) (not (empty .Values.dba.rootCaSecretRef )) }}
- name: dba-password-secret
  mountPath: {{ template "odm-secrets-config-dir" . }}/dba-password
  readOnly: true
{{- end }}
{{- end -}}

{{- define "odm-dba-production" -}}
{{- if not ( .Values.customization.deployForProduction) }}
- name: "DEPLOY_FOR_PRODUCTION"
  value: "FALSE"
{{- else }}
- name: "DEPLOY_FOR_PRODUCTION"
  value: "TRUE"
{{- end }}
{{- end -}}

{{- define "odm-dba-context" -}}
{{- if not (empty .Values.dba.rootCaSecretRef)}}
- name: keytoolinit
  image: {{ .Values.dba.keytoolInitContainer.image }}
  {{- if (not (empty .Values.dba.keytoolInitContainer.imagePullPolicy )) }}
  imagePullPolicy: {{ .Values.dba.keytoolInitContainer.imagePullPolicy }}
  {{- else }}
  imagePullPolicy: "IfNotPresent"
  {{- end }}
  env:
    - name: CREATE_KEYPAIR
      value: "true"
    - name: KEYTOOL_ACTION
      value: "GENERATE-BOTH"
    - name: PRIVATE_LOGGING_ENABLED
      value: "false"
    {{- if (not (empty .Values.dba.passwordSecretRef )) }}
    - name: KEYSTORE_PASSWORD
      valueFrom:
        secretKeyRef:
          name: {{ .Values.dba.passwordSecretRef }}
          key: sslKeystorePassword
    {{- end }}
  volumeMounts:
    - name: root-ca
      mountPath: /shared/resources/cert-trusted
    - name: root-ca
      mountPath: /etc/predefined-ca
    - name: tls-stores
      mountPath: /shared/tls
  {{- if .Values.customization.readOnlyRootFilesystem }}
    - name: tmp-folder-emptydir
      mountPath: /tmp
   {{- end }}
{{ include "odm-security-context" . | indent 2 }}
  resources:
{{ include "odm-dba-context-resources" . | indent 4 }}
{{- end }}
{{- if (not (empty .Values.dba.ldapSslSecretRef )) }}
- name: ldapsslkeytoolinit
  image: {{ .Values.dba.keytoolInitContainer.image }}
  {{- if (not (empty .Values.dba.keytoolInitContainer.imagePullPolicy )) }}
  imagePullPolicy: {{ .Values.dba.keytoolInitContainer.imagePullPolicy }}
  {{- else }}
  imagePullPolicy: "IfNotPresent"
  {{- end }}
  env:
    - name: KEYTOOL_ACTION
      value: "GENERATE-TRUSTSTORE"
    {{- if (not (empty .Values.dba.passwordSecretRef )) }}
    - name: KEYSTORE_PASSWORD
      valueFrom:
        secretKeyRef:
          name: {{ .Values.dba.passwordSecretRef }}
          key: ldapSslTruststorePassword
    {{- end }}
  volumeMounts:
    - name: ldap-trust-store
      mountPath: /shared/tls
    - name: ldap-ssl-secret
      mountPath: /shared/resources/cert-trusted
  {{- if .Values.customization.readOnlyRootFilesystem }}
    - name: tmp-folder-emptydir
      mountPath: /tmp
    - name: logs-folder-emptydir
      mountPath: /logs
   {{- end }}
{{ include "odm-security-context" . | indent 2 }}
  resources:
{{ include "odm-dba-context-resources" . | indent 4 }}
{{- end }}
{{- end -}}

{{- define "odm-dba-context-resources" -}}
requests:
  cpu: 200m
  memory: 100Mi
limits:
  cpu: 500m
  memory: 200Mi
{{- end -}}

{{- define "odm-pullsecret-spec" -}}
{{- if or (or (not (empty .Values.image.pullSecrets )) (not (empty .Values.dba.keytoolInitContainer.imagePullSecret ))) (contains "cp.icr.io" .Values.image.repository) }}
imagePullSecrets:
{{- if contains "cp.icr.io" .Values.image.repository }}
- name: ibm-entitlement-key
{{- end }}
{{- if .Values.image.pullSecrets -}}
{{- if kindIs "string" .Values.image.pullSecrets }}
- name: {{ .Values.image.pullSecrets }}
{{- else -}}
{{- range .Values.image.pullSecrets }}
- name: {{ . }}
{{- end }}
{{- end }}
{{- end }}
{{- if (not (empty .Values.dba.keytoolInitContainer.imagePullSecret )) }}
- name: {{ .Values.dba.keytoolInitContainer.imagePullSecret }}
{{- end }}
{{- end }}
{{- end -}}

{{- define "odm-serviceAccountName" -}}
{{- if .Values.serviceAccountName -}}
serviceAccountName: {{ .Values.serviceAccountName }}
{{- else -}}
serviceAccountName: {{ template "fullname" . }}-service-account
{{- end }}
automountServiceAccountToken: false
{{- end -}}

{{- define "odm-db-get-ssl-env-context" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- if and (not (empty $root.Values.externalDatabase.decisionServer.sslSecretRef)) (eq $componentName "decisionServer")  }}
{{- $root.Values.externalDatabase.decisionServer.sslSecretRef  }}
{{- else if and (not (empty $root.Values.externalDatabase.decisionCenter.sslSecretRef)) (eq $componentName "decisionCenter") }}
{{- $root.Values.externalDatabase.decisionCenter.sslSecretRef }}
{{- else if not (empty $root.Values.externalDatabase.sslSecretRef)  }}
{{- $root.Values.externalDatabase.sslSecretRef }}
{{- else }}
{{- end }}
{{- end -}}

{{- define "odm-db-ssl-volumes-context" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- if (not (empty (include "odm-db-get-ssl-env-context" (dict "root" $root "componentName" $componentName)))) }}
- name: {{ template "odm-externaldatabase-security-secret-volume.fullname" $root }}
  secret:
    secretName: {{ include "odm-db-get-ssl-env-context" (dict "root" $root "componentName" $componentName)  }}
{{- end}}
{{- end}}

{{- define "odm-db-ssl-volumemounts-context" -}}
{{- $componentName := index . "componentName" -}}
{{- $root := index . "root" -}}
{{- if (not (empty (include "odm-db-get-ssl-env-context"  (dict "root" $root "componentName" $componentName)))) }}
- name: {{ template "odm-externaldatabase-security-secret-volume.fullname" $root }}
  mountPath: {{ template "odm-customdatasource-dir" $root }}
{{- end}}
{{- end}}

{{- define "odm-metering-volumes-context" -}}
{{- if not (empty (.Values.customization.usageMeteringSecretRef)) }}
- name: {{ template "odm-meteringconfig-secret-volume.fullname" . }}
  secret:
    secretName: {{ .Values.customization.usageMeteringSecretRef }}
{{- end}}
{{- end}}

{{- define "odm-metering-volumemounts-context" -}}
{{- if not (empty (.Values.customization.usageMeteringSecretRef)) }}
- name: {{ template "odm-meteringconfig-secret-volume.fullname" . }}
  readOnly: true
  mountPath: {{ template "odm-meteringconfig-dir" . }}
{{- end}}
{{- end}}

{{/*
Image tag or digest.

*/}}{{- define "image.tagOrDigest" -}}
{{- $tagTesting := default .root.Values.image.tag (.containerTag | quote) }}
{{- $tag := default .root.Values.image.tag .containerTag  }}
{{- if contains "sha256" $tagTesting -}}
image: {{ template "odm.repository.name" .root }}/{{ .containerName }}@{{ $tag }}
{{- else -}}
image: {{ template "odm.repository.name" .root }}/{{ .containerName }}:{{ $tag }}{{ template "platform" .root }}
{{- end -}}
{{- end }}

{{- define "odm-ingress-annotation-spec" -}}
{{- if typeIs "[]interface {}" .Values.service.ingress.annotations }}
  {{- range $key, $val := .Values.service.ingress.annotations }}
    {{- if kindIs "string" $val }}
      {{ $val -}}
    {{- else }}
      {{- range $mapKey, $mapValue := $val }}
        {{ $mapKey }}: {{ $mapValue -}}
      {{ end -}}
    {{ end -}}
  {{ end -}}
{{- else -}}
  {{- toYaml .Values.service.ingress.annotations | replace "'" "" }}
{{- end -}}
{{- end -}}


{{- define "odm-service-type" -}}
{{- if .Values.service.enableRoute -}}
type: ClusterIP
{{- else -}}
type: {{ .Values.service.type }}
{{- end }}
{{- end -}}

{{/*
Trusted certificate list.
*/}}
{{- define "odm-trusted-cert-volume" -}}
{{- if eq .Values.customization.vault "initcontainer" }}
- name: "trusted-cert-volume"
  emptyDir: {}
{{- else}}
  {{- range .Values.customization.trustedCertificateList }}
- name: {{ .  | printf "%s-trusted-cert-volume" | trunc 63 | trimSuffix "-" }}
  secret:
    secretName: {{ . }}
  {{ end }}
 {{- end}}
{{- end -}}
{{- define "odm-trusted-cert-volume-mount" -}}
{{- if eq .Values.customization.vault "initcontainer" }}
- name: "trusted-cert-volume"
  mountPath:  /opt/ibm/wlp/usr/servers/defaultServer/security/trusted-cert-volume/
{{- else }}
{{- range .Values.customization.trustedCertificateList }}
- name: {{ .  | printf "%s-trusted-cert-volume" | trunc 63 | trimSuffix "-" }}
  mountPath:  /opt/ibm/wlp/usr/servers/defaultServer/security/trusted-cert-volume/{{ . -}}
{{- end }}
{{- end }}
{{- end -}}

{{/*
Private certificate list.
*/}}
{{- define "odm-private-cert-volume" -}}
{{- if eq .Values.customization.vault "initcontainer" }}
- name: "private-cert-volume"
  emptyDir: {}
{{- else}}
  {{- range .Values.customization.privateCertificateList }}
- name: {{ .  | printf "%s-private-cert-volume" | trunc 63 | trimSuffix "-" }}
  secret:
    secretName: {{ . }}
  {{ end }}
 {{- end}}
{{- end -}}
{{- define "odm-private-cert-volume-mount" -}}
{{- if eq .Values.customization.vault "initcontainer" }}
- name: "private-cert-volume"
  mountPath:  /opt/ibm/wlp/usr/servers/defaultServer/security/private-cert-volume/
{{- else }}
{{- range .Values.customization.privateCertificateList }}
- name: {{ .  | printf "%s-private-cert-volume" | trunc 63 | trimSuffix "-" }}
  mountPath:  /opt/ibm/wlp/usr/servers/defaultServer/security/private-cert-volume/{{ . -}}
{{- end }}
{{- end }}
{{- end -}}


{{/*
Script dir for init-container
*/}}
{{- define "odm-init-container-volume" -}}
{{- $context := .initcontext -}}
{{- $container := .containername -}}
{{- if (not (empty $context.configRef))  }}
- name: initcontainer-configmap
  configMap:
    name:  {{ $context.configRef }}
{{- end }}
{{- if (not (empty $context.configOidcRef))  }}
- name: initcontainer-configmap-oidc
  configMap:
    name:  {{ $context.configOidcRef }}
{{- end }}
{{- if (not (empty $context.existingClaimName))  }}
- name: initcontainer-claimname
  persistentVolumeClaim:
    claimName: {{ $context.existingClaimName }}
{{- end}}
{{- if (not (eq $container "odm.oidc-registration")) }}
- name: scriptdir
  emptyDir: {}
- name: {{ template "odm-auth-secret-volume.fullname" .root }}
  emptyDir: {}
- name: {{ template "odm-custom-secret-ds.fullname" .root }}
  emptyDir: {}
- name: {{ template "odm-driver-volume.fullname" .root }}
  emptyDir: {}
{{- end }}
{{- if or (eq $container "odm.decisionServerRuntime") (eq $container "odm.decisionServerConsole") }}
- name: {{ template "odm-baiemitterconfig-secret-volume.fullname" .root }}
  emptyDir: {}
{{- end }}
{{- end -}}


{{- define "odm-init-container-all-volume-mount" -}}
{{- $context := .initcontext -}}
{{- if (not (empty $context.configRef))  }}
- name: initcontainer-configmap
  mountPath: /ibm/icp4ba/initconfig
{{- end }}
{{- if (not (empty $context.configOidcRef))  }}
- name: initcontainer-configmap-oidc
  mountPath: /ibm/icp4ba/initconfigoidc
{{- end }}
{{- if (not (empty $context.existingClaimName))  }}
- name: initcontainer-claimname
  mountPath: /ibm/icp4ba/initpv
{{- end }}
{{- end -}}

{{- define "odm-init-container-odm-pod-volume-mount" -}}
- name: scriptdir
  mountPath: /ibm/icp4ba/decisions/init/
{{- if  (not (empty .root.Values.dba.rootCaSecretRef)) }}
- name: root-ca
  mountPath: /ibm/icp4ba/shared/rootca/
{{- end }}
- name: "trusted-cert-volume"
  mountPath: "/ibm/icp4ba/shared/trustedcertificates/"
{{- if or (not (empty (.root.Values.customization.authSecretRef))) (and (.root.Values.oidc.enabled) (empty (.root.Values.customization.authSecretRef))) }}
- name: "{{ template "odm-auth-secret-volume.fullname" .root }}"
  mountPath: "/ibm/icp4ba/decisions/auth/"
{{- end }}
- name: "{{ template "odm-custom-secret-ds.fullname" .root }}"
  mountPath: "/ibm/icp4ba/decisions/customdatasource/"
- name: "{{ template "odm-driver-volume.fullname" .root }}"
  mountPath: "/ibm/icp4ba/decisions/jdbcdrivers/"
{{- end -}}

{{- define "odm-init-container-registration-job-volume-mount" -}}
{{- $context := .initcontext -}}
{{- if and ( .root.Values.oidc.enabled) (empty .root.Values.oidc.clientRef) }}
- name: oidc-credentials
  mountPath: /ibm/icp4ba/decisions/oidc/
{{- end}}
{{- end -}}

{{- define "odm-init-container-volume-mount" -}}
- name: scriptdir
  mountPath: /script/init
{{- end -}}

{{- define "odm-init-container-template-full" -}}
{{- $context := .initcontext -}}
{{- $container := .containername -}}
{{- if (not (empty $context.image))  }}
- name: custom-init-container
{{- end }}
  image: {{ $context.image }}
{{ include "odm-security-context" .root | indent 2 }}
  imagePullPolicy: {{ .root.Values.image.pullPolicy }}
{{- if (not (empty $context.command))  }}
  command:
{{ toYaml $context.command  | indent 4 }}
{{- end}}
{{- if (not (empty $context.resources))  }}
  resources:
{{ toYaml $context.resources | indent 4 }}
{{- end }}
  env:
    - name: "PRODUCT_NAME"
      value: "decisions"
    - name: "PRODUCT_VERSION"
      value: "{{  default .root.Chart.AppVersion .root.Values.customization.productVersion  }}"
    - name: "CONTAINER_NAME"
      value: "{{ $container }}"
{{- if (not (empty $context.env)) }}
{{ toYaml $context.env | indent 4 }}
  {{- end }}
  volumeMounts:
{{ include "odm-init-container-all-volume-mount" . | indent 2 }}
{{- if eq $container "odm.oidc-registration" }}
{{ include "odm-init-container-registration-job-volume-mount" . | indent 2 }}
{{- else }}
{{ include "odm-init-container-odm-pod-volume-mount" . | indent 2 }}
{{- end }}
{{- if or (eq $container "odm.decisionServerRuntime") (eq $container "odm.decisionServerConsole") }}
  - name: {{ template "odm-baiemitterconfig-secret-volume.fullname" .root }}
    mountPath: "/ibm/icp4ba/decisions/baiemitter/"
{{- end }}
{{- end -}}

{{- define "odm-probe-container-template" -}}
readinessProbe:
{{ include "odm-probe-httpGet-container-template" (dict "root" .root "componentPath" .componentPath "port" .port "containerParameters" .containerParameters) | indent 2 }}
  periodSeconds: {{ .root.Values.readinessProbe.periodSeconds }}
  failureThreshold: {{ .root.Values.readinessProbe.failureThreshold }}
  timeoutSeconds: {{ .root.Values.readinessProbe.timeoutSeconds }}
{{- if le (int .root.Values.readinessProbe.initialDelaySeconds) 60 }}
  initialDelaySeconds: {{ .root.Values.readinessProbe.initialDelaySeconds }}
{{- end }}
livenessProbe:
{{ include "odm-probe-httpGet-container-template" (dict "root" .root "componentPath" .componentPath "port" .port "containerParameters" .containerParameters) | indent 2 }}
  periodSeconds: {{ .root.Values.livenessProbe.periodSeconds }}
  failureThreshold: {{ .root.Values.livenessProbe.failureThreshold }}
  timeoutSeconds: {{ .root.Values.livenessProbe.timeoutSeconds }}
{{- if lt (int .root.Values.livenessProbe.initialDelaySeconds) 60 }}
  initialDelaySeconds: {{ .root.Values.livenessProbe.initialDelaySeconds }}
{{- end }}
{{- if or (ge (int .root.Values.readinessProbe.initialDelaySeconds) 60) (ge (int .root.Values.livenessProbe.initialDelaySeconds) 60) }}
startupProbe:
{{ include "odm-probe-httpGet-container-template" (dict "root" .root "componentPath" .componentPath "port" .port "containerParameters" .containerParameters) | indent 2 }}
  failureThreshold: {{ .root.Values.startupProbe.failureThreshold }}
  periodSeconds: {{ .root.Values.startupProbe.periodSeconds }}
  timeoutSeconds: {{ .root.Values.startupProbe.timeoutSeconds }}
  initialDelaySeconds: {{ .root.Values.startupProbe.initialDelaySeconds }}
{{- end }}
{{- end -}}

{{- define "odm-probe-httpGet-container-template" -}}
httpGet:

  {{- if .root.Values.service.enableTLS }}
  scheme: HTTPS
  {{- else }}
  scheme: HTTP
  {{- end }}
  path: {{ .containerParameters.contextRoot }}/{{ .componentPath }}
  port: {{ .port }}
{{- end -}}

{{- define "odm-users-password-env" -}}
{{- if empty .Values.customization.authSecretRef -}}
- name: USERS_PASSWORD
  value: "{{ .Values.usersPassword }}"
{{- end }}
{{- end -}}

{{- define "odm-enabled-ciphers" -}}
{{- if not (empty .Values.customization.enabledCiphers) -}}
- name: ENABLED_CIPHERS
  value: "{{ .Values.customization.enabledCiphers }}"
{{- end }}
{{- end -}}

{{- define "odm-security-volume" -}}
{{- if not (empty (.Values.customization.securitySecretRef)) }}
- name: {{ template "odm-security-secret-volume.fullname" . }}
  secret:
    secretName: {{ .Values.customization.securitySecretRef }}
{{- end}}
{{- end -}}

{{- define "odm-security-volumemounts-context" -}}
{{- if not (empty (.Values.customization.securitySecretRef)) }}
- name: {{ template "odm-security-secret-volume.fullname" . }}
  readOnly: true
  mountPath: {{ template "odm-security-dir" . }}
{{- end}}
{{- end -}}


{{- define "odm-initcontainer-readonlyfs" -}}
  {{- if .Values.customization.readOnlyRootFilesystem }}
{{ include "odm-fips-init-container-env" . }}
{{ include "odm-security-context" . }}
volumeMounts:
  - name: config-folder-emptydir
    mountPath: /config-folder
  - name: nssdb-folder-emptydir
    mountPath: /nssdb-folder
  - name: support-folder-emptydir
    mountPath: /support-folder
command:
  - "/bin/sh"
  - "-ecx"
  - >
    $(rm -rf /config-folder/* 2>/dev/null;true) &&
    cp -rp /opt/ibm/wlp/usr/servers/defaultServer/* /config-folder &&
    if [ -d /etc/pki/nssdb ]; then cp -rp /etc/pki/nssdb/* /nssdb-folder; fi &&
    $(if [ -d /support ]; then cp -R /support/* /support-folder 2>/dev/null; fi;true)
resources:
{{ include "odm-dba-context-resources" . | indent 4 }}
  {{- end}}
{{- end -}}


{{- define "odm-readonlyfs-volumes-context" -}}

  {{- if .Values.customization.readOnlyRootFilesystem }}
- name: config-folder-emptydir
  emptyDir: {}
- name: nssdb-folder-emptydir
  emptyDir: {}
- name: tmp-folder-emptydir
  emptyDir: {}
- name: tmp-liberty-output-folder-emptydir
  emptyDir: {}
- name: logs-folder-emptydir
  emptyDir: {}
- name: support-folder-emptydir
  emptyDir: {}
    {{- end}}
{{- end -}}

{{- define "odm-volumemounts-readonlyfs-context" -}}

  {{- if .Values.customization.readOnlyRootFilesystem }}
- name: config-folder-emptydir
  mountPath: /opt/ibm/wlp/usr/servers/defaultServer
- name: nssdb-folder-emptydir
  mountPath: /etc/pki/nssdb
- name: tmp-folder-emptydir
  mountPath: /tmp
- name: tmp-liberty-output-folder-emptydir
  mountPath: /opt/ibm/wlp/output/defaultServer
- name: logs-folder-emptydir
  mountPath: /logs
- name: support-folder-emptydir
  mountPath: /support
    {{- end}}
{{- end -}}
