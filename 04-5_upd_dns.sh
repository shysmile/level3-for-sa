az network private-dns zone create \
  --resource-group ce-82075788-sa-rg \
  --name privatelink.azurecr.io
az network private-dns link vnet create \
  --resource-group ce-82075788-sa-rg \
  --zone-name privatelink.azurecr.io \
  --name acr-dns-link \
  --virtual-network ce-vnet \
  --registration-enabled false
az network private-endpoint dns-zone-group create \
  --resource-group ce-82075788-sa-rg \
  --endpoint-name ce-pe-snet \
  --name acr-dns-zone-group \
  --private-dns-zone privatelink.azurecr.io \
  --zone-name acr-private-dns-zone
