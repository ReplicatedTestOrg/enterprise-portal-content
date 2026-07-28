---
title: Support Bundles
---

# Support Bundles

<Tip>
Generate a support bundle whenever you encounter unexpected behavior. Bundles capture system state, logs, and configuration at a point in time, which is critical for diagnosing intermittent issues.
</Tip>

## Generate a Bundle

<Tabs>
{{#if entitlements.isEmbeddedClusterDownloadEnabled}}
<Tab title="Linux (Embedded Cluster)">

<LinuxBundles />

</Tab>
{{/if}}
{{#if entitlements.isKurlInstallEnabled}}
<Tab title="Linux (kURL)">

Collect a bundle from the Admin Console:

1. Open the Admin Console at `http://<hostname>:8800` and log in.
2. Go to the **Troubleshoot** tab and click **Analyze**.
3. When the analysis completes, download the bundle and upload it below.

If the Admin Console is unreachable, collect a bundle directly from the cluster:

<CommandBlock command="kubectl support-bundle --load-cluster-specs" />

</Tab>
{{/if}}
{{#if entitlements.isHelmInstallEnabled}}
<Tab title="Existing Cluster (Helm)">

<HelmBundles />

</Tab>
{{/if}}
{{#if entitlements.isKotsInstallEnabled}}
<Tab title="Existing Cluster (KOTS)">

Collect a bundle from the Admin Console:

1. Port forward to the Admin Console with `kubectl kots admin-console --namespace <namespace>` and log in.
2. Go to the **Troubleshoot** tab and click **Analyze**.
3. When the analysis completes, download the bundle and upload it below.

If the Admin Console is unreachable, collect a bundle directly from the cluster:

<CommandBlock command="kubectl support-bundle --load-cluster-specs" />

</Tab>
{{/if}}
</Tabs>

## Upload an Existing Bundle

<Note>
Support bundles contain cluster state, application logs, and configuration details. They do not include secrets or sensitive data. You can safely share them with your support team.
</Note>

<SupportBundleUpload />

## Uploaded Bundles

<SupportBundleUploadHistory />

<ContactInfo />
