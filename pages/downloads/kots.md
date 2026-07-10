---
title: KOTS
visible_when:
  entitlements:
    - isKotsInstallEnabled
    - isAirgapSupported
---

# KOTS

Install your application into an existing Kubernetes cluster using the Replicated KOTS admin console. Download your license and the assets for the version you want to install.

## Download License

<LicenseDownload />

## Download Assets

Select a version to download. The Admin Console Bundle and Application Airgap Bundle are required; the KOTS, Preflight, and Support Bundle CLIs are optional workstation tools.

<KotsDownloadAssets />

<Tip title="Verify the Bundle">
After downloading the Application Airgap Bundle, verify its checksum against the value shown next to the download before pushing it to your registry.
</Tip>
