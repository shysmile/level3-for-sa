helm install nginx-ingress ingress-nginx-repo/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace \
  --version 4.11.2
