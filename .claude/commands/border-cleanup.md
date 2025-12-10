---
description: Remove rounded-* classes and apply global border-radius from globals.css
---

# Border Cleanup

Standardize border-radius across components.

## Input Required

```
Scope: ui / blocks / all
```

- `ui` - Clean shadcn/ui components only
- `blocks` - Clean shadcnblocks sections only
- `all` - Clean both

## What This Does

Uses `border-cleanup` skill to:

**1. Verify globals.css has border-radius rules:**
```css
@layer base {
  /* Cards and containers */
  .card, [class*="Card"] {
    border-radius: var(--radius-lg);
  }

  /* Images (not avatars) */
  img:not([class*="avatar"] img) {
    border-radius: var(--radius-md);
  }

  /* Badges */
  .badge, [class*="Badge"] {
    border-radius: var(--radius-sm);
  }

  /* Inputs */
  input, textarea, select {
    border-radius: var(--radius-md);
  }

  /* Accordion */
  [data-state="open"], [data-state="closed"] {
    border-radius: var(--radius-md);
  }
}
```

**2. Remove rounded-* classes from:**
- Cards and containers
- Images
- Sections
- Accordion items
- Navigation menus
- Context menus
- Sheets

**3. KEEP rounded-* in (exceptions):**
- `button.tsx` - Buttons need variant flexibility
- `avatar.tsx` - Avatars are always circular

**Classes removed:**
```
rounded-sm, rounded, rounded-md, rounded-lg, rounded-xl
rounded-2xl, rounded-3xl, rounded-full
rounded-t-*, rounded-b-*, rounded-l-*, rounded-r-*
rounded-tl-*, rounded-tr-*, rounded-bl-*, rounded-br-*
rounded-[*] (arbitrary values)
```

## Output

- Clean component files
- Border-radius controlled by globals.css --radius variable
- Consistent rounded corners across site

## When to Use

- After installing new shadcnblocks sections
- When border-radius looks inconsistent
- After /remove-inline-styles if borders still vary
