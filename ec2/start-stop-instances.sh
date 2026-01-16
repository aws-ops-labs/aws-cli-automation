#!/usr/bin/env bash

# start-stop-instances.sh
# Start or stop one or more EC2 instances using AWS CLI
#
# Usage:
#   ./start-stop-instances.sh start i-123 i-456
#   ./start-stop-instances.sh stop  i-123 i-456
#
# Notes:
# - Requires AWS CLI configured locally
# - Free-tier safe (start/stop only)
# - No credentials are stored in this script

set -euo pipefail

ACTION="$1"
shift

if [[ "$ACTION" != "start" && "$ACTION" != "stop" ]]; then
  echo "Error: first argument must be 'start' or 'stop'"
  exit 1
fi

if [[ "$#" -lt 1 ]]; then
  echo "Error: provide at least one EC2 instance ID"
  exit 1
fi

echo "Performing '$ACTION' on instances: $*"

aws ec2 "${ACTION}-instances" --instance-ids "$@"

echo "Done."

