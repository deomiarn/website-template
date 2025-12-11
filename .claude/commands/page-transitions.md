---
description: Add elegant 3-layer overlay transition between page navigations
---

# Page Transitions

Add an elegant curtain-like transition with 3 staggered color layers that slide across the screen.

## Input Required

None - auto-detects layout and creates component.

## What This Does

Uses `page-transitions` skill to:

1. **Create PageTransition Component**
   - `components/ui/page-transition.tsx`
   - 3 solid overlay layers with staggered timing
   - Uses `bg-muted` with subtle variations (100%, 95%, 90%)

2. **Update Locale Layout**
   - Adds PageTransition as overlay (not wrapper)
   - Fixed position with z-[999], above everything
   - Pointer-events disabled to not block interactions

## Output

- `components/ui/page-transition.tsx` - Overlay transition component
- `app/[locale]/layout.tsx` - Updated with transition
- Elegant 3-layer curtain effect on page navigations

## When to Use

- During `/init` (Step 8)
- After setting up navbar and footer
- When you want polished, professional page transitions

## Verification

After running, test:
1. Click navigation links - 3 layers should slide across (right to left)
2. Layers appear one after another with slight delay
3. Page content is NOT moved/animated
4. No interaction blocking during or after animation
