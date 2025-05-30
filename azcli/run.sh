#!/bin/bash

echo "Starting Azure CLI inside Home Assistant Add-on..."
echo "============================="

# Example: list current subscriptions
az account list --output table || echo "You may need to login using a service principal."

# Keep container alive briefly to show output in logs
sleep 5
