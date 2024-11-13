az postgres flexible-server create \
  --resource-group ce-82075788-sa-rg \
  --name ce-82075788-psql \
  --admin-user ktds \
  --admin-password "Ktds!1234" \
  --vnet-subnet-id "/subscriptions/df568535-0931-439d-a9ae-ca3601367d74/resourceGroups/ce-82075788-sa-rg/providers/Microsoft.Network/virtualNetworks/ce-vnet/subnets/ce-psql-snet" \
  --sku-name Standard_B1ms \
  --tier Burstable \
  --storage-size 32 \
  --location koreacentral

