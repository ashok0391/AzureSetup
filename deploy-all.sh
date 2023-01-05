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
