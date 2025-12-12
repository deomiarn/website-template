---
description: Add cinematic lerp-based smooth scrolling for all inputs (mouse wheel, trackpad, touch)
---

# Butter Smooth Scrolling

Add butter-smooth, momentum-based scrolling that interpolates scroll position for a premium feel.

## Input Required

None - auto-configures with sensible defaults.

Optional configuration:
```
Lerp factor: (0.06 = ultra smooth, 0.12 = balanced, 0.20 = responsive)
```

## What This Does

Uses `butter-smooth-scrolling` skill to:

1. **Create ButterScroll Component**
   - `components/ui/butter-scroll.tsx`
   - Intercepts wheel and touch events
   - Uses requestAnimationFrame + lerp for smooth interpolation
   - Respects reduced motion preference

2. **Update Locale Layout**
   - Adds ButterScroll as sibling component
   - Works alongside PageTransition and SmoothScroll

## How It Differs from Smooth Scroll

| Smooth Scroll | Butter Smooth Scrolling |
|---------------|------------------------|
| For anchor link clicks | For all scroll inputs |
| CSS or JS scrollIntoView | requestAnimationFrame lerp |
| Instant target jump | Momentum interpolation |
| Already in project | This skill |

**These work together** - smooth-scroll handles anchor links, butter-scroll handles scrolling.

## Inputs Covered

- Mouse wheel
- Trackpad
- Touch (mobile/tablet)

All enabled by default. Use `disableTrackpad` or `disableTouch` props to opt-out specific inputs.

## Output

- `components/ui/butter-scroll.tsx` - Lerp scroll component
- `app/[locale]/layout.tsx` - Updated with ButterScroll
- Cinematic momentum scrolling on all inputs

## When to Use

- Premium agency/portfolio websites
- When you want that "Apple" or "Awwwards" feel
- After page-transitions skill
- When smooth-scroll anchors are already working

## When NOT to Use

- Content-heavy blogs (users need fast navigation)
- E-commerce product listings
- Accessibility-critical applications

## Verification

After running, test:
1. Scroll with mouse wheel - should feel smooth and momentum-like
2. Scroll with trackpad - should feel smooth
3. Touch scroll on mobile - should feel smooth
4. Click anchor links - should still smooth scroll (existing skill)
5. Enable reduced motion in OS - should use native scroll
6. Check DevTools Performance - should maintain 60fps
