## AKS
LOCATION="canadacentral"
RG_NAME="TestRG"

## Networking
USERS_VNET="vnet-users"
USERS_RG="users-rg"
USERS_VNET_CIDR="10.100.0.0/16"
USERS_SNET="users-subnet"
USERS_SNET_CIDR="10.100.100.0/24"


## Jumpbox VM
VM_NAME="vm-jumpbox"
VM_IMAGE="UbuntuLTS"
VM_SIZE="Standard_B1s"
VM_OSD_SIZE="32"
VM_RG=$USERS_RG
VM_VNET=$USERS_VNET
VM_SNET="jumpbox-subnet"
VM_SNET_CIDR="10.100.110.0/28"
VM_PUBIP="vm-jumpbox-pip"
