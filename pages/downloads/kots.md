---
title: KOTS
visible_when:
  entitlements:
    - isKotsInstallEnabled
    - isAirgapSupported
---

# KOTS

Install your application into an existing Kubernetes cluster using the Replicated KOTS admin console. Download your license and the assets for the version you want to install.

<Note title="Air Gap Downloads">
These downloads support air-gapped installations. If your cluster has outbound internet access, you can install directly from the online registry instead of pushing the bundle yourself.
</Note>

## Download License

<LicenseDownload />

## Download Assets

Select a version to download. The Admin Console Bundle and Application Airgap Bundle are required; the KOTS, Preflight, and Support Bundle CLIs are optional workstation tools.

<KotsDownloadAssets />

<Tip title="Verify the Bundle">
After downloading the Application Airgap Bundle, verify its checksum against the value shown next to the download before pushing it to your registry.
</Tip>

## Install

Install the KOTS CLI, then install the application into your cluster from the air gap bundle. Replace the placeholders with your own namespace, registry, and license file.

<CommandBlock>
# Install the KOTS CLI plugin (from the KOTS CLI download above)
tar xzf kots_linux_amd64.tar.gz
sudo mv kots /usr/local/bin/kubectl-kots

# Install the admin console and application from the downloaded bundle
kubectl kots install <app-slug> \
  --namespace <namespace> \
  --license-file ./license.yaml \
  --airgap-bundle ./<app-slug>.airgap \
  --kotsadm-registry <your-private-registry>
</CommandBlock>
