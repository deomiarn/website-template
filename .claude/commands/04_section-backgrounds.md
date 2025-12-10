---
description: Step 04 - Apply 60-30-10 color rule and section backgrounds
---

# Step 04: Section Backgrounds

**Use the `section-backgrounds` skill to complete this task.**

## INPUT

**Page to style:** (e.g., Homepage, /leistungen)

---

## TASK

Apply branding guidelines to page sections:

1. **60-30-10 Color Rule:**
   - 60% dominant: bg-background (most sections)
   - 30% secondary: bg-muted (alternating sections)
   - 10% accent: bg-primary (CTA section only)

2. **Section Background Pattern:**
   ```
   Hero:        bg-background
   Logos:       bg-muted
   Features:    bg-background
   Process:     bg-muted
   Pricing:     bg-background
   Testimonial: bg-muted
   FAQ:         bg-background
   CTA:         bg-primary text-primary-foreground
   Footer:      bg-muted
   ```

3. **Ensure consistency:**
   - Use container class for content centering
   - Standard section padding: py-16 md:py-24
   - Proper foreground colors for each background

4. **Visual hierarchy:**
   - Clear emphasis on CTAs
   - Readable text contrast
   - Professional appearance

Verify if all tasks are completed and no errors occur.

Next: Run /05_framer-animations for this page
