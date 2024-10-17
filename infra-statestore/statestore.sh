#!/bin/bash

# Variables
RESOURCE_GROUP_NAME="rg-terraform-rw"
STORAGE_ACCOUNT_NAME="storageaccountrebecca"
CONTAINER_NAME="container-rw"
LOCATION="australiaeast"  # You can change this to your preferred Azure region

# Create Resource Group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Create Storage Account
az storage account create --name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP_NAME --location $LOCATION --sku Standard_LRS

# Create Blob Container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME

# Output Storage Account Key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' --output tsv)
echo "Storage Account Key: $ACCOUNT_KEY"