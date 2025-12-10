---
description: Finalize project - legal pages, SEO, favicon, error pages, performance check
---

# Release

**Run ONCE after all pages are built.**

---

## Prerequisites

Before running /release:

- All pages built with `/page`
- Images implemented with `/webp-images`
- SEO content optimized with `/seo-content`

---

## Steps

### Step 1: Legal Pages

Use `legal-pages` skill.

**Input:**
```
Company Name:
Company Address:
Company Email:
Company Phone:
Managing Director: (Geschaeftsfuehrer)
VAT ID: (optional)
Register Court: (optional)
Register Number: (optional)
```

**Creates:**
- /impressum page (legal notice)
- /datenschutz page (privacy policy)
- DSG/DSGVO compliant content
- i18n translations

---

### Step 2: Technical SEO

Use `technical-seo` skill.

**Creates:**
- app/sitemap.ts (XML sitemap)
- public/robots.txt
- Schema.org JSON-LD:
  - LocalBusiness
  - Service
  - FAQPage
  - BreadcrumbList
- Open Graph tags (title, description, image)
- Twitter card tags

**Audits:**
- H1 keywords on all pages
- Meta titles and descriptions
- Image alt text
- Internal link structure

---

### Step 3: Favicon & PWA

Use `favicon-pwa` skill.

**Input:**
```
App Name:
Short Name:
Theme Color: (from globals.css)
Background Color: (from globals.css)
```

**Creates:**
- public/favicon.ico
- public/apple-touch-icon.png
- public/site.webmanifest
- Icon variants (16x16, 32x32, 192x192, 512x512)

**Updates:**
- Layout metadata

---

### Step 4: Error Pages

Use `error-pages` skill.

**Creates:**
- app/not-found.tsx (404 page)
- app/error.tsx (500 page)
- Brand styling applied
- Helpful navigation back to site
- i18n translations

---

### Step 5: Performance Audit

Use `performance-audit` skill.

**Runs:**
- Lighthouse audit
- Core Web Vitals check:
  - LCP (Largest Contentful Paint) < 2.5s
  - FID (First Input Delay) < 100ms
  - CLS (Cumulative Layout Shift) < 0.1

**Reports:**
- Performance scores
- Issues to fix
- Recommendations

---

### Step 6: Final Checklist

Use `final-checklist` skill.

**Verifies:**
- Content: All text present, no placeholders
- Technical SEO: sitemap.xml, robots.txt, schema
- Legal: Impressum, Datenschutz complete
- Design: Consistent styling, responsive
- Performance: Lighthouse scores acceptable
- i18n: All keys translated (de + en)
- Forms: Working submission
- Links: No broken links

**Runs:**
- Production build: `pnpm build`
- Checks for build errors

---

## After Release

Website is ready for deployment!

### Optional

**`/cookies-analytics`** - Add Google Analytics 4 with DSGVO-compliant cookie consent banner.

---

## Deployment Checklist

- [ ] Domain configured
- [ ] SSL certificate active
- [ ] Environment variables set
- [ ] Build successful
- [ ] DNS propagated
- [ ] Test on live URL
