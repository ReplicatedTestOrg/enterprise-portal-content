---
title: kURL Installation
visible_when:
  entitlements:
    - isKurlInstallEnabled
    - isAirgapSupported
---

# kURL Installation

Provision a new embedded Kubernetes cluster with the kURL installer and deploy CodeLock into it. The kURL installer bundle includes the Kubernetes runtime, the KOTS admin console, and all required add-ons.

## Requirements

- A dedicated Linux host (Ubuntu 20.04+ / RHEL 8+ / CentOS 8+)
- 4 CPUs, 8GB RAM, 40GB disk minimum
- Root or `sudo` access
- For air-gapped hosts: the installer bundle transferred to the target machine

## Download Assets

Select the version to install and download the kURL Installer Bundle. The Application Airgap Bundle contains your licensed application images; the KOTS, Preflight, and Support Bundle CLIs are optional workstation tools.

<KurlDownloadAssets />

<Tip title="Verify the Bundle">
Verify the Application Airgap Bundle checksum against the value shown next to the download before transferring it to an air-gapped host.
</Tip>

## Install

Transfer the installer bundle to your host, extract it, and run the installer.

<Warning>
Run the installer as root or with sudo. The kURL installer provisions system-level Kubernetes components and will fail without elevated privileges.
</Warning>

<CommandBlock>
# Extract the kURL installer bundle
tar xzf codelock.tar.gz

# Run the installer (air gap)
cat install.sh | sudo bash -s airgap
</CommandBlock>

## Verify Installation

When the installer finishes it prints the admin console URL and password. Save these — you'll use them to complete application setup.

<CommandBlock>
# Check cluster and application status
kubectl get nodes
kubectl get pods -A
</CommandBlock>

<InstanceName />
