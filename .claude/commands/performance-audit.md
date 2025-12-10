---
description: Run Lighthouse audit and verify Core Web Vitals
---

# Performance Audit

Check website performance and Core Web Vitals.

## Input Required

```
Page URL: (e.g., http://localhost:3000)
```

## What This Does

Uses `performance-audit` skill to:

**Run Lighthouse audit:**
- Performance score
- Accessibility score
- Best practices score
- SEO score

**Check Core Web Vitals:**
- LCP (Largest Contentful Paint): Target < 2.5s
- FID (First Input Delay): Target < 100ms
- CLS (Cumulative Layout Shift): Target < 0.1

**Common issues to fix:**
- Unoptimized images → Use Next.js Image
- Render-blocking resources → Defer non-critical JS
- Large bundles → Code splitting
- Layout shifts → Set image dimensions
- Slow fonts → Font display: swap

**Report includes:**
- Current scores
- Specific issues found
- Recommendations for improvement

## Output

- Performance report
- List of issues to fix
- Prioritized recommendations

## When to Use

- During release (via /release)
- When optimizing slow pages
- Before launch
