---
description: META COMMAND - Run ONCE at project start to set up sitemap, keywords, and branding
---

# Project Setup

**This is a META command that runs multiple steps in sequence.**

Run ONCE at the start of every new website project.

---

## Steps to Execute

### Step 1: Sitemap & Keywords

Run `/00_sitemap-keywords` with the project info:

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
- docs/seo-strategy.md

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

1. Select shadcnblocks sections from shadcnblocks.com for each page
2. Run `/build-page` for each page
