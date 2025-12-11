---
description: Project initialization - sitemap, SEO research, branding, navbar, footer, and global config
---

# Project Init

**Run ONCE at project start.**

---

## Required Input

Before starting, gather from client:

- Business name
- Business type (agency, shop, service, etc.)
- Location (city, country)
- Primary keyword for SEO
- Primary color (hex)
- Secondary color (hex)
- Accent color (hex)
- Font choice
- Logo (text or image path)
- Contact info (phone, email, address)
- Social media URLs (optional)

---

## Steps

### Step 1: Create Sitemap

Use `sitemap-structure` skill.

**Input:**
```
Business Type:
Business Name:
Location:
Primary Goal:
Target Audience:
Unique Selling Points:
Number of Pages:
```

**Output:** docs/sitemap.md

---

### Step 2: SEO Keyword Research

Use `seo-keyword-research` skill.

**Input:**
```
Primary Keyword:
Location:
Business Type:
Known Competitors: (optional)
```

**Output:** docs/seo-analysis.md

---

### Step 3: Colors & Typography

Use `colors-typography` skill.

**Input:**
```
Primary Color:
Secondary Color:
Accent Color:
Font Family:
Style: (modern, classic, playful, etc.)
```

**Output:** globals.css updated with:
- CSS color variables (oklch format)
- Typography styles (h1-h6, p, a, blockquote)
- Border-radius variables
- Container class

---

### Step 4: Button Standardization

Use `button-unification` skill.

**Input:** None (auto-detects button.tsx)

**Output:** button.tsx with unified:
- Heights (h-8, h-9, h-10)
- Padding (px-3, px-4, px-6)
- Border-radius
- Transitions

---

### Step 5: Install & Configure Navbar

**5a. Install navbar from shadcnblocks:**
```bash
pnpm dlx shadcn add [navbar-component-from-sitemap]
```

**5b. Use `navbar-configuration` skill.**

**Input:**
```
Logo Type: text / image
Logo Text/Path:
Background: bg-background / bg-muted
Show Outline Button: yes / no
Show Primary Button: yes / no
Button Labels:
```

**Output:** Navbar configured with:
- All pages from sitemap
- Proper z-index for dropdowns
- i18n keys added

---

### Step 6: Install & Configure Footer

**6a. Install footer from shadcnblocks:**
```bash
pnpm dlx shadcn add [footer-component-from-sitemap]
```

**6b. Use `footer-configuration` skill.**

**Input:**
```
Business Name:
Phone:
Email:
Address:
Instagram URL: (optional)
Facebook URL: (optional)
```

**Output:** Footer configured with:
- All navigation links
- Contact information
- Social media links
- i18n keys added

---

### Step 6.1: Add Navbar and Footer to Layout
Modify `app/layout.tsx` to include navbar and footer components around the main content.

### Step 7: Smooth Scroll

Use `smooth-scroll` skill.

**Input:** None

**Output:** globals.css updated with:
- scroll-behavior: smooth
- scroll-padding-top for fixed navbar
- prefers-reduced-motion support

---

### Step 8: Page Transitions

Use `page-transitions` skill.

**Input:** None

**Output:**
- PageTransition component at `components/ui/page-transition.tsx`
- Locale layout updated with transition wrapper
- Smooth fade between page navigations

---

## After Init

Project foundation is ready. Now build pages:

```
/page [route] [sections...]
```

Repeat for each page in docs/sitemap.md.

---

## Output Summary

| Step | Output | Purpose |
|------|--------|---------|
| 1 | docs/sitemap.md | Pages, routes, sections |
| 2 | docs/seo-analysis.md | Keywords per page |
| 3 | globals.css | Brand colors, typography |
| 4 | button.tsx | Unified button styles |
| 5 | navbar component | Navigation with all pages |
| 6 | footer component | Links, contact, social |
| 7 | globals.css | Smooth scroll behavior |
| 8 | page-transition.tsx | Smooth page transitions |
