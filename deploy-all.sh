##!/usr/bin/env bash
set -e
. ./params.sh

echo "configuring Networking"
## create Resource Group for Users VNet
az group create --name $USERS_RG --location $LOCATION

## Create USERS VNet and SubNet
az network vnet create \
    -g $USERS_RG \
    -n $USERS_VNET --address-prefix $USERS_VNET_CIDR \
    --subnet-name $USERS_SNET --subnet-prefix $USERS_SNET_CIDR

## create public ip
echo "Creating VM public IP"
az network public-ip create \
    --resource-group $VM_RG \
    --name $VM_PUBIP \
    --allocation-method dynamic \
    --sku basic

## create vm
echo "Creating the VM"
az vm create \
    --resource-group $VM_RG \
    --name $VM_NAME \
    --image $VM_IMAGE \
    --size $VM_SIZE \
    --os-disk-size-gb $VM_OSD_SIZE \
    --subnet $SNET_ID \
    --public-ip-address $VM_PUBIP \
    --admin-username azureuser \
    --admin-password Cloudnloud@12345
