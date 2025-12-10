---
description: Define brand colors and typography in globals.css
---

# Colors & Typography

Set up brand styling foundation.

## Input Required

```
Primary Color: (hex)
Secondary Color: (hex)
Accent Color: (hex)
Font Family:
Style: (modern, classic, playful, etc.)
```

## What This Does

Uses `colors-typography` skill to update globals.css with:
- CSS color variables in oklch format
- Light and dark mode variants
- Typography styles (h1-h6, p, a, blockquote)
- Border-radius variables (--radius)
- Container class

## Output

- website/app/globals.css updated

## When to Use

- At project start (via /init)
- When rebranding
- When adjusting design system
