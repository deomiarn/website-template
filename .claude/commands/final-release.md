---
description: META COMMAND - Final release preparation with technical SEO, legal pages, favicon, error pages, performance audit, and checklist
---

# Final Release

**This is a META command that runs ALL final steps before deployment.**

Run ONCE at the end of the project, after all pages are built.

---

## Prerequisites

- All pages built with `/build-page`
- All pages have SEO content optimized with `/08_seo-content-optimization`
- All images implemented with `/07_webp-images`

---

## Steps to Execute

### Step 1: Technical SEO

Use the `technical-seo` skill:
- Create app/sitemap.ts
- Create public/robots.txt
- Add Schema.org JSON-LD (LocalBusiness, Service, FAQPage)
- Add Open Graph tags
- Add Twitter card tags

### Step 2: Legal Pages

Use the `legal-pages` skill:
- Create /impressum page
- Create /datenschutz page
- Add i18n translations
- Ensure DSGVO/DSG compliance

### Step 3: Favicon & PWA

Use the `favicon-pwa` skill:
- Create favicon.ico
- Create apple-touch-icon.png
- Create site.webmanifest
- Update layout metadata

### Step 4: Error Pages

Use the `error-pages` skill:
- Create app/not-found.tsx (404)
- Create app/error.tsx (500)
- Apply brand styling

### Step 5: Performance Audit

Use the `performance-audit` skill:
- Run Lighthouse audit
- Check Core Web Vitals (LCP, FID, CLS)
- Fix any issues

### Step 6: Final Checklist

Use the `final-checklist` skill:
- Verify all content
- Verify all technical SEO
- Verify legal pages
- Verify design
- Verify performance
- Run build

---

## After Completion

Website is ready for deployment!

Optional: Run `/10_cookies-analytics` if analytics tracking is needed.
