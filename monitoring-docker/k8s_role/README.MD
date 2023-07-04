## How to get Service account token and CA certification
1. Apply permission.yaml manifest to k8s
2. From inside k8s, run following command
```shell
kubectl apply -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: monitoring-token
  annotations:
    kubernetes.io/service-account.name: k8s-monitor
type: kubernetes.io/service-account-token
EOF
```
3. Run command to get token and CA Cert
```shell
kubectl get secret/monitoring-token -o yaml
kubectl describe secrets/monitoring-token
```