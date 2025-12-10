---
description: Step 00a - Create website sitemap with page structure and section selection
---

# Step 00a: Website Sitemap

**Use the `sitemap-structure` skill to complete this task.**

## INPUT

Gather this information from the user:

```
Business Type:
Business Name:
Location:
Primary Goal:
Target Audience:
Unique Selling Points:
Number of Pages:
```

---

## TASK

Create the website structure with pages and sections.

### 1. Define Pages

Based on business type and requirements:
- Determine core pages needed (homepage, services, about, contact)
- Add mandatory legal pages (Impressum, Datenschutz)
- Set page priorities (P0 = homepage, P1 = main pages, P2 = secondary)

### 2. Select Sections

For each page, choose shadcnblocks sections:
- Use references/shadcnblocks-catalog.md for available sections
- Follow typical page patterns from the skill
- Consider user flow and conversion

### 3. Output File

Create **docs/sitemap.md** with:
- Page overview table (route, purpose, priority)
- Detailed sections per page
- URL structure (DE/EN)
- Shared components note

---

## OUTPUT

- docs/sitemap.md

---

## Next Steps

After completing sitemap:
1. Run `/00_seo-research` for keyword strategy
2. Then run `/01_colors-typography` for branding
3. Then build pages with `/build-page`
