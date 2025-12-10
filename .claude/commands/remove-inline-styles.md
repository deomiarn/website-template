---
description: Remove inline typography and border-radius styles from components
---

# Remove Inline Styles

Clean up shadcnblocks sections by removing inline styles.

## Input Required

```
Page Route: (e.g., /, /leistungen)
- or -
Component: (e.g., hero145, feature139)
```

## What This Does

Uses `remove-inline-styles` skill to:

**Remove from h1-h6:**
- Font sizes: text-xl, text-2xl, text-3xl, text-4xl, text-5xl, text-6xl, text-7xl
- Font weights: font-bold, font-semibold, font-medium, font-light
- Letter spacing: tracking-tight, tracking-wide, tracking-normal
- Line height: leading-tight, leading-snug, leading-normal

**Remove from ALL elements (except buttons/avatars):**
- Border-radius: rounded-sm, rounded-md, rounded-lg, rounded-xl, rounded-2xl, rounded-3xl, rounded-full

**Keep:**
- Layout: flex, grid, gap-*, items-*, justify-*
- Spacing: p-*, m-*, px-*, py-*
- Colors: bg-muted, text-muted-foreground
- Animations: transition-*, animate-*

**Fix:**
- Heading hierarchy (h1 > h2 > h3)
- One h1 per page (Hero only)

## Output

- Clean component files
- Typography controlled by globals.css
- Border-radius controlled by globals.css

## When to Use

- During page build (via /page)
- After installing new sections
- When typography looks inconsistent
