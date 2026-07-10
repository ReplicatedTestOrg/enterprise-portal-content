---
title: kURL
visible_when:
  entitlements:
    - isKurlInstallEnabled
    - isAirgapSupported
---

# kURL

Provision a new embedded Kubernetes cluster with the kURL installer and deploy your application into it. The kURL Installer Bundle includes the Kubernetes runtime, the KOTS admin console, and all required add-ons.

<Note title="Air Gap Downloads">
These downloads support air-gapped installations. Transfer the installer bundle to your target host before running the installer.
</Note>

## Download License

<LicenseDownload />

## Download Assets

Select a version to download. The kURL Installer Bundle and Application Airgap Bundle are required; the KOTS, Preflight, and Support Bundle CLIs are optional workstation tools.

<KurlDownloadAssets />

<Tip title="Verify the Bundle">
Verify the Application Airgap Bundle checksum against the value shown next to the download before transferring it to an air-gapped host.
</Tip>

## Install

Transfer the installer bundle to your host, extract it, and run the installer as root.

<Warning>
Run the installer as root or with sudo. The kURL installer provisions system-level Kubernetes components and will fail without elevated privileges.
</Warning>

<CommandBlock>
# Extract the kURL installer bundle
tar xzf <app-slug>.tar.gz

# Run the installer (air gap)
cat install.sh | sudo bash -s airgap
</CommandBlock>
