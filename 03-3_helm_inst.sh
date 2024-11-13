helm install argocd argo-cd-repo/argo-cd \
  --namespace argocd \
  --version 2.12.0 \
  --set global.image.repository=cepgbaseacr.azurecr.io/quay.io/argoproj/argocd \
  --set dex.image.repository=cepgbaseacr.azurecr.io/ghcr.io/dexidp/dex \
  --set redis.image.repository=cepgbaseacr.azurecr.io/docker.io/redis \
  --set server.ingress.hosts[0]=argocd.ce-82075788-sa.kubepia.net \
  --set server.ingress.tls.enabled=false

