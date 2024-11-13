az aks create \
  --resource-group ce-82075788-sa-rg \
  --name ce-82075788-aks \
  --vm-set-type VirtualMachineScaleSets \
  --node-count 1 \
  --node-vm-size Standard_B2s \
  --load-balancer-sku standard \
  --network-plugin kubenet \
  --vnet-subnet-id <subnet-id> \
  --pod-cidr 172.16.0.0/16 \
  --service-cidr 192.168.123.0/24 \
  --dns-service-ip 192.168.123.10 \
  --network-policy calico \
  --no-ssh-key \
  --enable-managed-identity \
  --node-resource-group ce-82075788-aks-mc-rg

