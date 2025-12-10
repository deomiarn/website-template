---
description: Step 03 - Remove inline typography styles and fix heading hierarchy
---

# Step 03: Remove Inline Styles

**Use the `remove-inline-styles` skill to complete this task.**

## INPUT

**Components to clean:** (e.g., hero145, feature139, pricing1)

---

## TASK

For each component in components/:

1. **Remove typography classes from h1-h6:**
   - text-4xl, text-5xl, text-6xl, text-7xl (all sizes)
   - font-bold, font-semibold, font-medium (all weights)
   - tracking-tight, tracking-wide (letter spacing)
   - leading-tight, leading-snug (line height)
   - bg-muted-foreground with bg-clip-text
   - mb/mt/my/mx/ml/mr-spacing (e.g., mb-4, mb-6, mb-8, my-10, mt-12 etc.)

2. **Remove border-radius classes from ALL elements:**
   - rounded-* (all variants: sm, md, lg, xl, 2xl, full, etc.)
   - rounded-t-*, rounded-b-*, rounded-l-*, rounded-r-*
   - rounded-tl-*, rounded-tr-*, rounded-bl-*, rounded-br-*
   - Keep: `border`, `border-border`

3. **Keep these classes:**
   - Layout: flex, grid, gap-*, items-*, justify-*
   - Responsive: sm:, md:, lg:, xl:
   - Spacing: p-*, m-*, px-*, py-*
   - Colors on containers: bg-muted, bg-primary
   - Borders: border, border-border (NOT rounded-*)
   - Animations, sizing

4. **Fix heading hierarchy:**
   - Ensure h1 → h2 → h3 → h4 order (no skipping)
   - Only ONE h1 per page (in hero section)
   - Section titles should be h2
   - Subsections should be h3

5. **Fix button styles:**
   - Remove any custom button styles (bg-*, text-*, p-*, m-*)
   - Use <Button> component and its variants only


Verify if all tasks are completed and no errors occur.

Next: Run /04_section-backgrounds for this page
