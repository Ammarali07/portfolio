#!/bin/bash
# Script: vm_info.sh
# Purpose: Fetch Azure VM details quickly

RESOURCE_GROUP="myResourceGroup"
VM_NAME="myVM"

echo "Fetching VM details for $VM_NAME ..."
az vm show \
  --resource-group $RESOURCE_GROUP \
  --name $VM_NAME \
  --query "{Name:name, Location:location, OS:storageProfile.osDisk.osType, Size:hardwareProfile.vmSize}" \
  --output table
