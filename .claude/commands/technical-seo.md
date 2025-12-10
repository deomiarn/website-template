---
description: Implement sitemap.xml, robots.txt, schema markup, and meta tags
---

# Technical SEO

Implement technical SEO elements.

## Input Required

```
Site URL: (e.g., https://example.com)
```

## What This Does

Uses `technical-seo` skill to:

**Create sitemap.ts:**
```tsx
// app/sitemap.ts
export default function sitemap() {
  return [
    { url: 'https://example.com', lastModified: new Date() },
    { url: 'https://example.com/leistungen', lastModified: new Date() },
    // ... all pages from docs/sitemap.md
  ]
}
```

**Create robots.txt:**
```
User-agent: *
Allow: /
Sitemap: https://example.com/sitemap.xml
```

**Add Schema.org JSON-LD:**
- LocalBusiness (company info)
- Service (for service pages)
- FAQPage (for FAQ sections)
- BreadcrumbList (navigation)

**Add Open Graph tags:**
- og:title, og:description, og:image
- og:locale, og:type, og:url

**Add Twitter cards:**
- twitter:card, twitter:title
- twitter:description, twitter:image

**Audit all pages for:**
- H1 with primary keyword
- Meta title (50-60 chars)
- Meta description (150-160 chars)
- Image alt text
- Internal links

## Output

- app/sitemap.ts
- public/robots.txt
- Schema markup in pages
- Meta tags in layout

## When to Use

- During release (via /release)
- When adding new pages
- When fixing SEO issues
