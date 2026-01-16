#!/usr/bin/env bash

# instance-status-report.sh
# Displays EC2 instance IDs, state, and instance type
#
# Usage:
#   ./instance-status-report.sh
#
# Notes:
# - Read-only operation
# - Free-tier safe
# - Requires AWS CLI configured

set -euo pipefail

echo "Fetching EC2 instance status..."

aws ec2 describe-instances \
  --query 'Reservations[].Instances[].{
    InstanceId:InstanceId,
    State:State.Name,
    InstanceType:InstanceType
  }' \
  --output table

echo "Done."
