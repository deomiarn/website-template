---
description: Comprehensive pre-launch verification checklist
---

# Final Checklist

Verify everything before deployment.

## Input Required

None (auto-checks project)

## What This Does

Uses `final-checklist` skill to verify:

**Content:**
- [ ] All placeholder text replaced
- [ ] No lorem ipsum remaining
- [ ] All images implemented (no CDN placeholders)
- [ ] Contact information correct
- [ ] Prices and offers accurate

**Technical SEO:**
- [ ] sitemap.xml accessible
- [ ] robots.txt correct
- [ ] All pages have meta title
- [ ] All pages have meta description
- [ ] Schema markup valid
- [ ] Open Graph tags present

**Legal (DSGVO/DSG):**
- [ ] Impressum page complete
- [ ] Datenschutz page complete
- [ ] Cookie consent (if analytics)
- [ ] All required information present

**Design:**
- [ ] Responsive on mobile/tablet/desktop
- [ ] Consistent typography
- [ ] Consistent colors
- [ ] All links work (no 404s)
- [ ] Forms submit correctly

**Performance:**
- [ ] Lighthouse score > 90
- [ ] Core Web Vitals pass
- [ ] Images optimized (WebP)
- [ ] No console errors

**i18n:**
- [ ] All keys translated (de)
- [ ] All keys translated (en)
- [ ] No missing translations

**Build:**
- [ ] `pnpm build` succeeds
- [ ] No TypeScript errors
- [ ] No build warnings

## Output

- Checklist results
- Issues to fix before launch
- Go/No-go recommendation

## When to Use

- During release (via /release)
- Final step before deployment
