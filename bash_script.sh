#!/bin/bash
az network public-ip create --name myPublicIP --resource-group Ubuntu
az network nic create -g Ubuntu --vnet-name Ubuntu-vnet --subnet default -n MyNic
az vm create \
    --name newVM1 \
    --resource-group Ubuntu \
    --public-ip-address myPublicIP \
    --public-ip-sku Standard \
    --image MicrosoftWindowsServer:WindowsServer:2019-Datacenter:latest \
    --admin-username C20309873 
