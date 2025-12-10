---
description: Add Framer Motion micro-animations to page sections
---

# Framer Animations

Add entrance animations and hover effects.

## Input Required

```
Page Route: (e.g., /, /leistungen)
```

## What This Does

Uses `framer-animations` skill to add:

**Section reveals:**
```tsx
<motion.section
  initial={{ opacity: 0, y: 20 }}
  whileInView={{ opacity: 1, y: 0 }}
  transition={{ duration: 0.5 }}
  viewport={{ once: true }}
>
```

**Staggered lists:**
```tsx
{items.map((item, i) => (
  <motion.div
    initial={{ opacity: 0, y: 20 }}
    whileInView={{ opacity: 1, y: 0 }}
    transition={{ delay: i * 0.1 }}
    viewport={{ once: true }}
  />
))}
```

**Hover effects:**
- Cards: scale 1.02 on hover
- Buttons: scale 0.98 on tap

**Performance rules:**
- viewport={{ once: true }} - animate only once
- Only use opacity and transform (GPU accelerated)
- Duration: 0.3-0.6s

## Output

- Animated section components

## When to Use

- During page build (via /page)
- When adding interactivity
