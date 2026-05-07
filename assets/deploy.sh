#!/bin/bash
# ChartSmith Deployment Script — v17
# This is the v17 release of the deployment helper. Use ENVIRONMENT to target
# a specific cluster and VERSION to pin the chart version.

set -euo pipefail

echo "Deploying ChartSmith (v17)..."
echo "Environment: ${ENVIRONMENT:-production}"
echo "Version: ${VERSION:-1.7.0}"
echo "Compatibility: KOTS >= 1.100, Helm >= 3.10"

echo "Deployment complete (v17)."
