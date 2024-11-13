az network private-endpoint create --resource-group ce-82075788-sa-rg \
  --name ce-pe-snet \
  --vnet-name ce-vnet \
  --subnet ce-pe-snet \
  --private-connection-resource-id $(az acr show --resource-group ce-[사번]-sa-rg --name ce[사번]acr --query "id" --output tsv) \
  --group-id registry \
  --connection-name acr-connection

