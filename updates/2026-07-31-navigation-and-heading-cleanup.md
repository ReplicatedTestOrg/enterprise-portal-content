---
id: 2026-07-31-navigation-and-heading-cleanup
title: Default navigation and heading cleanup
published_at: 2026-07-31T00:00:00Z
impact: recommended
summary: The default template reorganizes its navigation, drops the Requirements page, removes section icons, and corrects an inaccurate claim about what support bundles contain.
affects:
  - navigation
  - table of contents
  - support bundles
  - installation
---

The default content template has been reorganized. These are presentation changes and a copy correction; no components changed behavior.

## Corrected an inaccurate support bundle claim

A note on the support bundle page stated that bundles "do not include secrets or sensitive data" and can be safely shared. Redaction is spec-driven and best-effort, so that is not a guarantee, and it contradicted the collection instructions that recommend reviewing the archive before uploading. The note has been removed.

If your fork still carries that wording, removing it is worth doing regardless of whether you adopt anything else in this update.

## Removed the Requirements page

`pages/installation/requirements.md` has been removed, and its prerequisites are stated directly on the Embedded Cluster installation page where customers act on them. Inbound links from `pages/home.md`, `pages/support/faq.md`, and `pages/installation/linux.md` were removed in the same change.

If you have customized that page, keep it. If you never edited it, removing it eliminates a page that duplicated content already on the install pages.

## Navigation changes

- `Updates` is renamed `Instances & Updates`, which matches what the page shows.
- `Automation` moves from the top of the sidebar to the end. It is a reference section, not a starting point.
- Top-level `icon:` entries are removed from `toc.yaml`. Icons remain supported and are now opt-in, so section headings read as the primary structure. Existing `icon:` entries continue to render.

## Heading cleanup

The support bundle page now supplies its own `Generate a Bundle` heading, and the collection and upload components no longer render competing headings of their own. The upload and history sections are also reordered so uploading comes before the list of past uploads.

If your fork has its own headings around these components, they now stand alone rather than appearing above a second component-rendered heading.
