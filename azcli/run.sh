#!/bin/bash
echo "Starting Azure CLI Add-on..."

# Login with Service Principal using env vars from config.json
az login --service-principal --username "$CLIENT_ID" --password "$CLIENT_SECRET" --tenant "$TENANT_ID"

az account list --output table || echo "You may need to login using a service principal."
echo "Logged in as Service Principal, ready for commands."

# Keep running to keep container alive
tail -f /dev/null
