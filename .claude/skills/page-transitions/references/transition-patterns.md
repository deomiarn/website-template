# Page Transition Patterns

Reference code patterns for overlay page transitions that wait for page load.

## Default 3-Layer Overlay Component (Waits for Load)

```tsx
// components/ui/page-transition.tsx
"use client";

import { motion, AnimatePresence } from "framer-motion";
import { usePathname } from "next/navigation";
import { useEffect, useState, useRef } from "react";

export function PageTransition() {
  const pathname = usePathname();
  const [isTransitioning, setIsTransitioning] = useState(false);
  const [showOverlay, setShowOverlay] = useState(false);
  const previousPathname = useRef(pathname);

  // 3 layers with staggered delays - solid colors
  const layers = [
    { bg: "bg-muted", delay: 0 },
    { bg: "bg-muted/95", delay: 0.08 },
    { bg: "bg-muted/90", delay: 0.16 },
  ];

  const transitionDuration = 0.4;
  const totalEnterTime = (transitionDuration + 0.16) * 1000; // duration + max delay

  useEffect(() => {
    // When pathname changes, start the transition
    if (pathname !== previousPathname.current) {
      setIsTransitioning(true);
      setShowOverlay(true);

      // Wait for enter animation to complete, then start exit
      const exitTimer = setTimeout(() => {
        setIsTransitioning(false);
        previousPathname.current = pathname;
      }, totalEnterTime + 100); // Small buffer for page render

      // Hide overlay after exit animation completes
      const hideTimer = setTimeout(() => {
        setShowOverlay(false);
      }, totalEnterTime + 100 + (transitionDuration + 0.16) * 1000);

      return () => {
        clearTimeout(exitTimer);
        clearTimeout(hideTimer);
      };
    }
  }, [pathname, totalEnterTime]);

  if (!showOverlay) return null;

  return (
    <div className="pointer-events-none">
      {layers.map((layer, index) => (
        <motion.div
          key={index}
          className={`fixed inset-0 z-[999] ${layer.bg}`}
          initial={{ scaleX: 0 }}
          animate={{ scaleX: isTransitioning ? 1 : 0 }}
          transition={{
            duration: transitionDuration,
            delay: layer.delay,
            ease: [0.4, 0, 0.2, 1],
          }}
          style={{
            originX: isTransitioning ? 0 : 1,
            transformOrigin: isTransitioning ? "left" : "right",
          }}
        />
      ))}
    </div>
  );
}
```

## Layout Integration

```tsx
// app/[locale]/layout.tsx
import { PageTransition } from "@/components/ui/page-transition";
import { Navbar } from "@/components/navbar";
import { Footer } from "@/components/footer";

export default function LocaleLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <PageTransition />
      <Navbar />
      <main>{children}</main>
      <Footer />
    </>
  );
}
```

## Color Variations

### Muted (Default)

```tsx
const layers = [
  { bg: "bg-muted", delay: 0 },
  { bg: "bg-muted/95", delay: 0.08 },
  { bg: "bg-muted/90", delay: 0.16 },
];
```

### Primary Brand Color

```tsx
const layers = [
  { bg: "bg-primary", delay: 0 },
  { bg: "bg-primary/95", delay: 0.08 },
  { bg: "bg-primary/90", delay: 0.16 },
];
```

### Secondary Brand Color

```tsx
const layers = [
  { bg: "bg-secondary", delay: 0 },
  { bg: "bg-secondary/95", delay: 0.08 },
  { bg: "bg-secondary/90", delay: 0.16 },
];
```

### Background Color

```tsx
const layers = [
  { bg: "bg-background", delay: 0 },
  { bg: "bg-muted", delay: 0.08 },
  { bg: "bg-muted/95", delay: 0.16 },
];
```

## Timing Variations

### Fast (Snappy)

```tsx
const transitionDuration = 0.3;
const layers = [
  { bg: "bg-muted", delay: 0 },
  { bg: "bg-muted/95", delay: 0.06 },
  { bg: "bg-muted/90", delay: 0.12 },
];
```

### Default (Balanced)

```tsx
const transitionDuration = 0.4;
const layers = [
  { bg: "bg-muted", delay: 0 },
  { bg: "bg-muted/95", delay: 0.08 },
  { bg: "bg-muted/90", delay: 0.16 },
];
```

### Slow (Cinematic)

```tsx
const transitionDuration = 0.5;
const layers = [
  { bg: "bg-muted", delay: 0 },
  { bg: "bg-muted/95", delay: 0.1 },
  { bg: "bg-muted/90", delay: 0.2 },
];
```

## Animation Flow

```
1. User clicks link
   ↓
2. Pathname changes detected
   ↓
3. isTransitioning = true, showOverlay = true
   ↓
4. Layers slide IN from LEFT (scaleX: 0 → 1, originX: 0)
   ↓
5. Screen fully covered (all layers at scaleX: 1)
   ↓
6. Wait for page to render underneath
   ↓
7. isTransitioning = false
   ↓
8. Layers slide OUT to RIGHT (scaleX: 1 → 0, originX: 1)
   ↓
9. New page revealed
   ↓
10. showOverlay = false (cleanup)
```

## Easing Options

```tsx
// Material Design standard (default)
ease: [0.4, 0, 0.2, 1]

// Apple-style
ease: [0.22, 1, 0.36, 1]

// Smooth ease out
ease: [0, 0, 0.2, 1]

// Dramatic
ease: [0.7, 0, 0.3, 1]
```

## Performance Tips

1. **Use transform only** - `scaleX` is GPU-accelerated
2. **Fixed positioning** - Doesn't cause layout recalculation
3. **Pointer events none** - Prevents blocking user interaction
4. **Z-index 999** - Above everything including modals and navbars
5. **Conditional render** - Unmounts when not transitioning

## Reduced Motion Support

```css
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```
