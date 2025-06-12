#!/bin/bash

# Variables
RESOURCE_GROUP="MyResourceGroup"
LOCATION="eastus"
VNET_NAME="MyVNet"
SUBNET_NAME="MySubnet"

# Create Resource Group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create Virtual Network and Subnet
az network vnet create \
  --resource-group $RESOURCE_GROUP \
  --name $VNET_NAME \
  --address-prefix 10.0.0.0/16 \
  --subnet-name $SUBNET_NAME \
  --subnet-prefix 10.0.1.0/24

echo "Virtual Network and Subnet created."
