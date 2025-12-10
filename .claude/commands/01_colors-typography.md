---
description: Step 01 - Define brand colors and typography in globals.css
---

# Step 01: Colors & Typography

**Use the `colors-typography` skill to complete this task.**

## INPUT

**Primary Color:** (hex or oklch)
**Secondary Color:** (hex or oklch)
**Accent Color:** (hex or oklch)
**Font Family:** (must be free for commercial use, e.g., Inter, Geist, DM Sans)
**Style:** (modern/minimal/bold/elegant)

---

## TASK

Update app/globals.css with brand styling.

Replace all CSS variables:
- :root { } - All color variables in oklch format
- .dark { } - Dark mode variants

Add typography styles:
- h1, h2, h3, h4, h5, h6
- p, a, blockquote

Ensure container class exists:
```css
.container {
    @apply mx-auto px-4 sm:px-6 lg:px-8;
    max-width: 80rem;
}
```

Load font in layout.tsx if needed.

Verify if all tasks are completed and no errors occur.

Next: Run /02_install-sections for each page
