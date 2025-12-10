---
description: META COMMAND - Run ONCE at project start to set up sitemap, keywords, and branding
---

# Project Setup

**This is a META command that runs multiple steps in sequence.**

Run ONCE at the start of every new website project.

---

## Steps to Execute

### Step 1a: Website Sitemap

Run `/00_sitemap` with the project info:

```
Business Type:
Business Name:
Location:
Primary Goal:
Target Audience:
Unique Selling Points:
Number of Pages:
```

Wait for output:
- docs/sitemap.md

### Step 1b: SEO Keyword Research

Run `/00_seo-research` with SEO info:

```
Primary Keyword: [main keyword to rank for]
Location: [target geographic area]
Business Type: [from above]
Known Competitors: [URLs if known, optional]
```

Wait for output:
- docs/seo-analysis.md

### Step 2: Colors & Typography

Run `/01_colors-typography` with brand info:

```
Primary Color:
Secondary Color:
Accent Color:
Font Family:
Style:
```

Wait for output:
- app/globals.css updated

---

## After Completion

1. Review docs/sitemap.md for page structure
2. Review docs/seo-analysis.md for keyword targets per page
3. Select specific shadcnblocks sections from shadcnblocks.com for each page
4. Run `/build-page` for each page

---

## Output Summary

| Step | Output File | Purpose |
|------|-------------|---------|
| 1a | docs/sitemap.md | Pages, routes, sections |
| 1b | docs/seo-analysis.md | Keywords, competitors, per-page SEO |
| 2 | app/globals.css | Brand colors, typography |
