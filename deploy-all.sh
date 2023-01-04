##!/usr/bin/env bash
set -e
. ./params.sh

echo "configuring Networking"
## create Resource Group for Users VNet
az group create --name $USERS_RG --location $LOCATION
