---
description: Apply 60-30-10 color rule and section backgrounds
---

# Section Backgrounds

Apply consistent background colors to page sections.

## Input Required

```
Page Route: (e.g., /, /leistungen)
```

## What This Does

Uses `section-backgrounds` skill to:

**Apply 60-30-10 rule:**
- 60% bg-background (dominant, white/dark)
- 30% bg-muted (secondary, light gray)
- 10% bg-primary (accent, rare)

**Standard pattern:**
```
Hero        → bg-background
Logos       → bg-muted
Features    → bg-background
Process     → bg-muted
Stats       → bg-primary (accent)
Pricing     → bg-background
Projects    → bg-muted
Testimonial → bg-background
FAQ         → bg-muted
CTA         → bg-background (with image)
```

**Also sets:**
- Proper foreground colors for contrast
- Standard padding: py-16 lg:py-24

## Output

- Sections with background classes
- Visual hierarchy established

## When to Use

- During page build (via /page)
- When section colors look inconsistent
