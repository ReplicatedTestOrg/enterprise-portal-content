---
title: KOTS Existing Cluster Installation
visible_when:
  entitlements:
    - isKotsInstallEnabled
    - isAirgapSupported
---

# KOTS Existing Cluster Installation

Install CodeLock into an existing Kubernetes cluster using the Replicated KOTS admin console. Download the assets for your selected version below, then follow the installation steps.

<Note title="Air Gap Downloads">
These downloads are provided for air-gapped installations. If your cluster has outbound internet access, you can install directly from the online registry instead of pushing the bundle yourself.
</Note>

## Requirements

- An existing Kubernetes cluster (v1.26 or later) with `kubectl` access
- A namespace to install into
- For air-gapped clusters: a private image registry reachable from the cluster
- The KOTS CLI plugin (included in the downloads below)

## Download Assets

Select the version you want to install. The KOTS Admin Console Bundle and the Application Airgap Bundle are required; the KOTS, Preflight, and Support Bundle CLIs are optional tools for your workstation.

<KotsDownloadAssets stepNumber={1} />

<Tip title="Verify the Bundle">
After downloading the Application Airgap Bundle, verify its checksum against the value shown next to the download before pushing it to your registry.
</Tip>

## Install

Once the assets are downloaded, install the KOTS CLI, then install the application into your cluster from the air gap bundle.

<CommandBlock>
# Install the KOTS CLI plugin (from the KOTS CLI download above)
tar xzf kots_linux_amd64.tar.gz
sudo mv kots /usr/local/bin/kubectl-kots

# Install the admin console and application from the downloaded bundle
kubectl kots install codelock \
  --namespace codelock \
  --airgap-bundle ./codelock.airgap \
  --kotsadm-registry <your-private-registry>
</CommandBlock>

## Verify Installation

<CommandBlock>
# Confirm the admin console and application pods are running
kubectl get pods -n codelock

# Open the admin console
kubectl kots admin-console --namespace codelock
</CommandBlock>
