---
description: Step 05 - Add Framer Motion micro-animations to page sections
---

# Step 05: Framer Animations

**Use the `framer-animations` skill to complete this task.**

## INPUT

**Page to animate:** (e.g., Homepage, /leistungen)

---

## TASK

Add micro-animations to finalize the page appearance:

1. **Section Reveals:**
   - Wrap each section with MotionSection
   - Stagger delays: 0, 0.1, 0.2s between sections
   - Use existing component from components/ui/motion-section.tsx

2. **Staggered Lists:**
   - Feature grids, pricing cards, process steps
   - Add staggerChildren variant pattern
   - Delay: 0.1s between child items

3. **Hover Effects:**
   - Cards: scale 1.02, lift shadow
   - Buttons: whileTap scale 0.98
   - Links: subtle underline animation

4. **Performance:**
   - viewport={{ once: true }} on all animations
   - Only animate opacity and transform
   - Duration: 0.3-0.6s max

Verify if all tasks are completed and no errors occur.

Next: /06_midjourney-prompts (optional), then /07_webp-images (after images ready), then /08_seo-content-optimization for this page
